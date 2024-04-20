--[[
function Search_the_base_addressA() 搜索基址项目A(GGlua 运算)
function Search_the_base_addressB() 搜索基址项目B(Andlua 运算)
function Search_the_base_addressC() 搜索基址项目C(C语言 运算)
function The_text_contrasts()          文本对比项目[C语言 对比]
function Base_address_Blind_to()      盲转到地址项目[C语言 盲转]
function Base_address_filtering()       过滤基址项目[C语言 过滤]
--]]

function Search_the_base_addressC()--搜索基址项目C--[[function(){
gg.toast('Chainer v3.0')

local pathdjxh = "/sdcard/Android/[C]配置数据对接信号"
local pathdjpz = "/sdcard/Android/[C]链表数据DATA.txt"

local depth, maxOffset, iii
local ti = gg.getTargetInfo()

if gg.getResultsCount() == 1 then 
    gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_ANONYMOUS)
    gg.loadResults(gg.getResults(1))
else
	print("搜索列表为空\n"..
	     "或者大于1条数据,请更正后再开启"
	)
	os.exit()
end    

function take_Some()
    local data = {}
    local Somame = {}
	local t = gg.getRangesList('^/data/*lib*.so$')
    for i, v in ipairs(t) do
        if v.type:sub(2, 2) == 'w' then
            data[#data+1] = v.internalName:match("[^/]+$")
        end
    end
    for i = 1, #data do
        if (#data ~= i) then
            if data[i] ~= data[i+1] then
                Somame[#Somame+1] = data[i]
            end
        else
            Somame[#Somame+1] = data[i]            
        end
    end
    return Somame
end 
               
function getRanges()
	local ranges = {}
	local archs = {[0x3] = 'x86', [0x28] = 'ARM', [0x3E] = 'x86-64', [0xB7] = 'AArch64'}  -------区分处理器架构
	local t = gg.getRangesList('^/data/*lib*.so:bss$')
	local arch = 'unknown'
	for i, v in ipairs(t) do
		if v.type:sub(2, 2) == '-' then
			local t = gg.getValues({ {address = v.start, flags = gg.TYPE_DWORD}, {address = v.start + 0x12, flags = gg.TYPE_WORD} })
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

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'1.cfg'   
local chunk = loadfile(cfg_file)
local cfg = nil

if chunk ~= nil then cfg = chunk() end

if cfg == nil then cfg = {} end  

local pkg = gg.getTargetPackage()

if pkg == nil then pkg = 'none' end

local def = cfg[pkg]

if def == nil then def = {3, 0x160} end
	
local p = gg.prompt({
    '深度: →》※', 
    '最大偏移量: '
  }, 
    def, 
  {
   'number', 
   'number'
})
if p == nil then os.exit() end

cfg[pkg] = p

gg.saveVariable(cfg, cfg_file)
	
depth, maxOffset = p[1], tonumber(p[2])
		
local old = gg.getResults(1)

local script = gg.getFile():gsub('[^/]*$', '')..ti.packageName
    
for i = 1, 500 do
    local f = io.open(script..i..'※.txt')
    if f == nil then
        script = script..i..'※.txt'
		break
	end
	f:close()
end

while true do		        	        
    local ret = gg.prompt({
      '基址的输出文件',
      'Exit',
    }, {
       script,
       false,
    }, {
       'file',
       'checkbox',
    })
    
    if not ret then ret = {false, false} end
    if ret[2] then os.exit() end
    if ret[1] then p[3] = ret[1] break end
end

os.remove(pathdjxh, "e")
os.remove(pathdjpz, "e")

local x = os.clock()

gg.setVisible(false)
gg.toast("加载模块信息中...")
local ranges = getRanges()--print(ranges)os.exit()

local Basenumber , Pointernumber = "", "" --输出配置结构
	
while true do
    for lvl = 0, depth do 
        if lvl > 0 then          
            local bl_1, bl_2, bl_3 = 400000, 0, 0
            if (gg.ExclusiveoutputG ~= nil) then        
                bl_3 = gg.ExclusiveoutputG(pathdjpz)
            else
                local fileLE = io.open(pathdjpz, 'a')
                while true do
                    local datak = gg.getResults(bl_1, bl_2)
                    if (#datak ~= 0) then
                        bl_2 = bl_2 + bl_1
                        for i, PointerData in ipairs(datak) do
                            bl_3 = bl_3 + 1
                            fileLE:write(
                                string.format('Pointer|%d|%d\n', PointerData.address, PointerData.value) 
                            )
                        end
                    else
                        break       
                    end 
                end        
                fileLE:close()     
            end  
            Pointernumber = string.format('%s2000|%d|%d|\n', Pointernumber, lvl, bl_3)
             if (lvl == depth) then
                gg.setRanges(gg.REGION_C_DATA | gg.REGION_C_BSS)
            end
            gg.toast(lvl..' ﹥_﹥ '..depth)
            gg.searchPointer(maxOffset)
        end
        
        iii = 0
        local fileLE = io.open(pathdjpz, 'a')
		for m, r in ipairs(ranges) do
			local p = gg.getResults(8000000, 0, r.start, r['end'])
			if #p > 0 then
			    for j, u in pairs(p) do		
		            iii = iii + 1		        
                    fileLE:write(
                        string.format('Base|%d|%s+0x%X\n', u.value, r.internalName:gsub('^.*/', ''), (u.address - r.start))
                    )
                end
 		        gg.removeResults(p)
            end
        end   
        fileLE:close()     
        if lvl >= 1 then
            Basenumber = string.format('%s3500|%d|%d|\n', Basenumber, lvl, iii)
        end
		if gg.getResultsCount() == 0 then print("凉透了 没有数据符合") break end
    end        		    	    
    gg.loadResults(old)
    if iii ~= 0 then
        print("C语言 运算\n 运算出的路径为 : "..p[3])
    end
    break
end       
      
io.open(pathdjxh, "w+"):write(
    string.format('%d<>%d<>%d<>%s\n%s%s', 
        depth, 
        (ti.x64 and 1 or 0), 
        maxOffset,
        p[3],
        Basenumber,
        Pointernumber
    )    
):close()   


local path = gg.FILES_DIR.."/"
local c_name = "基址C运算.c"
local pathCprint = (p and p[3]) and p[3].."print" or "/sdcard/Android/[C]运算完Printf数据.txt"
if (io.open(path .. c_name)) then os.remove(path .. c_name) end
gg.getRaw(path .. c_name, "chunk_cpp3")

local printf = gg.command(
    "su -p -M" ..
    "\n cd " .. path ..
    "\n chmod 777 " .. c_name ..
    "\n " .. "'" .. "./" .. c_name .. "'" ..
        " " .. "'" .. pathCprint .. "'" ..
        " " .. "'" .. "交互验证" .. "'" ..
    "\n rm -f " .. c_name
)
print(printf)
    
os.exit(gg.setVisible(true))
--↑↑↑↑--
end --}]]搜索基址C项目结束 end()






















function Search_the_base_addressA() --搜索基址项目A--[[function(){
gg.toast('Chainer v1.0')

local depth, maxOffset, level

local ti = gg.getTargetInfo()

local x64 = ti.x64

if gg.getResultsCount() == 1 then 
    gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_ANONYMOUS)
    gg.loadResults(gg.getResults(1))
else
	print("搜索列表为空\n"..
	     "或者大于1条数据,请更正后再开启"
	)
	os.exit()
end    

function printChain(pre, u)
	if u.offset == nil then
		chains = (chains + 1)
        file:write(pre.."\n")
		return pre
	else
		for offset, v in pairs(u.offset) do
			printChain(pre..string.format('+0x%X', offset), v)
		end		
	end	
end

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
	local ranges = {}
	local archs = {[0x3] = 'x86', [0x28] = 'ARM', [0x3E] = 'x86-64', [0xB7] = 'AArch64'}  -------区分处理器架构
	local t = gg.getRangesList('^/data/*lib*.so*$')
	local arch = 'unknown'
	for i, v in ipairs(t) do
		if v.type:sub(2, 2) == '-' then
			local t = gg.getValues({ {address = v.start, flags = gg.TYPE_DWORD}, {address = v.start + 0x12, flags = gg.TYPE_WORD} })
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

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'1.cfg'
local chunk = loadfile(cfg_file)    
local cfg = nil

if chunk ~= nil then cfg = chunk() end

if cfg == nil then cfg = {} end  

local pkg = gg.getTargetPackage()

if pkg == nil then pkg = 'none' end

local def = cfg[pkg]

if def == nil then def = {3, 0x100} end
	
local p = gg.prompt({
    '深度: →》([GGlua运算版])', 
    '最大偏移量: '
  }, 
    def, 
  {
   'number', 
   'number'
})
if p == nil then os.exit() end

level = {}
	
cfg[pkg] = p

gg.saveVariable(cfg, cfg_file)
	
depth, maxOffset = p[1], tonumber(p[2])
	
local old = gg.getResults(gg.getResultCount())

local script = gg.getFile():gsub('[^/]*$', '')..ti.packageName
    
for i = 1, 500 do
    local f = io.open(script..i..'※.txt')
    if f == nil then
        script = script..i..'※.txt'
		break
	end
	f:close()
end

while true do		        	        
    local ret = gg.prompt({
      '基址的输出文件',
      'Exit',
    }, {
       script,
       false,
    }, {
       'file',
       'checkbox',
    })
    
    if not ret then ret = {false, false} end
    if ret[2] then os.exit() end
    if ret[1] then p[3] = ret[1] break end
end

	
file, chains = io.open(p[3], 'a'), 0
    
gg.setVisible(false)

local x = os.clock()

local ranges = getRanges(gg.toast("加载模块信息中..."))
	
while true do
    for lvl = 0, depth do 
		if lvl > 0 then
			local t = gg.getResults(1000000)
			level[lvl] = t
			gg.toast(lvl..' ﹥_﹥ '..depth)
            if (lvl == depth) then
                gg.setRanges(gg.REGION_C_DATA | gg.REGION_C_BSS)
            end            
            gg.searchPointer(maxOffset)
	    end
		for m, r in ipairs(ranges) do
			local p = gg.getResults(1000000, 0, r.start, r['end'])
			if #p > 0 then
			    local out = {}
				gg.removeResults(p)
				loadChain(lvl, p)
				p.map = r
				table.insert(out, p)
             	for j, p in ipairs(out) do
            		for i, u in ipairs(p) do
            		    local sopy = string.format('0x%X', ( (u.address) - (p.map.start) ))
              			printChain(p.map.internalName:gsub('^.*/', '').."+"..sopy, u)
            	    end 
             	end
			end
		end		
		if gg.getResultsCount() == 0 then break end
	end
	
    gg.loadResults(old)
        
    file:close()
    
    local fm = Computation_time(os.clock() - x)
    
    if chains ~= 0 then 
        print("耗时: "..fm.."\n".."深度: "..depth.." 最大偏移量: "..maxOffset.."\n"..
              "已经输出基址数: "..(chains).." \n".."输出路径为: "..p[3]
        )
    else
        os.remove(p[3], "e")
        print("耗时: "..fm.."\n"..
              "基址符合条件: "..(chains).." 条\n太惨了！"
        )
    end
    break
end

os.exit(gg.setVisible(true))
--↑↑↑↑--
end --}]]搜索基址A项目结束 end()



























function Search_the_base_addressB() --搜索基址项目B--[[function(){
gg.toast('Chainer v1.0')

local djxh = "/sdcard/Android/对接信号print"
local djpz = "/sdcard/Android/配置数据print.txt"

local depth, maxOffset, iii

local ti = gg.getTargetInfo()

local x64 = ti.x64

if gg.getResultsCount() == 1 then 
    gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_ANONYMOUS)
    gg.loadResults(gg.getResults(1))
else
	print("搜索列表为空\n"..
	     "或者大于1条数据,请更正后再开启"
	)
	os.exit()
end    

function take_Some()
    local data = {}
    local Somame = {}
	local t = gg.getRangesList('^/data/*lib*.so$')
    for i, v in ipairs(t) do
        if v.type:sub(2, 2) == 'w' then
            data[#data+1] = v.internalName:match("[^/]+$")
        end
    end
    for i = 1, #data do
        if (#data ~= i) then
            if data[i] ~= data[i+1] then
                Somame[#Somame+1] = data[i]
            end
        else
            Somame[#Somame+1] = data[i]            
        end
    end
    return Somame
end 
               
function getRanges()
	local ranges = {}
	local archs = {[0x3] = 'x86', [0x28] = 'ARM', [0x3E] = 'x86-64', [0xB7] = 'AArch64'}  -------区分处理器架构
	local t = gg.getRangesList('^/data/*lib*.so*$')
	local arch = 'unknown'
	for i, v in ipairs(t) do
		if v.type:sub(2, 2) == '-' then
			local t = gg.getValues({ {address = v.start, flags = gg.TYPE_DWORD}, {address = v.start + 0x12, flags = gg.TYPE_WORD} })
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

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'1.cfg'   
local chunk = loadfile(cfg_file)
local cfg = nil

if chunk ~= nil then cfg = chunk() end

if cfg == nil then cfg = {} end  

local pkg = gg.getTargetPackage()

if pkg == nil then pkg = 'none' end

local def = cfg[pkg]

if def == nil then def = {3, 0x160} end
	
local p = gg.prompt({
    '深度: →》([AndLua运算版])', 
    '最大偏移量: '
  }, 
    def, 
  {
   'number', 
   'number'
})
if p == nil then os.exit() end

if (p[1] == "96.0") then Search_the_base_addressA() os.exit() end

cfg[pkg] = p

gg.saveVariable(cfg, cfg_file)
	
depth, maxOffset = p[1], tonumber(p[2])
		
local old = gg.getResults(1)

local script = gg.getFile():gsub('[^/]*$', '')..ti.packageName
    
for i = 1, 500 do
    local f = io.open(script..i..'※.txt')
    if f == nil then
        script = script..i..'※.txt'
		break
	end
	f:close()
end

while true do		        	        
    local ret = gg.prompt({
      '基址的输出文件',
      'Exit',
    }, {
       script,
       false,
    }, {
       'file',
       'checkbox',
    })
    
    if not ret then ret = {false, false} end
    if ret[2] then os.exit() end
    if ret[1] then p[3] = ret[1] break end
end

os.remove(djxh, "e")
os.remove(djpz, "e")

local x = os.clock()

gg.setVisible(false)
gg.toast("加载模块信息中...")
local ranges = getRanges()

local file_l = io.open(djpz, 'a')
if (x64) then x64 = "true" else x64 = "false" end
file_l:write("level, jzadr, x64, maxOffset = {}, {}, "..x64..", "..maxOffset.."; \n"..
    "fi_da = '"..p[3].."' \n"
)

	
while true do
    for lvl = 0, depth do 
        if lvl > 0 then          
            file_l:write("level["..lvl.."] = {}\n")
            local bl_1, bl_2, bl_3 = 400000, 0, 0
            while true do
                local datak = gg.getResults(bl_1, bl_2)
                if (#datak ~= 0) then
                    bl_2 = bl_2 + bl_1
                    for i, y in ipairs(datak) do
                        bl_3 = bl_3 + 1
                        local htxt = "level["..lvl.."]["..bl_3.."] = {['address'] = "..y.address..", ['value'] = "..y.value.."}\n"
                        file_l:write(htxt)
                    end
                else
                    break       
                end         
            end  
             if (lvl == depth) then
                gg.setRanges(gg.REGION_C_DATA | gg.REGION_C_BSS)
            end
            gg.toast(lvl..' ﹥_﹥ '..depth)
            gg.searchPointer(maxOffset)
        end
        
        iii = 0
        file_l:write("jzadr["..lvl.."] = {}\n")
		for m, r in ipairs(ranges) do
			local p = gg.getResults(8000000, 0, r.start, r['end'])
			if #p > 0 then
			    for j, u in pairs(p) do		
		            iii = iii + 1		        
		            local sopy = string.format('0x%X', (u.address - r.start))
                    file_l:write("jzadr["..lvl.."]["..iii.."] = {['value'] = "..u.value..", ['so++'] = '"..r.internalName:gsub('^.*/', '').."+"..sopy.."'}\n")
                end
 		        gg.removeResults(p)
            end
        end                
		if gg.getResultsCount() == 0 then print("凉透了 没有数据符合") break end
    end        		    	    
    gg.loadResults(old)
    if iii ~= 0 then
        print("请打开运算软件<hello_gg> | \n运算出的路径为 : "..p[3])
    end
    break
end       
file_l:close()
   
os.exit(gg.setVisible(true))
end--}]]搜索基址项目B结束 end()




























function The_text_contrasts()--文本对比项目--[[function(){
--↓↓↓↓--
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'3.cfg'   

if (io.open(cfg_file, 'r')) ~= nil then
    def2 = dofile(cfg_file)
end

if def2 == nil then 
    def2 = {
        "/sdcard/", 
        "/sdcard/",
    }
end
  
local script = gg.getFile():gsub('[^/]*$', '')..gg.getTargetInfo()['label'].."对比出#_"

for i = 1, 500 do
	local f = io.open(script..i..'.txt')
	if f == nil then
		script = script..i..'.txt'
		break
	end
	f:close()
end

local route = gg.prompt({ 
    '请选择要[对比]的文本:A',
    '请选择要[对比]的文本:B',
    '请选择要[输出]的路径:🎆',
}, { 
    def2[1],
    def2[2],
    script,
}, { 
    'file',
    'file',
    'file',
})
if route == nil or route[3] == "" then 
    os.exit() 
else
    local file = io.open(cfg_file, 'w+')   
    file:write("def = {'"..route[1]..
              "' ,'"..route[2].."',}\n\n".."return def;"
     )
    file:close()
end

local path = gg.FILES_DIR.."/"

local c_name = "文本对比.c"

local txt_name = "文本对比.txt"

io.open(path .. txt_name, 'w+'):write(
route[1].."\n"..
route[2].."\n"..
route[3].."\n"
):close(
)

if (io.open(path .. c_name)) then os.remove(path .. c_name) end

gg.getRaw(path .. c_name, "chunk_cpp0")

local printf = gg.command(
    "su -p -M" ..
    "\n cd " .. path ..
    "\n chmod 777 ".. c_name ..
    "\n ./" .. c_name..
    "\n rm -f " .. c_name..
    "\n rm -f " .. txt_name
    ,
    true
)

print(printf)

os.exit(gg.setVisible(true)) 
--↑↑↑↑--
end --}]]文本对比项目结束 end()























function Base_address_Blind_to()--盲转到地址项目--[[function(){
--↓↓↓↓--

local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'4.cfg'   

if (io.open(cfg_file, 'r')) ~= nil then
    def3 = dofile(cfg_file)
end

if def3 == nil then 
    def3 = {"/sdcard/", 
    }
end
  
local script = gg.getFile():gsub('[^/]*$', '')..gg.getTargetInfo()['label'].."盲转到‖+‖_"

for i = 1, 500 do
	local f = io.open(script..i..'.txt')
	if f == nil then
		script = script..i..'.txt'
		break
	end
	f:close()
end
      
local route = gg.prompt({ 
    '要[盲改善]文件读取路径:【】',
    '要[盲改善]文件输出路径:【】',
}, { 
    def3[1],
    script,
}, { 
    'file',
    'file',
})

gg.setVisible(false)

if route == nil or route[1] == "" then 
    os.exit() 
else
    if (io.open(route[1], "r")) then
        local file = io.open(cfg_file, 'w+')   
        file:write("def = {'"..route[1]..
              "',}\n\n".."return def;"
        )
        file:close()
    else
        print("没有该读取路径")
        os.exit()
    end
end


local address
if (gg.getTargetInfo().x64) then
    address = "1000000000"
else
    address = "10000000"
end

local path = gg.FILES_DIR.."/"

local package_name = gg.getTargetPackage()

local c_name = "基址盲改善.c"

if (io.open(path .. c_name)) then os.remove(path .. c_name) end

gg.getRaw(path .. c_name, "chunk_cpp2")

local printf = gg.command(
    "su -p -M" ..
    "\n cd " .. path ..
    "\n chmod 777 " .. c_name ..
    "\n " .. "'" .. "./" .. c_name .. "'" ..
        " " .. "'" .. package_name .. "'" .. 
        " " .. "'" .. route[1] .. "'" ..
        " " .. "'" .. route[2] .. "'" ..
        " " .. "'" .. address .. "'" ..
        " " .. "'" .. "交互验证" .. "'" ..
    "\n rm -f " .. c_name
    ,
    true
)
print(printf)

os.exit(gg.setVisible(true)) 
--↑↑↑↑--
end --}]]盲转到地址项目结束 end()




















function Base_address_filtering()--改善基址项目--[[function(){
--↓↓↓↓--
local cfg_file = gg.EXT_FILES_DIR.."/"..gg.getFile():match("[^/]+$")..'2.cfg'   

if (io.open(cfg_file, 'r') ~= nil) then
    def1 = dofile(cfg_file)
end

if def1 == nil then 
    def1 = {"/sdcard/", 
    }
end
  
local script = gg.getFile():gsub('[^/]*$', '')..gg.getTargetInfo()['label'].."过滤出$_"

for i = 1, 500 do
	local f = io.open(script..i..'.txt')
	if f == nil then
		script = script..i..'.txt'
		break
	end
	f:close()
end
      
local route = gg.prompt({ 
    '请选择要[过滤]的路径:💿',
    '请选择要[输出]的路径:📀',
}, { 
    def1[1],
    script,
}, { 
    'file',
    'file',
})

gg.setVisible(false)

if route ~= nil and route[1] == "2020" then
    The_text_contrasts() os.exit()
end
if route ~= nil and route[1] == "520" then
     Base_address_Blind_to() os.exit()
end    
if route ~= nil and route[1] == "5200" then
    gg.command("su"..
         "\n pkill -f 文本对比.c"..
         "\n pkill -f 基址改善.c"..
         "\n pkill -f 基址盲改善.c"..
         "\n pkill -f 基址C运算.c"
    ,
    true
    )
    print("pkill 服务文件完成")
    os.exit(gg.setVisible(true)) 
end    

if route == nil or route[1] == "" then 
    os.exit() 
else
    if (io.open(route[1], "r")) then
        local file = io.open(cfg_file, 'w+')   
        file:write("def = {'"..route[1]..
              "',}\n\n".."return def;"
        )
        file:close()
    else
        print("没有该读取路径")
        os.exit(gg.setVisible(true)) 
    end
end

if gg.getResultsCount() ~= 1 then 
	print("搜索列表为空\n"..
	     "或者大于1条数据,请更正后再开启"
	)
	gg.setVisible(true)
	os.exit()
end    

local path = gg.FILES_DIR.."/"

local address = string.format('%X', gg.getResults(1)[1].address)

local package_name = gg.getTargetPackage()

local c_name = "基址改善.c"

if (io.open(path .. c_name)) then os.remove(path .. c_name) end

gg.getRaw(path .. c_name, "chunk_cpp1")

local printf = gg.command(
    "su -p -M" ..
    "\n cd " .. path ..
    "\n chmod 777 " .. c_name ..
    "\n " .. "'" .. "./" .. c_name .. "'" ..
        " " .. "'" .. package_name .. "'" .. 
        " " .. "'" .. route[1] .. "'" ..
        " " .. "'" .. route[2] .. "'" ..
        " " .. "'" .. address .. "'" ..
        " " .. "'" .. "交互验证" .. "'" ..
    "\n rm -f " .. c_name
    ,
    true
)
print(printf)

os.exit(gg.setVisible(true)) 
--↑↑↑↑--
end --}]]改善基址项目结束 end()



function Computation_time(x)
    local fm, fs, ms
    if x >= 60.0 then	   
        fs = x // 60.0
    	ms = x - (fs * 60.0)
    	fm = fs .. " 分 " .. ms .." 秒"
    else
    	fm = x .. " 秒"
    end
    return fm
end

local SN = gg.choice({ --项目选项[[{
    "基址搜索",
    "基址改善",
    "退出工具",
     },nil, ""
    )
    if SN == 1 then 
        Search_the_base_addressC()
    elseif SN == 2 then 
        Base_address_filtering()
    elseif SN == 3 then 
        os.exit()
    end
--}]]end 项目选项结束