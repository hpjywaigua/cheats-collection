

local a = gg.getSelectedListItems()
local b = gg.getRangesList()
if #a==0 then
  print("请选择东西")
end

function Main()
menu = gg.choice({
'脚本取值器',
'旁路取值器',
'基址取值器',
'退出脚本'},
2920,'挽湫专属取值器\n原作者挽湫')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.multiChoice({
'取数据前值',
'取数据后值',
'取数字头值',
'so计算扫描',
'选我开始计算',
'返回上一页'},
nil,'挽湫脚本取值器')
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end



function B()
menu1 = gg.multiChoice({
'取数据前值',
'取数据后值',
'取数字头值',
'so计算扫描',
'选我开始计算',
'返回上一页'},
nil,'挽湫旁路取值器')
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end




function C()
menu1 = gg.multiChoice({
'基址写法',
'选我开始计算',
'返回上一页'},
nil,'挽湫基址取值器')
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[6] == true then HOME() end
end
GLWW=-1
end




function c2()
print("挽湫基址取值器")
os.exit()

end


function c1()
for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
	print("so=gg.getRangesList(libUE4.so')[1].start\npy=0x"..string.format("%X",v["end"]-a[i].address).."\nsetvalue(so+py,4,修改的值)")

		   --[[
so=gg.getRangesList('libUE4.so')[1].start
py=0x7E3CEE0
setvalue(so+py,4,449318186)

so=gg.getRangesList(libUE4.so')[1].start
py=0x82E0
setvalue(so+py,4,修改的值)

so=gg.getRangesList(libUE4.so')[1].start
py=0x821C
setvalue(so+py,4,修改的值)

注：只能是ca   注释：(UE4+基址值,ca,冻结的值)
		        	       		      		        	       		      		        ]]
		        break		        		      		       
		      end
		    end
		    end
		    end
		    end
		    
		    end




function a1()
for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
		print("setvalue(so + *0x"..string.format("%X",a[i].address).."* ,内存, *HEX值*)")
		        	       		      		        	       		      		        
		        break		        		      		       
		      end
		    end
		    end
		    end
		    end
gg.toast("取值成功")
end


function a2()

for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
	print("setvalue(so + *0x"..string.format("%X",a[i].address-v["start"]).."* ,内存, *HEX值*)")
			

		        	       		      		        	       		      		        
		        break		        		      		       
		      end
		    end
		    end
		    end
		    end
			
gg.toast("取值成功")
end



function a3()
for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
	print("setvalue(so + *0x"..string.format("%X",v["end"]-a[i].address).."* ,内存, *HEX值*)")
		        	       		      		        	       		      		        
		        break		        		      		       
		      end
		    end
		    end
		    end
		    end
			

gg.toast("取值成功")
end



function a4()
for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
	print("\ninternalName:"..v["internalName"].."\n")
		        	       		      		        	       		      		        
		        break		        		      		       
		      end
		    end
		    end
		    end
		    end
gg.toast("计算成功")
end



function a5()
print("挽湫脚本取值器")
os.exit()

end





function b1()
for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
		print("MemoryPatch::createWithHex(libUE4.so, 0x"..string.format("%X",a[i].address)..", h 00 00 00 00 70 00 00 00, 内存).Modify();")

		        	       		      		        	       		      		        
		        break		        		      		       
		      end
		    end
		    end
		    end
		    end
gg.toast("取值成功")
end



function b2()
for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
	print("MemoryPatch::createWithHex(libUE4.so, 0x"..string.format("%X",a[i].address-v["start"])..", h 00 00 00 00 70 00 00 00, 内存).Modify();")
			

		        	       		      		        	       		      		        
		        break		        		      		       
		      end
		    end
		    end
		    end
		    end
gg.toast("取值成功")
end



function b3()
for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
	print("MemoryPatch::createWithHex(libUE4.so, 0x"..string.format("%X",v["end"]-a[i].address)..", h 00 00 00 00 70 00 00 00, 内存).Modify();")

		        	       		      		        	       		      		        
		        break		        		      		       
		      end
		    end
		    end
		    end
		    end
gg.toast("取值成功")
end



function b4()
for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
	print("\ninternalName:"..v["internalName"].."\n")
		        	       		      		        	       		      		        
		        break		        		      		       
		      end
		    end
		    end
		    end
		    end
gg.toast("so计算成功")
end



function b5()
print("挽湫取值器")
os.exit()
end






function Exit()
print("自己点复制好取值")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '注意事项\n如果抓别的内存请将旁路最后的4改成其他内存的数字即可'
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










