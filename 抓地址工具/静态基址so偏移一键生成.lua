local a=gg.getResults(gg.getResultCount())--获取搜索列表结果

for i=1,#a do
  for k,v in pairs(gg.getRangesList()) do
    if a[i].address >= v["start"] and a[i].address <= v["end"] then
      print("--["..i.."].".."地址:"..string.format("%X",a[i].address).."    数值:"..a[i].value.."\nso=gg.getRangesList('"..v["name"]:match('[^/]*$').."')[1].start\npy=0x"..string.format("%X",a[i].address-gg.getRangesList(v["name"])[1].start).."\nsetvalue(so+py,类型, 修改值)")
    end
  end
end
