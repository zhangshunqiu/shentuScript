
		
function on_accept(player, quest_id)
	local map = lualib:MapGuid(player)
    local X = lualib:X(player)
    local Y = lualib:Y(player)
	lualib:Map_GenSingleMonster(map, X, Y, 3, 5, "贪婪的乞丐",false)
	lualib:SysMsg_SendTriggerMsg(player, "贪婪的乞丐出现在你的身边！请于两分钟内击杀！若怪物消失，请放弃任务重接！")
	return true
end