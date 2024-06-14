local a = gg.getSelectedListItems()
local b = gg.getRangesList()
if #a==0 then
  print("请在保存列表选择值")
end


		    function HG()
menu = gg.multiChoice({
'提取锁链Ca防值',
'提取锁链Xa防值',
'提取锁链Cd防值',
'提取基址CA防值',
'提取直装防十年值',


'退出脚本'},
nil,'')
if menu == nil then else
if menu[1] == true then a1() end
if menu[2] == true then a2() end
if menu[3] == true then a3() end
if menu[4] == true then a4() end
if menu[5] == true then a5() end
if menu[6] == true then Exit() end
end
XGCK=-1
end

function a1()

for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
	print("local t = {'libanogs.so:bss', 'Ca'}\nlocal tt = {0x"..string.format("%X",v["end"]-a[i].address).."\nsetvalue(local ttt = S_Pointer(t, tt, true)\ngg.setValues({{address = ttt, flags = 4, value = 67109633}})")
 --[[
模板: local t = {"libUE4.so:bss", "Ca"}
local tt = {0x1120}
local ttt = S_Pointer(t, tt, true)
gg.setValues({{address = ttt, flags = 4, value = 16384}})

注：只能抓ca                ]]
		        break		        		      		       
		      end
		    end
		    end
		    end
		    end
			


end



function a2()

for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
	print("local t = {'libUE4.so:bss', 'Xa'}\nlocal tt = {0x"..string.format("%X",v["end"]-a[i].address).."\nsetvalue(local ttt = S_Pointer(t, tt, true)\ngg.setValues({{address = ttt, flags = 16384, value = 67108864}})")
 
		        	       		      		        	       		      		        
		        break		        		      		       
		      end
		    end
		    end
		    end
		    end
			




end




function a3()

for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
	print("local t = {'libUE4.so:bss', 'Cd'}\nlocal tt = {0x"..string.format("%X",v["end"]-a[i].address).."\nsetvalue(local ttt = S_Pointer(t, tt, true)\ngg.setValues({{address = ttt, flags = 8, value = 83123964}})")
 
		        	       		      		        	       		      		        
		        break		        		      		       
		      end
		    end
		    end
		    end
		    end
			




end


function a4()
for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
	print("so=gg.getRangesList('libUE4.so')[1].start\npy=0x"..string.format("%X",v["end"]-a[i].address).."\nsetvalue(so+py,4,84149249)")

		   --[[
模板 so=gg.getRangesList('libUE4.so')[1].start
py=0x7E3CEE0
setvalue(so+py,4,449318186)
		        	       		      		        	       		      		        ]]
		        break		        		      		       
		      end
		    end
		    end
		    end
		    end
			


end


function a5()

for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
	print("\nMemoryPatch::createWithHex(libUE4.so, 0x"..string.format("%X",v["end"]-a[i].address)..", h 1F 20 03 D5, 4).Modify();")

		        	       		      		        	       		      		        
		        break		        		      		       
		      end
		    end
		    end
		    end
		    end
gg.toast("取值成功")
end





function Exit()
print("羽辞连锁提取器")
os.exit()
end

while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
HG()
end
end
