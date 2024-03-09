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
		local _Q = tonumber(0x4000)
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
			print("\xE7\xBE\xA4\x3A".._Q)
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end
local Offset_Yx = function(Tab,KT)
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(Tab["内存"])
    
    gg.searchNumber(Tab["主特征码"][1], Tab["主特征码"][2], false, gg.SIGN_EQUAL, 0, -1, 0)
    
    local results = gg.getResults(gg.getResultsCount())
    if not results then
        return gg.toast("未搜到结果")
    end
    gg.clearResults()
    local Ton = tonumber
    local Tsr = tonumber
    if KT then
        Tsr = tostring
    end
    for index, value in pairs(Tab["副特征码"]) do
    
        for i = 1, #results do
            results[i].address = results[i].address + value[3]
            results[i].flags = value[2]
        end
        local _ofResults, Final = gg.getValues(results), {}
        
        for i = 1, #_ofResults do
            if type(value[1]) == "table" then
                for ind, key in pairs(value[1]) do
                    local __npt = string.find(key, "~")
                    local Min, Max, Length
                    if __npt then
                        Min = Ton(string.sub(key, 0, (__npt-1)))
                        Max = Ton(string.sub(key, (__npt+1), -1))
                        if _ofResults[i].value >= Min and _ofResults[i].value <= Max then
                            Length = #Final + 1
                            Final[Length] = {}
                            Final[Length].address = _ofResults[i].address - value[3]
                            Final[Length].flags = value[2]
                        end

                    elseif Tsr(_ofResults[i].value) == Tsr(key) then
                        Length = #Final + 1
                        Final[Length] = {}
                        Final[Length].address = _ofResults[i].address - value[3]
                        Final[Length].flags = value[2]
                    end
                end
            else
                local __npt = string.find(value[1], "~")
                local Min, Max, Length
                if __npt then
                    Min = Ton(string.sub(value[1], 0, (__npt-1)))
                    Max = Ton(string.sub(value[1], (__npt+1), -1))
                    if _ofResults[i].value >= Min and _ofResults[i].value <= Max then
                        Length = #Final + 1
                        Final[Length] = {}
                        Final[Length].address = _ofResults[i].address - value[3]
                        Final[Length].flags = value[2]
                    end
                
                elseif Tsr(_ofResults[i].value) == Tsr(value[1]) then
                    Length = #Final + 1
                    Final[Length] = {}
                    Final[Length].address = _ofResults[i].address - value[3]
                    Final[Length].flags = value[2]
                end
            end
        end
        if #Final == 0 then
            return gg.toast("未偏移到结果")
        end
        
        results = gg.getValues(Final)
    end
    for index, value in pairs(Tab["修改"]) do
    
        local EditAll = {}
        for i = 1, #results do
        
            EditAll[i] = {}
            EditAll[i].address = results[i].address + value[3]
            EditAll[i].flags = value[2]
            EditAll[i].value = value[1]
            if value[4] or Tab["是否全部冻结"] then
                EditAll[i].freeze = true
            end
        end
        
        if value[4] or Tab["是否全部冻结"] then
            gg.addListItems(EditAll)
        else
            gg.setValues(EditAll)
        end
    end
    return
end
function ZT(search, write) gg.setVisible(false) gg.clearResults() gg.setRanges(search[1][3]) gg.searchNumber(search[1][1], search[1][2]) if gg.getResultsCount() == 0 then gg.toast("ZT/无效") return false else local result = gg.getResults(gg.getResultsCount()) gg.clearResults() for i = 2, #search do local mtp = {} for w, r in ipairs(result) do mtp[#mtp + 1] = { address = r.address + search[i][2], flags = search[i][3] } end mtp = gg.getValues(mtp) local hook = {} for w, r in ipairs(mtp) do if r.value == search[i][1] then hook[#hook + 1] = result[w] end end result = hook end if #result > 0 then local tb = {{}, {}} for i, v in ipairs(result) do for _, vv in ipairs(write) do local p = {address = v.address + vv[2], flags = vv[3], value = vv[1], freeze = vv[4]} if vv[4] then table.insert(tb[2], p) else table.insert(tb[1], p) end end end gg.addListItems(tb[2]) gg.setValues(tb[1]) gg.toast("ZT/已开启 修改" .. (#tb[1] + #tb[2]) .. "条数值") else gg.toast("ZT/无效") end end end function PS() end function setvalue(address,flags,value) PS("修改地址数值(地址,数值类型,要修改的值)") local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else         sl = gg.getResults(999999) sz = gg.getResultCount()         xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end                             function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."失败")else sl=gg.getResults(720)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."成功")else gg.toast(_on.."失败")end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "失败") end end end end
function PS() end
function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end                           
function Main0()
SN = gg.choice({
'开','关','退',},
nil,"" .. os.date("by.忠诚二改死800个妈,\n%Y年 %m月%d日 %H时 %M分%S秒"))
if SN==1 then HS1() end
if SN==2 then HS2() end
if SN==3 then os.exit() end
FX1=0
end


function HS1()
local t = {"libUE4.so:bss", "Cb"}-----by忠诚
local tt = {0x29D84,0x0,0x368,0x9A0}----
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value =99999}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x29D84,0x0,0xC18}----忠诚
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value =3 }})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x29D84,0x0,0xC18+4}----忠诚
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value =800 }})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x29D84,0x0,0x368,0x198}----@aanb666
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value =99999 }})
end
function HS2()
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x29D84,0x0,0x368,0x9A0}----@aanb666
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value =670}})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x29D84,0x0,0xC18}----
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value =1 }})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x29D84,0x0,0xC18+4}----
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value =479.5 }})
local t = {"libUE4.so:bss", "Cb"}
local tt = {0x29D84,0x0,0x368,0x198}----
local ttt = S_Pointer(t, tt)
gg.setValues({{address = ttt, flags = 16, value =8192 }})
end
while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
  end