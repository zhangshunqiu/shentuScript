ElseItem4 = {}
function ElseItem4.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"ElseItem4",1803900017,416,4)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,286, 499)
        GUI:WndSetMoveWithLBM(_Parent)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"buy_title",1803900033,80,5)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,92, 27)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"close",1800000068,255,6)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ElseItem4.closeWnd")
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
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ElseItem4.up_page")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 61)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"down_page",1800000376,257,241)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "ElseItem4.down_page")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,20, 61)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    ElseItem4.UIInit(_Parent)
end

--UI Logic Code Start
ElseItem4.WndHandle = 0
ElseItem4._control = {}
ElseItem4.tab = {}
ElseItem4.lev = 0
ElseItem4.nowPage = 1
function ElseItem4.UIInit(_Handle)
	ElseItem4.WndHandle = _Handle
	for i = 1 , 6 do 
		local _handel = GetWindow(_Handle,"item"..i)
		if _handel ~= 0 then ElseItem4._control["item"..i] = _handel end
	end
	_handel = GetWindow(_Handle,"up_page")
	if _handel ~= 0 then ElseItem4._control["up_page"] = _handel end
	_handel = GetWindow(_Handle,"down_page")
	if _handel ~= 0 then ElseItem4._control["down_page"] = _handel end
	GUI:WndSetEnableM(ElseItem4._control["up_page"],false)
	UI:Lua_SubmitForm("��¯����", "qita_hunzhu", "")
	
end

function ElseItem4.updata(data)
	ElseItem4.lev = data[1]
	ElseItem4.tab = data[2]
	--��ʼ����ǰҳ
	ElseItem4.nowPage = 1
	if ElseItem4.lev <= 3 then 
		ElseItem4.nowPage = 1
	elseif ElseItem4.lev > 3 then
		if (ElseItem4.lev + 3) <= #ElseItem4.tab then  --�߻�˵�����ʾ�ȼ������������װ��
			ElseItem4.nowPage = ElseItem4.lev + 3 - 5    
		else
			ElseItem4.nowPage = #ElseItem4.tab - 5
		end
		
	end
	ElseItem4.updatelist()
	ElseItem4.updatePgBtn()
end

function ElseItem4.up_page(_handle)
	ElseItem4.nowPage = ElseItem4.nowPage - 1
	ElseItem4.updatePgBtn()
	ElseItem4.updatelist()
end

function ElseItem4.down_page(_handle)
	ElseItem4.nowPage = ElseItem4.nowPage + 1
	ElseItem4.updatePgBtn()
	ElseItem4.updatelist()
end

function ElseItem4.updatePgBtn()
	--�Ƿ�����ҳ
	if ElseItem4.nowPage == 1 then
		GUI:WndSetEnableM(ElseItem4._control["up_page"], false)
	else
		GUI:WndSetEnableM(ElseItem4._control["up_page"], true)
	end
	--�Ƿ���βҳ
	local pgCount = 0
	if ElseItem4.lev <= 3 then 
		pgCount = 1
	elseif ElseItem4.lev > 3 then
		if (ElseItem4.lev + 3 - 5) <= (#ElseItem4.tab - 5) then 
			pgCount = ElseItem4.lev + 3 - 5    --�߻�˵�����ʾ�ȼ������������װ��,�ӵ�������
		else
			pgCount = #ElseItem4.tab - 5
		end
		
	end
	if ElseItem4.nowPage == pgCount then
		GUI:WndSetEnableM(ElseItem4._control["down_page"],false)
	else
		GUI:WndSetEnableM(ElseItem4._control["down_page"],true)
	end
end

function ElseItem4.updatelist()
	for i = 1 , 6 do
		GUI:ItemCtrlClearItemData(ElseItem4._control["item"..i])
		EditSetText(ElseItem4.WndHandle,"name"..i,"")
		ImageSetImageID(ElseItem4.WndHandle,"name_back"..i,0)
		ImageSetImageID(ElseItem4.WndHandle,"get_yes"..i,0)
	end
	local a = ElseItem4.nowPage
	local b = ElseItem4.lev - ElseItem4.nowPage + 1   
	for i = 1 , 6 do
		ElseItem4.InitItemInfoByKeyName(ElseItem4._control["item"..i],ElseItem4.tab[a])
		local Temp = CL:GetItemTemplateHandleByKeyName(ElseItem4.tab[a])
		local item_name = ""
		if CL:GetItemTemplatePropByHandle(Temp,ITEM_PROP_NAME) then
			item_name = LuaRet	
		end
		EditSetText(ElseItem4.WndHandle,"name"..i,item_name)
		a = a + 1
		if b < 1 then
			ImageSetImageID(ElseItem4.WndHandle,"name_back"..i,1800000302)
			--ImageSetImageID(ElseItem4.WndHandle,"get_yes"..i,1800000296)
		else
			if i <= b then
				ImageSetImageID(ElseItem4.WndHandle,"name_back"..i,1800000301)	
				ImageSetImageID(ElseItem4.WndHandle,"get_yes"..i,1800000295)	
			else 
				ImageSetImageID(ElseItem4.WndHandle,"name_back"..i,1800000302)
				--ImageSetImageID(ElseItem4.WndHandle,"get_yes"..i,1800000296)
			end	
		end
	end
end

function ElseItem4.closeWnd(_handle)		
	GUI:WndClose(ElseItem4.WndHandle)
end

function ElseItem4.InitItemInfoByKeyName(_WndHandle, KeyName)
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

ElseItem4.main()