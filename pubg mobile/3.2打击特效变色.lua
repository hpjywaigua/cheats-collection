GetPor = function(addr)
    return gg.getValues({{address = addr, flags = 32}})[1].value
end

local so = gg.getRangesList('libUE4.so:bss')[1].start

local st1 = GetPor(GetPor(GetPor(GetPor(so + 0x25468) + 0x0) + 0x460) + 0x4B8) + 0x5C4--身体
local st2 = st1 + 0x4
local st3 = st2 + 0x4

local tb1 = GetPor(GetPor(GetPor(GetPor(so + 0x25468) + 0x0) + 0x460) + 0x4B8) + 0x5D4--头部
local tb2 = tb1 + 0x4
local tb3 = tb2 + 0x4
gg.setVisible(false)
shu = 0
while true do
    r1 = math.random(0,3)--随机生成0~2的数
    g1 = math.random(0,3)
    b1 = math.random(0,3)   
    r2 = math.random(0,3)
    g2 = math.random(0,2)
    b2 = math.random(0,2)   
        gg.setValues({{address = st1, flags = 16, value = r1}})
        gg.setValues({{address = st2, flags = 16, value = g1}})
        gg.setValues({{address = st3, flags = 16, value = b1}})
        gg.setValues({{address = tb1, flags = 16, value = r2}})
        gg.setValues({{address = tb2, flags = 16, value = g2}})
        gg.setValues({{address = tb3, flags = 16, value = b2}})
        shu = shu + 1
if gg.isVisible(true) then
break
end
end
print("已循环修改"..shu.."次")

