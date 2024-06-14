local a = gg.getSelectedListItems()
local b = gg.getRangesList()
local c ={}
for i=1,#a do
	for k,v in pairs(b) do
		if tonumber(a[i].address) >= v["start"] and tonumber(a[i].address) <= v["end"] then
			c[#c+1] = {["name"] = v["name"], ["address"] = a[i].address}
		end
	end
end
for i=1,#c do
	for k,v in pairs(b) do
		if c[i]["name"] == v["name"] then
			c[i].offset = c[i].address - v["start"]
			break
		end
	end
	print("so=gg.getRangesList('libUE4.so')[1].start\npy=0x"..string.format("%X",c[i].offset).."\nsetvalue(so+py,4,0)\n")
	
	
end
