function split(szFullString, szSeparator)
local nFindStartIndex = 1 
local nSplitIndex = 1 
local nSplitArray = {} while true do 
local 
nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) 
if not nFindLastIndex then 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) 
break end 
nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) 
nFindStartIndex = nFindLastIndex + string.len(szSeparator) 
nSplitIndex = nSplitIndex + 1 end return 
nSplitArray end function 
xgxc(szpy, qmxg) for x = 1, #(qmxg) do 
xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] 
xgsz = qmxg[x]["value"] 
gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) 
xgsl = xgsl + 1 end end function 
xqmnb(qmnb) 
gg.clearResults() 
gg.setRanges(qmnb[1]["memory"]) 
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败")
else 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) 
if gg.getResultCount() == 0 then 
gg.toast(qmnb[2]["name"] .. "开启失败") 
else 
sl = gg.getResults(999999) 
sz = gg.getResultCount() 
xgsl = 0 if sz > 999999 then 
sz = 999999 end for i = 1, sz do 
pdsz = true for v = 4, #(qmnb) do if 
pdsz == true then 
pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] 
pysz[1].flags = qmnb[v]["type"] 
szpy = gg.getValues(pysz) 
pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") 
tzszpd = szpd[1] 
pyszpd = szpd[2] 
if tzszpd == pyszpd then 
pdjg = true pdsz = true else 
pdjg = false pdsz = false end end end 
if pdjg == true then 
szpy = sl[i].address xgxc(szpy, qmxg) 
xgjg = true end end 
if xgjg == true then 
gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") 
else 
gg.toast(qmnb[2]["name"] .. "开启失败") 
end 
end 
end 
end

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


function Main()
menu = gg.choice({
"改版本（仿Xs写法适配全机型，避免某些机型开启失败）",
"改版本（采用基址写法，大部分机型可用）",
"退出脚本",
 }, 2023, "0")
if menu == 1 then a1() end
if menu == 2 then a2() end
if menu == 3 then Exit() end
XGCK = -1
end

function a1()
qmnb = {
{["memory"] = 32},
{["name"] = ""},
{["value"] = 3014705, ["type"] = 4},
{["lv"] = 3538994, ["offset"] = 4, ["type"] = 4},
{["lv"] = 3211310, ["offset"] = 8, ["type"] = 4},
{["lv"] = 3014712, ["offset"] = 12, ["type"] = 4},
{["lv"] = 3276849, ["offset"] = 16, ["type"] = 4},
{["lv"] = 3145778, ["offset"] = 20, ["type"] = 4},
{["lv"] = 57, ["offset"] = 24, ["type"] = 4},
{["lv"] = 7340117, ["offset"] = 32, ["type"] = 4},
{["lv"] = 6357092, ["offset"] = 36, ["type"] = 4},
{["lv"] = 6619252, ["offset"] = 40, ["type"] = 4},
{["lv"] = 7209033, ["offset"] = 44, ["type"] = 4},
{["lv"] = 7274598, ["offset"] = 48, ["type"] = 4},
}
qmxg = {
{["value"] = 3735609, ["offset"] = 16, ["type"] = 4},
{["value"] = 3735609, ["offset"] = 20, ["type"] = 4},
{["value"] = 57, ["offset"] = 24, ["type"] = 4},
}
xqmnb(qmnb)
end

function a2()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x1FE3C8,0x20,0x1D0}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 3735609, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x1FE3C8,0x20,0x1D4}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 3735609, freeze = true}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x1FE3C8,0x20,0x1D8}
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 57, freeze = true}})
end

function Exit()
os.exit()
end

while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
gg.clearResults()
if XGCK == 1 then
Main()
end
end