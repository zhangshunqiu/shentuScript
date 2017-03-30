--任务成功接取回调
--quest_id 任务id
function on_accept(player, quest_id)
	lualib:AddBuff(player, "传送中", 0)
	lualib:AddTimerEx(player, 1, 2000, 1, "chuansong", "")
	lualib:SysPromptMsg(player, "由于路途较远，我2秒之后将你传送到目的地！以后你可以使用逍遥游自己传送到想去的地方。")
	return	true
end

function chuansong(player)
	lualib:Player_MapMoveXY(player, "巫山城", 405, 220, 5)
	lualib:SysPromptMsg(player, "传送成功！")
	lualib:DisableTimer(player, 1)
    return true
end


function on_accomplish(player, quest_id, select_index)
	local job = lualib:Job(player)
	local item_table = {"战术手镯", "法术手镯", "道术手镯"}
	local item1_table = {"御战护腕", "御魔护腕", "御道护腕"}
	local player_name = lualib:Name(player)
	local item_num = 2
	
	if lualib:Player_GetBagFree(player) < item_num then
		lualib:Mail("神途", player_name, "由于你的包裹已满，现已将<"..item_table[job]..","..item1_table[job]..">通过邮件发送给你", 0, 0, {item_table[job], 1, 1, item1_table[job], 1, 1})
		lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要"..item_num.."个格子！道具已通过邮件发送给你，请注意查收")
		
	else
		lualib:AddItem(player, item_table[job], 1, true, "新手任务赠送", "新手任务赠送")
		lualib:AddItem(player, item1_table[job], 1, true, "新手任务赠送", "新手任务赠送")
		lualib:SysMsg_SendTriggerMsg(player, "您获得了<"..item_table[job]..","..item1_table[job]..">请打开背包查看！！！")
	end
	return true
end