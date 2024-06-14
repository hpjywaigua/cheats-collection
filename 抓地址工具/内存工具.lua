local D_Rose = {'"玫瑰扎到了上帝的手，上帝便折断了玫瑰，他用最后的余香撑起风城，那天雨很大，花香溢满了整个明尼苏达"', '"乌云挡住了芝加哥的风 但挡不住明尼苏达的花香也挡不住底特律的救赎"', '"凡人的身躯终究承受不住神的天赋"', '"寸头守故乡，脏辫走四方。即使玫瑰被上帝折了，却依然花香四溢"', '"玫瑰腐烂的时候比野花都难闻，盛开的时候却比任何花都芬芳"', '"那晚尼苏达没有狼，一个从芝加哥出来的狮子客串着狼的角色"', '"那晚森林没有狼，玫瑰花香飘满整个明尼苏达，玫瑰花香弥漫整个芝加哥城 人们都以为迈克尔乔丹回来了"', '"芝加哥有两位英雄，一个手握6个总冠军，一个全身弥漫玫瑰花香"', '"曾几何时，芝加哥人以为他们的另一个神出现了。没想到，只是玫瑰的花香飘过了风城的天空"', '"唐斯是最有天赋的 维金斯是最受上帝眷顾的 巴特勒是最努力的 可他啊 以前全都是."', '"有那么一个夜晚雨很大，森林里没有狼，花香溢满了整个明尼苏达 黑夜代替光阴，但是掩盖不住玫瑰的花香 那天晚上花香弥漫了整个明尼苏达 那晚他再次绽放"', '"那年NBA没有软蛋"'}

local _Offset_Addr
local Chain_Secn
local Contrast_Offset
local Contrast_Chain
local Filter_Offset
local Filter_Chain

local Data_Save_file = "/storage/emulated/0/Android/Offset_Toolv0.32.cfg"

local Set
local Call_Set = {}
local mt
local Addr = {}
Addr.loadMoudle = 1
local Se_Sa_List = {}
local env
local _env
local func_identify
local All_set_table1, All_set_table2
local ranges
local static_list, static_name
local filter_addr

local Source = {}

function lxclq(lx) if lx=='F'or lx==16 or lx=='f'then return 16,4 elseif lx=='D'or lx==4 or lx=='d'then return 4,4 elseif lx=='E'or lx==64 or lx=='e'then return 64,4 elseif lx=='B'or lx==1 or lx=='b'then return 1,1 elseif lx=='Q'or lx==32 or lx=='q'then return 32,4 elseif lx=='W'or lx==2 or lx=='w'then return 2,2 else repeat xz=gg.alert('判断不出你的类型['..lx..'],请选择','重选选择','继续','取消')until xz~=nil if xz==2 then return lx,4 elseif xz==3 then gg.toast('你选择了取消') elseif xz==1 then lx=gg.choice({'F类型','D类型','E类型','B类型','Q类型','W类型'},0,'请选择类型') if lx=='F'or lx==16 or lx=='f'then return 16,4 elseif lx=='D'or lx==4 or lx=='d'then return 4,4 elseif lx=='E'or lx==64 or lx=='e'then return 64,4 elseif lx=='B'or lx==1 or lx=='b'then return 1,1 elseif lx=='Q'or lx==32 or lx=='q'then return 32,4 elseif lx=='W'or lx==2 or lx=='w'then return 2,2 end end end end
function ncclq(nc) if nc=='Jh'then return 2 elseif nc=='Ch'then return 1 elseif nc=='CA'or nc=='Ca'then return 4 elseif nc=='CD'or nc=='Cd'then return 8 elseif nc=='CB'or nc=='Cb'then return 16 elseif nc=='PS'then return 262144 elseif nc=='A'then return 32 elseif nc=='J'then return 65536 elseif nc=='S'then return 64 elseif nc=='AS'or nc=='As'then return 524288 elseif nc=='V'then return 1048576 elseif nc=='O'then return -2080896 elseif nc=='B'then return 131072 elseif nc=='XA'or nc=='Xa'then return 16384 elseif nc=='XS'or nc=='Xs'then return 32768 else repeat xz=gg.alert('判断不出你的内存['..nc..'],请选择','重选选择','继续','取消')until xz~=nil if xz==2 then return lx,4 elseif xz==3 then gg.toast('你选择了取消') elseif xz==1 then lx=gg.choice({'Jh内存','Ch内存','Ca内存','Cd内存','Cb内存','PS内存','A内存','J内存','S内存','As内存','V内存','O内存','B内存','Xa内存','Xs内存'},0,'请选择内存') if nc=='Jh'then return 2 elseif nc=='Ch'then return 1 elseif nc=='CA'or nc=='Ca'then return 4 elseif nc=='CD'or nc=='Cd'then return 8 elseif nc=='CB'or nc=='Cb'then return 16 elseif nc=='PS'then return 262144 elseif nc=='A'then return 32 elseif nc=='J'then return 65536 elseif nc=='S'then return 64 elseif nc=='AS'or nc=='As'then return 524288 elseif nc=='V'then return 1048576 elseif nc=='O'then return -2080896 elseif nc=='B'then return 131072 elseif nc=='XA'or nc=='Xa'then return 16384 elseif nc=='XS'or nc=='Xs'then return 32768 end end end end
pzfxs='function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) if gg.searchNumber(qmnb[3]["value"],qmnb[3]["type"],false,gg.SIGN_EQUAL,0,-1)~=true then gg.searchAddress(qmnb[3]["value"],-1,qmnb[3]["type"]) end if gg.getResultCount()==0 then gg.toast(qmnb[2]["name"].."开启失败")return end szxx=gg.getResults(gg.getResultCount()) szpd={} a=0 for i=4,#qmnb do for s=1,#szxx do if szpd[s]~="false" then if gg.getValues({{address=szxx[s].address+qmnb[i]["offset"],flags=qmnb[i]["type"]}})[1].value+0~=qmnb[i]["lv"]then szpd[s]="false" a=a+1 end end end end if a==#szxx then gg.toast(qmnb[2]["name"].."开启失败")return end b=0 t={} for x=1,#qmxg do if qmxg[x]["freeze"]==true then a=1 end for i=1,#szxx do if szpd[i]==nil then b=b+1 table.insert(t,{address=szxx[i].address+qmxg[x]["offset"],flags=qmxg[x]["type"],freeze=qmxg[x]["freeze"],value=qmxg[x]["value"]}) end end end gg.setValues(t) gg.addListItems(t) gg.clearResults() if a~=1 then gg.clearList()else a=nil end gg.toast(qmnb[2]["name"].."开启成功,共修改了"..b.."条数据") end'
pzzz='function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == false) then local item = {} item[#item+1] = t[#t] item[#item]. freeze = false gg.addListItems(item) if (w[4] == true) then local item = {} item[#item+1] = t[#t] item[#item]. freeze = true gg.addListItems(item) end end end end gg.setValues(t) gg.toast(Name.."开启成功,共修改"..#t.."条数据") else gg.toast(Name.."开启失败", false) return false end else gg.toast(Name.."开启失败", false) return false end end'

function Hex_Con(_table, hex, O_hex) 
	local list = {} 
	if hex then
		for index, value in ipairs(_table) do
			list[index] = string.format("%08X", math.abs(tonumber(value.value)))
			value.Hex = list[index]
		end
	end
	if O_hex then
		if #list ~= 0 then
			for index, value in ipairs(list) do
				local r = ""
				for _ = #value, 2, -2 do
					r = r .. string.sub(value, _ - 1, _)
				end
				_table[index].O_Hex = r
			end
		else
			for index, value in ipairs(_table) do
				local h = string.format("%08X", math.abs(tonumber(value.value)))
				local r = ""
				for _ = #h, 2, -2 do
					r = r .. string.sub(h, _ - 1, _)
				end
				value.O_Hex = r
			end
		end
	end
end

function Go_over(address, type, max, size) 
	local list = {}
	local correction = (address - max) % size
	correction = correction == 0 and correction or size - correction
	local start_addr = - math.abs(max) + correction
	for offset = start_addr, max, size do
		list[#list + 1] = {
			address = offset + address,
			flags = type,
			offset = offset,
		}
	end
	return list
end

function Range_filter(_table, range) 
	local r = gg.getValuesRange(_table)
	local ranges = {["Jh"] = {}, ["Ch"] = {}, ["Ca"] = {}, ["Cd"] = {}, ["Cb"] = {}, ["Ps"] = {}, ["A"] = {}, ["J"] = {}, ["S"] = {}, ["As"] = {}, ["V"] = {}, ["O"] = {}, ["B"] = {}, ["Xa"] = {}, ["Xs"] = {}, ["?"] = {}}
	for index, value in ipairs(r) do
		ranges[value][#ranges[value] + 1] = index
	end
	local get = ranges[range]
	local list = {}
	for index, value in ipairs(get) do
		list[#list + 1] = _table[value]
	end
	return list
end

function index_func_Data(_table, index) 
	local list = {}
	table.sort(index)
	for handle, value in pairs(index) do
		list[#list + 1] = _table[value]
	end
	return list
end

function Contrast_Readable(_table, other) 
	local list = {}
	if _table then
		if other then
			for index, value in ipairs(_table) do
				list[index] = {
					value.value,
					value.flags,
					value.address
				}
			end
		else
			for index, value in ipairs(_table) do
				list[index] = {
					value.value,
					value.flags,
					value.offset
				}
			end
		end
	end
	return list
end

function remove_repeat(_table) 
	local list = {}
	local r = {}
	for index, value in pairs(_table) do
		r[table.concat(value)] = index
	end
	for index, value in pairs(r) do
		list[#list + 1] = value
	end
	return list
end
	
function Disasm_Code(Address_list, Code_List)
	local _t
	local Code = {
		[1] = {4, "ASM_ARM32"},
		[2] = {6, "ASM_ARM64"},
		[3] = {5, "ASM_THUMB"}
	}
	if Address_list then
		for i in ipairs(Code_List) do
			if Code_List[i] then
				for _ = 1, #Address_list do
					local r = gg.disasm(Code[i][1], Address_list[_].address, Address_list[_].value)
					Address_list[_][Code[i][2]] = r
				end
			end
		end
	end
end

function Filter_Only_Code(Addr_list, Code_list, Filter_list)
	local Code = {
		[1] = "ASM_ARM32",
		[2] = "ASM_ARM64",
		[3] = "ASM_THUMB"
	}
	if Addr_list then
		for _ = #Addr_list, 1, -1 do
			local r = {}
			for i in pairs(Filter_list) do
				if Filter_list[i] and #Set.Disams[Code[i]] > 0 then
					local _t = true 
					for k, v in ipairs(Set.Disams[Code[i]]) do
						 if Addr_list[_][Code[i]]:find(v) then
							_t = false
							break
						end
					end
					if _t then
						Addr_list[_][Code[i]] = nil
					end
				end
			end
		end
	end
end

function Turn_Code_txt(Address_Code_list)
	local t = {}
	local Code_list = {
		['ASM_ARM32'] = 'ARM操作码',
		['ASM_ARM64'] = 'ARM64操作码',
		['ASM_THUMB'] = 'Thumb操作码',
		['Hex'] = '十六进制',
		['O_Hex'] = '反十六进制',
	}
	if Set.Code_Addr_delete then
		for i in ipairs(Address_Code_list) do
			local r = {}
			local _r = false
			r[#r + 1] = "地址 " .. string.format("0x%X", Address_Code_list[i].address)
			Address_Code_list[i].address = nil
			Address_Code_list[i].flags = nil
			r[#r + 1] = "值 " .. Address_Code_list[i].value
			Address_Code_list[i].value = nil
			for Code in pairs(Address_Code_list[i]) do
				_r = true
				r[#r + 1] = Code_list[Code] .. ": " .. Address_Code_list[i][Code]
			end
			if _r then
				t[#t + 1] = table.concat(r, "\t")
			end
		end
	else
		for i in ipairs(Address_Code_list) do

			local r = {}
			r[#r + 1] = "地址 " .. string.format("0x%X", Address_Code_list[i].address)
			Address_Code_list[i].address = nil
			Address_Code_list[i].flags = nil
			r[#r + 1] = "值 " .. Address_Code_list[i].value
			Address_Code_list[i].value = nil
			for Code in pairs(Address_Code_list[i]) do
				r[#r + 1] = Code_list[Code] .. ": " .. Address_Code_list[i][Code]
			end
			t[#t + 1] = table.concat(r, "\t")
		end
	end
	return t
end

function Edit_Code_Delet(index, _table)
	local Code = _table[index]
	local t = {{"过滤", "删除"}, {Code, false}, {"text", "checkbox"}}
	local tt = gg.prompt(t[1], t[2], t[3])
	if tt then
		if tt[1] ~= Code then
			_table[index] = tt[1]
		end
		if tt[2] then
			table.remove(_table, index)
		end
	end
	Call_Set.Disams = Set.Disams
end

function Add_Code_item(_table)
	local t = gg.prompt({"过滤"}, {""}, {"text"})
	if t then
		if t[1] ~= "" then
			table.insert(_table, t[1])
		end
	end
	Call_Set.Disams = Set.Disams
end

function Fast_delete(_table, toast)
	local t = gg.multiChoice(_table, nil, toast)
	if t then
		for i = #_table, 1, -1 do
			if t[i] then
				table.remove(_table, i)
			end
		end
		Call_Set.Disams = Set.Disams
	end
end
		

function Code_Moudle(re)
	_env = re
	env = debug.getinfo(2).func
	local t = {"单地址", "多地址返回表", "搜索列表", "保存列表选中值", "返回"}
	local tt = gg.choice(t, nil, "过滤返回值\n" .. D_Rose[math.random(1, #D_Rose)])
	if tt then
		if tt == #t then
			_env()
		else
			Call_Set.Input_Moudle = tt
			gg.toast("设置完成")
		end
	end
end

function Code_filter()
	env = debug.getinfo(2).func
	_env = nil
	local t = {"ARM过滤列表", "ASM64过滤列表", "Thumb过滤列表", "设置模式", "返回"}
	local r = {{{Set.Disams.ASM_ARM32}, "ARM过滤列表", "快速删除ARM列表"}, {{Set.Disams.ASM_ARM64}, "ARM64过滤列表", "快速删除ARM64列表"}, {{Set.Disams.ASM_THUMB}, "THUMB过滤列表", "快速删除THUMB过滤列表"}}
	local tt = gg.choice(t, nil, "过滤列表(支持正则表达式)\n" .. D_Rose[math.random(1, #D_Rose)])
	if tt then
		if tt == #t then
			All_setting()
		elseif tt ~= 4 then
			_env = {r[tt][1][1], r[tt][2], r[tt][3]}
			ASM_Filter(_env)
		else
			Code_Moudle(env)
		end
	end
end

function ASM_Filter(__)
	env = debug.getinfo(2).func
	local Code_table = __[1]
	local toast1 = __[2]
	local toast2 = __[3]
	local t = {"添加过滤项"}
	for index, value in ipairs(Code_table) do
		t[#t + 1] = value
	end
	t[#t + 1] = "快速删除"
	t[#t + 1] = "返回"
	local tt = gg.choice(t, nil, toast1 .. "\n当前共" .. #Code_table .. "条\n" .. D_Rose[math.random(1, #D_Rose)])
	if tt then
		if tt == 1 then
			Add_Code_item(Code_table)
		elseif tt == #t - 1 then
			Fast_delete(Code_table, toast2 .. "\n当前共" .. #Code_table .. "条\n" .. D_Rose[math.random(1, #D_Rose)])
		elseif tt == #t then
			Code_filter()
		else
			Edit_Code_Delet(tt - 1, Code_table)
		end
	end
end




function Data_Contrast(Source, Target, other) 
	local collection
	local list1 = {}
	local list2 = {}
	local same1 = {}
	local same2 = {}
	local same_list = {}
	local disapp1 = {}
	local disapp2 = {}
	for index, value in ipairs(Source) do
		local concat = table.concat(value, ",")
		list1[concat] = index
		same1[index] = concat
	end
	for index, value in ipairs(Target) do
		local concat = table.concat(value, ",")
		list2[concat] = index
		same2[index] = concat
	end
	for index, concat in ipairs(same2) do
		local is = list1[concat]
		if is then
			same_list[#same_list + 1] = is
			same1[is] = nil
		else
			disapp1[#disapp1 + 1] = index
		end
	end
	if not other then
		for index, concat in pairs(same1) do
			local _table = (list2[concat] and {} or disapp2)
			_table[#_table + 1] = index
		end
		collection = {disapp1, disapp2}
	end
	return same_list, collection
end

function Chain_Contrast(Source, Target)
	local list1 = {}
	local list2 = {}
	for index, value in ipairs(Source) do
		local _ = {
			value.internalname,
			value.state,
			value.flags,
			value.value
		}
		for vector, offset in ipairs(value) do
			_[#_ + 1] = offset
		end
		list1[table.concat(_, ",")] = index
	end
	for index, value in ipairs(Target) do
		local _ = {
			value.internalname,
			value.state,
			value.flags,
			value.value
		}
		for vector, offset in ipairs(value) do
			_[#_ + 1] = offset
		end
		local contrast = table.concat(_, ",")
		if list1[contrast] then
			table.insert(list2, value)
		end
	end
	return list2
end

function More_time_D_Contrast(Choice, Tab_All, Offset_Addr, All)
	local t = {}
	local tt = {}
	local _t = {}
	local _P = {}
	local r
	for i in pairs(Choice) do

			t[#t + 1] = i

	end
	for i, v in ipairs(Tab_All[t[1]]) do

		_P[#_P + 1] = v
	end
	for i = 1, #t - 1 do
		for _ = 1, #t - i do
			tt[#tt + 1] = {}
			tt[#tt][1] = t[i]
			tt[#tt][2] = t[_ + i]
		end
	end
	for i = 2, #t do
		for i in pairs(_P) do
			_t[#_t + 1] = _P[i]
		end
		local F_index, S_index = Data_Contrast(Contrast_Readable(_t, Offset_Addr), Contrast_Readable(Tab_All[t[i]], Offset_Addr), Set.Contrast_Moudle)
		if S_index then
			_P = index_func_Data(_t, F_index)
			local S_table = index_func_Data(Tab_All[t[i]], S_index[2])

			_t = index_func_Data(_t, S_index[1])
			for _ in pairs(S_table) do
				_t[#_t + 1] = S_table[_]
			end
		else
			_t = index_func_Data(_t, F_index)
		end
	end
	if All then
		r = {}
		for i in pairs(tt) do
			local F_index, S_index = Data_Contrast(Contrast_Readable(Tab_All[tt[i][1]], Offset_Addr), Contrast_Readable(Tab_All[tt[i][2]], Offset_Addr), Set.Contrast_Moudle)
			local F_table
			if S_index then
				F_table = index_func_Data(Tab_All[tt[i][1]], S_index[1])
				local S_table = index_func_Data(Tab_All[tt[i][2]], S_index[2])
				for i, v in pairs(S_table) do
					F_table[#F_table + 1] = v
				end
			else
				F_table = index_func_Data(Tab_All[tt[i][1]], F_index)
			end
			r[i] = F_table
			r[i].name = {Choice[tt[i][1]]; Choice[tt[i][2]]}
			gg.toast(table.concat(tt[i], "与") .. "对比出" .. #F_table .. "条" .. (Set.Contrast_Moudle and "相同" or "不同") .. "值")

		end
	end
	return _t, r
end

function More_time_C_Contrast(Choice, Tab_All, All)
	local t = {}
	local tt = {}
	local _t = {}
	local r
	for i in pairs(Choice) do
		t[#t + 1] = i
	end
	for i = 1, #t - 1 do
		for _ = 1, #t - i do
			tt[#tt + 1] = {}
			tt[#tt][1] = t[i]
			tt[#tt][2] = t[_ + i]
		end
	end
	for i, v in ipairs(Tab_All[t[1]]) do
		_t[#_t + 1] = v
	end
	for i = 2, #t do
		_t = Chain_Contrast(_t, Tab_All[t[i]])
	end
	if All then
		r = {}
		for i in pairs(tt) do
			local F_index = Chain_Contrast(Tab_All[tt[i][1]], Tab_All[tt[i][2]])
			r[i] = F_index
			r[i].name = {Choice[tt[i][1]]; Choice[tt[i][2]]}
			gg.toast(table.concat(tt[i], "与") .. "对比出" .. #F_index .. "条" .. (Set.Contrast_Moudle and "相同" or "不同") .. "锁链")
		end
	end
	return _t, r
end

function Load_Moudle_J(l_text)
	local t = {
		"Data",
		"Chain",
		"SearchList",
		"SaveList",
		"ASM_Code"
	}
	return l_text and (t[l_text] or "Unknow")
end

function More_File_D_c(tab_load)
	local tt = {}
	local Search_Count = 1
	local Save_Count = 1
	local Unknow = 1
	for i in pairs(tab_load) do
		if not tab_load[i].name or tab_load[i].name == "" then
			if tab_load[i].loadMoudle and tab_load[i].loadMoudle == 3 then
				tt[#tt + 1] = "SearchList" .. Search_Count
				Search_Count = Search_Count + 1
			elseif tab_load[i].loadMoudle and tab_load[i].loadMoudle == 4 then
				tt[#tt + 1] = "SaveList" .. Save_Count
				Save_Count = Save_Count + 1
			else
				tt[#tt + 1] = "Unknow" .. Unknow
				Unknow = Unknow + 1
			end
		else
			tt[#tt + 1] = tab_load[i].name
		end
	end
	return tt
end

function Turn_T_txt(index_table, Offset)
	local t = {}
	local type = {
		[127] = 'Auto',
		[16] = 'Float',
		[1] = 'Byte',
		[2] = 'Word',
		[32] = 'Qword',
		[4] = 'Dword',
		[64] = 'Double',
		[8] = 'Xor',
	}
	local tt = {}
	local r = {}
	if not Offset then
		for i in ipairs(index_table) do
			t[index_table[i].address] = {}
		end
		for i in pairs(index_table) do
			t[index_table[i].address][#t[index_table[i].address] + 1] = "值 " .. index_table[i].value .. ", 类型 " .. type[index_table[i].flags]
		end
		for addr in pairs(t) do
			r[#r + 1] = {addr, t[addr]}
		end
		table.sort(r, function (a, b)
			return #a[2] > #b[2]
		end)
		for i in ipairs(r) do
			tt[#tt + 1] = "地址: " .. string.format("0x%X", r[i][1]) .. ", " .. table.concat(r[i][2], " -> ")
		end
	else
		for i in ipairs(index_table) do
			t[index_table[i].offset] = {}
		end
		for i in pairs(index_table) do
			t[index_table[i].offset][#t[index_table[i].offset] + 1] = "值 " .. index_table[i].value .. ", 类型 " .. type[index_table[i].flags]
		end
		for offset in pairs(t) do
			r[#r + 1] = {offset, t[offset]}
		end
		table.sort(r, function (a, b)
			return #a[2] > #b[2]
		end)
		for i in ipairs(r) do
			tt[#tt + 1] = "偏移: " .. r[i][1] .. ", " .. table.concat(r[i][2], " -> ")
		end
	end
	return table.concat(tt, "\n")
end

function Pointer_Visualization(Pointer)
	local global_list = {}
	for index, value in ipairs(Pointer) do
		local list = {}
		list[#list + 1] = string.format("%s: %s[%s]", value.state, value.internalname, value.count)
		list[#list + 1] = string.format(" + 0x%X", value[1])
		for offset = 2, #value do
			list[#list + 1] = string.format(" -> %s 0x%X", (value[offset] >= 0 and "+" or "-"), math.abs(value[offset]))
		end
		list[#list + 1] = string.format(" = %s, 0x%X", value.value, value.address)
		global_list[#global_list + 1] = table.concat(list)
	end
	return global_list
end

function Save_Data_Contrast()
	if Set.Dialog_pop then
		local t = {{"想加载的文件个数", "不再弹出"}, {Set.Dialog_Loadfile, Set.Dialog_pop}, {"text", "checkbox"}}
		local tt = gg.prompt(t[1], t[2], t[3])
		if tt then
			if tt[1] ~= "" and type(tonumber(tt[1])) == type(1) then
				Call_Set.Dialog_Loadfile = tt[1]
			end
			Call_Set.Dialog_pop = not tt[2]
		else
			goto End_func
		end
	end
	if Set.Dialog_Loadfile > 1 then
		local ptr = G_Configure(5)
		local path
		if Set.Dialog_Loadfile ~= #ptr[1] then
			path = gg.getFile():gsub('[^/]*$', '')
		end
		local r = {[1] = {}, [2] = {}, [3] = {}}	

		for i = 1, Set.Dialog_Loadfile do
			r[1][#r[1] + 1] = "路径" .. i
			r[2][#r[2] + 1] = ptr[1][i] or path .. "new_Contrast.lua"
			r[3][#r[3] + 1] = "file"
		end
		local Reduction = 2
		if Set.Dialog_Loadfile ~= 2 then
			Reduction = 4
			r[1][#r[1] + 1] = "分次对比输出文件"; r[2][#r[2] + 1] = ptr[2][#ptr[2] - 1] or path .. "More_Contract_Record.lua"; r[3][#r[3] + 1] = "file"
			r[1][#r[1] + 1] = "分次对比"; r[2][#r[2] + 1] = ptr[3][#ptr[3] - 1] or false; r[3][#r[3] + 1] = "checkbox"
		end
		r[1][#r[1] + 1] = "输出的文件"; r[2][#r[2] + 1] = ptr[2][#ptr[2]]; r[3][#r[3] + 1] = "file"
		r[1][#r[1] + 1] = "输出文件"; r[2][#r[2] + 1] = ptr[3][#ptr[3]]; r[3][#r[3] + 1] = "checkbox"
		local t = gg.prompt(r[1], r[2], r[3])
		if t then
			local __ = {{}, {}, {}}
			for i = 1, #t - Reduction do
				__[1][i] = t[i]
			end
			for i = Set.Dialog_Loadfile + 1, Set.Dialog_Loadfile + Reduction, 2 do
				__[2][#__[2] + 1] = t[i]
				__[3][#__[3] + 1] = t[i + 1]
			end
			G_Configure(5, __)
			local _p = {}
			local tt = {}
			for i = 1, #t - Reduction do
				local Load = loadfile(t[i])
				if Load then
					tt[#tt + 1] = t[i]
					_p[#_p + 1] = Load()
				end
			end
			for i = #_p, 1, -1 do
				if not _p[i].loadMoudle and _p[i].loadMoudle ~= 1 and _p[i].loadMoudle ~= 2 then
					table.remove(_p, i)
				end
			end

			if #_p >= 2 then
				local _r = {}

				local p = {}
				local rr = {}
				local _rr = {}
				local type = {}
				local _c = {}
				for i in ipairs(tt) do
					if not _p[i].loadMoudle then
						p = nil
						break
					end
					if not rr[_p[i].loadMoudle] then
						rr[_p[i].loadMoudle] = true
						_rr[#_rr + 1] = true
					end
					p[#_rr] = _p[i].loadMoudle
				end
				if p and #p == 1 then
					local _Res, _array
					local _More = #t - Reduction + 2
					if _More == #t then
						_More = 0
					end
					if p[1] == 1 then
						for i in ipairs(_p) do
							if not _p[i].ranges then
								break
							end
							type[_p[i].ranges] = true
						end
						for i in pairs(type) do
							_c[#_c + 1] = i
						end
						if #_c == 1 then
							_Res, _array = More_time_D_Contrast(tt, _p, nil, t[_More])
							if #Res ~= 0 then
								_Res.loadMoudle = 1
								_Res.ranges = _c[1]
								_Res.type = {["flags"] = _Res[1].flags}
								Contrast_Offset = _Res
								gg.toast("对比出" .. #_Res .. "条" .. (Set.Contrast_Moudle and "相同" or "不同") .. "值")
							end
						end
					elseif p[1] == 2 then
						_Res, _array = More_time_C_Contrast(tt, _p, t[_More])
						if #_Res ~= 0 then
							_Res.loadMoudle = 2
							Contrast_Chain = _Res
							gg.toast("对比出" .. #_Res .. "条" .. (Set.Contrast_Moudle and "相同" or "不同") .. "锁链")
						end
					end
					if _array and #_array ~= 0 then
						local _Output = {}
						for i in pairs(_array) do
							local _Contrast = {}
							for _ in pairs(_array[i].name) do
								_Contrast[#_Contrast + 1] = _array[i].name[_]
							end
							_array[i].name = nil
							_Output[#_Output + 1] = table.concat(_Contrast, " 与 ") .. "对比的结果:"
							if p[1] == 1 then
								_Output[#_Output + 1] = Turn_T_txt(_array[i], true)
							elseif p[1] == 2 then
								_Output[#_Output + 1] = table.concat(Pointer_Visualization(_array[i]), "\n")
							end
						end
						io.open(t[#t - 3], "w"):write(table.concat(_Output, "\n\n")):close()
						gg.toast("分次对比完成写出")
					end
					if _Res and #_Res ~= 0 then
						if t[#t] then
							gg.saveVariable(_Res, t[#t - 1])
							gg.toast("写出" .. #_Res .. "条" .. (Set.Contrast_Moudle and "相同" or "不同") .. (_Res.loadMoudle == 1 and "值" or "锁链"))
						end
					end
				else
					gg.toast("Eror i cannot Contrast More type at The same time or file error")
				end
			else
				gg.toast("load file error or less than 2 file success load")
			end
		end
	end
	::End_func::
end

function S_S_Contrast()
	if #Se_Sa_List >= 2 then
		local p = true
		for i in pairs(Se_Sa_List) do
			if not Se_Sa_List[i].loadMoudle and Se_Sa_List[i].loadMoudle ~= 3 and Se_Sa_List[i].loadMoudle ~= 4 then
				p = nil
				break
			end
		end
		if p then
			local r = More_File_D_c(Se_Sa_List)
			local ptr = G_Configure(6)
			local _r = {[1] = {}, [2] = {}, [3] = {}}
			_r[1][1] = "输出的文件"; _r[2][1] = ptr[1]; _r[3][1] = "file"
			_r[1][2] = "是否分次对比"; _r[2][2] = ptr[2]; _r[3][2] = "checkbox"
			for i in pairs(r) do
				_r[1][#_r[1] + 1] = r[i]
				_r[2][#_r[2] + 1] = false
				_r[3][#_r[3] + 1] = "checkbox"
			end
			local t = gg.prompt(_r[1], _r[2], _r[3])
			if t then
				G_Configure(6, {t[1], t[2]})
				local tt = {}
				for i = 3, #t do
					if t[i] then
						tt[i - 2] = r[i - 2]
					end
				end
				local _Res, _array = More_time_D_Contrast(tt, Se_Sa_List, true, t[2])
				gg.toast("对比出" .. #_Res .. "条" .. (Set.Contrast_Moudle and "相同" or "不同") .. "值")
				local _Output = {}
				if #_Res ~= 0 then
					_Output[#_Output + 1] = Turn_T_txt(_Res)
				end
				if _array and #_array ~= 0 then
					for i in pairs(_array) do
						local _Contrast = {}
						for _ in pairs(_array[i].name) do
							_Contrast[#_Contrast + 1]= _array[i].name[_]
						end
						_array[i].name = nil
						_Output[#_Output + 1] = table.concat(_Contrast, " 与 ") .. "对比的结果:"
						_Output[#_Output + 1] = Turn_T_txt(_array[i])
					end
				end
				if #_Output ~= 0 then
					io.open(t[1], "w"):write(table.concat(_Output, "\n\n")):close()
					gg.toast("写出成功")
				end
			end
		else
			gg.toast("error i cannot read enough list")
		end
	else
		gg.toast("error less list than 2")
	end
end

function Save_S_S_Data()
	env = debug.getinfo(2).func
	local t = {"搜索列表", "保存列表", "删除数据", "返回"}
	local tt = gg.choice(t, nil, D_Rose[math.random(1, #D_Rose)])
	if tt then
		if tt == 1 then
			local S = {{"名字", "搜索列表数量", "自动获取"}, {"", Set.S_S_Get[1][1], Set.S_S_Get[1][2]}, {"text", "text", "checkbox"}}
			local r = gg.prompt(S[1], S[2], S[3])
			if r then
				Set.S_S_Get[1][1], Set.S_S_Get[1][2] = r[2], r[3]
				Call_Set.S_S_Get = Set.S_S_Get
				Se_Sa_List[#Se_Sa_List + 1] = r[3] and gg.getResults(gg.getResultsCount()) or gg.getResults(r[2])
				Se_Sa_List[#Se_Sa_List].loadMoudle = 3
				Se_Sa_List[#Se_Sa_List].name = r[1]
				gg.toast("保存完成, 共" .. #Se_Sa_List[#Se_Sa_List] .. "条")
			end
		elseif tt == 2 then
			local S = {{"名字", "保存列表数量", "自动获取"}, {"", Set.S_S_Get[2][1], Set.S_S_Get[2][2]}, {"text", "text", "checkbox"}}
			local r = gg.prompt(S[1], S[2], S[3])
			if r then
				Set.S_S_Get[2][1], Set.S_S_Get[2][2] = r[2], r[3]
				Call_Set.S_S_Get = Set.S_S_Get
				Se_Sa_List[#Se_Sa_List + 1] = r[3] and gg.getListItems() or gg.getListItems(r[2])
				Se_Sa_List[#Se_Sa_List].loadMoudle = 4
				Se_Sa_List[#Se_Sa_List].name = r[1]
				gg.toast("保存完成, 共" .. #Se_Sa_List[#Se_Sa_List] .. "条")
			end
		elseif tt == 3 then
			local name = More_File_D_c(Se_Sa_List)
			if #name ~= 0 then
				table.insert(name, 1, "全部删除")
				local S = gg.multiChoice(name, nil, "当前共有" .. #Se_Sa_List .. "个项目")
				if S then
					if not S[1] then
						for i = #Se_Sa_List, 1, -1 do
							if S[i + 1] then
								table.remove(Se_Sa_List, i)
							end
						end
					else
						Se_Sa_List = {}
					end
					gg.toast("删除完成")
				end
			else
				gg.alert("无数据")
			end
		elseif tt == 4 then
			Contrast_Tool()
		end
	end
end



function getRanges()
	local ranges = {}
	local tt = {}
	local t = gg.getRangesList('^/data/*.so*$')
	for i in pairs(t) do
		if t[i].type:sub(2, 2) == 'w' or t[i].type == "r-xp" then
			if not tt[t[i].internalName] then
				tt[t[i].internalName] = {}
			end
			if not tt[t[i].internalName][t[i].state] then
				tt[t[i].internalName][t[i].state] = 0
			end
			tt[t[i].internalName][t[i].state] = tt[t[i].internalName][t[i].state] + 1
			t[i].count = tt[t[i].internalName][t[i].state]
			table.insert(ranges, t[i])
		end
	end
	return ranges
end

function Estimated_time(start_time, in_ing, all)
	local t = {}
	local time = os.clock() - start_time
	t[1] = in_ing / time 
	t[2] = time / in_ing 
	t[3] = (all - in_ing) / t[1] 
	return t
end

function str_split(strData, strSub)
	if not strData then
		return nil
	end
	local tabData = {}
	for item in string.gmatch(strData, string.format("([^%s]+)", strSub)) do
		table.insert(tabData,item)
	end
	return tabData
end

function D_Conversion_filter(Str_filter, tab_filter)
	local _t = str_split(Str_filter, ";")
	local r = {}
	local _tt = {}
	local _r = tab_filter
	if _t then
		_r = {}
		for i in ipairs(_t) do
			if string.find(_t[i], "~") then
				r[#r + 1] = {}
				r[#r] = str_split(_t[i], "~") 
			else
				_tt[_t[i]] = true 
			end
		end
		for i in ipairs(tab_filter) do
			if not _tt[tostring(tab_filter[i].value)] then
				_r[#_r + 1] = tab_filter[i]
			end
		end
		if #r > 0 then
			local _t = {}
			for i in ipairs(_r) do
				for _ in ipairs(r) do 
					if tonumber(_r[i].value) < tonumber(r[_][1]) or tonumber(_r[i].value) > tonumber(r[_][2]) then
						_t[#_t + 1] = _r[i]
					end
				end
			end
			_r = _t
		end
	end
	return _r
end

function C_Conversion_filter(Str_filter, tab_filter)
	local _t = str_split(Str_filter, ";")
	local r = {}
	local _tt = {}
	local _S = {}
	local _r = tab_filter
	if _t then
		_r = {}
		for i in ipairs(_t) do
			if string.find(_t[i], "~") then
				r[#r + 1] = {}
				r[#r] = str_split(_t[i], "~") 
				for k in pairs(r[#r]) do
					if not tonumber(r[#r][k]) then
						r[#r][k] = tonumber(r[#r][k], 16)
					end
				end
			else
				if not tonumber(_t[i]) then
					_t[i] = tonumber(_t[i], 16)
				end
				_tt[_t[i]] = true 
			end
		end
		for i in ipairs(tab_filter) do
			if not _tt[tonumber(tab_filter[i].address)] then
				_r[#_r + 1] = tab_filter[i]
				_S[#_S + 1] = i
			end
		end
		if #r > 0 then
			local _t = {}
			for i in ipairs(_r) do
				for _ in ipairs(r) do 
					if tonumber(_r[i].address) < tonumber(r[_][1]) or tonumber(_r[i].address) > tonumber(r[_][2]) then
						_t[#_t + 1] = _S[i]
					end
				end
			end
			_r = _t
		else
		 _r = _S
		end
	end
	for i = #_r, 1, -1 do
		table.remove(tab_filter, _r[i])
	end
end


function filter_Const(Addr, Addr_list)
	local The_Same_item
	if Addr_list and Addr_list.loadMoudle == 1 and Addr_list.type and Addr_list.type.flags and Addr_list.type.size and Addr_list.offset and Addr_list.ranges then
		The_Same_item = {}
		for index, value in ipairs({"ranges", "offset", "type", "loadMoudle", "address", "value"}) do
			The_Same_item[value] = Addr_list[value]
		end
		The_Same_item.address = Addr
		The_Same_item.value = gg.getValues({[1] = {address = Addr; flags = Addr_list.type.flags}})[1].value
		if Addr_list.ranges == gg.getValuesRange({Addr})[1] then

			local t = Go_over(Addr, Addr_list.type.flags, Addr_list.offset, Addr_list.type.size)
			t = Range_filter(t, Addr_list.ranges)
			local _t = gg.getValues(t)
			for i in ipairs(t) do
				_t[i].offset = t[i].offset
			end
			_t = D_Conversion_filter(Addr_list.filter, _t)
			local r = Contrast_Readable(_t)
			local _r = Contrast_Readable(Addr_list)
			local Count = Set.Filter_different and ({Data_Contrast(r, _r)})[2][2] or Data_Contrast(r, _r, true)
			for i in ipairs(Count) do
				rawset(The_Same_item, i, _t[Count[i]])
			end
		end
	end
	return The_Same_item
end

function load_Pointer(load_tab)
	local Save_t = {}
	local flags_bit = {[true] = 32, [false] = 4}
	local ti64 = gg.getTargetInfo().x64
	local fix = not ti64
	local Type = flags_bit[ti64]
	local S_list = {}
	for index, value in ipairs(ranges) do
		local name = value.internalName:gsub('^.*/', '')
		local state = value.state
		if not S_list[name] then
			S_list[name] = {}
		end
		if not S_list[name][state] then
			S_list[name][state] = {}
		end
		S_list[name][state][value.count] = value.start
	end
	local mt = {__index = function(_, __)
			return {}
		end
	}
	setmetatable(S_list, mt)
	local function Get_Address(pre_tab)
		local index_count = 0
		local addr = {}
		local pointer = {}
		for index, value in ipairs(pre_tab) do
			local name = value.internalname
			local state = value.state
			local start = S_list[name][state]
			addr[index] = start and start[value.count]
		end
		while true do
			index_count = index_count + 1
			local t, r, _r = {}, {}, {}
			for index, value in pairs(addr) do
				local offset = pre_tab[index][index_count]
				if offset then
					if fix then
						value = value & 0xFFFFFFFF
					end
					local goTo = value + offset
					if not t[goTo] then
						t[goTo] = {}
						r[#r + 1] = {address = goTo, flags = Type}
					end
					table.insert(t[goTo], index)
				else
					addr[index] = nil
					Save_t[index] = pointer[index] and ({address = pointer[index], flags = Type})
				end
			end
			if #r == 0 then break end
			r = gg.getValues(r)
			for index, value in ipairs(r) do
				for _, __ in ipairs(((t[value.address]) or {})) do
					pointer[__] = value.address
					_r[__] = value.value
				end
			end
			addr = _r
		end
		return Save_t
	end
	return Get_Address(load_tab)
end





function getRangesLists(flags)
	local t = {
		["Jh"] = {2, "JAVA_HEAP"},
		["Ch"] = {1, "C_HEAP"},
		["Ca"] = {4, "C_ALLOC"},
		["Cd"] = {8, "C_DATA"},
		["Cb"] = {16, "C_BSS"},
		["PS"] = {262144, "ALL"},
		["A"] = {32, "A_ANONMYOUS"},
		["J"] = {65536, "ALL"},
		["S"] = {64, "STACK"},
		["As"] = {524288, "ASHMEM"},
		["V"] = {1048576, "B_BAD"},
		["O"] = {-2080896, "OTHER"},
		["B"] = {131072, "B_BAD"},
		["Xa"] = {16384, "CODE_APP"},
		["Xs"] = {32768, "CODE_SYSTEM"},
		["?"] = {-1, "ALL"},
	}
	return t[flags]
end

function Search_Data_Count(t_a, t_l, t_f, t_m)
	local t = {}
	local _t = {}
	local r = {}
	local _r = {}
	for i in ipairs(t_a) do
		if not t[t_a[i].value] then
			t[t_a[i].value] = {}
		end

		table.insert(t[t_a[i].value], i)
	end
	for i in ipairs(t_l) do
		if not r[t_l[i].value] and not t_l[i].get then
			r[t_l[i].value] = true
			_t[#_t + 1] = t_l[i].value
		end
	end
	r = nil
	gg.setRanges(t_m)
	local time = os.clock()
	local p = tonumber(tostring(Set.S_Count[1]))
	local _p = tonumber(tostring(Set.S_Count[2]))
	for index, value in ipairs(_t) do
		local sure = "符合"
		gg.clearResults()
		gg.searchNumber(value, t_f)
		local _ = gg.getResultCount()
		if Set.S_Count and #Set.S_Count ~= 0 then
			if (p and _ < p) or (_p and _ > _p) then
				if Set.fail_remove then
					for k in ipairs(t[value]) do
						_r[#_r + 1] = t[value][k]
					end
				end
				sure = "不符合"
			else
				for k in ipairs(t[value]) do
					t_a[t[value][k]].get = _
				end
			end
		else
			for k in ipairs(t[value]) do
				t_a[t[value][k]].get = _
			end
		end
		local tt = Estimated_time(time, index, #_t)
		gg.toast("\n数值: " .. value .. "\n搜索数量: " .. _ .. "  " .. sure .. "要求\n搜索耗时: " .. string.format("%.3fs", tt[2]) .. "\n预计时间: " .. string.format("%.3fs", tt[3]))
	end
	if Set.fail_remove then
		table.sort(_r)
		for i = #_r, 1, -1 do
			table.remove(t_a, _r[i])
		end
	end
	gg.clearResults()
end



function Assert(data)
	if data == nil or data == "" then
		return false
	 else
		return true
	end
end


function string_flags(flags)
	local type = {
		[127] = 'Auto',
		[16] = 'Float',
		[1] = 'Byte',
		[2] = 'Word',
		[32] = 'Qword',
		[4] = 'Dword',
		[64] = 'Double',
		[8] = 'Xor',
	}
	return flags and (type[flags] or flags)
end

function selectType()
	local _t = 4
	local S_Type = {"A	 Auto", "D	 Dword", "F	 Float", "E	 Double", "W	 Word", "B	 Byte", "Q	 Qword", "X	 Xor"}
	local Type = {127, 4, 16, 64, 2, 1, 32, 8}
	local t = gg.choice(S_Type, nil, "请选择类型\n当前类型: " .. string_flags(tonumber(Addr.type.flags)))
	if t then
		if Type[t] == 2 or Type[t] == 1 then
			_t = Type[t]
		end
		return Type[t], _t
	 else
	 	return nil, nil
	end
end



function Output_data(wait_out)
	local t
	if wait_out then
		if wait_out.loadMoudle == 1 then
			t = {"内存" .. tostring(wait_out.ranges), "类型" .. string_flags(tonumber(wait_out.type.flags)), "最大偏移" .. tostring(wait_out.offset)}
			for i in ipairs(wait_out) do
				t[#t + 1] = wait_out[i].value .. "\t\t偏移" .. wait_out[i].offset .. "\t\t搜索数量" .. (wait_out[i].get or "Unknow")
			end
		elseif wait_out.loadMoudle == 2 then
			t = Pointer_Visualization(wait_out)
		elseif wait_out.loadMoudle == 5 then
			t = Turn_Code_txt(wait_out)
		end
	end
	return t
end



function editData_Common(choice, _table)
	local list = {
		{'Name:', '想要修改的值(默认0):', '是否冻结'},
		{'', '', false}, 
		{'text', 'text', 'checkbox'}
	}
	local results = gg.prompt(list[1], list[2], list[3])
	if results then
		local name = results[1]
		local freeze = results[3]
		local editData = {}
		if not Assert(results[2]) then
			results[2] = 0
		end
		for index in ipairs(_table) do
			if choice[index] then
				table.insert(editData, {results[2], _table[index].offset})
			end
		end
		return editData, name, freeze
	end
end

function editData_Create(choice, r_list, _table, prompt, signature)
	local list = {
		{'Name:', '是否冻结', '单调值(默认0):', '采用单调值'},
		{'', false, '', false}, 
		{'text', 'checkbox', 'text', 'checkbox'}
	}

	local editData = {}
	prompt = prompt or {{}, {}, {}}
	local count = #prompt[1]
	for index, value in ipairs(list[1]) do
		table.insert(prompt[1], value)
		table.insert(prompt[2], list[2][index])
		table.insert(prompt[3], list[3][index])
	end
	for index, value in ipairs(r_list) do
		if choice[index] then
			table.insert(prompt[1], value)
			table.insert(prompt[2], _table[index].value)
			table.insert(prompt[3], "text")

			table.insert(editData, {_table[index].value, _table[index].offset})
		end
	end
	local results = gg.prompt(prompt[1], prompt[2], prompt[3])
	if results then
		local name = results[count + 1]
		local freeze = results[count + 2]
		for index = 1, count do
			if not results[index]:find("~") then
				if tonumber(signature[index].value) ~= tonumber(results[index]) then
					signature[index].range = results[index]
				end
			else
				local Search_range = str_split(results[index], "~")
				signature[index].value = Search_range[1]
				signature[index].range = Search_range[2]
			end
		end
		if results[count + 4] then
			if not Assert(results[count + 3]) then
				results[count + 3] = 0
			end
			local edit = results[count + 3]
			for index, value in ipairs(editData) do
				value[1] = edit
			end
		elseif not results[count + 4] then
			count = count + 5
			for index, value in ipairs(editData) do
				value[1] = results[count]
				count = count + 1
			end
		end
		return editData, name, freeze
	end
end

function Stack_Edit(choice, r_list, _table, prompt, signature) 
	if Set.Moudle_Edit then
		return editData_Common(choice, _table)
	end
	return editData_Create(choice, r_list, _table, prompt, signature)
end

function Convert_to_identify(_table, Creat)
	local function value_read(_table) 
		local list = {}
		for index, value in ipairs(_table) do
			list[#list + 1] = value.value .. ", offset: " .. value.offset .. ", search: " .. (value.get or "Unknow")
		end
		return list
	end
	local function N_transfer(_table) 
		local list = {}
		local r_list = value_read(_table)
		local choice = gg.multiChoice(r_list, nil, "选择特征码")
		if choice then
			for index, value in ipairs(_table) do
				if choice[index] then
					list[#list + 1] = {
						address = value.address,
						offset = value.offset,
						value = value.value,
						flags = value.flags,
						get = value.get
					}
				end
			end
			return list
		end
	end
	local function M_memory(_table)
		local return_list = N_transfer(_table)
		local prompt_select 
		if return_list then
			local r_list = value_read(return_list)
			local choice = gg.choice(r_list, 0, "选择主特征码")
			if choice then
				table.insert(return_list, 1, return_list[choice])
				table.remove(return_list, choice + 1)
				local main_addr = tonumber(return_list[1].address)
				return_list[1].offset = 0
				if not Creat then
					for index = 2, #return_list do
						return_list[index].offset = tonumber(return_list[index].address) - main_addr
					end
					return return_list, prompt_select, choice 
				end
				prompt_select = {{"主特征码: " .. return_list[1].value .. ", 地址: " .. string.format("0x%X", main_addr)}; {return_list[1].value}; {"text"}}
				for index = 2, #return_list do
					return_list[index].offset = tonumber(return_list[index].address) - main_addr
					prompt_select[1][index] = "副特征码: " .. return_list[index].value .. ", 偏移" .. return_list[index].offset 
					prompt_select[2][index] = return_list[index].value
					prompt_select[3][index] = "text"
				end
				return return_list, prompt_select, choice 
			end
		end
	end
	local function A_editor(_table, signature, prompt) 
		if _table then
			if signature then
				local main_addr = tonumber(signature[1].address)
				for index, value in ipairs(_table) do
					value.offset = tonumber(value.address) - main_addr
				end
				local r_list = value_read(_table)
				local choice = gg.multiChoice(r_list, nil, "选择修改的特征码")
				if choice then
					local editData, name, freeze = Stack_Edit(choice, r_list, _table, prompt, signature) 
					return choice, editData, name, freeze, _table 
				end
			end
		end
	end
	if _table then
		local list, prompt, order = M_memory(_table)
		if list then
			if Set.Edit_Select then
				local reduction = {}
				for index = 2, #list do
					reduction[index - 1] = list[index]
				end
				table.insert(reduction, order, list[1]) 
				local choice, editData, name, freeze = A_editor(reduction, list, prompt)
				return list, editData, name, freeze 
			end
			local choice, editData, name, freeze = A_editor(_table, list, prompt)
			return list, editData, name, freeze 
		end
	end
end

function Turn_Other_Executable(Pointer, edit)
	local list = {}
	local list2 = {}
	local r_list = Pointer_Visualization(Pointer)
	table.insert(r_list, 1, "All")
	local choice = gg.multiChoice(r_list, nil, "读取了" .. (#r_list - 1) .. "条锁链")
	if choice then
		if not choice[1] then
			for index, value in pairs(choice) do
				list[#list + 1] = Pointer[index - 1]
				list2[#list2 + 1] = r_list[index]
			end
		else
			table.remove(r_list, 1)
			list = Pointer
			list2 = r_list
		end
		if #list > 0 then
			if edit then
				local editData, name, freeze = Stack_Edit(list, list2, list)
				list = editData and list or nil
				return list, editData, name, freeze
			end
			return list
		end
	end
end

function Assemble_Pointer(signature, editData, name, freeze, memory)
	if not signature or not editData or not name then
		return
	end
	local list = {}
	local memory = getRangesLists(memory)[1]
	local type = signature[1].flags
	list[#list + 1] = "local Name = \"" .. name .. "\""
	list[#list + 1] = "gg.setRanges(" .. memory .. ")"
	list[#list + 1] = "local Type = " .. type
	list[#list + 1] = "local Search = {"
	for index, value in ipairs(signature) do
		list[#list + 1] = string.format("\t{%s,%s%s},", value.value, (value.range and (" " .. value.range .. ", ") or " "), value.offset)
	end
	list[#list + 1] = "}"
	local edit = {}
	local freeze = freeze and ", true" or ""
	for index, value in ipairs(editData) do
		edit[#edit + 1] = string.format("{%s, %s%s}", value[1], value[2], freeze)
	end
	list[#list + 1] = "local Modify = {" .. table.concat(edit, ", ") .. "}"
	list[#list + 1] = "Concise_Search(Search, Modify, Type, Name)"
	return table.concat(list, "\n")
end

function Assemble_Xscript(signature, editData, name, freeze, memory)
	if not signature or not editData or not name then
		return
	end
	local list = {}
	local memory = getRangesLists(memory)[1]
	local type = signature[1].flags
	list[#list + 1] = "local memory = " .. memory
	list[#list + 1] = "local array = {"
	for index, value in ipairs(signature) do
		list[#list + 1] = string.format("\t{lv = %s,%s offset = %s, type = %s},", value.value, (value.range and (" rv = " .. value.range .. ",") or ""), value.offset, type)
	end
	list[#list + 1] = "}"
	list[#list + 1] = "local istrue, data = app.memorySearch(memory, array)"
	list[#list + 1] = "if istrue then"
	list[#list + 1] = "\tfor i = 1, #data do"
	local freeze = freeze and ", true" or ""
	for index, value in ipairs(editData) do
		list[#list + 1] = string.format("\t\tapp.memoryWrite(data[i] + %s, %s, %s%s)", value[2], type, value[1], freeze)
	end
	list[#list + 1] = "\tend"
	list[#list + 1] = "\tgg.toast(\"" .. name .. "开启成功\")"
	list[#list + 1] = "else"
	list[#list + 1] = "\tgg.toast(\"" .. name .. "开启失败\")"
	list[#list + 1] = "end"
	return table.concat(list, "\n")
end

function Assemble_C(signature, editData, name, freeze, memory)
	if not signature or not editData or not name then
		return
	end
	local type = {
		[1] = "TYPE_BYTE",
		[2] = "TYPE_WORD",
		[4] = "TYPE_DWORD",
		[16] = "TYPE_FLOAT",
		[32] = "TYPE_QWORD",
		[64] = "TYPE_DOUBLE",
	}
	local list = {"#include \"XMemoryTools.h\"\n\nint main(int argc, char **argv)\n{"}
	local package = gg.getTargetInfo(gg.getTargetPackage()).packageName
	local memory = getRangesLists(memory)[2]
	local type = type[signature[1].flags]
	list[#list + 1] = "initMemoryTools(\"" .. package .. "\");"
	list[#list + 1] = "SetSearchRange(" .. memory .. ");"
	list[#list + 1] = "puts(\"开始搜索\");"
	list[#list + 1] = string.format("MemorySearch(\"%s\", %s);", signature[1].value, type)
	list[#list + 1] = "printf(\"共搜索%d个数据\\n\", t);"
	for index = 2, #signature do
		list[#list + 1] = string.format("MemoryOffset(package, \"%s\", %s, &t, %s);", signature[index].value, signature[index].offset, type)
		list[#list + 1] = "printf(\"共偏移%d个数据\\n\", ResCount);"
	end
	list[#list + 1] = "PrintResults()"
	local edit = freeze and "AddFreezeItem_All" or "MemoryWrite"
	for index, value in ipairs(editData) do
		list[#list + 1] = string.format("%s(\"%s\", %s, %s);", edit, value[1], value[2], type)
	end
	list[#list + 1] = "puts(\"" .. name .. "修改成功\");"
	if freeze then
		list[#list + 1] = "StartFreeze(package);"
		list[#list + 1] = "SetFreezeDelay(0);"
		list[#list + 1] = "PrintFreezeItems();"
		list[#list + 1] = "while (1) sleep(10); {}"
	end
	list[#list + 1] = "ClearResults();"
	return table.concat(list, "\n\t") .. "\n}"
end

function tab_Turn_G(Pointer, editData, name, freeze)
	if not Pointer or #Pointer == 0 then
		return
	end
	local global_list = {}
	local edit = freeze and "gg.addListItems" or "gg.setValues"
	local sign = freeze and ", freeze = true" or ""
	for index, value in ipairs(Pointer) do
		local list = {}
		local offset_list = {}
		for vector, offset in ipairs(value) do
			offset_list[#offset_list + 1] = string.format('0x%X', offset)
		end

		list[#list + 1] = string.format("local t = Base_Address({\"%s\", \"%s\", %s})", value.internalname, value.state, value.count)
		list[#list + 1] = string.format("local tt = {%s}", table.concat(offset_list, ", "))
		list[#list + 1] = "local ttt = Get_Address(t, tt)"
		if editData then
			list[#list + 1] = string.format("%s({{address = ttt, flags = %s, value = %s%s}})", edit, value.flags, editData[index][1], sign)
			list[#list + 1] = "gg.toast(\"" .. name .. "开启成功\")"
		end
		global_list[#global_list + 1] = table.concat(list, "\n")
	end
	return table.concat(global_list, "\n\n")
end

function tab_Turn_Cpp(Pointer, editData, name, freeze)
	if not Pointer or #Pointer == 0 then
		return
	end
	local type = {
		[1] = "BYTE",
		[2] = "WORD",
		[4] = "DWORD",
		[8] = "XOR",
		[16] = "FLOAT",
		[32] = "QWORD",
		[64] = "DOUBLE"
	}
	local package = gg.getTargetInfo(gg.getTargetPackage()).packageName
	local list = {"#include \"Goto_Pointer.h\"\n\nint main(int argc, char **argv)\n{"}
	list[#list + 1] = "SetPackage(\"" .. package .. "\");"
	for index, value in ipairs(Pointer) do
		local offset_list = {}
		offset_list[#offset_list + 1] = string.format("int offset[] = { %s };", table.concat(value, ", "));
		offset_list[#offset_list + 1] = string.format("long addr = goto_Address(\"%s\", %d, %s, offset, sizeof(offset) / sizeof(offset[0]));", (value.internalname and value.internalname:gsub(":bss", "") or value.info.name:gsub("^.*/", ""):gsub(":bss", "")), (value.count or "1"), (value.state or ""))
		offset_list[#offset_list + 1] = "printf(\"%p\\n\", addr);"
		if editData then
			local flags_edit = type[value.flags] 
			if flags_edit then
				offset_list[#offset_list + 1] = string.format("%s(\"%s\", %s, addr);", (freeze and "freezeData" or "editData"), editData[index][1], flags_edit)
				offset_list[#offset_list + 1] = "puts(\"" .. name .. "开启成功\\n\");"
			end
		end
		list[#list + 1] = string.format("{\n\t\t%s\n\t}", table.concat(offset_list, "\n\t\t"))
	end
	if freeze then
		list[#list + 1] = "StartFreeze();"
		list[#list + 1] = "while (1) sleep(10); {}"
	end
	list[#list + 1] = "return 0;"
	return table.concat(list, "\n\t") .. "\n}"
end






function Search_Pointer(deep, offset, address, limit, stop, all, output, path)
	local ti64 = gg.getTargetInfo().x64
	local min = 0
	local Offset = tonumber(offset) or tonumber(offset, 16)
	if all then
		min = -tonumber(Offset)
	end
	local level = {}
	local handle
	local start_addr, end_addr = (address[1] and (tonumber(address[2]) or tonumber(address[2], 16))), (address[1] and (tonumber(address[3]) or tonumber(address[3], 16)))
	local function variable_Output(variable, filename, handle)
		handle:write(variable)
	end

	if output and Set.real_time_output_return then
		io.open(path, "w"):write("local pointer = {\nloadMoudle = 2;\n"):close()
		handle = io.open(path, "a")
	end
	local out = Set.real_time_output_return and variable_Output or gg.saveVariable

	local function Turn_pointer_table(pre, u, map)
		local r = {}
		local function Block_table(_table, call, index)
			if not call.offset then
				r[#r + 1] = {}
				for i in ipairs(_table) do
					r[#r][#r[#r] + 1] = _table[i]
				end
				r[#r].internalname = map.internalName:gsub('^.*/', '')
				r[#r].count = map.count
				r[#r].address = call.address
				r[#r].value = call.value
				r[#r].flags = call.flags
				r[#r].state = map.state
			else
				for offset, v in pairs(call.offset) do
					_table[index] = offset
					Block_table(_table, v, index + 1)
					_table[index] = nil
				end
			end
		end
		Block_table({pre}, u, 2)
		return r
	end

	local function loadChain(lvl, p)
		local fix, max = not ti64, Offset
		for k = lvl, 1, -1 do
			local levk, p2, stop = level[k], {}, true
			for j, u in pairs(p) do
				if u.offset == nil then
					u.offset = {}
					if fix then u.value = u.value & 0xFFFFFFFF end
					for i, v in ipairs(levk) do
						local offset = v.address - u.value
						if offset >= min and offset <= max then
							u.offset[offset], p2[v], stop = v, v, false
						end
					end
				end
			end
			if stop then break end
			p = p2
		end
	end

	local function S_Pointer(deep, offset, limit, stop, output, path)
		local lvl = 0
		local _t = {loadMoudle = 2}
		if deep and offset then
			if stop then
				deep = "∞"
			end
			while true do
				if lvl > 0 then
					local t = gg.getResults(100000)
					level[lvl] = t
					gg.toast(lvl .. ' from ' .. deep)
					gg.internal3(offset, start_addr, end_addr, limit)
				end
				for m, r in ipairs(ranges) do
					local p = gg.getResults(gg.getResultsCount(), 0, r.start, r['end'])
					if #p > 0 then
						gg.removeResults(p)
						loadChain(lvl, p)
						for index, value in pairs(p) do
							local rt, _r = Turn_pointer_table((value.address - r.start), value, r), ""
							for _, __ in ipairs(rt) do
								_t[#_t + 1] = __
								_r = _r .. tostring(__) .. "; "
							end
							if output then
								if not Set.real_time_output_return then
									out(_t, path)
								else
									out(_r, path, handle)
								end
							end
						end
						if stop then
							goto Break
						end
					end
				end
				if gg.getResultsCount() == 0 or tostring(lvl) == tostring(deep) then goto Break end
				lvl = lvl + 1
			end
			::Break::
			if output and Set.real_time_output_return then
				variable_Output(" }\nreturn pointer", path, handle)
				handle:close()
			end
		end
		return _t
	end
	return S_Pointer(deep, Offset, limit, stop, output, path)
end





function Static_info(address, flags, value, items, name)
	local _S
	for index in ipairs(items) do
		if tonumber(address) >= items[index]["start"] and tonumber(address) <= items[index]["end"] then
			_S = {}
			_S["info"] = {}
			_S["info"]["name"] = items[index]["internalName"]

			_S["info"]["Start"] = items[index]["start"]
			_S["info"]["End"] = items[index]["end"]
			_S["value_addr"] = string.format("0x%X", address)
			_S["flags"] = flags
			_S["value"] = value

			_S["offset"] = string.format("0x%X", address - name[items[index]["internalName"]])
			
		end
	end
	return _S
end

function Static_Assemble(items, sign, name, freeze)
	local function info_Merge(items)
		local Merge = {}
		for index in pairs(items) do
			local S_addr = items[index]['info']['Start']
			local name = items[index]['info']['name']
			local offset = items[index]['offset']
			local flags = items[index]['flags']
			local value = items[index]['value']
			local address = items[index]['value_addr']
			if not Merge[S_addr] then
				Merge[S_addr] = {[name] = {}}
			end
			Merge[S_addr][name][#Merge[S_addr][name] + 1] = {['offset'] = offset; ['flags'] = flags; ['value'] = value; ['value_addr'] = address}
		end
		return Merge
	end
	local Static_table = info_Merge(items)
	local r = {}
	local Assemble = {}
	local indentation = string.rep("\t", 0)
	local edit = {}
	edit[1] = indentation .. "\tgg.setValues({"
	if freeze then
		edit[1] = indentation .. "\tgg.addListItems({"
		edit[2] = indentation .. '\t\t\tfreeze = true,'
	end
	for Start, info in pairs(Static_table) do
		for So, item in pairs(info) do
			local S_name = So:gsub('^.*/', '')
			local _r = {}
			r[Start] = {}
			r[Start][1] = indentation .. "if gg.getRangesList(\"" .. S_name .. "\")[1] then"
			r[Start][2] = indentation .. "\tlocal " .. sign .. " = {}"
			for index in ipairs(item) do
				r[Start][#r[Start] + 1] = indentation .. "\t" .. sign .. "[" .. index .. "] = gg.getRangesList(\"" .. S_name .. "\")[1][\"start\"] + " .. item[index]["offset"] .. "; -- 数值地址:" .. item[index]["value_addr"]
				_r[#_r + 1] = indentation .. "\t\t[" .. index .. "] = { "
				_r[#_r + 1] = indentation .. '\t\t\taddress = ' .. sign .. '[' .. index .. '],'
				_r[#_r + 1] = indentation .. '\t\t\tflags = ' .. item[index]["flags"] .. ','
				_r[#_r + 1] = indentation .. '\t\t\tvalue = ' .. item[index]["value"] .. ','
				_r[#_r + 1] = edit[2]
				_r[#_r + 1] = indentation .. '\t\t},'
			end
			r[Start][#r[Start] + 1] = edit[1] .. "\n" .. table.concat(_r, "\n") .. "\n" .. indentation .. '\t})'
			r[Start][#r[Start] + 1] = indentation .. '\tgg.toast("' .. name .. '开启成功")'
			r[Start][#r[Start] + 1] = indentation .. 'end'
		end
		for _ in ipairs(r[Start]) do
			Assemble[#Assemble + 1] = r[Start][_]
		end
	end
	return table.concat(Assemble, "\n")
end

function static_Range()
	local static_ranges = {["Xa"] = true, ["Cb"] = true, ["Cd"] = true, ["Ps"] = true, ["O"] = nil}
	local static_list = {}
	local static_name = {}
	for index, value in ipairs(gg.getRangesList()) do
		if static_ranges[value.state] then
			static_list[#static_list + 1] = value
			if not static_name[value.internalName] then
				static_name[value.internalName] = value.start
			end
		end
	end
	return static_list, static_name
end

function value_ranges(_table)
	local static_ranges = {["Xa"] = true, ["Cb"] = true, ["Cd"] = true, ["Ps"] = true}
	local chain = true
	for i in ipairs(_table) do
		if not static_ranges[gg.getValuesRange({_table[i]})[1]] then
			chain = false
			break
		end
	end
	return chain
end



function Creat_Datafile()
	local _Path = gg.getFile():gsub('[^/]*$', '')
	local _S = {"Offset_Results.lua", "Pointer_Results.lua", "Read_Conut.lua", "Write_Count.lua", "Contrast_file.lua", "More_Contract.lua", "Concat_Record.lua", "Save_or_Search.lua", "Read_Filter.lua", "Pointer_Filter.lua", "Offset_Filter.lua", "Offset_Pointer_Read.lua", "Offset_Out.lua", "Pointer_Out.lua", "Output_A.lua", "Output.lua", "Select_gg.lua", "next_p.lua", "next_table.lua"}
	for i in ipairs(_S) do
		_S[i] = _Path .. _S[i]
	end
	local t = {
		{"", 0x200, "0", true, _S[1], false},
		{3, 0x100, false, 0, 1099511627775, false, 0, false, false, _S[2], false, true}, 
		{_S[17], false, false}, 
		{_S[3], _S[4], false}, 
		{{_S[5], _S[5]}, {_S[6], _S[7]}, {false, false}}, 
		{_S[8], false}, 
		{_S[9]}, 
		{"", true, true, _S[10], true}, 
		{"", false, _S[11], false}, 
		{_S[12]}, 
		{_S[13], false}, 
		{_S[14], false, true, false}, 
		{"", 0x200, _S[15], false, false, false, false, false, false, false, false, false}, 
		{_S[12], _S[16], false}, 
		{[2] = true, [3] = true, [4] = true, [5] = true, [7] = true, [14] = true}, 
		{0x100, 2, false, true, false, false, _S[18], _S[19], false}, 
		{[16] = true}, 
		{
			['Code_Addr_delete'] = true, 
			['Contrast_Moudle'] = true, 
			['Dialog_Loadfile'] = 2, 
			['Dialog_pop'] = false, 
			['Disams'] = { 
				['ASM_ARM32'] = {
				},
				['ASM_ARM64'] = {
				},
				['ASM_THUMB'] = {
				},
			},
			['Divide_file'] = false, 
			['Edit_Range'] = true, 
			['Edit_Select'] = true, 
			['Filter_different'] = false, 
			['Input_Moudle'] = 1, 
			['Moudle_Edit'] = false, 
			['S_Count'] = { 
				[1] = 1,
				[2] = 1000,
			},
			['S_S_Get'] = { 
				[1] = {
					[1] = 100,
					[2] = true,
				},
				[2] = {
					[1] = 100,
					[2] = true,
				},
			},
			['Search_Count_ASM'] = 100, 
			['real_time_output_return'] = true, 
			['default_Moudle'] = 1, 
			['dialog_editM'] = true, 
			['f_setting'] = false, 
			['fail_remove'] = true, 
			['flags'] = 4, 
			['size'] = 4, 
		},
	}
	gg.saveVariable(t, Data_Save_file)
	t = loadfile(Data_Save_file)
	return t
end

function G_Configure(Order, _table)
	local load_f = loadfile(Data_Save_file)
	if not load_f then
		load_f = Creat_Datafile()
	end
	load_f = load_f()
	if _table then
		load_f[Order] = _table
		gg.saveVariable(load_f, Data_Save_file)
	else
		return load_f[Order]
	end
end

function Table_or_file(only)
	local t = {}
	local r = 1
	local tt = {}
	local _t = {"采用文件", "采用寄存table", "取消"}
	if _Offset_Addr then t[#t + 1] = _Offset_Addr tt[#tt + 1] = "获取的偏移" end
	if Chain_Secn and not only then t[#t + 1] = Chain_Secn tt[#tt + 1] = "扫描出的锁链" end
	if Contrast_Offset then t[#t + 1] = Contrast_Offset tt[#tt + 1] = "对比出的地址" end
	if Contrast_Chain and not only then t[#t + 1] = Contrast_Chain tt[#tt + 1] = "对比出的锁链" end
	if Filter_Offset then t[#t + 1] = Filter_Offset tt[#tt + 1] = "筛选出的地址" end
	if Filter_Chain and not only then t[#t + 1] = Filter_Chain tt[#tt + 1] = "过滤出的锁链" end
	if #t ~= 0 then
		tt[0] = "返回"
		::Back::
		r = gg.choice(_t, nil, D_Rose[math.random(1, #D_Rose)])
		if r then
			if r == 2 then
				r = gg.choice(tt, nil, D_Rose[math.random(1, #D_Rose)])
				if r == 0 then
					goto Back
				else
					r = t[r]
				end
			elseif r == 3 then
				r = nil
			end
		else
			r = nil
		end
	end
	return r
end

function M_Table_or_file(pro_mtp, only)
	local t
	local _tt
	local _r = pro_mtp
	local p = _r[2][1]
	local r = Table_or_file(only)
	if r then
		if r ~= 1 then
			_r[1][1], _r[2][1], _r[3][1] = nil, nil, nil
		end
		t = gg.prompt(_r[1], _r[2], _r[3])
		if t then
			if not t[1] then
				_tt = r
				table.insert(t, 1, p)
			else
				local _t = loadfile(tostring(t[1]))
				if _t then
					_tt = _t()
				end
			end
		end
	end
	return t, _tt
end

function A_Table_or_file(pro_mtp)
	local t
	local _tt
	local r = Table_or_file()
	if r then
		if r ~= 1 then
			return nil, r
		end
		t = gg.prompt(pro_mtp[1], pro_mtp[2], pro_mtp[3])
		if t then
			local _t = loadfile(tostring(t[1]))
			if _t then
				_tt = _t()
			end
		end
	end
	return t, _tt
end


function Select_Range(_select)
	local t = {__call = function(_, __, ___)
		local sum = 0
		local _t = {}
		local tt = {}
		for i in pairs(_) do
			if ___ then
				_t[#_t + 1] = __[i][2]
			end
			sum = sum + __[i][1]
		end
		if #_t ~= 0 then
			tt = _t
		end
		return sum, tt
	end
	}
	local _R = {
		{2, "Jh"},
		{1, "Ch"},
		{4, "Ca"},
		{8, "Cd"},
		{16, "Cb"},
		{262144, "PS"},
		{32, "A"},
		{65536, "J"},
		{64, "S"},
		{524288, "As"},
		{1048576, "V"},
		{-2080896, "O"},
		{131072, "B"},
		{16384, "Xa"},
		{32768, "Xs"},
	}
	local p = G_Configure(15)
	setmetatable(p, t)
	local r, _r = p(_R, _select)
	if _select then
		local M_tab = {"Jh: 	Java_heap", "Ch: 	C++ heap", "Ca: 	C++ alloc", "Cd:	 C++ .data", "Cb:	 C++ .bss", "PS:	 PPSSPP", "A:	 Anonymous", "J:	 Java", "S: 	Stack", "As:	 Ashmem", "V: 	Video", "O: 	Other", "B: 	Bad", "Xa: 	Code app", "Xs: 	Code system"}
		local _S = gg.multiChoice(M_tab, p, "内存: " .. table.concat(_r, " ") .. "\n" .. D_Rose[math.random(1, #D_Rose)])
		if _S then
			G_Configure(15, _S)
			setmetatable(_S, t)
			r = _S(_R)
			gg.setRanges(r)
		end
	end
	return r
end

function Range_Pointer(_select)
	local _R = {
		"Jh",
		"Ch",
		"Ca",
		"Cd",
		"Cb",
		"PS",
		"A",
		"J",
		"S",
		"As",
		"V",
		"O",
		"B",
		"Xa",
		"Xs",
		"?"
	}
	local r = {}
	local p = G_Configure(17)
	for i in ipairs(_R) do
		if p[i] then
			r[#r + 1] = _R[i]
		end
	end
	if _select then
		local M_tab = {"Jh: 	Java_heap", "Ch: 	C++ heap", "Ca: 	C++ alloc", "Cd:	 C++ .data", "Cb:	 C++ .bss", "PS:	 PPSSPP", "A:	 Anonymous", "J:	 Java", "S: 	Stack", "As:	 Ashmem", "V: 	Video", "O: 	Other", "B: 	Bad", "Xa: 	Code app", "Xs: 	Code system", "?: 	Unknow"}
		local _S = gg.multiChoice(M_tab, p, "(可增加速度)过滤内存: " .. table.concat(r, " ") .. "\n" .. D_Rose[math.random(1, #D_Rose)])
		if _S then
			G_Configure(17, _S)
			r = {}
			for i in ipairs(_R) do
				if _S[i] then
					r[#r + 1] = _R[i]
				end
			end
		end
	end
	return r
end

function set_alert(name, describe, open, close, set)
	local t = gg.alert(name .. "\n描述:\n" .. describe, open[1], nil, close[1])
	if t ~= 0 then
		if t == 1 then
			Call_Set[set] = open[2]
		else
			Call_Set[set] = close[2]
		end
		gg.toast("设置完成")
	end
end

function Get_func(func)
	local cpi = {}
	local code = ""
	for i, u in ipairs(func) do
		cpi[i] = debug.getinfo(u)
	end
	local n = 0
	for line in io.lines(gg.getFile()) do
		n = n + 1
		for i, u in ipairs(cpi) do
			if n >= u.linedefined and n <= u.lastlinedefined then
				code = code .. '\n' .. line
				break
			end
		end
	end
	return code .. "\n"
end



function Get_lan_folder(link, password)
	local html = gg.makeRequest(link).content
	if not html then
		return nil, "无法访问"
	end
	local find = {"data : %{(.-)%}", "\39(%w+)\39%:\39?(%w+)\39?,"}
	local res = html:match(find[1])
	if not res then
		return nil, "链接错误或无法访问"
	end
	local struct = {}
	for index, value in res:gmatch(find[2]) do
		struct[index] = value
	end
	for index, value in ipairs({"t", "k"}) do
		struct[value] = html:match("var " .. struct[value] .. " = '(%w+)'%;")
	end
	struct["pg"] = html:match(struct["pg"] .. " =(.-)%;")
	struct["pwd"] = password
	local post_str = {"lx", "fid", "uid", "pg", "rep", "t", "k", "up", "ls", "pwd"}
	local Post = {}
	for i, v in ipairs(post_str) do
		if struct[v] then
			Post[#Post + 1] = v .. "=" .. struct[v]
		end
	end
	Post = table.concat(Post, "&")
	link = link:gsub('[^/]*$', '')
	html = gg.makeRequest(link .. "filemoreajax.php", nil, Post).content
	find = {"\\u([%x][%x][%x][%x])", "icon:(.-),t:(.-),id:(.-),name_all:(.-),size:(.-),time:(.-),duan:(.-),p_ico:(.-)%}"}
	html = html:gsub(find[1], function(char)
		return utf8.char(tonumber(char, 16))
	end)
	if (html:find("密码不正确")) then
		return nil, "密码未输入或不正确"
	end
	if (html:find("没有了")) then
		return nil, "文件夹为空"
	end
	post_str = '"icon":\34?(.-)\34?,"t":\34?(.-)\34?,"id":\34?(.-)\34?,"name_all":\34?(.-)\34?,"size":\34?(.-)\34?,"time":\34?(.-)\34?,"duan":\34?(.-)\34?,"p_ico":\34?(.-)\34?%}'
	Post = {}
	for icon, t, id, name_all, size, time, duan, p_ico in html:gmatch(post_str) do
		Post[#Post + 1] = {
			["icon"] = icon,
			["t"] = t,
			["id"] = id,
			["name_all"] = name_all,
			["size"] = size,
			["time"] = time,
			["duan"] = duan,
			["p_ico"] = p_ico,

		}
	end
	return true, Post
end

function To_choice_table(post, link, download)
	if not post then
		return nil, nil
	end
	link = link:gsub('[^/]*$', '')
	local t = {}
	local tt = {}
	for i in ipairs(post) do
		t[i] = post[i]["name_all"] .. "\ntime: " .. post[i]["time"] .. " size: " .. post[i]["size"]
		if download then
			tt[i] = "https://vip.d0.baidupan.com/file/" .. ((gg.makeRequest(link .. 'tp/' .. post[i]["id"]).content):match("var downloads = '(.-)'"))
		else
			tt[i] = link .. post[i]["id"]
		end
	end
	return t, tt
end



function Goto_Next_Pointer(address, offset, deep, list, same, correction, around, ti)
	local flags_bit = {[true] = 32, [false] = 4}
	local ti64 = gg.getTargetInfo().x64
	if ti then ti64 = not ti64 end
	local Type = flags_bit[ti64]
	local Max = 0
	local t, tt, r = {}, {}
	
	local function table_rm_Repeat(_table)
		local t = {}
		local tt = {}
		for index, value in ipairs(_table) do
			if not t[value] then
				t[value] = true
				table.insert(tt, value)
			end
		end
		return tt
	end
	
	local function Pointer_Range(_table, r_table, same)
		local S_range = {["Jh"] = {}, ["Ch"] = {}, ["Ca"] = {}, ["Cd"] = {}, ["Cb"] = {}, ["Ps"] = {}, ["A"] = {}, ["J"] = {}, ["S"] = {}, ["As"] = {}, ["V"] = {}, ["O"] = {}, ["B"] = {}, ["Xa"] = {}, ["Xs"] = {}, ["?"] = {}}
		local r = {}
		for index, value in ipairs(_table) do
			table.insert(S_range[value], index)
		end
		if same then
			for index, value in ipairs(r_table) do
				for _, __ in ipairs(S_range[value]) do
					table.insert(r, __)
				end
			end
		else
			for index, value in ipairs(r_table) do
				S_range[value] = nil
			end
			for index, value in pairs(S_range) do
				for _, __ in ipairs(value) do
					table.insert(r, __)
				end
			end
		end
		return r
	end

	local function Read_Pointer(addr_table, r_table, same)
		local addr_value = gg.getValues(addr_table)
		local list = {}
		local r = {}
		for index, _table in ipairs(addr_value) do


			list[#list + 1] = {
				address = ti64 and _table.value or _table.value & 0xFFFFFFFF,
				flags = Type,
				offset = addr_table[index].offset
			}

		end
		local Range_list = gg.getValuesRange(list)
		Range_list = Pointer_Range(Range_list, r_table, same)
		for index, value in ipairs(Range_list) do
			table.insert(r, list[value])
		end
		return r
	end

	local function Get_Deep_Poinrer(address, offset, deep, r_table, same, addr_list, around)
		for index, value in ipairs(address) do
			table.insert(addr_list, {address = value, flags = Type})
		end
		local count = 0
		local self = around and offset or 0
		for i = 1, deep do
			local r, stop = {}, true
			for index, addr in pairs(addr_list) do
				local rm = true
				if not addr.pointer then
					addr.pointer = {}
				end
				for _, __ in ipairs(Read_Pointer(Go_over(addr.address, Type, self, 4), r_table, same)) do
					addr.pointer[__.offset], r[#r + 1], stop, rm = __, __, false, false
				end
				if rm then
					addr.pointer = nil
				end
			end
			if stop then break end
			addr_list = r
			count = #r + count
			self = offset
			Max = i
			gg.toast(count .. "pointer\n" .. i .. ' from ' .. deep)
		end
	end

	local function Turn_addr_table(addr_list)
		local r = {}
		local _r = {}
		local addr = {addr_list.address}
		local function Block_table(__, _table, index, add)
			if _table.pointer then
				for offset, p in pairs(_table.pointer) do
					__[index] = offset
					_r[#_r + 1] = p.address
					r[#r + 1] = {}
					for i in pairs(__) do
						r[#r][#r[#r] + 1] = __[i]
					end
					r[#r].address = addr[add - 1] + offset
					r[#r].pointer = p.address
					addr[add] = p.address
					Block_table(__, p, index + 1, add + 1)
					__[index] = nil
					addr[add] = nil
				end
			end
		end
		local pre = addr_list.address
		_r[#_r + 1] = pre
		Block_table({}, addr_list, 1, 2)



		r.address = pre
		return r, _r
	end

	local function Class_table(addr_table)
		local r = {}
		local _r = {}
		for index, pointer in ipairs(addr_table) do
			r[index] = {}
			local addr = string.format("0x%X", pointer[1].address)
			for offset, value in ipairs(pointer[1]) do
				local p = {}
				for _, __ in ipairs(value) do
					p[#p + 1] = (__ >= 0 and (" +" .. __) or " " .. __)
				end
				table.insert(r[index], addr .. table.concat(p, " ->") .. " = " .. string.format("0x%X", value.address) .. " -> " .. string.format("0x%X", value.pointer))
			end
			r[index].address = addr
			r[index].max = Max
			pointer[2] = table_rm_Repeat(pointer[2])
			if correction then
				for offset, value in ipairs(pointer[2]) do
					_r[#_r + 1] = {
						address = value - value % 4, 
						flags = Type
					}
				end
			else
				for offset, value in ipairs(pointer[2]) do
					_r[#_r + 1] = {
						address = value,
						flags = Type
					}
				end
			end
		end
		return r, _r
	end

	local function Turn_to_txt(_table)
		local r = {}
		for index, value in ipairs(_table) do
			r[#r + 1] = "地址: " .. value.address .. " 最大层数: " .. value.max .. "\n" .. table.concat(value, "\n")
		end
		return r
	end
	Get_Deep_Poinrer(address, offset, deep, list, same, t, around)
	for index, addr_list in pairs(t) do
		tt[#tt + 1] = {Turn_addr_table(addr_list)}
	end
	r = {Class_table(tt)}
	r[1] = Turn_to_txt(r[1])
	return r
end



function Concise_Search(Array_Search, Array_Modify, Type, Name)
	local t = {}
	for i = 1, #Array_Search[1] - 1 do
		t[i] = Array_Search[1][i]
	end
	gg.clearResults()
	gg.searchNumber(table.concat(t, "~"), Type)
	local t = gg.getResults(1000000)
	gg.toast("get " .. #t .. " Search data")
	gg.clearResults()
	if #t > 0 then
		for _ = 2, #Array_Search do
			local r = {}
			for i, v in ipairs(t) do
				r[i] = {}
				r[i].address = v.address + Array_Search[_][#Array_Search[_]] - Array_Search[1][#Array_Search[1]]
				r[i].flags = v.flags
			end
			r = gg.getValues(r)
			local range = {[1] = Array_Search[_][1]; [2] = Array_Search[_][#Array_Search[_] - 1]}
			for i = #t, 1, -1 do
				if tonumber(r[i].value) < tonumber(range[1]) or tonumber(r[i].value) > tonumber(range[#range]) then
					table.remove(t, i)
				end
			end
			gg.toast("screened " .. #t .. " results")
		end
		local r = {}
		for i = 1, #t do
			for _ = 1, #Array_Modify do
				r[#r + 1] = {}
				r[#r].address = t[i].address + Array_Modify[_][2] - Array_Search[1][2]
				r[#r].flags = t[i].flags
				r[#r].value = Array_Modify[_][1]
				if Array_Modify[_][3] then
					gg.addListItems(r)
				end
			end 
		end
		if #r > 0 then
			gg.setValues(r)
			gg.toast(Name .. " modified " .. #r .. " pieces of data")
		else
			gg.toast(Name .. "'s Secondary code error")
		end
	else
		gg.toast(Name .. "'s Main code error")
	end
end

function Base_Address(N_So)
	local S_list = getRanges()
	local _S = {}
	for i in pairs(S_list) do
		local _N = S_list[i].internalName:gsub('^.*/', '')
		if N_So[1] == _N and N_So[2] == S_list[i].state and N_So[3] == S_list[i].count then
			_S = S_list[i]
			break
		end
	end
	return _S.start
end

function Get_Address(Address, Offset)
	local flags_bit = {[true] = 32, [false] = 4}
	local ti64 = gg.getTargetInfo().x64
	local Type = flags_bit[ti64]
	local addr = 0
	if Address then
		addr = Address + Offset[1]
		for _ = 2, #Offset do
			local pointer = gg.getValues({{address = addr, flags = Type}})
			if not ti64 then
				pointer[1].value = pointer[1].value & 0xFFFFFFFF
			end
			addr = pointer[1].value + Offset[_]
		end
	end
	return addr
end

local app = {}

function mearrass(memory, array)
	if Assert(memory) and Assert(array) then
		return true
	else
		return false
	end
end

function typetab(array, type)
	local datatype = {}
	for i = 1, #array do
		local t = array[i].type or type
		if Assert(t) then
			datatype[i] = t
		else
			return false
		end
	end
	return true, datatype
end

function app.memorySearch(memory, array, type)
	local Array_Address = {}
	local record = false
	local results = mearrass(memory, array)
	if results then
		local results, datatype = typetab(array, type)
		if results then
			local t = {[1] = array[1].lv; [2] = array[1].rv}
			gg.clearResults()
			gg.setRanges(memory)
			gg.searchNumber(table.concat(t, "~"), datatype[1])
			local data = gg.getResults(1000000)
			gg.toast("get " .. #data .. " Search data")
			gg.clearResults()
			if #data > 0 then
				for _ = 2, #array do
					local t = {}
					local r = {[1] = array[_].lv; [2] = array[_].rv}
					for i in ipairs(data) do
						t[i] = {}
						t[i].address = data[i].address + array[_].offset
						t[i].flags = datatype[_]
					end
					t = gg.getValues(t)
					for i = #data, 1, -1 do
						if tonumber(t[i].value) < tonumber(r[1]) or tonumber(t[i].value) > tonumber(r[#r]) then
							table.remove(data, i)
						end
					end
					gg.toast("screened " .. #data .. " results")
				end
				for i = 1, #data do
					Array_Address[i] = data[i].address
				end
				if #Array_Address ~= 0 then
					record = true
					gg.toast("Get " .. #data .. " effective address")
				else
					gg.toast("Secondary code error")
				end
			else
				gg.toast("Main code error")
			end
		else
			print("type Error")
			gg.toast("type Error")
		end
	else
		print("memory or array Error")
		gg.toast("memory or array Error")
	end
	return record, Array_Address
end

function app.memoryRead(addr, type)
	local t = {}
	t[1] = {}
	t[1].address = addr
	t[1].flags = type
	if #t > 0 then
		return true, gg.getValues(t)[1].value
	else
		return false
	end
end

function app.memoryWrite(addr, type, value, freeze)
	local t = {}
	t[1] = {}
	t[1].address = addr
	t[1].flags = type
	t[1].value = value
	if #t > 0 then
		if Assert(freeze) then
			t[1].freeze = freeze
			
			return gg.addListItems(t)
		else
			return gg.setValues(t)
		end
	else
		return false
	end
end

mt = {__newindex = (function(_table, key, value)
	Set[tostring(key)] = value
	G_Configure(18, Set)
end)}

if not loadfile(Data_Save_file) then
	Creat_Datafile()
	if not loadfile(Data_Save_file) then
		gg.toast("核心错误")
		print("核心错误")
		os.exit()
	end
end

Set = G_Configure(18)

setmetatable(Call_Set, mt)

Addr.type = {}
Addr.type.flags = Set.flags
Addr.type.size = Set.size

ranges = getRanges()

static_list, static_name = static_Range()

All_set_table1 = {
	[1] = {
		[1] = '在点击偏移工具时, 本应会每次弹出类型选择, 为方便部分人, 故特做次选项, 使其并不用每次选择同一类型, 若您觉得不需要可关闭此设置项',
		[2] = {
			[1] = {
				[1] = '每次弹出',
				[2] = true,
			},
			[2] = {
				[1] = '不再弹出',
				[2] = false,
			},
		},
		[3] = 'f_setting',
	},
	[11] = {
		[1] = '在数值转换一选项中, 可能会有经过滤无任何其他转换项的项目, 此项专门可以清理那些无转换的项目',
		[2] = {
			[1] = {
				[1] = '开启',
				[2] = true,
			},
			[2] = {
				[1] = '关闭',
				[2] = false,
			},
		},
		[3] = 'Code_Addr_delete',
	},
	[12] = {
		[1] = '在转换写法时偏移写法的修改使用选择特征码, 若您希望修改项不在特征码内, 请关闭此项',
		[2] = {
			[1] = {
				[1] = '开启',
				[2] = true,
			},
			[2] = {
				[1] = '关闭',
				[2] = false,
			},
		},
		[3] = 'Edit_Select',
	},
	[13] = {
		[1] = '在我写的配置中 gg写法支持范围搜索, 即若某地址 + 4 的数值范围为 0.5~1可填0.5~1, 也可单填一个数值, 为数值~填的数值, C++写法虽有范围搜索, 可我不想写\n若不需要进行范围搜索可关闭',
		[2] = {
			[1] = {
				[1] = '开启',
				[2] = true,
			},
			[2] = {
				[1] = '关闭',
				[2] = false,
			},
		},
		[3] = 'Edit_Range',
	},
	[15] = {
		[1] = '可以根据具体需求选择是否每次弹出 或者 默认弹出',
		[2] = {
			[1] = {
				[1] = '不再弹出',
				[2] = true,
			},
			[2] = {
				[1] = '每次弹出',
				[2] = false,
			},
		},
		[3] = 'dialog_editM',
	},
	[16] = {
		[1] = '修改模式即写法生成的修改模式, 自创写法为可进行每个数值不同修改值, 普通写法为同一修改值, 详情可自行实验',
		[2] = {
			[1] = {
				[1] = '普通',
				[2] = true,
			},
			[2] = {
				[1] = '自创',
				[2] = false,
			},
		},
		[3] = 'Moudle_Edit',
	},
	[3] = {
		[1] = '对于指针实时输出 我写了两个 一个是叠加写入 一个是0长度写入 区别在于前者直到最后才会输出"} return pointer"(若您中途暂停必须自行加入) 而后者每次会格式掉原内容重新写入',
		[2] = {
			[1] = {
				[1] = '叠加写入',
				[2] = true,
			},
			[2] = {
				[1] = '0长度写入',
				[2] = false,
			},
		},
		[3] = 'real_time_output_return',
	},
	[5] = {
		[1] = '在进行搜索数值时, 若您设置了搜索定义域, 则会有不合格数值, 开启此选项使不合格的被删除, 反之搜索数量nil处理',
		[2] = {
			[1] = {
				[1] = '开启',
				[2] = true,
			},
			[2] = {
				[1] = '关闭',
				[2] = false,
			},
		},
		[3] = 'fail_remove',
	},
	[6] = {
		[1] = '此项为设置对比同时对比文件数量弹窗是否每次使用对比工具时弹出, 若您不需要每次输入文件数, 可设置不弹出',
		[2] = {
			[1] = {
				[1] = '每次弹出',
				[2] = true,
			},
			[2] = {
				[1] = '不弹出',
				[2] = false,
			},
		},
		[3] = 'Dialog_pop',
	},
	[8] = {
		[1] = '在我写的对比, 可自动判断文件, 即偏移和锁链, 若您想手动输入请关闭此项',
		[2] = {
			[1] = {
				[1] = '手动',
				[2] = true,
			},
			[2] = {
				[1] = '自动',
				[2] = false,
			},
		},
		[3] = 'Divide_file',
	},
}

All_set_table2 = {
	[2] = (function() local flags, size = Set.flags, Set.size; Call_Set.flags, Call_Set.size = selectType() if not Set.size or not Set.flags then Call_Set.flags, Call_Set.size = flags, size end Addr.type.flags, Addr.type.size = Set.flags, Set.size end),
	[4] = (function() local t = gg.prompt({"最少搜索数量", "最大搜索数量", "不采用限制"}, {(Set.S_Count[1] or ""), (Set.S_Count[2] or ""), (not Set.S_Count[1])}, {"text", "text", "checkbox"}) if t then Set.S_Count[1] = t[1] Set.S_Count[2] = t[2] if t[3] then Set.S_Count = {} end Call_Set.S_Count = Set.S_Count end end),
	[7] = (function() local t = gg.prompt({"文件获取数量"}, {Set.Dialog_Loadfile}, {"text"}) if t then if tonumber(t[1]) then Call_Set.Dialog_Loadfile = tonumber(t[1]) else Call_Set.Dialog_Loadfile = Set.Dialog_Loadfile or 2 end end end),
	[9] = (function() Code_Moudle(All_setting) end),
	[10] = (function() local r = gg.prompt({"数量", "自动获取"}, {Set.Search_Count_ASM or 0, not Set.Search_Count_ASM}, {"text", "checkbox"}) if r then if tonumber(r[1]) then Call_Set.Search_Count_ASM = r[1] else Call_Set.Search_Count_ASM = (Set.Search_Count_ASM or 100) end if r[2] then Call_Set.Search_Count_ASM = false end end end),
	[14] = (function() local t = gg.choice({"(大改)指针写法", "(大改)高仿xs写法", "C++写法", "返回"}, nil, D_Rose[math.random(1, #D_Rose)]) if t and t ~= 4 then Call_Set.default_Moudle = t elseif t == 4 then All_setting() end end),
	[17] = (function() Select_Range(true) end),
	[18] = (function() Range_Pointer(true) end),
	[19] = (function() ranges = getRanges(); static_list, static_name = static_Range() end),
	[20] = Code_filter,
}

func_identify = {{Concise_Search}, {Assert, mearrass, typetab, app.memorySearch, app.memoryRead, app.memoryWrite}, {}, {getRanges, Base_Address, Get_Address}}

function M_Main()
	env = debug.getinfo(2).func
	local M = {
		"偏移工具",
		"扫描基址",
		"防xs脚本",
		"指针写法",
		"筛选工具",
		"数值转换",
		"下级指针",
		"写法生成",
		"写出数据",
		"全局设置",	
		"退出工具"
	}
	local N = {
		Offset_Tools,
		Scen_Chain,
		Data_Conut,
		Contrast_Tool,
		Filter_Tool,
		Value_Conver,
		Next_Pointer,
		C_identify,
		Data_Output,
		All_setting,
		
		
		
		(function()
			os.exit()
		end)
	}
	local _M = gg.choice(M, nil, "内存工具🔧\n" .. D_Rose[math.random(1, #D_Rose)])
	if _M then
		N[_M]()
	end	
end

function Offset_Tools()
	local function offset_around()
		if Addr.type.flags and Addr.type.size and Addr.address and Addr.offset then
			local t = Go_over(Addr.address, Addr.type.flags, Addr.offset, Addr.type.size)
			Addr.ranges = gg.getValuesRange({Addr.address})[1]

			Addr.value = gg.getValues({[1] = {address = Addr.address; flags = Addr.type.flags}})[1].value
			t = Range_filter(t, Addr.ranges)
			local _tt = gg.getValues(t)
			for i in pairs(_tt) do
				_tt[i].offset = t[i].offset
			end
			t = D_Conversion_filter(Addr.filter, _tt)
			for i = #Addr, 1, -1 do
				table.remove(Addr, i)
			end
			for i in ipairs(t) do
				Addr[i] = t[i]
			end
		end
	end
	if Set.f_setting then
		local flags, size = Set.flags, Set.size
		local bre = false
		Call_Set.flags, Call_Set.size = selectType()
		if not Set.size or not Set.flags then
			Call_Set.flags, Call_Set.size, bre = flags, size, true
		end
		Addr.type.flags, Addr.type.size = Set.flags, Set.size
		if bre then
			gg.toast("error -16")
			return
		end
	end
	if Addr.type.flags and Addr.type.size then
		local addr = Addr.address and string.format("%X", Addr.address)
		local pr = G_Configure(1)
		pr[1] = addr or ""
		local t = gg.prompt({"地址" .. tostring(addr) .. "\t\t上下偏移" .. tostring(Addr.offset) .. "\t\t类型" .. tostring(string_flags(tonumber(Addr.type.flags))) .. "\t\t内存" .. tostring(Addr.ranges) .. "\t\t数值" .. tostring(Addr.value) .. "\n" .. D_Rose[math.random(1, #D_Rose)] .. "\n\n现地址:", "上下偏移", "过滤值[用;分割]", "开启过滤", "写出的文件", "是否写出"}, pr, {"text", "text", "text", "checkbox", "file", "checkbox"})
		if t then
			G_Configure(1, t)
			if not tonumber(t[1]) then
				t[1] = tonumber(t[1], 16)
			end
			Addr.address = t[1]
			Addr.offset = t[2]
			Addr.filter = nil
			if t[4] then
				Addr.filter = t[3]
			end
			offset_around()
			gg.toast("获取" .. #Addr .. "条值")
			_Offset_Addr = Addr
			if t[6] then
				if #Addr ~= 0 then
					gg.saveVariable(Addr, t[5])
				end
			end
		end
	else
		gg.toast("error -3")
	end
end

function Scen_Chain()
	local Select_List = gg.getSelectedListItems()

	if #Select_List ~= 0 then
		gg.setRanges(tonumber(Select_Range()))
		local range_addr = value_ranges(Select_List)
		if not range_addr then
			local p = G_Configure(2)
			local phex = (tonumber(p[4]) or tonumber(p[4], 16))
			p[4] = phex and string.format("%010X", phex) or p[4]
			phex = (tonumber(p[5]) or tonumber(p[5], 16))
			p[5] = phex and string.format("%010X", phex) or p[5]
			local t = gg.prompt({'深度', '偏移', '限制地址范围', 'Start Address', 'End Address', '限制搜索数量', '搜索数量', '扫到即停止', '扫描负指针', '输出文件路径', '实时输出', '将结果写至文件?'}, p, {'text', 'text', 'checkbox', 'text', 'text', 'checkbox', 'text', 'checkbox', 'checkbox', 'file', 'checkbox', 'checkbox'})
			if t then
				G_Configure(2, t)
				gg.loadResults(Select_List)
				local tt = Search_Pointer(t[1], t[2], {(t[3] or nil), t[4], t[5]}, (t[6] and (tonumber(t[7]) or tonumber(t[7], 16)) or nil), t[8], t[9], (t[11] and t[12]), t[10])
				gg.loadResults({})
				if #tt ~= 0 then
					Chain_Secn = tt	
					gg.toast('找到' .. #tt .. '条锁链')
					if not t[11] and t[12] then
						gg.saveVariable(tt, t[10])
					end
				else
					gg.toast("Nothing found")
				end
			end
		else
			
			local r = {"All"}
			for i in ipairs(Select_List) do
				r[#r + 1] = Select_List[i].value .. ", type: " .. string_flags(tonumber(Select_List[i].flags)) .. ", address: " .. string.format("0x%X", Select_List[i].address)
			end
			local _tt = gg.multiChoice(r, nil, "选择获取静态基址")
			if _tt then
				if _tt[1] then
					_tt = {}
					for i in ipairs(Select_List) do
						_tt[i] = true
					end
				else
					local p = {}
					for index in pairs(_tt) do
						p[index - 1] = true
					end
					_tt = p
				end
			 	local p = {}
			 	table.remove(r, 1)
				local S_edit, S_name, S_freeze = Stack_Edit(_tt, r, Select_List)
				if S_edit then
					for index, value in ipairs(S_edit) do
						table.insert(p, Static_info(Select_List[index].address, Select_List[index].flags, value[1], static_list, static_name))
					end
					local r = {}
					r[1], r[2], r[3] = {'输出文件', 'C写法', 'print?'}, G_Configure(3), {'file', 'checkbox', 'checkbox'}
					local pt = gg.prompt(r[1], r[2], r[3])
					if pt then
						G_Configure(3, pt)
						local St
						if pt[2] then
							St = tab_Turn_Cpp(p, S_edit, S_name, S_freeze)
						else
							St = Static_Assemble(p, "t", S_name, S_freeze)
						end
						io.open(pt[1], "w"):write(St):close()
						if pt[3] then
							print(St)
						end
						gg.toast("写出完成")
					end
				end
			end
		end
	else
		gg.alert("请在保存列表勾选需要进行扫描的值")
	end
end

function Data_Conut()
if #gg.getListItems()==0 then gg.alert('请将数据添加到保存列表')
elseif #gg.getListItems()==1 then gg.alert('保存列表不可只有一条数据')end
sj=gg.getListItems()
szb={} lxb={} fxs1={}
for i=1,#sj do
table.insert(szb,sj[i].value)
table.insert(lxb,sj[i].flags)
table.insert(fxs1,'[类型] '..lxb[i]..' [数值] '..szb[i])
end
xzzdzm=gg.choice(fxs1,0,'选择主特征码')
if xzzdzm==nil then gg.toast('你选择了取消')return end
for i=1,#sj do
if xzzdzm==i then
py=sj[i].address nc=ncclq(gg.getValuesRange(gg.getListItems())[1])
qmnb3='{["value"] = '..sj[i].value..', ["type"] = '..lxb[i]..'},\n'
end
end
xzfdzm=gg.multiChoice(fxs1,nil,'选择副特征码')
if xzfdzm==nil then gg.toast('你选择了取消')return end
lv={}
for i=1,#sj do
if xzfdzm[i]==true then
table.insert(lv,'{["lv"] = '..sj[i].value..', ["offset"] = '..sj[i].address-py..', ["type"] = '..sj[i].flags..'},\n')
end end
xzxgddzm=gg.multiChoice(fxs1,nil,'选择修改的特征码')
if xzxgddzm==nil then gg.toast('你选择了取消')return end
if io.open('/sdcard/.ncgj/fxs3.jl')==nil then
xr=gg.prompt({'功能名称','将特征码修改为','冻结'},{'测试','100'},{'text','speed','checkbox'})
else
csh=io.open('/sdcard/.ncgj/fxs3.jl')
xr=gg.prompt({'功能名称','将特征码修改为','冻结'},{csh:read('*l'),csh:read('*l')},{'text','speed','checkbox'})csh:close()
end
if xr==nil then gg.toast('你选择了取消')return end
io.open('/sdcard/.ncgj/fxs3.jl','w'):write(xr[1]..'\n'..xr[2])
if xr[3]==true then dj=', ["freeze"] = true' else dj='' end
qmxg={}
for i=1,#sj do
if xzxgddzm[i]==true then
table.insert(qmxg,'{["value"] = '..xr[2]..', ["offset"] = '..sj[i].address-py..', ["type"] = '..sj[i].flags..dj..'},')
end
end
fxsjh='qmnb = {\n{["memory"] = '..nc..'},\n{["name"] = "'..xr[1]..'"},\n'..qmnb3..table.concat(lv)..'}\nqmxg = {\n'..table.concat(qmxg)..'}\nxqmnb(qmnb)'
xz=gg.alert('功能['..xr[1]..']的仿Xs写法已生成\n'..fxsjh..'\n请选择','生成脚本','复制','取消')
if xz==nil or xz==3 then gg.toast('你选择了取消')return
elseif xz==1 then
io.open('/sdcard/功能['..xr[1]..']仿Xs写法生成.lua','w'):write(fxsjh)
gg.alert('已写入/sdcard/功能['..xr[1]..']仿Xs写法生成.lua','OK')
elseif xz==2 then
gg.copyText(fxsjh,false)
end
repeat zx=gg.alert('是否尝试执行？\n'..fxsjh,'Yes','No')until zx~=nil
if zx==nil or zx==2 then gg.toast('你选择了取消')
elseif zx==1 then load(pzfxs..'\n'..fxsjh)()
end
end

function Contrast_Tool()
if #gg.getListItems()==0 then gg.alert('请将数据添加到保存列表')
elseif #gg.getListItems()==1 then gg.alert('保存列表不可只有一条数据')end
sj=gg.getListItems()
szb={} lxb={} zz1={}
for i=1,#sj do
table.insert(szb,sj[i].value)
table.insert(lxb,sj[i].flags)
table.insert(zz1,'[类型] '..lxb[i]..' [数值] '..szb[i])
end
xzzdzm=gg.choice(zz1,0,'选择主特征码')
if xzzdzm==nil then gg.toast('你选择了取消')return end
for i=1,#sj do
if xzzdzm==i then
py=sj[i].address nc=ncclq(gg.getValuesRange(gg.getListItems())[1])
qmnb3='local dataType = '..sj[i].flags..'\nlocal tb1 = {{'..sj[i].value..', 0}, '
end
end
xzfdzm=gg.multiChoice(zz1,nil,'选择副特征码')
if xzfdzm==nil then gg.toast('你选择了取消')return end
lv={}
for i=1,#sj do
if xzfdzm[i]==true then
table.insert(lv,'{'..sj[i].value..', '..sj[i].address-py..'}, ')
end end
xzxgddzm=gg.multiChoice(zz1,nil,'选择修改的特征码')
if xzxgddzm==nil then gg.toast('你选择了取消')return end
if io.open('/sdcard/.ncgj/zz3.jl')==nil then
xr=gg.prompt({'功能名称','将特征码修改为','冻结'},{'测试','100'},{'text','speed','checkbox'})
else
csh=io.open('/sdcard/.ncgj/zz3.jl')
xr=gg.prompt({'功能名称','将特征码修改为','冻结'},{csh:read('*l'),csh:read('*l')},{'text','speed','checkbox'})csh:close()
end
if xr==nil then gg.toast('你选择了取消')return end
io.open('/sdcard/.ncgj/zz3.jl','w'):write(xr[1]..'\n'..xr[2])
if xr[3]==true then dj=', true' else dj='' end
qmxg={}
for i=1,#sj do
if xzxgddzm[i]==true then
table.insert(qmxg,'{'..xr[2]..', '..sj[i].address-py..dj..'},')
end
end
zzjh='gg.setRanges('..nc..')\nName = "'..xr[1]..'"\n'..qmnb3..table.concat(lv)..'}\nlocal tb2 = {'..table.concat(qmxg)..'}\nSearchWrite(tb1, tb2, dataType)'
xz=gg.alert('功能['..xr[1]..']的指针写法已生成\n'..zzjh..'\n请选择','生成脚本','复制','取消')
if xz==nil or xz==3 then gg.toast('你选择了取消')return
elseif xz==1 then
io.open('/sdcard/功能['..xr[1]..']指针写法生成.lua','w'):write(zzjh)
gg.alert('已写入/sdcard/功能['..xr[1]..']指针写法生成.lua','OK')
elseif xz==2 then
gg.copyText(zzjh,false)
end
repeat zx=gg.alert('是否尝试执行？\n'..zzjh,'Yes','No')until zx~=nil
if zx==nil or zx==2 then gg.toast('你选择了取消')
elseif zx==1 then load(pzzz..'\n'..zzjh)()
end
end

function Filter_Tool()
	local pt = {{'请选择读取的文件'}, G_Configure(7), {'file'}}
	local t, S = A_Table_or_file(pt)
	if t then

		G_Configure(7, t)
	end
	if S then
		if S.loadMoudle then
			local _res = {}
			if S.loadMoudle == 1 then
				local r = {}
				r[1], r[2], r[3] = {(Set.Filter_different and "获取不同" or "获取相同") .. '\n地址', '获取不同值', '输出文件', '是否输出文件'}, G_Configure(9), {'text', 'checkbox', 'file', 'checkbox'}
				r[2][2] = Set.Filter_different
				filter_addr = filter_addr and string.format("%X", filter_addr)
				r[2][1] = filter_addr or ""
				local _r = gg.prompt(r[1], r[2], r[3])
				if _r then
					Call_Set.Filter_different = _r[2]
					G_Configure(9, _r)
					_r[1] = tonumber(_r[1]) or tonumber(_r[1], 16)
					if _r[1] then
						_res = filter_Const(_r[1], S)
						filter_addr = _r[1]
					end
					if #_res > 0 then
						gg.toast("过滤出" .. #_res .. "个值")
						Filter_Offset = _res
						if _r[4] then
							gg.saveVariable(_res, _r[3])
						end
					else
						gg.toast("过滤失败")
					end
				end
			elseif S.loadMoudle == 2 then
				local r = {}
				r[1], r[2], r[3] = {'地址(多个用;隔开 支持范围)', '过滤地址?', '加载锁链', '输出的文件', '将结果输出至文件'}, G_Configure(8), {'text', 'checkbox', 'checkbox', 'file', 'checkbox'}
				local _r = gg.prompt(r[1], r[2], r[3])
				if _r then
					G_Configure(8, _r)
					local _A = load_Pointer(S)
					local loadR = {}
					for index, value in pairs(_A) do
						_res[#_res + 1] = S[index]
						_res[#_res].address = value.address
						loadR[#loadR + 1] = value
					end
					if #loadR > 0 then
						if _r[2] then
							C_Conversion_filter(_r[1], _res)
						end
						if #_res > 0 then
							Filter_Chain = _res
							Filter_Chain.loadMoudle = 2
							if _r[3] then
								gg.loadResults(loadR)
							end
							if _r[5] then
								gg.saveVariable(_res, _r[4])
							end
							gg.toast("过滤出" .. #_res .. "条锁链")
						else
							gg.toast("error -1")
						end
					else
						gg.toast("error -2")
					end
				end
			else
				gg.toast("Unknow")
			end
		else
			gg.toast("Unknow")
		end
	else
		gg.toast("load error")
	end
end

function Value_Conver()
	local t = {{"地址", "偏移", "输出文件", "写出为table形式", "Arm32", "不采用Arm32过滤", "Arm64", "不采用Arm64过滤", "Thumb", "不采用Thumb过滤", "十六进制", "反十六进制"}, G_Configure(13), {"text", "text", "file", "checkbox", "checkbox", "checkbox", "checkbox", "checkbox", "checkbox", "checkbox", "checkbox", "checkbox"}}
	t[2][1] = Set.Input_Moudle ~= 1 and t[2][1] or nil
	if Set.Input_Moudle == 2 then
		t[1][1] = "return 文件"; t[2][1] = t[2][1] or gg.getFile():gsub("[^/]*$", "") .. "Addr_return.lua"; t[3][1] = "file"
	elseif Set.Input_Moudle == 3 or Set.Input_Moudle == 4 then
		t[1][1] = nil; t[2][1] = nil; t[3][1] = nil; t[1][2] = Set.Input_Moudle == 4 and "保存列表选中值\n" .. t[1][2] or "搜索列表\n" .. t[1][2]
	end
	local tt = gg.prompt(t[1], t[2], t[3])
	if tt then
		local addr = tt[1]
		tt[1] = Set.Input_Moudle ~= 1 and tt[1] or nil
		G_Configure(13, tt)
		local Addr_list = {}
		if Set.Input_Moudle == 1 then
			Addr_list[#Addr_list + 1] = tonumber(addr) or tonumber(addr, 16)
		elseif Set.Input_Moudle == 2 then
			local load = loadfile(addr)
			if load then
				Addr_list = load()
			else
				gg.toast("error -2")
				return
			end
			if type(Addr_list) == type({}) and #Addr_list ~= 0 then
				for i in pairs(Addr_list) do
					Addr_list[i] = tonumber(Addr_list[i]) or tonumber(Addr_list[i], 16)
				end
			else
				gg.toast("error -2")
				return
			end
		elseif Set.Input_Moudle == 3 then
			for index, value in ipairs(gg.getResults(Set.Search_Count_ASM or gg.getResultCount)) do
				Addr_list[#Addr_list + 1] = value.address
			end
		elseif Set.Input_Moudle == 4 then
			for index, value in ipairs(gg.getSelectedListItems()) do
				Addr_list[#Addr_list + 1] = value.address
			end
		end
		if Addr_list and #Addr_list ~= 0 then
			local r = {}
			local _r = {}
			local _t = {}
			for i = 5, 9, 2 do
				r[#r + 1] = tt[i]
				_r[#_r + 1] = tt[i] and not tt[i + 1]
			end
			for i in pairs(Addr_list) do
				for _, value in ipairs(gg.getValues(Range_filter(Go_over(Addr_list[i], 4, tt[2], 4), gg.getValuesRange({Addr_list[i]})[1]))) do
					_t[#_t + 1] = value
				end
			end
			if #t > 0 then
				_t = index_func_Data(_t, remove_repeat(Contrast_Readable(_t, true)))
				Disasm_Code(_t, r)
				Filter_Only_Code(_t, r, _r)
				Hex_Con(_t, tt[10], tt[11])
				if _t and #_t > 0 then
					gg.toast("过滤完成共过滤出" .. #_t .. "条值")
					if not tt[4] then
						io.open(tt[3], "w"):write(table.concat(Turn_Code_txt(_t), "\n")):close()
					else
						_t.loadMoudle = 5
						gg.saveVariable(_t, tt[3])
					end
					gg.toast("写出成功")
				else
					gg.toast("error -2")
				end
			else
				gg.toast("error -1")
			end
		else
			gg.toast("error -1")
		end
	end
end

function Next_Pointer()
	local _r = gg.getSelectedListItems()
	if #_r == 0 then
		gg.alert("请勾选保存列表中的值")
		return
	end
	local t = {{"偏移", "深度", ("获取" .. (gg.getTargetInfo().x64 and "32" or "64") .. "位地址"), "修正地址", "获取周围地址", "白名单", "写出文件路径", "table形式写出路径", "写出table形式(load)"}, G_Configure(16), {"text", "text", "checkbox", "checkbox", "checkbox", "checkbox", "file", "file", "checkbox"}}
	local tt = gg.prompt(t[1], t[2], t[3])
	if tt then
		G_Configure(16, tt)
		local addr = {}
		for index, value in ipairs(_r) do
			addr[index] = value.address
		end
		local r = Goto_Next_Pointer(addr, tt[1], tt[2], Range_Pointer(), tt[6], tt[4], tt[5], tt[3])
		gg.toast("获取完成")
		if r and r[2] and #r[2] ~= #addr then
			io.open(tt[7], "w"):write(table.concat(r[1], "\n\n")):close()
			if tt[9] then
				gg.saveVariable(r[2], tt[8])
			end
			gg.toast("写出完成")
		else
			gg.toast("error -6")
		end
	end
end

function C_identify()
	local pt = {{'请选择读取的文件'}, G_Configure(10), {'file'}}
	local t, S = A_Table_or_file(pt)
	if t then

		G_Configure(10, t)
	end
	if S then
		if S.loadMoudle then
			if not (#S > 0) then
				gg.toast("error -3")
				return
			end
			local Choice
			local Call = {}
			local environment 
			if S.loadMoudle == 1 then
				local _r
				local num_C = Set.default_Moudle
				local r = {}
				r[1], r[2], r[3] = {'输出文件', 'print?'}, G_Configure(11), {'file', 'checkbox'}
				local _pt = gg.prompt(r[1], r[2], r[3])
				if _pt then
					G_Configure(11, _pt)
					environment = {Assemble_Pointer, Assemble_Xscript, Assemble_C, (function() Call_Set.dialog_editM = true end), M_Main}
					if not Set.dialog_editM then
						num_C = nil
						Choice = {"(大改)指针写法", "(大改)高仿xs写法", "C++写法", "不再弹出", "返回"}
						local r = gg.choice(Choice, nil, "BY 青衫白衣\n" .. D_Rose[math.random(1, #D_Rose)])
						if r then
							if r ~= #Choice and r ~= #Choice - 1 then
								num_C = r
							else
								environment[r]()
							end
						end
					end
					if num_C then
						_r = num_C ~= 3 and Set.Edit_Range
						Call[1], Call[2], Call[3], Call[4] = Convert_to_identify(S, _r)
						local ptr = environment[num_C](Call[1], Call[2], Call[3], Call[4], S.ranges)
						if ptr then
							ptr = (num_C == 2 and "local app = {}" or "") .. Get_func(func_identify[num_C]) .. "\n\n" .. ptr
							if _pt[2] then
								print(ptr)
							end
							io.open(_pt[1], "w"):write(ptr):close()
							gg.toast("写出完成")
						else
							gg.toast("error -1")
						end
					end
				end
			elseif S.loadMoudle == 2 then
				local r = {}
				r[1], r[2], r[3] = {'输出文件', 'cpp写法', 'Edit?', 'print?'}, G_Configure(12), {'file', 'checkbox', 'checkbox', 'checkbox'}
				local Choice = gg.prompt(r[1], r[2], r[3])
				if Choice then
					G_Configure(12, Choice)
					Call[1], Call[2], Call[3], Call[4] = Turn_Other_Executable(S, Choice[3])
					local ptr
					if Choice[2] then
						ptr = tab_Turn_Cpp(Call[1], Call[2], Call[3], Call[4])
					else
						ptr = tab_Turn_G(Call[1], Call[2], Call[3], Call[4])
					end
					if ptr then
						ptr = (Choice[2] and "" or Get_func(func_identify[4])) .. "\n\n" .. ptr
						if Choice[4] then
							print(ptr)
						end
						io.open(Choice[1], "w"):write(ptr):close()
						gg.toast("写出完成")
					else
						gg.toast("error -1")
					end
				end
			else
				gg.toast("Unknow")
			end
		else
			gg.toast("Unknow")
		end
	else
		gg.toast("load error")
	end
end

function Data_Output()
	local pt = {{'请选择读取的文件', '选择输出文件', 'print'}, G_Configure(14), {'file', 'file', 'checkbox'}}
	local t, S = M_Table_or_file(pt)
	if t and S then
		
		G_Configure(14, t)
		local _t = Output_data(S)
		local ptr = table.concat(_t, "\n")
		_t = #_t
		if t[3] then
			print(ptr)
		end
		io.open(t[2], "w"):write(ptr):close()
		gg.toast("写出完成共写出" .. _t .. "个值")
	end
end

function All_setting()
	env = debug.getinfo(2).func
	_env = nil
	local t = {
		"偏移工具类型弹窗: " .. (Set.f_setting and "每次弹出" or "不再弹出"),
		"偏移工具类型选择: " .. tostring(string_flags(tonumber(Set.flags))),
		"指针实时输出: " .. (Set.real_time_output_return and "叠加写入" or "0长度写入"),
		"搜索数量定义域: " .. (Set.S_Count[1] and table.concat(Set.S_Count, "~") or "不设置"),
		"获取数量不合格删除: " .. (Set.fail_remove and "开启" or "关闭"),
		"对比对话框文件选项弹出: " .. (Set.Dialog_pop and "每次弹出" or "不弹出"),
		"对比文件设置数量: " .. Set.Dialog_Loadfile,
		"对比判断文件: " .. (Set.Divide_file and "手动" or "自动"),
		"数值转换返回地址: " .. (Set.Input_Moudle == 1 and "单地址输入" or Set.Input_Moudle == 2 and "文件返回" or Set.Input_Moudle == 3 and "搜索列表" or Set.Input_Moudle == 4 and "保存列表"),
		"数值转换搜索列表数量: " .. (Set.Search_Count_ASM or "自动获取"),
		"转换删除空白项: " .. (Set.Code_Addr_delete and "开启" or "关闭"),
		"写法修改采用选用特征码: " .. (Set.Edit_Select and "开启" or "关闭"),
		"可进行范围搜索时使用: " .. (Set.Edit_Range and "开启" or "关闭"),
		"默认写法生成: " .. (Set.default_Moudle == 1 and "指针写法" or Set.default_Moudle == 2 and "高仿xs写法" or Set.default_Moudle == 3 and "C++写法"),
		"修改选择弹窗: " .. (Set.dialog_editM and "不再弹出" or "每次弹出"),
		"修改模式: " .. (Set.Moudle_Edit and "普通" or "自创"),
		"基址设置内存",
		"下级指针内存",
		"模块重新加载",
		"ASM特征过滤",
		"返回"
	}
	local tt = gg.choice(t, nil, "设置列表 BY: 青衫白衣\n" .. D_Rose[math.random(1, #D_Rose)])
	if All_set_table1[tt] then
		set_alert(t[tt], All_set_table1[tt][1], All_set_table1[tt][2][1], All_set_table1[tt][2][2], All_set_table1[tt][3])
	elseif All_set_table2[tt] then
		All_set_table2[tt]()
		gg.toast("设置完成")
	elseif tt == #t then
		M_Main()
	end
end







env = M_Main

gg.showUiButton()
while true do
	if gg.isClickedUiButton() then
		collectgarbage("collect")
		env(_env)
	end
end

-- BY 青衫白衣 想二改就二改 就别加密了 拿源码用吧...
--写的也不咋样 好几个月前写的了...