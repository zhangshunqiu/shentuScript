ExtPackageDlg = {}
function ExtPackageDlg.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1910400001,5,-1)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,189, 121)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item1",0,41,74,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item2",0,80,74,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item3",0,117,74,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Item4",0,155,74,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,36, 36)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_GUIHandle, true)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Close",1910000020,190,10)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "ExtPackageDlg.OnClose")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,26, 26)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	
	ExtPackageDlg.UIInit(_Parent)
end

ExtPackageDlg.WndHandle = 0

function ExtPackageDlg.UIInit( _Handle )
	ExtPackageDlg.WndHandle = _Handle
end

function ExtPackageDlg.OnClose(_Handle,_Param)
	GUI:WndClose(ExtPackageDlg.WndHandle)
end

ExtPackageDlg.main()