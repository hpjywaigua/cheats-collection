function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()
		local _Q = tonumber(0x167ba0fe)
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address
			
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
readPointer = function(name, offset, i) local re=gg.getRangesList(name) local x64=gg.getTargetInfo().x64 local va={[true]=32,[false]=4} if re[i or 1] then local addr=re[i or 1].start+offset[1] for i = 2,#offset do addr = gg.getValues({{address=addr,flags=va[x64]}}) if not x64 then addr[1].value = addr[1].value & 0xFFFFFFFF end addr = addr[1].value + offset[i] end return addr end end
gg.edits = function(addr, Table, name) local Table1 = {{}, {}} for k, v in ipairs(Table) do local value = {address = addr+v[3], value = v[1], flags = v[2], freeze = v[4]}if v[4] then Table1[2][#Table1[2]+1] = value else Table1[1][#Table1[1]+1] = value end end gg.addListItems(Table1[2])gg.setValues(Table1[1]) gg.toast((name or "") .. "开启成功, 共修改"..#Table.."个值") end
function fastsearch(search, write)
  gg.setVisible(false)
  gg.clearResults()
  gg.setRanges(search[1][3])
  gg.searchNumber(search[1][1], search[1][2])
  if gg.getResultsCount() == 0 then
    gg.toast("Not Found")
    return false
   else
    local result = gg.getResults(gg.getResultsCount())
    gg.clearResults()
    for i = 2, #search do
      local mtp = {}
      for w, r in ipairs(result) do
        mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] }
      end
      mtp = gg.getValues(mtp)
      local hook = {}
      for w, r in ipairs(mtp) do
        if r.value == search[i][1] then
          hook[#hook + 1] = result[w]
        end
      end
      result = hook
    end
    if #result > 0 then
      local tb = {{}, {}}
      for i, v in ipairs(result) do
        --- 遍历每个结果
        for _, vv in ipairs(write) do
          local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]}
          if vv[4] then --- true 就是冻结
            table.insert(tb[2], p)
           else
            table.insert(tb[1], p)
          end
        end
      end
      gg.addListItems(tb[2])
      gg.setValues(tb[1])
      gg.toast("获取成功" .. (#tb[1] + #tb[2]) .. "条结果")
     else
      gg.toast("Not Found")
    end
  end
end
function PS() end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
local UE4 = gg.getRangesList("libUE4.so")
if not UE4 or #UE4 == 0 then
os.exit(print("so模块不存在 请检查游戏进程是否正确？"))
end
function Main()
menu = gg.choice({
"静态基址生成",
'退出脚本[by丶楠业]'},
2018,os.date'当前时间%Y年%m月%d日%H时%M分%S秒')
if menu == 1 then A() end
if menu == 2 then Exit() end
XGCK=-1
end
function A()
local List=gg.getListItems()
local Name=gg.getTargetInfo()['packageName']..'.txt'
if #List<1 then
    print('保存列表没有数据')
else
    gg.saveList(gg.getFile():gsub('[^/]*$',Name),0)
    local Text1={}
    for x in io.open(Name,'r'):lines() do
        if x:match("(.-)%.(.+)") then
            Text1[#Text1+1]=x
        end
    end   
    os.remove(Name)
    local Text2={}
    for k,v in pairs(Text1) do
        Text2[k],i={},v
        while true do
            Text2[k][#Text2[k]+1]=i:match("(.-)%|")
            i=i:match("%|(.+)")
            if not i then
                Text2[k][#Text2[k]+1]=v:match('[^|]*$')
                break
            end
        end
    end    
    local Text3="local Ranges=gg.getRangesList('/')\nlocal function Read(module,type)\n    for k,v in pairs(Ranges) do\n        if v['internalName']:match('[^/]*$')==module and v['type']==type then\n            return v['start']\n        end\n    end\nend\n\nlocal Table={}\nlocal function Modify(address,value,flags)\n    Table[#Table+1]={address=address,value=value,flags=flags}\nend\n"     
local prompt = gg.prompt({
 "修改数值",
 "修改类型",
 },{
 "16384",
 "4",
 },{
 "number",
 "number",
})
if prompt==nil then else
sz=prompt[1]
lx=prompt[2]
end
    for i=1,#Text2 do
        Text3=Text3..'\nModify(Read('..string.format("'%s','%s')+0x",Text2[i][10]:match('[^/]*$'),Text2[i][9])..Text2[i][11]..','..sz..','..lx..')'
    end
        io.open('静态基址脚本.lua','w+'):write(Text3.."\ngg.setValues(Table)"):close()   
    print('脚本已导出到当前目录')    
end
end

function Exit()
os.exit()
end
function HOME()
lw=1
Main()
end
cs = ''
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end
