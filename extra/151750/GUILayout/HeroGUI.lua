HeroGUI = {}
function HeroGUI.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"HeroGUI",0,200,100)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,16, 16)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_0",1906200001,201,10)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,91, 24)
    end

    _GUIHandle = GUI:ImageCreate(_Parent,"GUI_2",1906200002,-4,0)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,503, 466)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"HeroPropertyPage",1906200004,22,53)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"HeroSkillPage",1906200008,75,53)
    if _GUIHandle ~= 0 then
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"HeroProtectPage",1906200030,128,53)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,53, 24)
    end

    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1906300005,469,4)
    if _GUIHandle ~= 0 then
        GUI:WndSetSizeM(_GUIHandle,26, 26)
    end

    HeroGUI.UIInit(_Parent)
end

--UI Logic Code Start
function HeroGUI.UIInit(_Handle)
end
HeroGUI.main()




