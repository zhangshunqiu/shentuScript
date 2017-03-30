local award_t = {
						["新手礼包"]={{"金砖中", "四倍经验8小时绑", "转生神殿卷轴"},{2, 2, 2}},
						["媒体礼包1"]={{"金砖中", "四倍经验8小时绑", "玛雅卷轴", "羽毛"},{1, 2, 1, 10}},
						["活动礼包1"]={{"金砖中", "四倍经验8小时绑", "转生神殿卷轴", "羽毛"},{1, 2, 1, 10}},
						["开服表礼包"]={{"金砖中", "四倍经验8小时绑", "转生神殿卷轴", "高级成就令牌"},{2, 2, 2, 2}},
						["补偿礼包"]={{"羽毛", "四倍经验8小时绑", "高级成就令牌"},{20, 2, 2}},
						["积分礼包1"]={{"灵石精华中", "四倍经验8小时绑", "高级功勋卷轴", "副本卷轴"},{3, 2, 2, 3}},
						["渠道礼包1"]={{"金砖中", "四倍经验8小时绑", "高级成就令牌", "灵石精华中"},{5, 2, 2, 1}},
						["积分礼包2"]={{"高级成就令牌", "四倍经验8小时绑", "副本卷轴", "金砖中"},{5, 2, 3, 2}},
						["渠道礼包2"]={{"高级功勋卷轴", "四倍经验8小时绑", "灵石精华中", "金砖中"},{5, 2, 3, 2}},
						["活动礼包2"]={{"羽毛", "四倍经验8小时绑", "高级成就令牌"},{50, 2, 3}},
						["媒体礼包2"]={{"高级功勋卷轴", "四倍经验8小时绑", "灵石精华中", "金砖中"},{2, 2, 2, 10}},
						["VIP礼包1"]={{"羽毛", "四倍经验8小时绑", "金砖中", "灵石精华中"},{10, 2, 10, 10}},
						["媒体礼包3"]={{"高级成就令牌", "四倍经验8小时绑"},{10, 2}},
						["VIP礼包2"]={{"高级BOSS积分精魄", "四倍经验8小时绑", "高级成就令牌"},{5, 4, 10}},
				}



--[[使用道具创建物品示例]]
function main(player, item)
	local keyname = lualib:KeyName(item)
	if award_t[keyname] == nil then
		return false
	end
	
	local item_t = award_t[keyname][1]
	local item_num = award_t[keyname][2]

	local bind_t = {}
	local opr_t = {}
	
	for i = 1 , #award_t[keyname][1] do
		bind_t[i] = 1
		opr_t[i] = 0
	end
	
	if not lualib:Player_ItemRequest(player, item_t, item_num, bind_t, opr_t, "礼包", player) then
		 lualib:SysMsg_SendTriggerMsg(player, "背包空间不够！")
		return false
	end
	return true
end
