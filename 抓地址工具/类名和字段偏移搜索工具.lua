local gg = gg
local info = gg.getTargetInfo()

local pointerSize = (info.x64 and 8 or 4)
local pointerType = (info.x64==true and gg.TYPE_QWORD or gg.TYPE_DWORD)

local libstart=0
local libil2cppXaCdRange
local metadata
local originalResults

local isFieldDump, isMethodDump
local deepSearch = false


-------------------------Utils Start-------------------------

local searchRanges = {
    ["Ca"] = gg.REGION_C_ALLOC,
    ["A"] = gg.REGION_ANONYMOUS,
    ["O"] = gg.REGION_OTHER,
}

local unsignedFixers = {
    [1] = 0xFF,
    [2] = 0xFFFF,
    [4] = 0xFFFFFFFF,
    [8] = 0xFFFFFFFFFFFFFFFF,
}

local function toUnsigned(value, size)
    if value<0 then
        value = value & unsignedFixers[size]
    end
    return value
end

local function tohex(val)
  return string.format("%X", val)
end

local function fixAddressForPointer(address, size)
    local remainder = address%size
    if remainder==0 then
        return address
    else
        return address - remainder
    end
end

-------------------------Utils End-------------------------

-------------------------Get Metadata Start-------------------------
--Getting metadata normally
local function fastest()
    return gg.getRangesList("global-metadata.dat")
end

--Checking mscordlib in stringLiteral start
local function faster()
    local metadata = {}
    local allRanges = gg.getRangesList()
    local stringOffset = {} --0x18 of metadata, stringOffset
    local strStart = {}
    
    for i, v in ipairs(allRanges) do
        stringOffset[i] = {address=v.start+0x18, flags=gg.TYPE_DWORD}
    end
    stringOffset = gg.getValues(stringOffset)
    
    for i, v in ipairs(allRanges) do
        strStart[i] = {address=v.start+stringOffset[i].value, flags=gg.TYPE_DWORD}
    end
    strStart = gg.getValues(strStart)
    
    for i, v in ipairs(strStart) do
        --Every string table starts with mscorlib.dll in global-metadata.dat
        --So, if the first 4 bytes are "m(0x6D) s(0x73) c(0x63) o(0x6F)"
        if v.value==0x6F63736D then return {allRanges[i]} end
    end
    return {}
end

--Finding get_fieldOfView in Ca, A, O
local function fast()
    local searchMemoryRange = {
        gg.REGION_C_ALLOC,
        gg.REGION_ANONYMOUS,
        gg.REGION_OTHER,
        gg.REGION_C_HEAP,
    } --add regions where you want to search.
    
    --if you want to search all regions, use following value -1.
    --[[
    local searchMemoryRange = {
        -1,
    }
    --]]
    gg.clearResults()
    for i, v in ipairs(searchMemoryRange) do
        gg.setRanges(v)
        gg.searchNumber("h 00 67 65 74 5F 66 69 65 6C 64 4F 66 56 69 65 77 00", gg.TYPE_BYTE, false, gg.SIGH_EQUAL, 0, -1, 1)
        local res = gg.getResults(gg.getResultsCount())
        gg.clearResults()
        if #res>0 then
            for ii, vv in ipairs(gg.getRangesList()) do
                if res[1].address < vv["end"] and res[1].address > vv["start"] then
                    return {vv}
                end
            end
        end
    end
    return {}
end

local function get_metadata()
    local findingMethods = {
        [1] = fastest, --Getting metadata normally
        [2] = faster, --checking mscordlib in stringLiteral
        [3] = fast, --Finding get_fieldOfView in Ca, A, O
    }
    local metadata = {}
    
    for i=1, 3 do
        metadata = findingMethods[i]()
        if #metadata>0 then return metadata end
    end
    return {}
end
-------------------------Get Metadata End-------------------------

local function getMainLib_Xa_Cd_Region()
    local packageName = info.packageName
    local libil2cppRanges = gg.getRangesList(packageName=="com.mobile.legends" and "liblogic.so" or "libil2cpp.so")
    if #libil2cppRanges==0 then return {} end
    local XaCdRange = {
        ["start"] = 0,
        ["end"] = 0,
    }
    for i, v in ipairs(libil2cppRanges) do
        local elfHeader = {
            ["magicValue"] = {address=v["start"], flags=gg.TYPE_DWORD},
            ["e_phoff"] = {address=v["start"]+(info.x64 and 0x20 or 0x1C), flags=gg.TYPE_WORD},
            ["e_phnum"] = {address=v["start"]+(info.x64 and 0x38 or 0x2C), flags=gg.TYPE_WORD},
        }
        elfHeader = gg.getValues(elfHeader)
        if elfHeader["magicValue"].value==0x464C457F and v.type:sub(3,3)=="x" then
            local PHstart = v["start"] + elfHeader["e_phoff"].value
            local PHcount = elfHeader["e_phnum"].value
            for index=1, PHcount do
                local offsetDiff =  (index-1)*(info.x64 and 0x38 or 0x20)
                local programHeader = {
                    ["p_type"] = {address = PHstart + offsetDiff, flags = gg.TYPE_DWORD},
                    ["p_vaddr"] = {address = PHstart + offsetDiff + (info.x64 and 0x10 or 0x8), flags = pointerType},
                    ["p_filesz"] = {address = PHstart + offsetDiff + (info.x64 and 0x20 or 0x10), flags = pointerType},
                    ["p_memsz"] ={address = PHstart + offsetDiff + (info.x64 and 0x28 or 0x14), flags = pointerType},
                    ["p_flags"] = {address = PHstart + offsetDiff + (info.x64 and 0x4 or 0x18), flags = gg.TYPE_DWORD},
                }
                programHeader = gg.getValues(programHeader)
                local programType = programHeader["p_type"].value
                local virtualAddr = programHeader["p_vaddr"].value
                local fileSize = programHeader["p_filesz"].value
                local virtualSize = programHeader["p_memsz"].value
                local programFlags = programHeader["p_flags"].value
                if programType==1 then
                    if programFlags==5 then
                        if libstart==0 then
                            libstart = v.start
                            XaCdRange.start = v.start
                        end
                    end
                    if programFlags==6 and fileSize<virtualSize then
                        XaCdRange["end"] = XaCdRange["start"] + virtualAddr + fileSize
                    end
                end
            end
        end
    end
    return XaCdRange
end


local function getName(addr)
    local str = ""
    local t = {}
    for i=1, 128 do
        t[i] = {address=addr+(i-1), flags=gg.TYPE_BYTE}
    end
    t = gg.getValues(t)
    
    for i, v in ipairs(t) do
        if v.value==0 then break end
        if v.value<0 then return "" end
        str = str..string.char(v.value&0xFF)
    end
    return str
end

local function dumpFields(possibleThings)
    print("\n//字段")
    for i=1, #possibleThings, 4 do
        local fieldNamePtr = toUnsigned(possibleThings[i+1].value, pointerSize)
        local fieldTypePtr = toUnsigned(possibleThings[i+2].value, pointerSize)
        local field_offset = possibleThings[i+3].value
        
        if (deepSearch or (fieldNamePtr<metadata[1]["end"] and fieldNamePtr>metadata[1]["start"])) and (fieldTypePtr<libil2cppXaCdRange["end"] and fieldTypePtr>libil2cppXaCdRange["start"]) and field_offset>=0 then
            print(getName(fieldNamePtr).." //0x"..tohex(field_offset))
        end
    end
end

local function dumpMethods(possibleThings)
    print("\n//方法")
    for i=1, #possibleThings, 4 do
        local functionPtr = toUnsigned(possibleThings[i].value, pointerSize)
        local invokePtr = toUnsigned(possibleThings[i+1].value, pointerSize)
        local methodNamePtr = toUnsigned(possibleThings[i+2].value, pointerSize)
        --local methodTypePtr = toUnsigned(possibleThings[i+3].value, pointerSize)
        
        if (functionPtr<libil2cppXaCdRange["end"] and functionPtr>libil2cppXaCdRange["start"]) and (invokePtr<libil2cppXaCdRange["end"] and invokePtr>libil2cppXaCdRange["start"]) and (deepSearch or (methodNamePtr<metadata[1]["end"] and methodNamePtr>metadata[1]["start"])) then -- and (methodTypePtr<libil2cppXaCdRange["end"] and methodTypePtr>libil2cppXaCdRange["start"]) then
            print(getName(methodNamePtr).."() //0x"..tohex(functionPtr-libstart))
        end
    end
end

local function Dump(class_parent)
    local selectedRange_shortname = gg.getValuesRange(class_parent)[1]
    gg.setRanges(searchRanges[selectedRange_shortname])
    gg.clearResults()
    gg.searchNumber(class_parent[1].address, pointerType)
    local res = gg.getResults(gg.getResultsCount())
    gg.clearResults()
    
    local all = {}
    local fields = {}
    local methods = {}
    
    for i, v in ipairs(res) do
        all[#all+1] = {address=v.address - (pointerSize*3), flags=pointerType} --function pointer
        all[#all+1] = {address=v.address - (pointerSize*2), flags=pointerType} --invoke function pointer or field name pointer
        all[#all+1] = {address=v.address - (pointerSize*1), flags=pointerType} --function name pointer or field type pointer
        all[#all+1] = {address=v.address + pointerSize, flags=gg.TYPE_DWORD} --function type pointer or field offset
    end
    all = gg.getValues(all)
    
    if isFieldDump then dumpFields(all) end
    if isMethodDump then dumpMethods(all) end
    gg.loadResults(originalResults)
end

local function main()
    libil2cppXaCdRange = getMainLib_Xa_Cd_Region()
    if libstart==0 then print("未找到libil2cpp.so，如果游戏被拆分，请反拆分它。") end
    metadata = get_metadata()
    if #metadata==0 then return print("未找到metadata") end
    originalResults = gg.getResults(gg.getResultsCount()) --checking results in search list(tab)
    if #originalResults==0 then return print("在搜索列表中加载您的地址") end
    
    local menu = gg.prompt({"以十进制形式输入最大偏移范围", "转储字段", "转储方法", "深度搜索(慢)"}, {"1000"}, {"number", "checkbox", "checkbox", "checkbox"})
    if not menu then return end
    local off_range = tonumber(menu[1])
    isFieldDump = menu[2]
    isMethodDump = menu[3]
    deepSearch = menu[4]
    
    for i, v in ipairs(originalResults) do --loop to check every addresses in search list
        local found = false
        local fixedPointer = fixAddressForPointer(v.address, pointerSize)
        print(i..". 地址 0x"..tohex(v.address))
        
        local addrs = {} --
        for off=0, off_range, pointerSize do --loop to get values of addresses to check class parent pointer
            addrs[#addrs+1] = {address = fixedPointer - off, flags = pointerType}
        end
        addrs = gg.getValues(addrs)
        
        local parentPtr = {}
        local namespacePtr = {}
        local classnamePtr = {}
        
        
        for i_, v_ in ipairs(addrs) do
            parentPtr[i_] = {address = v_.value, flags = pointerType}
            classnamePtr[i_] = {address = v_.value + (pointerSize*2), flags = pointerType}
            namespacePtr[i_] = {address = v_.value + (pointerSize*3), flags = pointerType}
        end
        parentPtr, classnamePtr, namespacePtr = gg.getValues(parentPtr), gg.getValues(classnamePtr), gg.getValues(namespacePtr)
        
        for i_, v_ in ipairs(parentPtr) do
            classnamePtr[i_].value = toUnsigned(classnamePtr[i_].value, pointerSize)
            namespacePtr[i_].value = toUnsigned(namespacePtr[i_].value, pointerSize)
            
            if deepSearch==true or (namespacePtr[i_].value>metadata[1].start and namespacePtr[i_].value<metadata[1]["end"]) then
                local tmp_class_name = getName(classnamePtr[i_].value)
                if tmp_class_name~="" then
                    print("命名空间："..getName(namespacePtr[i_].value))
                    print("类名："..tmp_class_name)
                    
                    print("字段偏移量：0x"..tohex(v.address - addrs[i_].address))
                    
                    if isFieldDump or isMethodDump then
                        Dump({parentPtr[i_]})
                    end
                    print(string.rep("=", 30))
                    found = true
                    break
                end
            end
        end
        if found==false then print("无法获取类名，可能偏移太短。") end
        print("\n")
    end
end

main()