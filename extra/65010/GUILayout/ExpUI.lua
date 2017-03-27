ExpUI = {}
function ExpUI.main()
	
	local handle = GetWindow(nil,"ExpUI" ) 
	if handle ~= 0 then 
		GUI:WndClose(handle)
	end
	local UI = "<form><dialog OnInit='ExpUI.UIInit' id='ExpUI' image='0' x='0' y='0' w='182' h='67' esc_close='true' drag='false' revmsg='true'>"
	.. "<image id='Exp' image='0' x='0' y='0' w='182' h='67'  revmsg='true' enable='false' visible='true'/>"
	.. "<image id='num11' image='1804600044' x='0' y='0' w='21' h='21' revmsg='true' enable='false' visible='true'/>"
	.. "<image id='num10' image='1804600045' x='15' y='38' w='21' h='21' revmsg='true' enable='false' visible='true'/>"
	.. "<image id='num9' image='1804600045' x='30' y='38' w='21' h='21' revmsg='true' enable='false' visible='true'/>"
	.. "<image id='num8' image='1804600045' x='45' y='38' w='21' h='21' revmsg='true' enable='false' visible='true'/>"
	.. "<image id='num7' image='1804600045' x='60' y='38' w='21' h='21' revmsg='true' enable='false' visible='true'/>"
	.. "<image id='num6' image='1804600045' x='75' y='38' w='21' h='21' revmsg='true' enable='false' visible='true'/>"
	.. "<image id='num5' image='1804600045' x='90' y='38' w='21' h='21' revmsg='true' enable='false' visible='true'/>"
	.. "<image id='num4' image='1804600045' x='105' y='38' w='21' h='21' revmsg='true' enable='false' visible='true'/>"
	.. "<image id='num3' image='1804600045' x='120' y='38' w='21' h='21' revmsg='true' enable='false' visible='true'/>"
	.. "<image id='num2' image='1804600045' x='135' y='38' w='21' h='21' revmsg='true' enable='false' visible='true'/>"
	.. "<image id='num1' image='1804600045' x='150' y='38' w='21' h='21' revmsg='true' enable='false' visible='true'/>" 
	.. "</dialog>"
	.. "</form>"
	GenFormByString(UI)
	
end
  
ExpUI.img_tab = {}
ExpUI.Wnd = 0 
ExpUI.num = 0 
ExpUI.timeid = 0 
local score = FormParam[1]
function ExpUI.UIInit(_GUIHandle)
	ExpUI.Wnd =  _GUIHandle
	GUI:WndSetSizeM(_GUIHandle,187,67) 
	CenterWnd(_GUIHandle)
	ExpUI.Getexp(score)
	WndAddEffect(_GUIHandle,"Exp", 3020000000, -57, -67, 100, 0) 
	ExpUI.timeid = GUI:WndAddTimerBrief(_GUIHandle, 100, "ExpUI.Magic")
    GUI:WndAddTimerBrief(_GUIHandle, 4000, "ExpUI.Closed") 
end

function ExpUI.Magic()
	ExpUI.num = ExpUI.num +1 
	for i = 1,10 do   
		local rdmImg = CL:Plus("1804600044", tostring(math.random(1,10)))
		ImageSetImageID(ExpUI.Wnd, "num"..i, tonumber(rdmImg))
	end  
	if ExpUI.num == 20 then   
		GUI:WndDelTimer(ExpUI.Wnd, ExpUI.timeid)
		if #ExpUI.img_tab > 0 then
			for i = 1,#ExpUI.img_tab do  
				local img = CL:Plus("1804600045", tostring(ExpUI.img_tab[i]))
				ImageSetImageID(ExpUI.Wnd, "num"..i, tonumber(img))
			end  
		end	
	end
end

function ExpUI.Getexp(score)
	for i = 1 , 10 do 
		local index1 =math.floor(score%10)
		local index2 = score/10
		score = index2 
		ExpUI.img_tab[i] = index1
	end
	for i = 10, 1 , -1 do 
		if tonumber(ExpUI.img_tab[i]) ==0 then 
			local hand = GetWindow(ExpUI.Wnd, "num"..i)
			if hand ~= 0 then  
				GUI:WndSetVisible(hand,false) 
			end
		else 
			ExpUI.Move(i)
			break
		end
	end 	 
end

function ExpUI.Move(num)
	local index = math.floor((10 - tonumber(num))/2)
	for i=1 ,10 do 
		local hand = GetWindow(ExpUI.Wnd, "num".. i) 
		if GUI:WndGetVisible(hand) then   
			GUI:WndSetPosM(hand, 160-15*index-i*15, 38) 
		end
	end
end

function ExpUI.Closed()
	GUI:WndDelTimer(ExpUI.Wnd, ExpUI.timeid)
	if ExpUI.Wnd ~= 0 then 
		GUI:WndClose(ExpUI.Wnd)
	end
end

ExpUI.main()