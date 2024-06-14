------------------------------------------------------------小黄鸭指针配置-----------------------------------------------------------------------------------

function SearchWrite(Search,Write,Type)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber(Search[1][1],Type)
local count=gg.getResultCount()
local result=gg.getResults(count)
gg.clearResults()
local data={}
local base=Search[1][2]
if(count>0)then
for i,v in ipairs(result)do
v.isUseful=true
end
for k=2,#Search do
local tmp={}
local offset=Search[k][2]-base
local num=Search[k][1]
for i,v in ipairs(result)do
tmp[#tmp+1]={}
tmp[#tmp].address=v.address+offset
tmp[#tmp].flags=v.flags
end
tmp=gg.getValues(tmp)
for i,v in ipairs(tmp)do
if(tostring(v.value)~=tostring(num))then
result[i].isUseful=false
end
end
end
for i,v in ipairs(result)do
if(v.isUseful)then
data[#data+1]=v.address
end
end
if(#data>0)then
local Ab="小黄鸭"..#data.."🍺➥🔰条"
local Time=os.date("\n%m月%d日%H时%M分%S秒")
local t={}
local base=Search[1][2]
for i=1,#data do
for k,w in ipairs(Write)do
offset=w[2]-base
t[#t+1]={}
t[#t].address=data[i]+offset
t[#t].flags=Type
t[#t].value=w[1]
if(w[3]==true)then
local item={}
item[#item+1]=t[#t]
item[#item].freeze=true
gg.addListItems(item)
end
end
end
gg.setValues(t)
gg.sleep(500)
gg.toast("开启成功🎆"..Ab..Time.."🔯修改"..#t.."条")
else
gg.toast("特征码错误or脸丑\n或者是已经开启过了")
return false
end
end
end


function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."搜索到"..#data.."条数据")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."已修改"..#t.."条数据")     gg.addListItems(t)  else  gg.toast(Mingcg.."开启失败", false)  return false  end  else  gg.toast("搜索失败")  return false  end end  

---------------------------------------------------------------------[----菜单-----]------------------------------------------------------------------------------

function HOME()
SN = gg.multiChoice({
    "内存功能",
    
    "娱乐功能",
    
    "退出修仙",
 }, nil, "小黄鸭全火脚本")
   if SN == nil then
  else
   if SN[1] == true then
    a()
  end
  if SN[2] == true then
    m()
  end
   if SN[3] == true then
    Exit()   
 end
 end
 XGCK = -1
 end






function a()
 menu1 = gg.multiChoice({
"循环透色",
"准星加大",
"人物天线",
"超大范围",
"无后防抖",
"枪械瞬击",
"人微加速",
"全屏自瞄",
"趴下路飞",
"人物地线",
"盒子天线",
"秒开倍镜",
"天空黑色",
"仿ios黑色",
"仿ios白色",
'返回上一页'},
nil,'内存功能 功能一个一个开 请勿多个一起开 可能会闪退哦')
if menu1 == nil then else
if menu1[1] == true then a0() end
if menu1[2] == true then a1() end
if menu1[3] == true then a2() end
if menu1[4] == true then a3() end
if menu1[5] == true then a4() end
if menu1[6] == true then a5() end
if menu1[7] == true then a6() end
if menu1[8] == true then a7() end
if menu1[9] == true then a8() end
if menu1[10] == true then a9() end
if menu1[11] == true then a10() end
if menu1[12] == true then a11() end
if menu1[13] == true then a12() end
if menu1[14] == true then a13() end
if menu1[15] == true then a14() end
if menu1[16] == true then HOME() end
end
end

function m()
 menu1 = gg.multiChoice({
"升天高挑",
"全车加速",
'返回上一页'},
nil,'🎄娱乐功能 功能一个一个开 请勿多个一起开 可能会闪退哦🎉')
if menu1 == nil then else
if menu1[1] == true then m1() end
if menu1[2] == true then m2() end
if menu1[3] == true then HOME() end
end
end


function m1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("200", gg.TYPE_FLOAT)
end

function m2()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(280)
  gg.editAll("-0.23", gg.TYPE_FLOAT)
  g10sj="1"
  gg.toast("全车加速已开启")
end




function a0()
gg.setRanges(1)
local dataType = 16
local tb1 = {{2, 0}, {3.1669345e-43, -4},}
local tb2 = {{120, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
local dataType = 4
local tb1 = {{8206, 0}, {1194380040, 4}, }
local tb2 = {{12, 0}, }
SearchWrite(tb1, tb2, dataType)
end

function a1()
gg.setRanges(32)
local dataType = 16
local search = {{16, 0},{4, -4},{8, 4},}
local modify = {{150, 0},}
SearchWrite(search,modify,dataType)
end


function a2()
gg.setRanges(32)
local dataType = 16
local tb1 = {{90, 0},{87.27782440186, 4},{-100.91194152832, 8},{1, 12},}
local tb2 = {{1.96875, 0},{1.96875, 4},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{1.96875, 0},{1.96875, 4},{-100.91194152832, 8},{1, 12},}
local tb2 = {{999, 12}}
SearchWrite(tb1, tb2, dataType)
end



function a3()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("9.20161819458;23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("23;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("180", gg.TYPE_FLOAT)
gg.setRanges(16384)
gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("80", gg.TYPE_FLOAT)
gg.setRanges(32)
local dataType = 32
local tb1 = {{-4416487068034336677, 0},}
local tb2 = {{4745105158508642304, 8},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 32
local tb1 = {{4752423507886342144, 0},}
local tb2 = {{4752423507916292096, 0},{1133576192, 4},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(32)
local dataType = 16
local tb1 = {{35, 0},{33, 4},{62, 8},}
local tb2 = {{170, 0},{170, 4},{170, 8},}
SearchWrite(tb1, tb2, dataType)
gg.toast("小黄鸭:范围开启成功")
end


function a4()
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-2.78698202667584E28, 0}, {-3.7444097189855772E28, 4}, {-1.1368836915718467E-13, 8}, }
local tb2 = {{0, 4}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-2.8323923027751147E28, 0}, {-1.423933276633091E28, 16}, {-1.114450155758339E28, 20}, {-1.8331474059341755E27, 24}, {-5.909875632614698E21, 40}, }
local tb2 = {{90, 20}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-2.8111605e28, 0}, {-1476732160, 4}, {-3.7444097e28, 8}, {-1.1144502e28, 12}, {128, 16}, }
local tb2 = {{0, 12}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-6.1549454e27, 0}, {-2.6563334e21, 4}, {1.8638966e-20, 8}, {-1.1144502e28, 12}, }
local tb2 = {{0, 12}, }
SearchWrite(tb1, tb2, dataType)
end




function a5()
gg.setRanges(16384)
local dataType = 4
local tb1 = {{-293,741,873, 0},}
local tb2 = {{40000, 0},}
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 4
local tb1 = {{-438500784, 0}, {-293741873, -4}, }
local tb2 = {{0, -4}, }
SearchWrite(tb1, tb2, dataType)
end

function a6()
gg.setRanges(32)
local dataType = 16
local tb1 = {{5.0000002E-4, 0},{0.40000000596, 4},{1.0E-4, -8},}
local tb2 = {{1.7, -12},}
SearchWrite(tb1, tb2, dataType)
end



function a7()
gg.setRanges(16384)
local dataType = 16
local tb1 = {{-1.0153182385499395E28, 0}, {-2.0291020897675903E20, -24}, {360.0, -20}, {9.999999747378752E-5, -8}, }
local tb2 = {{6000, -8}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(16384)
local dataType = 4
local tb1 = {{-301790704, 0}, {-509607933, 4}, {-298632638, 8}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
end


function a8()
gg.setRanges(32)
local dataType = 16
local tb1 = {{18.38614273071, 0},{0.53446769714, 4},{-3.42663764954, 8},}
local tb2 = {{170, 4},}
SearchWrite(tb1, tb2, dataType)
end

function a9()
gg.setRanges(32)
local dataType = 16
local search = {{1.0302718678190104E-8, 0},{-0.0, 104},}
local modify = {{-9.73725, 104},}
SearchWrite(search,modify,dataType)
end



function a10()
Name = "盒子天线" 
gg.setRanges(1048576)
local dataType = 16
local search = {{14.79005432129,0},}
local modify = {{999999, 0},}
SearchWrite(search,modify,dataType)
end




function a11()
Name = "秒开倍镜" 
gg.setRanges(32)
local dataType = gg.TYPE_FLOAT
local tb1 = {{0.37999999523,0xEAE0},{6.16031837463, 0xEAD4},{6.1603140831,0xEACC},}
local tb2 = {{0, 0xEAE0},}
SearchWrite(tb1, tb2, dataType)
end

function a12()
gg.setRanges(32)
local dataType = 32
local tb1 = {{28992425112437505, 0}, {284777806561280, -4}, }
local tb2 = {{0, 0}, }
SearchWrite(tb1, tb2, dataType)
end

function a13()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-5.1210619E-18;1:20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000)
gg.editAll("100", gg.TYPE_FLOAT)
gg.toast("人物白色开启成功")
end


function a14()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.05499718338;1.0F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-100", gg.TYPE_FLOAT)
gg.toast("人物黑色开启成功")
end

function Exit()
   print("小黄鸭永远的神")
  os.exit()
end



cs = "小黄鸭牛逼"
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    HOME()
  end
 end