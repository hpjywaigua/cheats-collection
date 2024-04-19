function Unfreeze()
    --获取保存列表
    local t = gg.getListItems()
    for k, v in pairs(t) do
        t[k]["freeze"] = false
    end
    return gg.addListItems(t)   
end


function Format(tab, format, value, type, Function)
    if format == "分配" then
        tab[1]["flags"] = type
        return gg.getValues(tab)
    elseif format == "修改" then
        tab[1]["flags"] = type
        tab[1]["value"] = value        
        return gg.setValues(tab)
    elseif format == "冻结" then
        tab[1]["flags"] = type
        tab[1]["freeze"] = true
        tab[1]["value"] = value
        tab[1]["name"] = Function or "功能"       
        return gg.addListItems(tab)    
    elseif format == "加载" then
        tab[1]["flags"] = type
        return gg.loadResults(tab)    
    end
end

function LSQ_Chain(so, offset, format, value, type, Function)--模块设置, 偏移量, 功能参数, 修改值, 类型, 功能
        getRanges = getRanges or (function()
        local ranges = {}    		
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v["type"]:sub(2, 2) == 'w' then--判断so是否可读可写
			    ranges[#ranges+1] = v
			end
		end
    	return ranges
    end)        
    local rest, ranges, sostart, valtype = {}, getRanges(), nil , gg.TYPE_DWORD
    if gg.getTargetInfo()["x64"] then--判断应用程序是否为64位
        valtype = gg.TYPE_QWORD
    end    
        
    for i in pairs(ranges) do
		local _name = ranges[i]["internalName"]:gsub('^.*/', '')
		if so[1] == _name and so[2] == ranges[i]["state"] then
			sostart = ranges[i]["start"]
			break
		end
	end
	
    if sostart then	
        if offset[1]  then	    	    
            for i = 1, #offset do    	    
    	        rest = {{flags = valtype,address = sostart + offset[i]}}
    	        rest = gg.getValues(rest)
		        if i == #offset then
                    break
                end
	 		    if valtype == gg.TYPE_DWORD then
				    sostart = rest[1].value & 0xFFFFFFFF--对值进行补位操作 
				else
				    sostart = rest[1].value			
			    end
		    end
	    end		    
	    if #rest == 1 then
	       
	    end
	    return Format(rest, format, value, type, Function)
    end
    gg.toast("功能:" .. Function .. "开启失败")
    print("功能开启失败原因: 未找到基址头")
    return os.exit()
end

function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

--[[
这个只是模板 不是不拉回加速
想要达到不拉回自己去研究 怎么搞
要是这种垃圾东西你都拿去⭕,那你就全家死光
--@QZSZN
素
]]

so=gg.getRangesList('libUE4.so')[1].start
py=0X5E98D64 setvalue(so+py,16,240)--360
py=0X5EEB384 setvalue(so+py,16,0)-- 9.99999997e-7
py=0X65D9534 setvalue(so+py,16,28)-- 25.72529029846
py=0X667D038 setvalue(so+py,16,-7.30449773e11)-- -3.74440972e28
LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x37C,0x198},"修改","99999",16,"惯性")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x37C,0x2C},"冻结","0",4,"动态加速1")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x37C,0x30},"冻结","0",4,"动态加速2")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x37C,0x9A0},"冻结","99999",16,"惯性2")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0xC38},"修改","5",16,"微加速")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x5C},"修改","0.1",16,"动作")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x158,0x6D8},"冻结","50",16,"重镇")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x37c,0x13c},"冻结","3",16,"中立")

LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x18,0x308,0x570},"冻结","0.12",16,"加速")

LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x37C,0x2404},"冻结","-50",16,"88")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x37C,0x40+0x530},"修改","-1",16,"防拉2")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x37C,0x40+0x30},"修改","0.001",16,"惯性2")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x37C,0x1B4+0x54},"修改","999990",16,"惯性2")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x37C,0x40},"冻结","1",16,"惯性2")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x37C,0x40+0x384},"冻结","0",4,"惯性2")
LSQ_Chain({'libUE4.so:bss','Cb'},{0x294F0,0x0,0x37C,0x40+0x388},"冻结","0",4,"惯性2")


--libUE4.so:bss+0x294F0+0x0+0x380+0x6D8

for k, v in pairs(gg) do
	if type(v)=='function' then
		local function func(arg1,...)
			if arg1=='liblaoda.so' or arg1=='libUE4.so' then
				print('speed',arg1)
				return {{start=0}}
			end

			return v(arg1,...)
		end
		gg[k]=func
	end
end
