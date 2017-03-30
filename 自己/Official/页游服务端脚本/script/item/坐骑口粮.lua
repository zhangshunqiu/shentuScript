local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/horse")

function main(player, item)
    local horse = lualib:Item_GetBySite(player,  lua_site_mount)
    if horse == "" then
		lualib:SysMsg_SendTriggerMsg(player, "没有装备坐骑")
        return false
    end
    
    --当前耐久
    local durability = lualib:Item_GetDurability(player, horse)

    --耐久上限
    local max_durability = lualib:Item_GetMaxDurability(player, horse)

    --lualib:SysMsg_SendTriggerMsg(player, "durability = "..durability.." max_durability = "..max_durability)
            
    if durability == 0 then
		lualib:SysMsg_SendTriggerMsg(player, "当前坐骑已经死亡,请先使用[坐骑还魂丹]复活")
        return false
    end
    
    if durability == max_durability then
		lualib:SysMsg_SendTriggerMsg(player, "当前坐骑很饱了")
        return false
    end
    
    --加坐骑耐久值
    local addtion = 2000
	
	local keyname = lualib:KeyName(item)
	if keyname == "超级坐骑口粮" then
		local new_durability = max_durability
		lualib:Item_SetDurability(player, horse, new_durability)
	else
		local new_durability = durability + addtion
		if new_durability > max_durability then
			new_durability = max_durability
		end
		lualib:Item_SetDurability(player, horse, new_durability)
	end
    
    lualib:SysMsg_SendTriggerMsg(player, "坐骑吃了口粮")
    local amount = lualib:Item_GetAmount(player, item)
    lualib:Item_SetAmount(player, item, amount - 1)
        
    return true
end
