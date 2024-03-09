function S_Pointer(t_So, t_Offset, _bit)
	local function getRanges()
		local ranges = {}
		local t = gg.getRangesList('^/data/*.so*$')
		for i, v in pairs(t) do
			if v.type:sub(2, 2) == 'w' then
				table.insert(ranges, v)
			end
		end
		return ranges
	end
	local function Get_Address(N_So, Offset, ti_bit)
		local ti = gg.getTargetInfo()
		local S_list = getRanges()	
		local t = {}
		local _t
		local _S = nil
		if ti_bit then
			_t = 32
		 else
			_t = 4
		end
		for i in pairs(S_list) do
			local _N = S_list[i].internalName:gsub('^.*/', '')
			if N_So[1] == _N and N_So[2] == S_list[i].state then
				_S = S_list[i]
				break
			end
		end
		if _S then
			t[#t + 1] = {}
			t[#t].address = _S.start + Offset[1]
			t[#t].flags = _t
			if #Offset ~= 1 then
				for i = 2, #Offset do
					local S = gg.getValues(t)
					t = {}
					for _ in pairs(S) do
						if not ti.x64 then
							S[_].value = S[_].value & 0xFFFFFFFF
						end
						t[#t + 1] = {}
						t[#t].address = S[_].value + Offset[i]
						t[#t].flags = _t
					end
				end
			end
			_S = t[#t].address			
		end
		return _S
	end
	local _A = string.format('0x%X', Get_Address(t_So, t_Offset, _bit))
	return _A
end

--以上是动态基址规则

function MB()
MG = gg.multiChoice({
      "功能1",
      "退出脚本",
},nil,"模板名字\n作者名字")
if MG == nil then else
if MG[1] == true then a() end
if MG[2] == true then TCJB() end
end
MGNB=1
end

a = function()
local t = {"libil2cpp.so:bss", "Cb"}--libil2cpp.so模块 cb入口 bss为cb
local tt = {0x51F8, 0xB8, 0x1F8}--依次是第1层偏移跳转指针 第2层偏移跳转指针 第3层偏移
local ttt = S_Pointer(t, tt, true)
gg.addListItems({{address = ttt, flags = 4, value = 99999999, freeze = true}}) --freeze是冻结 true是冻结 false不冻结 flags是修改类型 4是d类 16是f类
--锁链脚本会保报错
end

function TCJB()
os.exit()
end

while true do
if gg.isVisible(true) then
    MGNB = nil
    gg.setVisible(false)
  end
  if MGNB == nil then
    MB()
  end
end