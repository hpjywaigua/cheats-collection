local a = gg.getSelectedListItems()
local b = gg.getRangesList()
if #a==0 then
  print("请选择东西")
end

function Main()
menu = gg.choice({
'双条计算偏移量取值器',
'单条取值器',
'素质能思路记录[cd思路]',
'退出脚本'},
2920,'by.素')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then sznnb() end
if menu == 4 then Exit() end
XGCK=-1
end

function A()
menu1 = gg.multiChoice({
'计算偏移(前值格式)',
'计算偏移(后值格式)',
'计算偏移(数字头格式)',
'so计算扫描',
'选我开始计算',
'返回上一页'},
nil,'注意:勾选列表第一个勾选的扫出来so是多少，就会计算他的偏移 2条值为一条偏移')
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
nil,'这里是把值转换成旁路地方')
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

function a1()
local select = gg.getSelectedListItems()
if (select == nil or #select == 0) then
	os.exit()
end

local addr = select[1].address

local name = "你选择的内存没有so请更换内存"

for index, value in ipairs(gg.getRangesList("^/data/*.so*$")) do
	if (value.start <= addr and value["end"] >= addr) then
		name = value.internalName:gsub("^.*/", "")
	end
end

local save = gg.getListItems();

local offset = 0;

for index, value in ipairs(save) do
	offset = (value.address - addr)
	if (offset ~= 0) then
		print(string.format("MemoryPatch::createWithHex(OBFUSCATE(%s,0x%x,OBFUSCATE(h BYSZN).Modify();", name,offset))
	end
end

gg.toast("取值成功")
end

function a2()
local select = gg.getSelectedListItems()
if (select == nil or #select == 0) then
	os.exit()
end

local addr = select[1].address

local name = "你选择的内存没有so请更换内存"

for index, value in ipairs(gg.getRangesList("^/data/*.so*$")) do
	if (value.start <= addr and value["end"] >= addr) then
		name = value.internalName:gsub("^.*/", "")
	end
end

local save = gg.getListItems();

local offset = 0;

for index, value in ipairs(save) do
	offset = (value.address - addr)
	if (offset ~= 0) then
		print(string.format("MemoryPatch::createWithHex(OBFUSCATE(%s,0x%x, OBFUSCATE(h BYSZN).Modify();", name,offset))
	end
end
			
gg.toast("取值成功")
end

function a3()
local select = gg.getSelectedListItems()
if (select == nil or #select == 0) then
	os.exit()
end

local addr = select[1].address

local name = "你选择的内存没有so请更换内存"

for index, value in ipairs(gg.getRangesList("^/data/*.so*$")) do
	if (value.start <= addr and value["end"] >= addr) then
		name = value.internalName:gsub("^.*/", "")
	end
end

local save = gg.getListItems();

local offset = 0;

for index, value in ipairs(save) do
	offset = (value.address - addr)
	if (offset ~= 0) then
		print(string.format("MemoryPatch::createWithHex(%s,0x%x, h BYSZN, 内存).Modify();", name,offset))
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
print("这里是退出脚本后的提示文字")
os.exit()
end

local select = gg.getSelectedListItems()
if (select == nil or #select == 0) then
	os.exit()
end

local addr = select[1].address

local name = "你选择的内存没有so请更换内存"

for index, value in ipairs(gg.getRangesList("^/data/*.so*$")) do
	if (value.start <= addr and value["end"] >= addr) then
		name = value.internalName:gsub("^.*/", "")
	end
end

local save = gg.getListItems();

local offset = 0;

for index, value in ipairs(save) do
	offset = (value.address - addr)
	if (offset ~= 0) then
		
	end
end

function b1()
for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then			
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		    
		      if m.start==v.start then
		        num=n	
		print("MemoryPatch::createWithHex(OBFUSCATE(libUE4.so), 0x"..string.format("%X",a[i].address)..", OBFUSCATE(h BYSZN)).Modify();")

		     	       		      		        	       		      		        
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
	print("MemoryPatch::createWithHex(OBFUSCATE(libUE4.so), 0x"..string.format("%X",a[i].address-v["start"])..", OBFUSCATE(h BYSZN)).Modify();")
				        	       		      		        	       		      		        
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
	print("MemoryPatch::createWithHex(libUE4.so, 0x"..string.format("%X",v["end"]-a[i].address)..", h BYSZN, 内存).Modify();")
		        	       		      		        	       		      		        
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
print("请点复制好处好你的数据")
os.exit()
end

function Exit()
print("自己点复制好取值")
os.exit()
end

function sznnb()
gg.copyText("cd: 5,768,256 - 45,088,768 - 2,097,848 - 7,865,412 - 6,816,832")
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