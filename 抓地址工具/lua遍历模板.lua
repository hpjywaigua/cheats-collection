local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/dev/kgsl-3d0*$')--/dev...是so模块的后缀
		for i, v in pairs(t) do
			if v.type:sub(4, 4) == 's' then
				table.insert(ranges, v)
			end
		end
		return ranges
end

local function readD(a)
    return gg.getValues({{
            address=a,
            flags=gg.TYPE_DWORD
    }})[1].value
end
--@ssnb399
local function readF(a)
    return gg.getValues({{
            address=a,
            flags=gg.TYPE_FLOAT
    }})[1].value
end

function setvalue(address,flags,value)
  local t={}
  t[1]={}
  t[1].address=address
  t[1].flags=flags
  t[1].value=value
  gg.setValues(t)
  gg.addListItems(t)
end

function _V(add,value1,flag,value2)
    local num=0;ednum=0
    if flag==gg.TYPE_DWORD then
        readV=readD
      elseif flag==gg.TYPE_FLOAT then
        readV=readF
      else
        os.exit("不支持的类型")
    end
    local S_list = getRanges()
    for i in pairs(S_list) do
        num=num+1
        addr=S_list[i].start+add
        if readV(addr)==value1 then
            setvalue(addr,flag,value2)
            ednum=ednum+1
        end
    end
    return "遍历了"..num.."个地址\n".."修改了"..ednum.."个地址"
end

gg.toast(_V(0x0F0,8200,gg.TYPE_DWORD,7))