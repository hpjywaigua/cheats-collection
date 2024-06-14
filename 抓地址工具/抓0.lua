local a = gg.getSelectedListItems()
local b = gg.getRangesList()
if #a==0 then
  print("sb")
end
for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then
		    for n,m in pairs(gg.getRangesList(v.internalName)) do
		      if m.start==v.start then
		        num=n
		        break
		      end
		    end
			print("\nso=gg.getRangesList('libtersafe.so')[1].start py=0x"..string.format("%X",v["end"]-a[i].address).."  setvalue(so+py,4,0)")--0代表你改的值，4代表你的类型
		end
	end
end