ElseItem2 = {}
function ElseItem2.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"ElseItem2",1803900017,416,4)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,286, 499)
        GUI:WndSetMoveWithLBM(_Parent)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"buy_title",1803900025,80,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,92, 27)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"close",1800000068,255,6)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ElseItem2.closeWnd")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,24, 24)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"wnd_back1",1803900021,11,53)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,250, 60)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"wnd_back2",1803900021,11,126)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,250, 60)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"wnd_back3",1803900021,11,201)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,250, 60)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"wnd_back4",1803900021,11,273)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,250, 60)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"wnd_back5",1803900021,11,345)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,250, 60)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"wnd_back6",1803900021,11,415)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,250, 60)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"name_back1",0,56,56)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,181, 54)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"name_back2",0,56,129)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,181, 54)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"name_back3",0,56,203)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,181, 54)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"name_back4",0,56,276)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,181, 54)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"name_back5",0,56,348)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,181, 54)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"name_back6",0,56,418)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,181, 54)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemctrl_back1",1803900036,21,57)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemctrl_back2",1803900036,21,130)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemctrl_back3",1803900036,21,205)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemctrl_back4",1803900036,21,277)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemctrl_back5",1803900036,21,349)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"itemctrl_back6",1803900036,21,420)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name1",85,68,122,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name2",85,141,122,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name3",83,215,122,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name4",85,288,122,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name5",85,359,122,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"name6",85,429,122,28)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
    end
    
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"get_yes1",0,168,53)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,85, 58)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"get_yes2",0,168,127)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,85, 58)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"get_yes3",0,166,200)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,85, 58)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"get_yes4",0,168,271)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,85, 58)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"get_yes5",0,168,344)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,85, 58)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"get_yes6",0,168,416)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,85, 58)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item1",0,21,57,51,51)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item2",0,21,130,51,51)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item3",0,21,205,51,51)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item4",0,21,277,51,51)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item5",0,21,349,51,51)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"item6",0,21,420,51,51)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,51, 51)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"up_page",1800000372,257,146)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ElseItem2.up_page")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 61)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"down_page",1800000376,257,241)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ElseItem2.down_page")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 61)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    ElseItem2.UIInit(_Parent)
end

--UI Logic Code Start
ElseItem2.WndHandle = 0
ElseItem2._control = {}
ElseItem2.tab = {}
ElseItem2.lev = 0
ElseItem2.nowPage = 1
function ElseItem2.UIInit(_Handle)
	ElseItem2.WndHandle = _Handle
	for i = 1 , 6 do 
		local _handel = GetWindow(_Handle,"item"..i)
		if _handel ~= 0 then ElseItem2._control["item"..i] = _handel end
	end
	_handel = GetWindow(_Handle,"up_page")
	if _handel ~= 0 then ElseItem2._control["up_page"] = _handel end
	_handel = GetWindow(_Handle,"down_page")
	if _handel ~= 0 then ElseItem2._control["down_page"] = _handel end
	GUI:WndSetEnableM(ElseItem2._control["up_page"],false)
	UI:Lua_SubmitForm("神炉表单", "qita_hudun", "")
	
end

function ElseItem2.updata(data)
	ElseItem2.lev = data[1]
	ElseItem2.tab = data[2]
	--初始化当前页
	ElseItem2.nowPage = 1
	if ElseItem2.lev <= 3 then 
		ElseItem2.nowPage = 1
	elseif ElseItem2.lev > 3 then
		if (ElseItem2.lev + 3) <= #ElseItem2.tab then  --策划说最多显示等级后面大三级的装备
			ElseItem2.nowPage = ElseItem2.lev + 3 - 5    
		else
			ElseItem2.nowPage = #ElseItem2.tab - 5
		end
		
	end
	ElseItem2.updatePgBtn()
	ElseItem2.updatelist()
end

function ElseItem2.up_page(_handle)
	ElseItem2.nowPage = ElseItem2.nowPage - 1
	ElseItem2.updatePgBtn()
	ElseItem2.updatelist()
end

function ElseItem2.down_page(_handle)
	ElseItem2.nowPage = ElseItem2.nowPage + 1
	ElseItem2.updatePgBtn()
	ElseItem2.updatelist()
end

function ElseItem2.updatePgBtn()
	--是否是首页
	if ElseItem2.nowPage == 1 then
		GUI:WndSetEnableM(ElseItem2._control["up_page"], false)
	else
		GUI:WndSetEnableM(ElseItem2._control["up_page"], true)
	end
	--是否是尾页
	local pgCount = 0
	if ElseItem2.lev <= 3 then 
		pgCount = 1
	elseif ElseItem2.lev > 3 then
		if (ElseItem2.lev + 3 - 5) <= (#ElseItem2.tab - 5) then 
			pgCount = ElseItem2.lev + 3 - 5    --策划说最多显示等级后面大三级的装备,坑爹的需求
		else
			pgCount = #ElseItem2.tab - 5
		end
		
	end
	if ElseItem2.nowPage == pgCount then
		GUI:WndSetEnableM(ElseItem2._control["down_page"],false)
	else
		GUI:WndSetEnableM(ElseItem2._control["down_page"],true)
	end
end

function ElseItem2.updatelist()
	for i = 1 , 6 do
		GUI:ItemCtrlClearItemData(ElseItem2._control["item"..i])
		EditSetText(ElseItem2.WndHandle,"name"..i,"")
		ImageSetImageID(ElseItem2.WndHandle,"name_back"..i,0)
		ImageSetImageID(ElseItem2.WndHandle,"get_yes"..i,0)
	end
	local a = ElseItem2.nowPage
	local b = ElseItem2.lev - ElseItem2.nowPage + 1   
	for i = 1 , 6 do
		ElseItem2.InitItemInfoByKeyName(ElseItem2._control["item"..i],ElseItem2.tab[a])
		local Temp = CL:GetItemTemplateHandleByKeyName(ElseItem2.tab[a])
		local item_name = ""
		if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_NAME) then
			item_name = LuaRet	
		end
		EditSetText(ElseItem2.WndHandle,"name"..i,item_name)
		a = a + 1
		if b < 1 then
			ImageSetImageID(ElseItem2.WndHandle,"name_back"..i,1800000302)
			--ImageSetImageID(ElseItem2.WndHandle,"get_yes"..i,1800000296)
		else
			if i <= b then
				ImageSetImageID(ElseItem2.WndHandle,"name_back"..i,1800000301)	
				ImageSetImageID(ElseItem2.WndHandle,"get_yes"..i,1800000295)	
			else 
				ImageSetImageID(ElseItem2.WndHandle,"name_back"..i,1800000302)
				--ImageSetImageID(ElseItem2.WndHandle,"get_yes"..i,1800000296)
			end	
		end
	end
end

function ElseItem2.closeWnd(_handle)		
	GUI:WndClose(ElseItem2.WndHandle)
end

function ElseItem2.InitItemInfoByKeyName(_WndHandle, KeyName)
	local _ItemDataHandle = GUI:ItemCtrlGetGUIData(_WndHandle)
	if 0 ~= _ItemDataHandle then
		local _ItemTemplateHandle = CL:GetItemTemplateHandleByKeyName(KeyName)
		if _ItemTemplateHandle ~= 0 then
			if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_TIPSICON) then
				LuaArg = LuaRet
				CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)
			end
			if CL:GetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_ID) then
				LuaArg = LuaRet
				CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMID)
			end
		end
		LuaArg = true
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE)
		LuaArg = 0xFFFF
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
	end
end

ElseItem2.main()