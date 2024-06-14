GetPor = function(addr)
    return gg.getValues({{address = addr, flags = 32}})[1].value
end

local so = gg.getRangesList('libUE4.so:bss')[1].start
local addr1 = GetPor(GetPor(GetPor(so + 0x25468) + 0x0) + 0x460) + 0x15A8
local addr2 = addr1 + 0x4
local addr3 = addr2 + 0x4
gg.setVisible(false)
shu = 0
while true do
    r = math.random(0,2)--随机生成0~2的数
    g = math.random(0,2)
    b = math.random(0,2)   
        gg.setValues({{address = addr1, flags = 16, value = r}})
        gg.setValues({{address = addr2, flags = 16, value = g}})
        gg.setValues({{address = addr3, flags = 16, value = b}})
        shu = shu + 1
if gg.isVisible(true) then
break
end
end
print("已循环修改"..shu.."次")

