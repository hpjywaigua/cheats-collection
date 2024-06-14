
gg.toast('Chainer v0.2')
local chains = 0
function printChain(pre, u)	
	if u.offset == nil then
		chains = chains + 1
		return chains..': '..pre..' = '..u.value
	else
		local ret = ''
		for offset, v in pairs(u.offset) do
			ret = ret..'\n\n'..printChain(pre..string.format(' -> 0x%X + 0x%X', u.value, offset), v)
		end
		if ret ~= '' then ret = ret:sub(3) end	
		return ret
	end	
end

local ti = gg.getTargetInfo()
local x64 = ti.x64
--[[
if gg.getResultsCount() == 0 then 
	print('搜索列表都没有你搜个毛回家搜白丝吧')
	os.exit()
end]]

local depth, maxOffset, level, out

function loadChain(lvl, p)
	local fix, maxo, lev = not x64, maxOffset, level
	for k = lvl, 1, -1 do
		local levk, p2, stop = lev[k], {}, true
		for j, u in pairs(p) do		
			if u.offset == nil then			
				u.offset = {}
				if fix then u.value = u.value & 0xFFFFFFFF end
				for i, v in ipairs(levk) do
					local offset = v.address - u.value
					if offset >= 0 and offset <= maxo then 
						u.offset[offset], p2[v], stop = v, v, false
					end 
				end
			end
		end
		if stop then break end
		p = p2
	end
end

function getRanges()
	local archs = {[0x3] = 'x86', [0x28] = 'ARM', [0x3E] = 'x86-64', [0xB7] = 'AArch64'}
	local ranges = {}
	local t = gg.getRangesList('^/data/*.so*$')
	local arch = 'unknown'
	for i, v in ipairs(t) do
		if v.type:sub(2, 2) == '-' then
			local t = gg.getValues({{address = v.start, flags = gg.TYPE_DWORD}, {address = v.start + 0x12, flags = gg.TYPE_WORD}})
			if t[1].value == 0x464C457F then
				arch = archs[t[2].value]
				if arch == nil then arch = 'unknown' end
			end
		end	
		if v.type:sub(2, 2) == 'w' then
			v.arch = arch
			table.insert(ranges, v)
		end
	end
	return ranges
end

local ranges = getRanges()

gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_ANONYMOUS)

local cfg_file = gg.getFile()..'.cfg'
local chunk = loadfile(cfg_file)
local cfg = nil
if chunk ~= nil then
	cfg = chunk()
end
if cfg == nil then cfg = {} end

local pkg = gg.getTargetPackage()
if pkg == nil then pkg = 'none' end

while true do
	local def = cfg[pkg]
	if def == nil then def = {3, 0x100} end
	local p = gg.prompt({'指针', '最大偏移量'}, def, {'number', 'number'})
	if p == nil then os.exit() end
	cfg[pkg] = p
	gg.saveVariable(cfg, cfg_file)
	
	depth = p[1]
	maxOffset = tonumber(p[2])
	
	level, out = {}, {}
	
	local old = gg.getResults(100000)
	local x = os.clock()
	
	for lvl = 0, depth do
		if lvl > 0 then
			local t = gg.getResults(100000)
			level[lvl] = t
			gg.toast(lvl..' from '..depth)
			gg.internal3(maxOffset)
		end
		
		for m, r in ipairs(ranges) do
			local p = gg.getResults(100000, 0, r.start, r['end'])
			if #p > 0 then
				gg.removeResults(p)
				loadChain(lvl, p)
				p.map = r
				table.insert(out, p)
			end
		end
		
		if gg.getResultsCount() == 0 then break	end
	end
	
	x = os.clock() - x
	print(depth, maxOffset, x)
	gg.loadResults(old)
	
	local chain = ''
	chains = 0
	for j, p in ipairs(out) do
		for i, u in ipairs(p) do
			chain = chain..'\n\n'..
				printChain(string.format('%s + 0x%X [0x%X]', p.map.internalName:gsub('^.*/', ''), u.address - p.map.start, u.address), u)			
		end
	end
	if chain ~= '' then chain = chain:sub(3) else chain = 'Nothing found' end
	
	p = gg.alert('Found '..chains..' chains in '..x..' seconds ('..depth..', '..maxOffset..'):\n\n'..chain, 'Save', 'Retry', 'Exit')
	if p == 1 then break end
	if p ~= 2 then
		print(chain)
		os.exit()
	end
end

if #out == 0 then
	print('Nothing found')
	os.exit()
end

local script = gg.getFile():gsub('[^/]*$', '')..ti.packageName
for i = 1, 1000 do
	local f = io.open(script..i..'.lua')
	if f == nil then
		script = script..i..'.lua';
		break;
	end
	f:close()
end

local p = gg.prompt({'Out file for script'}, {script}, {'file'})
script = p[1]

out.packageName = ti.packageName
out.versionCode = ti.versionCode
out.versionName = ti.versionName
out.x64 = ti.x64
v = out

function out()
	local ti = gg.getTargetInfo()
	if ti.packageName ~= v.packageName or ti.versionCode ~= v.versionCode or ti.versionName ~= v.versionName or ti.x64 ~= v.x64 then
		local x = {[true] = 'x64', [false] = 'x32'} 
		gg.alert('The script is generated for the process\n\n'..v.packageName..' '..v.versionName..' ['..v.versionCode..'] '..x[v.x64]..
			'\n\nYou selected the process\n\n'..ti.packageName..' '..ti.versionName..' ['..ti.versionCode..'] '..x[ti.x64]..
			'\n\nChains may be loaded incorrectly.')
	end
	
	local ranges = getRanges()
	
	local ret = {}
	
	local d = {}
	local go = false
	local arch = {}
	for j, p in ipairs(v) do
		if p.map.new == nil then
			local name = p.map.internalName:gsub('^.*/', '')
			for k, r in ipairs(ranges) do
				local rname = r.internalName:gsub('^.*/', '')
				if name == rname and p.map.state == r.state then
					if arch[name] == nil and p.map.arch ~= r.arch then
						arch[name] = true
						gg.alert('The script is generated for the '..name..
							' library with '..p.map.arch..' architecture, and you chose a process where the '..name..
							' library has an '..r.arch..' architecture.\n\nChains may be loaded incorrectly.')
					end
					p.map.new = r
					break
				end
			end
		end
		if p.map.new ~= nil then
			for i, u in ipairs(p) do
				u.address = u.address - p.map.start + p.map.new.start
				d[u], go = u, true
			end
		end
	end
	
	while go do
		local s = gg.getValues(d)
		d, go = {}, false
		for old, new in pairs(s) do
			if old.offset == nil then
				table.insert(ret, new)
			else
				if not ti.x64 then new.value = new.value & 0xFFFFFFFF end
				for offset, u in pairs(old.offset) do
					u.address = new.value + offset
					d[u], go = u, true
				end
			end
		end
	end

	gg.loadResults(ret)
	print('Loaded '..#ret..' results from chains')
end
--os.exit(out())

gg.saveVariable(v, script)
local f = io.open(script)
local code = f:read('*a')
f:close()

code = code:gsub('\nreturn v%[', '\nv = v[')

code = 'gg.require("'..gg.VERSION..'", '..gg.BUILD..')\n'..code

local cpi = {}
for i, u in ipairs({getRanges, out}) do
	cpi[i] = debug.getinfo(u)
end
local n = 0
for line in io.lines(gg.getFile()) do
	n = n + 1
	for i, u in ipairs(cpi) do
		if n >= u.linedefined and n <= u.lastlinedefined then
			code = code..'\n'..line
			break
		end
	end
end
code = code..'\n\nout()\n'

local f = io.open(script, 'w+')
f:write(code)
f:close()