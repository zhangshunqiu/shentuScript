--Lua相关设置
function LoadLuaClientCfg()
	UI:Lua_Log("LoadLuaClientCfg")
	LuaGlobal["TeamMemberWindowCols"] = 2	   --组队队员面板列数
	LuaGlobal["TeamMemberWindowRows"] = 5	   --组队队员面板行数
	LuaGlobal["UseClientCommand"] = true 	   --开启客户端命令功能
	LuaGlobal["TipMarginX"] = 1				   --两个Tip之间水平间距
	LuaGlobal["TipCmpSameHeight"] = true	   --多个Tip高度使用最高的那个的高度
	LuaGlobal["ShowAchieveMsg"] = true		   --在聊天框显示完成成就提示
	LuaGlobal["VIPFilterLevelLower"] = false   --是否显示VIP过滤等级以下的VIP功能
	LuaGlobal["ModifyQuiteGameMethod"] = false --是否更改客户端的退出方式，如果更改，退出回调 OnQuiteGame(flag) flag=1代表小退 flag=2代表大退
	LuaGlobal["UseTaskAutoAttackFlag"] = true  --是否使用任务自动寻路完成后的自动打怪标记(task中的ATK标记)，默认不使用。如果设置为true，须实现自动打怪回调脚本函数OnTaskAutoAttack()
	LuaGlobal["ShowBrokenEquipTip"] = true    --装备损坏时，控制是否显示tips，默认不显示，如果设置为true，TipLayout中要有tipLayoutFunctionBrokenEquip函数
	LuaGlobal["UseEquipmentGuide"] = true     --是否使用装备引导面板，默认不使用，如果使用，须注册添加物品事件
	LuaGlobal["UseSkillGuide"] = true        --是否使用技能引导面板，默认不使用
end
LoadLuaClientCfg()

--根据名字获取颜色
function GetColorByName(_ColorName)
	local _Color = MakeARGB(255,255,255,255)
  	if _ColorName == "攻城战我方" then
  		_Color = MakeARGB(255,41,67,243)
  	elseif _ColorName == "攻城战敌方" then
  		_Color = MakeARGB(255,249,108,15)
  	elseif _ColorName == "攻城战第三方" then
  		_Color = MakeARGB(255,72,249,28)
  	elseif _ColorName == "行会战我方" then
  		_Color = MakeARGB(255,41,67,243)
  	elseif _ColorName == "行会战敌方" then
  		_Color = MakeARGB(255,249,108,15)
  	elseif _ColorName == "行会战第三方" then
  		_Color = MakeARGB(255,72,249,28)
  	else
  	end
  	return _Color
end

--装备精炼的属性选择
EnhanceTypeStr =
{
	{"HP上限"	,ROLE_PROP32_MAX_HP},
	{"MP上限"	,ROLE_PROP32_MAX_MP},
	{"物防"		,ROLE_PROP32_MAX_PHY_DEF},
	{"魔防"		,ROLE_PROP32_MAX_MAG_DEF},
	{"物攻"		,ROLE_PROP32_MAX_PHY_ATK},
	{"魔法"		,ROLE_PROP32_MAX_MAG_ATK},
	{"道术"		,ROLE_PROP32_MAX_TAO_ATK}
}

ItemCanEnhanceTypes =
{
	{EQUIP_WEAPON	,{"物攻"  ,"魔法"  ,"道术"}}, --武器
	{EQUIP_RING		,{"物攻"  ,"魔法"  ,"道术"}}, --戒指
	{EQUIP_NECKLACE	,{"物防"  ,"魔防"         }}, --项链
	{EQUIP_WRIST	,{"HP上限","MP上限"       }}, --护腕
	{EQUIP_HELMET	,{"物防"  ,"魔防"         }}, --头盔
	{EQUIP_ARMOR	,{"物防"  ,"魔防"         }}, --衣服
	{EQUIP_SHOES	,{"HP上限","MP上限"       }},  --鞋子
	{EQUIP_MOUNT	,{"HP上限"  ,"MP上限"     }}  --坐骑
}

function GetEnhanceTypeStrByType(_EnhanceType)
	for k,v in pairs(EnhanceTypeStr) do
		if _EnhanceType == v[2] then
			return v[1]
		end
	end
	return ""
end

--装备精炼所需石头和灵元珠
EquipmentEnhanceParam =
{
	{1, 5000},
	{2, 5000},
	{4, 5000},
	{6, 5000},
	{8, 5000},
	{10, 5000},
	{12, 5000},
	{14, 5000},
	{16, 5000},
}

function GetEquipmentEnhanceStoneByLevel(level)
	level = level + 1
	if EquipmentEnhanceParam[level] == nil then
		return 0
	else
		return EquipmentEnhanceParam[level][1]
	end
end

function GetEquipmentEnhanceGoldByLevel(level)
	level = level + 1
	if EquipmentEnhanceParam[level] == nil then
		return 0
	else
		return EquipmentEnhanceParam[level][2]
	end
end

function GetEquipmentIdentifyGold()
	return 6000
end

function GetEnhanceTransferGold()
	return 5000
end

function GetEnhanceChangeGold()
	return 5000
end

function GetHorseIdentifyGold()
	return 100000
end

function GetHorseRestoreGold()
	return 100000
end

--获取已装备的全套装备的最低精炼等级
function GetEquipedBaseRefineLevel(IsSelfEquip)
	local RefineEquip =
	{
	SITE_WEAPON, --武器
	SITE_HELMET, --头盔
	SITE_WRIST_0, --护腕0
	SITE_WRIST_1, --护腕1
	SITE_ARMOR,   --衣服
	SITE_JUJU,    --符咒
	SITE_SHOES,   --鞋子
	SITE_SHOULDER,--护肩
	SITE_NECKLACE,--项链
	SITE_RING_0,  --戒指0
	SITE_RING_1,  --戒指1
	SITE_MEDAL,   --勋章
	SITE_GEM,     --宝石
	SITE_WINGS,   --翅膀
	SITE_AMULET,  --守护
	SITE_MOUNT,   --坐骑
	}

	if IsSelfEquip then
		if not UI:Lua_GetPlayerSelfEquipData() then return 0 end
	else
		if not UI:Lua_GetPlayerTargetEquipData() then return 0 end
	end
	local _EquipData = LuaRet

	local _Amount = #RefineEquip
	local _List = {}
	for i = 1, _Amount do
		_List[i] = 0
		local _Site = RefineEquip[i]
		if _EquipData[_Site] ~= nil and _EquipData[_Site] ~= "0" then
			local _GUID = _EquipData[_Site]
			if UI:Lua_GetItemEntityPropByGUID(_GUID, ITEM_PROP_EQUIP_REFINELEVEL) then
				_List[i] = LuaRet
			end
		end
	end

	table.sort(_List, function(l, r)
		return l > r
	end)

	return _List[9]
end

--精炼2

--装备精炼的成功概率，花费金币，花费灵元珠
EquipmentEnhanceParam2 =
{
				{10000, {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 1},
				{7000,  {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 1},
				{6000,  {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 1},
				{5000,  {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 2},
				{4000,  {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 2},
				{3000,  {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 2},
				{2500,  {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 3},
				{2000,  {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 3},
				{1500,  {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 3},
				{1000,  {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 4},
				{10000, {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 4},
				{10000, {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 4},
				{10000, {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 5},
				{10000, {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 5},
				{10000, {15000, 9000, 6000, 12000, 0, 6000, 0, 9000, 7500, 0, 0, 0, 0, 12000}, 5},
}

function GetXinyunPctAddByItemID(ItemID)
	if ItemID == 20443 then --幸运星
		return 1000
	elseif ItemID == 20444 then
		return 1500
	else
		return 0
	end
end

function GetEquipmentEnhanceDesc()
	local _Desc = ""
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#    注意：装备精炼失败时会掉到0级\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#             辅助道具介绍\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#  幸运星：精炼时放入，可以提升成功率\n"
	_Desc = _Desc.."#OFFSET<X:-1,Y:0>#  护炼符：精炼时放入，可保证精炼失败后，装备精炼等级最多下降1级\n"
	_Desc = _Desc.."#OFFSET<X:-3,Y:0>#         #COLORCOLOR_ORANGE#┌──────┐\n"
	_Desc = _Desc.."#OFFSET<X:-3,Y:-5>#         │精炼属性介绍│\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#┌───┴──────┴────┐\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#│#COLOREND##COLORCOLOR_YELLOW#精炼1~8级：#OFFSET<X:1,Y:0>#每级属性随机+1%~2%#OFFSET<X:3,Y:0>##COLOREND##COLORCOLOR_ORANGE##OFFSET<X:2,Y:0>#│\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#├───────────────┤\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#│#COLOREND##COLORCOLOR_YELLOW#精炼9~11级：每级属性随机+1%~3%#COLOREND##COLORCOLOR_ORANGE#│\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#├───────────────┤\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#│#COLOREND##COLORCOLOR_YELLOW#精炼12以上：每级属性随机+2%~4%#COLOREND##COLORCOLOR_ORANGE#│\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#└───────────────┘\n"
    _Desc = _Desc.."#OFFSET<X:51,Y:0>##COLORCOLOR_ORANGE#┌────────┐\n"
    _Desc = _Desc.."#OFFSET<X:51,Y:-5>#│全套精炼属性介绍│\n"
    _Desc = _Desc.."#OFFSET<X:3,Y:-5>#┌───┴──┬─────┴───┐\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#│全套精炼+6#OFFSET<X:12,Y:0>#│额外附加：属性+1%#OFFSET<X:2,Y:0>##OFFSET<X:4,Y:0>#│\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#├──────┼─────────┤\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#│全套精炼+9#OFFSET<X:12,Y:0>#│额外附加：属性+2%#OFFSET<X:1,Y:0># #OFFSET<X:-1,Y:0>#│\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#├──────┼─────────┤\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#│全套精炼+12#OFFSET<X:6,Y:0>#│额外附加：属性+4%#OFFSET<X:0,Y:0># │\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#├──────┼─────────┤\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#│全套精炼+15#OFFSET<X:6,Y:0>#│额外附加：属性+7%#OFFSET<X:1,Y:0># #OFFSET<X:-1,Y:0>#│\n"
	_Desc = _Desc.."#OFFSET<X:3,Y:-5>#└──────┴─────────┘#COLOREND#\n"
	return _Desc
end

function GetEquipmentEnhance2SuccessPctByLevel(level)
	level = level + 1
	if EquipmentEnhanceParam2[level] == nil then
		return 0
	else
		return EquipmentEnhanceParam2[level][1]
	end
end

function GetEquipmentEnhance2GoldByLevel(level)
	level = level + 1
	if EquipmentEnhanceParam2[level] == nil then
		return 0
	else
        if RDItemCtrlGetGUIDataPropByType(nil, "EquimentEnhance2,Item0", ITEMGUIDATA_ITEMGUID) then
            local GUID = LuaRet
            if GUID == "0" then
                return 0
            end 
            UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_SUBTYPE)
            local sub_type = LuaRet
            return EquipmentEnhanceParam2[level][2][sub_type]
        end
	end
end

function GetEquipmentEnhance2StoneByLevel(level)
	level = level + 1
	if EquipmentEnhanceParam2[level] == nil then
		return 0
	else
		return EquipmentEnhanceParam2[level][3]
	end
end

function GetAttNameValueStr(name, value, mid)
	if mid == nil then
		mid = "+"
	end
	local beg = string.find(name, "百分比$")
	if beg ~= nil then
		return string.sub(name, 1, beg - 1)..mid..value.."%"
	end

	beg = string.find(name, "倍数$")
	if beg ~= nil then
		return string.sub(name, 1, beg - 1)..mid..value.."%"
	end
	return name..mid..value
end

--ModifyQuiteGameMethod 辅助函数
function OnQuiteGame(flag)
	if flag == 1 then --小退
		local script = "UI:Lua_QuiteToSelectRole()"
		MessageBox(MESSAGE_STYLE_OKCANCEL, "是否退出到选择角色界面?", script)
	elseif flag == 2 then --大退
		local script = "UI:Lua_QuiteGame()"
		MessageBox(MESSAGE_STYLE_OKCANCEL, "是否退出游戏?", script)
	end
end
----

--UseTaskAutoAttackFlag 辅助函数
function OnTaskAutoAttack()
	UI:Lua_SubmitForm("自动打怪", "guaji", "1")
end
----

--UseEquipmentGuide 辅助函数--
function HandleEquipmentGuide()
	if LuaGlobal["UseEquipmentGuide"] == true then
		RegisterUIEvent(LUA_EVENT_ONADDITEM, "装备引导2", "OnEuipmentGuide")
	end
end; HandleEquipmentGuide()

function OnEuipmentGuide()
	local guid = LuaParam[2]
	GenForm("装备引导2#"..guid)
end
----

--UseSkillGuide 辅助函数--
function HandleSkillGuide()
	if LuaGlobal["UseSkillGuide"] == true then
		RegisterUIEvent(LUA_EVENT_ONADDITEM, "技能引导", "OnSkillGuide")
	end
end; HandleSkillGuide()

function OnSkillGuide()
	local guid = LuaParam[2]
	GenForm("技能引导#"..guid)
end
----
