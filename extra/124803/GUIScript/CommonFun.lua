--��ӡ�����������ַ���
function msg(str)
	UI:Lua_ChatMsg(str)
end

--��ӡ�����Debug View
function dbg(str)
	UI:Lua_Log(str)
end

--������д���ļ����������Debug
function log(str)
	UI:Lua_LogFile(str)
end

--��ѯDBE/XML�ļ��������
--˵����������֪�ֶ�����KeyName���ֶε�ֵKeyValue��ѯDBEName��FindName�ֶε�ֵ
--	����һ���ַ�����,ʧ�ܷ��ؿձ�
--ʾ����FindDBE("item","KeyName","SubType","9")
function FindDBE(DBEName,FindName,KeyName,KeyValue)
	local _Ret = {}
	if UI:Lua_FindDBE(DBEName,FindName,KeyName,KeyValue) then
		_Ret = LuaRet
	end
	return _Ret
end

--��ȡ��ɫ (A,R,G,B) -> (int)
function MakeARGB(A, R, G, B)
	UI:Lua_MakeARGB(A, R, G, B)
	return LuaRet
end

--�����ͻ�������,������
function ClientCommandHandler(_ClientCommand)
	if ClientCommand ~= nil and ClientCommand(_ClientCommand) then
		return true
	end
	return false
end

--��ȡ��ǰ�����µ��ַ�����ռ����
function GetStrWidth(str)
	if UI:Lua_GetFontStrWidth("system",str) then
		return LuaRet
	end
	return 0
end

--��ȡװ����λ��
function GetItemPosTypeByHandle(_ItemHandle)
	if not UI:Lua_GetItemEntityPropByHandle(_ItemHandle,ITEM_PROP_ENTITY_SITE) then
		return INVALID_POS
	else
		return GetItemPosType(LuaRet)
	end
end

--��ȡ����Tipָ��ĵ��߸��ӵ�λ��
function GetItemGUIDataItemPos()
	if not GetTipItemGUIDataPropByType(ITEMGUIDATA_ITEMPOS) then
		return INVALID_POS
	else
		return GetItemPosType(LuaRet)
	end
end

function IsTextureExists(_TextureImgID)
	if not UI:Lua_IsTextureExists(_TextureImgID) or LuaRet == false then
		return false
	else
		return true
	end
end

function GetTextureWidthHeight(_TextureImgID)
	if not UI:Lua_GetTextureWidthHeight(_TextureImgID) then
		return 0,0
	else
		return LuaRet[1],LuaRet[2]
	end
end

--������ʱ��(����)��ȡ ��,ʱ,��,��
function GetDetailTime(_TotleTime)
	local s = _TotleTime
	local m = math.floor(s / 60)
	local h = math.floor(m / 60)
	local d = math.floor(h / 24)
	s = s % 60
	m = m % 60
	h = h % 24
	return d,h,m,s
end

--����������ȡʱ��ʣ����ַ���
function GetLeaveTimeString(_TotleTime)
	local d, h, m, s = GetDetailTime(_TotleTime)
	local _Ret = ""
	if d ~= 0 then
		_Ret = d.."��"..h.."ʱ"..m.."��"..s.."��"
	elseif h ~= 0 then
		_Ret = h.."ʱ"..m.."��"..s.."��"
	else
		_Ret = m.."��"..s.."��"
	end
	return _Ret
end

function GetLeaveTimeString_VipCfg(_TotleTime)
	local d, h, m, s = GetDetailTime(_TotleTime)
	local t = {d > 0, h > 0, m > 0, s > 0}
	local i, j
	for x = 1,4 do if t[x] then i = x; break end end
	if i == nil or i >= 4 then return s.."��" end
	for x = i,4 do if not t[x] then j = x; break end end
	if j ~= nil and j < 4 then
		for x = j,4 do t[x] = false end
	end
	local r = ""
	if t[1] then r = r..d.."��" end
	if t[2] then r = r..h.."ʱ" end
	if t[3] then r = r..m.."��" end
	if t[4] then r = r..s.."��" end
	return r
end

function GetLeaveTimeString2(_TotleTime)
	local d, h, m, s = GetDetailTime(_TotleTime)
	local _Ret = ""
	if h < 10 then _Ret = _Ret.."0"..h..":" else _Ret = _Ret..h..":" end
	if m < 10 then _Ret = _Ret.."0"..m..":" else _Ret = _Ret..m..":" end
	if s < 10 then _Ret = _Ret.."0"..s else _Ret = _Ret..s end
	return _Ret
end

--������ʹ�ö���ǧ�ַ� �����ַ���
function GetGoldString(number)
	local gold = tostring(number)
	local len = string.len(gold)
	local ret = ""
	for i = 1, len do
		ret = string.sub(gold, -i, -i)..ret
		if i < len and i % 3 == 0 then
			ret = ","..ret
		end
	end
	return ret
end

--�ַ����ָ���ر�
function strsplit(str,char)
	splitRet = {}
	repeat
		local _Ret = string.gsub(str, "^(.-)%"..char.."(.-)$", function(a,b)
			splitRet[#splitRet+1] = a
			str = b
		end)
		if str == _Ret then
			splitRet[#splitRet+1] = _Ret
			break
		end
	until (str == "")
	return splitRet
end

--�ַ����ָ���������ַ���
function strsplittwo(str,char)
	return (string.gsub(str, "^(.-)%"..char.."(.-)$","%1")),(string.gsub(str, "^(.-)%"..char.."(.-)$","%2"))
end

--����table ���л��õ��ַ���
function serialize(obj)
    local text = ""
    local t = type(obj)
    if t == "number" then
        text = text .. obj
    elseif t == "boolean" then
        text = text .. tostring(obj)
    elseif t == "string" then
        text = text .. string.format("%q", obj)
    elseif t == "table" then
        text = text .. "{\n"

        for k, v in pairs(obj) do
        text = text .. "[" .. serialize(k) .. "]=" .. serialize(v) .. ",\n"
        end

        local metatable = getmetatable(obj)
        if metatable ~= nil and type(metatable.__index) == "table" then
        for k, v in pairs(metatable.__index) do
            text = text .. "[" .. serialize(k) .. "]=" .. serialize(v) .. ",\n"
        end
    end

    text = text .. "}"

    elseif t == "nil" then
        return nil
    else
        log("can not serialize a " .. t .. " type.")
    end

    return text
end

--�����ַ��������л��õ�table
function deserialize(text)
    local t = type(text)
    if t == "nil" or text == "" then
        return nil
    elseif t == "number" or t == "string" or t == "boolean" then
        text = tostring(text)
    else
        log("can not unserialize a " .. t .. " type.")
    end

    text = "return " .. text

    local func = loadstring(text)
    if func == nil then return nil end
    return func()
end

--lua�����ĸ���
function dup(ori_tab)
    if (type(ori_tab) ~= "table") then
        return ori_tab;
    end
    local new_tab = {};
    for i,v in pairs(ori_tab) do
        local vtyp = type(v);
        if (vtyp == "table") then
            new_tab[i] = dup(v);
        elseif (vtyp == "thread") then
            new_tab[i] = v;
        elseif (vtyp == "userdata") then
            new_tab[i] = v;
        else
            new_tab[i] = v;
        end
    end
    return new_tab;
end

--���ַ���strת��Ϊ��Ӧ����ɫ����������
function mkcolor(str)
	if type(str) == "string" then
		UI:Lua_GetColor(str)
		return LuaRet
	elseif type(str) == "number" then
		return str
	end
	return 0
end