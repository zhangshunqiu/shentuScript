
function on_accept(player, quest_id)	
		
	lualib:SysMsg_SendTriggerMsg(player, "注意：5秒钟后进入战斗副本！")
	lualib:AddTimer(player, 5098, 5000, 1, "enter_dgn")
	
	return true
end

function enter_dgn(player,timeid)
	local dgn_id = lualib:Map_CreateDgn("战斗副本", false, 1200)
	lualib:Player_SetDgnTicket(player, dgn_id) 
    lualib:Player_EnterDgn(player, "战斗副本", 65, 65, 2)
	lualib:SetInt(dgn_id, "释放怪物", 1)		
end

