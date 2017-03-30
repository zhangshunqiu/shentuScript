local GoldQfBookKeyname   = "祈福之书(金币)"
local SilverQfBookKeyname = "祈福之书(元宝)"
local GoldQfBuffKeyname   = "祈福之书(金币)"
local SilverQfBuffKeyname = "祈福之书(元宝)"
local itemTbl =
	{
		[GoldQfBookKeyname]   = {["type"] = "gold",   ["num"] = 50000},
		[SilverQfBookKeyname] = {["type"] = "silver", ["num"] = 100},
	}

function main(npc, player)
	local msg = ""
	msg = msg .. "     天藏大陆上仅存不多的净土，里面是众神守护的安全区，得到众神的祈福可获得经验。\n"
	msg = msg .. "<@ExBook   *01*购买祈福之书>\n"
	if lualib:Player_IsHasBuff(player, GoldQfBuffKeyname) or lualib:Player_IsHasBuff(player, SilverQfBuffKeyname) then
		msg = msg .. "<@LeaveMap *01*离开祈福之地>\n"
	else
		msg = msg .. "<@OK *01*离开祈福之地>\n"
	end
	msg = msg .. "<@Leave    *01*离开>"

	return msg
end

function ExBook(npc, player)
	local msg = ""
	msg = msg .. "<@ExBookEx1#" .. GoldQfBookKeyname   .. "   *01*购买祈福之书(金币)>\n"
	msg = msg .. "<@ExBookEx1#" .. SilverQfBookKeyname .. "   *01*购买祈福之书(元宝)>\n"

	return msg
end

function ExBookEx1(npc, player, item)
	local msg = ""

	if item == GoldQfBookKeyname then
		msg = msg .. "此类祈福之书仅沾有一点众神的仙气，进入祈福之地后使用可获得少量经验。广泛流传于天藏大陆，你只要给我50000金币我就可以赠送于你\n"
	elseif item == SilverQfBookKeyname then
		msg = msg .. "此类祈福之书是我当年云游四海的时候侥幸得遇一位神仙赠送于我的，什么？你想要？100元宝，不二价！\n"
	else
		msg = msg .. "出错"
		return msg
	end

	msg = msg .. "<@ExBookEx2#" .. item .. "   *01*确定购买>\n"
	msg = msg .. "<@Leave    *01*离开>"

	return msg
end

function ExBookEx2(npc, player, item)
	if itemTbl[item].type == "gold" then
		if not lualib:Player_IsGoldEnough(player, itemTbl[item].num, false) then
			return "你的金币不足\n<@main    *01*返回>"
		end
		if not lualib:Player_SubGold(player, itemTbl[item].num, false, "祈福使者场外：购买" .. item .. "扣金币", "祈福使者场外") then
			lualib:Error("祈福使者场外：购买" .. item .. "扣金币失败")
			return "扣金币失败\n<@main    *01*返回>"
		end
	elseif itemTbl[item].type == "silver" then
		if not lualib:Player_IsIngotEnough(player, itemTbl[item].num, false) then
			return "你的元宝不足\n<@main    *01*返回>"
		end
		if not lualib:Player_SubIngot(player, itemTbl[item].num, false, "祈福使者场外：购买" .. item .. "扣元宝", "祈福使者场外") then
			lualib:Error("祈福使者场外：购买" .. item .. "扣元宝失败")
			return "扣元宝失败\n<@main    *01*返回>"
		end
	else
		return "item不存在\n<@main    *01*返回>"
	end

	if lualib:BagFree(player, true, false, false) < 1 then
		return "你的背包满了\n<@main    *01*返回>"
	end
	if not lualib:AddItem(player, item, 1, false, "祈福使者场外：购买" .. item .. "给物品", "祈福使者场外") then
		lualib:Error("祈福使者场外：购买" .. item .. "给物品失败")
		return "给物品失败\n<@main    *01*返回>"
	end

	local msg = ""
	msg = msg .. "购买成功\n您当前背包里的" .. item .. "数量：" .. lualib:ItemCountByKey(player, item, true, false, false, 0) .. " \n"
	msg = msg .. "\n<@ExBookEx2#" .. item .. "    *01*老板再来一个！>"
	msg = msg .. "\n<@main    *01*返回>"
	return msg
end

--离开祈福之地
function LeaveMap(npc, player)
	local msg = ""

	if lualib:Player_IsHasBuff(player, GoldQfBuffKeyname) or lualib:Player_IsHasBuff(player, SilverQfBuffKeyname) then
		msg = msg .. "您身上有祈福BUFF，如果离开祈福之地，将不能得到经验，是否确定离开？"
	end

	msg = msg .. "\n<@OK     *01*是，我要离开>\n"
	msg = msg .. "  <@Leave  *01*取消>\n"
	return msg
end

function OK(npc, player)
	local cityTbl =
	{
		{"巫山城", ["x"] = 235, ["y"] = 304},
		{"龙城",   ["x"] = 235, ["y"] = 229}
	}
	local msg = ""

	msg = msg .. "我为你的离开感到惋惜，你要回哪？\n"
	for _, v in pairs(cityTbl) do
		msg = msg .. "<@Back#" .. v[1] .. "#" .. v.x .. "#" .. v.y .. "  *01*" .. v[1] .. ">\n"
	end
	msg = msg .. "<@main *01*好吧，我不走了>\n"
	return msg
end

function Back(npc, player, city, x, y)
	x = tonumber(x)
	y = tonumber(y)

	if not lualib:Player_MapMoveXY(player, city, x, y, 10) then
		lualib:Error("祈福之地回城失败")
	end
	return ""
end

function Leave(npc, player)
	return ""
end
