LongHunZL ={}
local ui = "<form> <dialog OnInit='LongHunZL.UIInit' id='LongHunZL' image='0' x='-8' y='250' w='16' h='16' revmsg='true'>"
	.."<image id='ContentBack' image='1805000007,1805000009,1805000013,1805000015,1805000011,1805000008,1805000014,1805000010,1805000012' x='0' y='0' w='209' h='350' check_point='0' revmsg='true'/>"
	.."	<button id='HideBtn' image='1805000003' x='182' y='-27' w='26' h='27' OnLButtonUp='LongHunZL.OnHideWndBtn' revmsg='true'/>"
	.."	<image id='FbWndHeadBack' image='1805000002' x='1' y='-27' w='216' h='27' check_point='0' revmsg='true'/>"
	.."	<edit id='text1' x='21' y='5' w='80' h='22' revmsg='true' text_color='#F1E761' text='活动剩余时间：' font='system'/>"
	.."	<edit id='restTimes' x='110' y='9' w='83' h='16' revmsg='true' text_color='#00CC33' font='system'/>"
	.."	<edit id='text2' x='21' y='31' w='73' h='22' revmsg='true' text_color='#CA7B31' text='活动说明：' font='system'/>"
	.."	<richedit id='intro1' x='20' y='52' w='180' h='50' revmsg='true' text_color='#E4C19F' text='站在龙魂之刃周围8格内，即可享受龙魂之刃的照耀，并获得大量奖励' font='system'/>"
	--.."	<richedit id='intro2' x='20' y='97' w='180' h='50' revmsg='true' text_color='#E4C19F' text='2.龙魂之刃周围会随机刷新强力Buff，想要高人一等，绝不能错过' font='system'/>"
	.."	<richedit id='leaveMap' x='79' y='308' w='134' h='18' text='#SELECT#退出地图#SELECTEND#' text_color='#B8A085' OnLButtonUp='LongHunZL.LeaveMap' revmsg='true' font='system'/>"
	.."	<image id='title1' image='1805500036' x='72' y='-23' w='92' h='26' revmsg='false' />"
	.."	<image id='TestWndChild_2' image='1805000002' x='0' y='137' w='216' h='27' revmsg='true'/>"
	.."	<edit id='title2' x='71' y='140' w='92' h='20' revmsg='true' text_color='#F1E761' text='活动奖励' font='SIMLI18'/>"
	.."	<image id='ItemBkImg1' image='1800000133' x='19' y='170' w='45' h='45' revmsg='true'/>"
	.."	<image id='ItemBkImg2' image='1800000133' x='84' y='170' w='45' h='45' revmsg='true'/>"
	.."	<image id='ItemBkImg3' image='1800000133' x='144' y='170' w='45' h='45' revmsg='true'/>"
	.."	<image id='ItemBkImg4' image='1800000133' x='19' y='226' w='45' h='45' revmsg='true'/>"
	.."	<image id='ItemBkImg5' image='1800000133' x='84' y='226' w='45' h='45' revmsg='true'/>"
	.."	<image id='ItemBkImg6' image='1800000133' x='144' y='226' w='45' h='45' revmsg='true'/>"
	.."	<itemctrl id='rewardItem1' x='21' y='172' w='45' h='45' use_back='0' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<itemctrl id='rewardItem2' x='86' y='172' w='45' h='45' use_back='0' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<itemctrl id='rewardItem3' x='146' y='172' w='45' h='45' use_back='0' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<itemctrl id='rewardItem4' x='21' y='228' w='45' h='45' use_back='0' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<itemctrl id='rewardItem5' x='85' y='228' w='45' h='45' use_back='0' rbtn_use='true' enable='true' revmsg='true'/>"
	.."	<itemctrl id='rewardItem6' x='146' y='228' w='45' h='45' use_back='0' rbtn_use='true' enable='true' revmsg='true'/>"
	.." </dialog>"
	.."</form>"

function LongHunZL.main()
	GenFormByString(ui)
end

--UI Logic Code Start
LongHunZL.second = 0
LongHunZL.minute = 0
local _l = tonumber(FormParam[1])
function LongHunZL.UIInit(h)
	LongHunZL._hideWnd = 0
	LongHunZL._wnd = h
	local handle = 0
	local _sI = {"成就令牌","BOSS积分精魄","海量功勋","2000绑定元宝","100元宝","BOSS积分精魄"}
	for i = 1, #_sI do
		handle = GetWindow(LongHunZL._wnd, "rewardItem"..i)
		if handle ~= 0 then
			RDItemCtrlSetGUIDataByKeyName(handle, _sI[i], 1, false)
		end
	end
	
	local day, hour, minute, second = GetDetailTime(_l)
	LongHunZL.second = second
	LongHunZL.minute = minute

	local taskWnd = GetWindow(0, "GameMainInterface,TaskWindow")
	if taskWnd ~= nil then
		GUI:WndSetVisible(taskWnd, false)
	end
	
	handle = GetWindow(h,"HideBtn")
	if handle ~= 0 then
		GUI:WndMoveToParentTop(handle)
	end
    local sX = CL:GetScreenWidth()
	local tw = GUI:WndFindWindow(0, "LongHunZL")
    if tw ~= 0 then
        GUI:WndSetPosM(tw, sX-208, 250)
    end
	
	local _wnd = GUI:WndCreateWnd(0, "FbWndHideUI", 1805000021, 0, 251)
	if _wnd ~= 0 then
		LongHunZL._hideWnd = _wnd
		GUI:WndSetVisible(_wnd, false)
		local btn = GUI:ButtonCreate(_wnd, "ShowBtn", 1805000017, 0, -31)
		if btn ~= 0 then
			GUI:WndRegistScript(btn, RDWndBaseCL_mouse_lbUp, "LongHunZL.OnShowWndBtn")
		end
	end
	
	if GUI:WndAddTimerBrief(h, 1000, "LongHunZL.DcUpdata") then    --设置定时器
		LongHunZL.time_id = LuaRet
	end
	GUI:WndRegistScript(h, RDWndBaseCL_wnd_close, "LongHunZL.cleartime")
	RegisterUIEvent(LUA_EVENT_UPDATASCREENSIZE, "SCREEN SIZE CHANGED LongHunZL", "LongHunZL.width") 
end

function LongHunZL.width()
	OnScreenSizeChange(LongHunZL._wnd, DailyFbWnd._hideWnd,208,31)
end

function LongHunZL.cleartime()  --关闭定时器
end

function LongHunZL.OnHideWndBtn(h)
	local sX = CL:GetScreenWidth()
	GUI:WndGetPosM(LongHunZL._wnd)
	GUI:WndSetPosM(LongHunZL._wnd, sX, LuaRet[2])
	LongHunZL.HideTweenEnd()
end

function LongHunZL.HideTweenEnd()
	local sX = CL:GetScreenWidth()
	GUI:WndSetPosM(LongHunZL._hideWnd, sX-31, 251)
	GUI:WndSetVisible(LongHunZL._wnd, false)
	GUI:WndSetVisible(LongHunZL._hideWnd, true)
end

function LongHunZL.OnShowWndBtn(h)
	GUI:WndSetVisible(LongHunZL._wnd, true)
	GUI:WndSetVisible(LongHunZL._hideWnd, false)
	
	local tweenX = CL:GetScreenWidth()- 208
	GUI:WndGetPosM(LongHunZL._wnd)
	GUI:WndSetPosM(LongHunZL._wnd, tweenX, LuaRet[2])
end

function LongHunZL.DcUpdata()
	local min_Offset = ""
	local second_Offset = ""
	local handle = GetWindow(LongHunZL._wnd, "restTimes")
	if LongHunZL.second == 0 then
		LongHunZL.minute = LongHunZL.minute - 1
		LongHunZL.second = 60
	end
	LongHunZL.second = LongHunZL.second - 1
	if LongHunZL.minute < 10 then
		min_Offset = "0"
	end
	if LongHunZL.second < 10 then
		second_Offset = "0"
	end
	GUI:EditSetTextM(handle, min_Offset..LongHunZL.minute..":"..second_Offset..LongHunZL.second)
	if LongHunZL.minute <= 0 and LongHunZL.second == 0 then
		UI:Lua_SubmitForm("NPC_IsNotInScene", "Back_LC", "")
		return
	end	
end



function LongHunZL.LeaveMap()
	UI:Lua_SubmitForm("NPC_IsNotInScene", "Back_LC", "")
end


function LongHunZL.CloseDlg()
	if LongHunZL._wnd ~= 0 then
		GUI:WndClose(LongHunZL._wnd)
	end
	if LongHunZL._hideWnd ~= 0 then
		GUI：WndClose(LongHunZL._hideWnd)
	end
	local taskWnd = GetWindow(0, "GameMainInterface,TaskWindow")
	if taskWnd ~= nil then
		GUI:WndSetVisible(taskWnd, true)
	end
	if TaskWindow._hideWnd ~= 0 then
		GUI:WndSetVisible(TaskWindow._hideWnd, false)
	end
	OnScreenSizeChange(taskWnd,TaskWindow._hideWnd,208,31)
end

function LongHunZL.ItemAwardPrompt(str)
	UI:Lua_GetScreenSize()
	local x = LuaRet[1]/2-191
	local y = LuaRet[2]-200
	msg_tip(str,x,y)
end

LongHunZL.main()