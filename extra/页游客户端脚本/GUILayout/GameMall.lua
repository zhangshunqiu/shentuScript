GameMall = {}
local ui = "<form> <dialog OnInit='GameMall.UIInit' id='GameMall' image='1804100002' w='916' h='621' esc_close='true' center='true' drag='true' revmsg='true'>"
	.."	<image id='BackImage1' image='1804100024' x='664' y='126' w='217' h='407' revmsg='true' enable='false'/>"
	.."	<image id='Back2' image='1804100000' x='36' y='127' w='622' h='401' revmsg='true' enable='false'/>"
	.."	<button id='Tab0' image='1804100016' x='128' y='97' w='78' h='31' OnLButtonUp='GameMall.OnTabChange' revmsg='true' text_color='#C2B6A0'/>"
	.."	<button id='Tab2' image='1804100020' x='204' y='97' w='78' h='31' OnLButtonUp='GameMall.OnTabChange' revmsg='true' param='2' text_color='#C2B6A0'/>"
	.."	<button id='Tab3' image='1804100029' x='280' y='97' w='78' h='31' OnLButtonUp='GameMall.OnTabChange' revmsg='true' param='3' text_color='#C2B6A0'/>"
	.."	<button id='Tab4' image='1804100025' x='356' y='97' w='78' h='31' OnLButtonUp='GameMall.OnTabChange' revmsg='true' param='4' text_color='#C2B6A0'/>"
	.."	<button id='Tab5' image='1804100034' x='432' y='97' w='78' h='31' OnLButtonUp='GameMall.OnTabChange' revmsg='true' param='5' text_color='#C2B6A0'/>"
	.."	<button id='Tab6' image='1804100038' x='508' y='97' w='78' h='31' OnLButtonUp='GameMall.OnTabChange' revmsg='true' param='6' text_color='#C2B6A0'/>"
	.."	<image id='ItemBackWnd0' image='1804100014' x='56' y='149' w='193' h='115' revmsg='true'/>"
	.."	<image id='ItemBackWnd1' image='1804100014' x='253' y='149' w='193' h='115' revmsg='true' param='1'/>"
	.."	<image id='ItemBackWnd2' image='1804100014' x='450' y='149' w='193' h='115' revmsg='true' param='2'/>"
	.."	<image id='ItemBackWnd3' image='1804100014' x='55' y='268' w='193' h='115' revmsg='true' param='3'/>"
	.."	<image id='ItemBackWnd4' image='1804100014' x='253' y='268' w='193' h='115' revmsg='true' param='4'/>"
	.."	<image id='ItemBackWnd5' image='1804100014' x='450' y='268' w='193' h='115' revmsg='true' param='5'/>"
	.."	<image id='ItemBackWnd6' image='1804100014' x='55' y='386' w='193' h='115' revmsg='true' param='6'/>"
	.."	<image id='ItemBackWnd7' image='1804100014' x='253' y='386' w='193' h='115' revmsg='true' param='7'/>"
	.."	<image id='ItemBackWnd8' image='1804100014' x='450' y='386' w='193' h='115' revmsg='true' param='8'/>"
	.."	<button id='Left' image='1800000094' x='530' y='505' w='20' h='19' OnLButtonUp='GameMall.OnLeftButton' revmsg='true'/>"
	.."	<button id='Right' image='1800000098' x='623' y='505' w='20' h='19' OnLButtonUp='GameMall.OnRightButton' revmsg='true'/>"
	.."	<button id='Close' image='1800000068' x='876' y='55' w='24' h='24' OnLButtonUp='GameMall.OnClose' revmsg='true'/>"
	.."	<button id='AddYuanBao' image='1804100006' x='689' y='537' w='195' h='66' OnLButtonUp='GameMall.PayMoney' revmsg='true'/>"
	.."	<image id='integralEditImage' image='1801100034' x='94' y='549' w='116' h='26' revmsg='true'/>"
	.."	<image id='bindIngotEditImage' image='1801100034' x='244' y='549' w='116' h='26' revmsg='true'/>"
	.."	<image id='ingotEditImage' image='1801100034' x='394' y='549' w='116' h='26' revmsg='true'/>"
	.."	<image id='BackImage00' image='1800000055' x='102' y='555' w='13' h='13' revmsg='true'/>"
	.."	<image id='BackImage01' image='1800000053' x='252' y='555' w='16' h='14' revmsg='true'/>"
	.."	<image id='BackImage02' image='1800000054' x='402' y='555' w='16' h='14' revmsg='true'/>"
	.."	<edit id='JiFen' x='122' y='553' w='70' h='15' canedit='false' font='system' revmsg='false'/>"
	.."	<edit id='BindYuanBao' x='272' y='553' w='70' h='15' canedit='false' font='system'/>"
	.."	<edit id='YuanBao' x='422' y='553' w='70' h='15' canedit='false' font='system'/>"
	.."	<image id='ItemImg0' image='1804100033' x='67' y='187' w='61' h='61' OnLButtonUp='GameMall.OnSelectItem'  revmsg='true' param='0'/>"
	.."	<image id='ItemImg1' image='1804100033' x='271' y='187' w='61' h='61' OnLButtonUp='GameMall.OnSelectItem'  revmsg='true' param='1'/>"
	.."	<image id='ItemImg2' image='1804100033' x='473' y='185' w='61' h='61' OnLButtonUp='GameMall.OnSelectItem'  revmsg='true' param='2'/>"
	.."	<image id='ItemImg3' image='1804100033' x='67' y='306' w='61' h='61' OnLButtonUp='GameMall.OnSelectItem'  revmsg='true' param='3'/>"
	.."	<image id='ItemImg4' image='1804100033' x='271' y='306' w='61' h='61' OnLButtonUp='GameMall.OnSelectItem'  revmsg='true' param='4'/>"
	.."	<image id='ItemImg5' image='1804100033' x='473' y='307' w='61' h='61' OnLButtonUp='GameMall.OnSelectItem'  revmsg='true' param='5'/>"
	.."	<image id='ItemImg6' image='1804100033' x='67' y='425' w='61' h='61'  OnLButtonUp='GameMall.OnSelectItem'  revmsg='true' param='6'/>"
	.."	<image id='ItemImg7' image='1804100033' x='271' y='425' w='61' h='61' OnLButtonUp='GameMall.OnSelectItem'  revmsg='true' param='7'/>"
	.."	<image id='ItemImg8' image='1804100033' x='473' y='428' w='61' h='61' OnLButtonUp='GameMall.OnSelectItem'  revmsg='true' param='8'/>"
	.."	<itemctrl id='Item0' x='71' y='191' w='55' h='55' auto_manage='true' rbtn_use='true'  use_back='-1' enable='true' OnLButtonUp='GameMall.OnSelectItem' revmsg='true' param='0'/>"
	.."	<itemctrl id='Item1' x='274' y='191' w='55' h='55' auto_manage='true' rbtn_use='true' use_back='-1' enable='true' OnLButtonUp='GameMall.OnSelectItem' revmsg='true' param='1'/>"
	.."	<itemctrl id='Item2' x='476' y='189' w='55' h='55' auto_manage='true' rbtn_use='true' use_back='-1' enable='true' OnLButtonUp='GameMall.OnSelectItem' revmsg='true' param='2'/>"
	.."	<itemctrl id='Item3' x='71' y='310' w='55' h='55' auto_manage='true' rbtn_use='true' use_back='-1' enable='true' OnLButtonUp='GameMall.OnSelectItem' revmsg='true' param='3'/>"
	.."	<itemctrl id='Item4' x='274' y='310' w='55' h='55' auto_manage='true' rbtn_use='true' use_back='-1'  enable='true' OnLButtonUp='GameMall.OnSelectItem' revmsg='true' param='4'/>"
	.."	<itemctrl id='Item5' x='476' y='310' w='55' h='55' auto_manage='true' rbtn_use='true' use_back='-1'  enable='true' OnLButtonUp='GameMall.OnSelectItem' revmsg='true' param='5'/>"
	.."	<itemctrl id='Item6' x='71' y='429' w='55' h='55' auto_manage='true' rbtn_use='true' use_back='-1'  enable='true' OnLButtonUp='GameMall.OnSelectItem' revmsg='true' param='6'/>"
	.."	<itemctrl id='Item7' x='273' y='429' w='55' h='55' auto_manage='true' rbtn_use='true' use_back='-1'  enable='true' OnLButtonUp='GameMall.OnSelectItem' revmsg='true' param='7'/>"
	.."	<itemctrl id='Item8' x='476' y='432' w='55' h='55' auto_manage='true' rbtn_use='true' use_back='-1'  enable='true' OnLButtonUp='GameMall.OnSelectItem' revmsg='true' param='8'/>"
	.."	<image id='SortBackImage0' image='1804100014' x='676' y='174' w='193' h='115' revmsg='true'/>"
	.."	<image id='SortBackImage1' image='1804100014' x='676' y='293' w='193' h='115' revmsg='true'/>"
	.."	<image id='SortBackImage2' image='1804100014' x='676' y='412' w='193' h='115' revmsg='true'/>"
	.."	<image id='SortItemBackImage0' image='1804100033' x='685' y='216' w='61' h='61' revmsg='false'/>"
	.."	<image id='SortItemBackImage1' image='1804100033' x='685' y='335' w='61' h='61' revmsg='true'/>"
	.."	<image id='SortItemBackImage2' image='1804100033' x='685' y='454' w='61' h='61' revmsg='true'/>"
	.."	<itemctrl id='SortItem0' x='689' y='220' w='55' h='55' auto_manage='true' rbtn_use='false' use_back='-1'  enable='true' OnLButtonUp='GameMall.SelectSortItem' revmsg='true'/>"
	.."	<itemctrl id='SortItem1' x='689' y='339' w='55' h='55' auto_manage='true' rbtn_use='false' use_back='-1'  enable='true' OnLButtonUp='GameMall.SelectSortItem' revmsg='true'/>"
	.."	<itemctrl id='SortItem2' x='689' y='458' w='55' h='55' auto_manage='true' rbtn_use='false' use_back='-1'  enable='true' OnLButtonUp='GameMall.SelectSortItem' revmsg='true'/>"
	.."	<edit id='PageEdit' x='560' y='505' w='54' h='18' align='center' revmsg='true' font='system'/>"
	.."	<richedit id='NowPrice0' x='133' y='194' w='107' h='14' canedit='false' revmsg='true' font='system'/>"
	.."	<richedit id='NowPrice1' x='334' y='194' w='107' h='14' canedit='false' revmsg='true' param='1' font='system'/>"
	.."	<richedit id='NowPrice2' x='535' y='194' w='107' h='14' canedit='false' revmsg='true' param='2' font='system'/>"
	.."	<richedit id='NowPrice3' x='133' y='317' w='107' h='14' canedit='false' revmsg='true' param='3' font='system'/>"
	.."	<richedit id='NowPrice4' x='334' y='317' w='107' h='14' canedit='false' revmsg='true' param='4' font='system'/>"
	.."	<richedit id='NowPrice5' x='535' y='317' w='107' h='14' canedit='false' revmsg='true' param='5' font='system'/>"
	.."	<richedit id='NowPrice6' x='133' y='436' w='107' h='14' canedit='false' revmsg='true' param='6' font='system'/>"
	.."	<richedit id='NowPrice7' x='334' y='436' w='107' h='14' canedit='false' revmsg='true' param='7' font='system'/>"
	.."	<richedit id='NowPrice8' x='535' y='436' w='107' h='14' canedit='false' revmsg='true' param='8' font='system'/>"
	.."	<richedit id='SortNowPrice0' x='754' y='219' w='90' h='14' canedit='false' revmsg='true' font='system'/>"
	.."	<richedit id='SortNowPrice1' x='754' y='338' w='90' h='14' canedit='false' revmsg='true' font='system'/>"
	.."	<richedit id='SortNowPrice2' x='754' y='457' w='90' h='14' canedit='false' revmsg='true' font='system'/>"
	.."	<edit id='Name0' x='108' y='159' w='114' h='15' text_color='#EAE563' revmsg='false' font='system'/>"
	.."	<edit id='Name1' x='310' y='159' w='114' h='15' text_color='#EAE563' revmsg='false' param='1' font='system'/>"
	.."	<edit id='Name2' x='515' y='159' w='114' h='15' text_color='#EAE563' revmsg='false' param='2' font='system'/>"
	.."	<edit id='Name3' x='108' y='277' w='114' h='15' text_color='#EAE563' revmsg='false' param='3' font='system'/>"
	.."	<edit id='Name4' x='310' y='277' w='114' h='15' text_color='#EAE563' revmsg='false' param='4' font='system'/>"
	.."	<edit id='Name5' x='515' y='277' w='114' h='15' text_color='#EAE563' revmsg='false' param='5' font='system'/>"
	.."	<edit id='Name6' x='108' y='394' w='114' h='15' text_color='#EAE563' revmsg='false' param='6' font='system'/>"
	.."	<edit id='Name7' x='310' y='394' w='114' h='15' text_color='#EAE563' revmsg='false' param='7' font='system'/>"
	.."	<edit id='Name8' x='515' y='394' w='114' h='15' text_color='#EAE563' revmsg='false' param='8' font='system'/>"
	.."	<edit id='SortName0' x='752' y='181' w='93' h='19' revmsg='true' text_color='#EAE563' font='system'/>"
	.."	<edit id='SortName1' x='751' y='296' w='93' h='19' revmsg='true' text_color='#EAE563' font='system'/>"
	.."	<edit id='SortName2' x='747' y='417' w='93' h='19' revmsg='true' text_color='#EAE563' font='system'/>"
	.."	<edit id='VipTip' x='67' y='503' w='437' h='22' canedit='false' align='center' revmsg='false' text_color='#EE9A31' font='system'/>"
	.."	<image id='SortMallTitle' image='1804100005' x='710' y='135' w='129' h='34' revmsg='true'/>"
	.."	<button id='SortBuy0' image='1804100010' x='780' y='248' w='78' h='30' OnLButtonUp='GameMall.OnSortButItem' revmsg='true' text='����' text_color='#C2B6A0'/>"
	.."	<button id='SortBuy1' image='1804100010' x='780' y='365' w='78' h='30' OnLButtonUp='GameMall.OnSortButItem' revmsg='true' param='1' text='����' text_color='#C2B6A0'/>"
	.."	<button id='SortBuy2' image='1804100010' x='780' y='483' w='78' h='30' OnLButtonUp='GameMall.OnSortButItem' revmsg='true' param='2' text='����' text_color='#C2B6A0'/>"
	.."	<image id='Back3' image='1804100003' x='100' y='97' w='32' h='34' revmsg='true'/>"
	.."	<image id='Back4' image='1804100004' x='585' y='96' w='32' h='34' revmsg='true'/>"
	.."	<image id='Back5' image='1804100001' x='412' y='30' w='92' h='51' enable='false' revmsg='false'/>"
	.."	<button id='Buy0' image='1804100010' x='162' y='223' w='78' h='30' OnLButtonUp='GameMall.OnBuyItem' revmsg='true' text='����' text_color='#C2B6A0'/>"
	.."	<button id='Buy1' image='1804100010' x='360' y='223' w='78' h='30' OnLButtonUp='GameMall.OnBuyItem' revmsg='true' param='1' text='����' text_color='#C2B6A0'/>"
	.."	<button id='Buy2' image='1804100010' x='560' y='223' w='78' h='30' OnLButtonUp='GameMall.OnBuyItem' revmsg='true' param='2' text='����' text_color='#C2B6A0'/>"
	.."	<button id='Buy3' image='1804100010' x='162' y='342' w='78' h='30' OnLButtonUp='GameMall.OnBuyItem' revmsg='true' param='3' text='����' text_color='#C2B6A0'/>"
	.."	<button id='Buy4' image='1804100010' x='360' y='342' w='78' h='30' OnLButtonUp='GameMall.OnBuyItem' revmsg='true' param='4' text='����' text_color='#C2B6A0'/>"
	.."	<button id='Buy5' image='1804100010' x='560' y='342' w='78' h='30' OnLButtonUp='GameMall.OnBuyItem' revmsg='true' param='5' text='����' text_color='#C2B6A0'/>"
	.."	<button id='Buy6' image='1804100010' x='162' y='461' w='78' h='30' OnLButtonUp='GameMall.OnBuyItem' revmsg='true' param='6' text='����' text_color='#C2B6A0'/>"
	.."	<button id='Buy7' image='1804100010' x='360' y='461' w='78' h='30' OnLButtonUp='GameMall.OnBuyItem' revmsg='true' param='7' text='����' text_color='#C2B6A0'/>"
	.."	<button id='Buy8' image='1804100010' x='560' y='461' w='78' h='30' OnLButtonUp='GameMall.OnBuyItem' revmsg='true' param='8' text='����' text_color='#C2B6A0'/>"
	.."	<image id='SortHotImage0' image='1804100015' x='676' y='174' w='66' h='50' revmsg='true'/>"
	.."	<image id='SortHotImage1' image='1804100015' x='675' y='293' w='66' h='50' revmsg='true'/>"
	.."	<image id='SortHotImage2' image='1804100015' x='674' y='410' w='66' h='50' revmsg='true'/>"
	.."	<image id='ItemHotImage0' image='1804100015' x='56' y='149' w='66' h='50' revmsg='true'/>"
	.."	<image id='ItemHotImage1' image='1804100015' x='253' y='149' w='66' h='50' revmsg='true'/>"
	.."	<image id='ItemHotImage2' image='1804100015' x='450' y='149' w='66' h='50' revmsg='true'/>"
	.."	<image id='ItemHotImage3' image='1804100015' x='55' y='268' w='66' h='50' revmsg='true'/>"
	.."	<image id='ItemHotImage4' image='1804100015' x='252' y='268' w='66' h='50' revmsg='true'/>"
	.."	<image id='ItemHotImage5' image='1804100015' x='449' y='268' w='66' h='50' revmsg='true'/>"
	.."	<image id='ItemHotImage6' image='1804100015' x='55' y='386' w='66' h='50' revmsg='true'/>"
	.."	<image id='ItemHotImage7' image='1804100015' x='252' y='386' w='66' h='50' revmsg='true'/>"
	.."	<image id='ItemHotImage8' image='1804100015' x='449' y='386' w='66' h='50' revmsg='true'/>"
	.." </dialog>"
	.."</form>"

function GameMall.main()
	GenFormByString(ui)
end
--UI Logic Code Start

GameMall.CurPage = 0
GameMall.PageCount = 0
GameMall.CurTab = 0
GameMall.WndHandle = 0
GameMall.ItemCount = 0
GameMall.CurSelectIdx = -1
GameMall.WndPageCount = 9


function GameMall.UIInit(_Handle)
	GameMall.WndHandle = _Handle
	GUIWndSetSizeM(_Handle,916, 621)
	local _ItemCount = GameMall.WndPageCount
	GUIWndCalSize(GameMall.WndHandle)
	local _Parent = _Handle

	local _EditHandle = GUIWndFindChildM(_Parent, "PageEdit")
    if _EditHandle ~= 0 then
        GUIEditSetEditImageOffset(_EditHandle, -1, 0)
    end

	for _Idx = 0, 2 do
		local _GUIIDString = "SortItem".._Idx
		local _WndHandle = GUIWndFindChildM(_Parent, _GUIIDString)
		if 0 ~= _WndHandle then
			GUIItemCtrlSetIconImageType(_WndHandle, 1) -- ������ʾͼ��Ϊ��ͼ��
			GUIItemCtrlSetHighlightImageID(_WndHandle, 1804100043)
		end
	end

	for _Idx = 0, _ItemCount do
		local _GUIIDString = "Item".._Idx
		local _WndHandle = GUIWndFindChildM(_Parent, _GUIIDString)
		if 0 ~= _WndHandle then
			GUIItemCtrlSetIconImageType(_WndHandle, 1) -- ������ʾͼ��Ϊ��ͼ��
			GUIItemCtrlSetHighlightImageID(_WndHandle, 1804100043)
		end
	end
	
	CLGetTradeMallList(GameMall.CurTab)
end

function GameMall.OnClose(_Handle,_Param)
	GUIWndClose(GameMall.WndHandle)
end

function GameMall.UpdataPage()
    local _PageString = ""..GameMall.CurPage.." / "..GameMall.PageCount
    if 0 == GameMall.PageCount then
        _PageString = "0 / 0"
    end
    local _WndHandle = GUIWndFindChildM(GameMall.WndHandle, "PageEdit")
    if 0 ~= _WndHandle then
        GUIEditSetTextM(_WndHandle, _PageString)
    end
end

function GameMall.OnItemUpdata()
    GameMall.ItemCount = as3.tolua(LuaParam[1])
    if GameMall.ItemCount % GameMall.WndPageCount == 0 then
        GameMall.PageCount = math.floor(GameMall.ItemCount / GameMall.WndPageCount)
    else
        GameMall.PageCount =  math.floor(GameMall.ItemCount / GameMall.WndPageCount) + 1
    end
    GameMall.CurSelectIdx = -1
    GameMall.CurPage = 1
    GameMall.UpdataPage()
    GameMall.UpdataItem()
end



function GameMall.UpdataHotImage()
	local _HotImageVisible = false
	if 0 == GameMall.CurTab then
		_HotImageVisible = true
	end

	local _ItemCount = GameMall.WndPageCount
	for _Idx = 0, _ItemCount do
		local _GUIIDString = "ItemHotImage".._Idx
		local _WndHandle = GUIWndFindChildM(GameMall.WndHandle, _GUIIDString)
		if 0 ~= _WndHandle then
			GUIWndSetVisible(_WndHandle, _HotImageVisible)
		end	
	end
end

function GameMall.PayMoney(_Handle,_Param)
	CLOpenUrlUseIEByType(3)--�򿪳�ֵҳ��
end

function GameMall.OnSelectItem(_Handle,_Param)
	if 0 ~= _Handle then
		local _ItemIdx =  GUIWndGetParam(_Handle)
		GameMall.CurSelectIdx = _ItemIdx
		CLResetSortMallSelect()
	end
end

function GameMall.UpdataItem()
	GameMall.ClearItem()
	GameMall.UpdataHotImage()
	local _ItemCount = GameMall.WndPageCount
	if CLGetMallItemInfo() then 
		local _MammInfoTable = getTable(as3.tolua(LuaRet))
		for i = 1, #_MammInfoTable do
			_MammInfoTable[i] = getTable(as3.tolua(_MammInfoTable[i]))
		end
		for _Idx = 0, _ItemCount - 1 do
			local _MallIndex = (GameMall.CurPage - 1) * _ItemCount	+ _Idx
			GameMall.UpdataItemWndVisible(_Idx, true)
			if _MallIndex < #_MammInfoTable then
				local _ItemID = _MammInfoTable[_MallIndex + 1][1]
				local _Count = _MammInfoTable[_MallIndex + 1][3]
				local _PriceUinit = _MammInfoTable[_MallIndex + 1][4]
				local _Price = _MammInfoTable[_MallIndex + 1][5]
				local _DisCountPrice = _MammInfoTable[_MallIndex + 1][6]
				local _GUIIDString = "Item".._Idx
				local _WndHandle = GUIWndFindChildM(GameMall.WndHandle, _GUIIDString)
				if 0 ~= _WndHandle then
					local _ItemDataHandle = GUIItemCtrlGetGUIData(_WndHandle)
					if 0 ~= _ItemDataHandle then
						LuaArg = _ItemID						
						CLSetLuaArg(LuaArg)
						CLSetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMID)
						LuaArg = true				
						CLSetLuaArg(LuaArg)
						CLSetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE)
                        LuaArg = 0xFFFF				
						CLSetLuaArg(LuaArg)
                        CLSetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
	
						local _ItemTemplateHandle = CLGetItemTemplateHandleByID(_ItemID)
						if _ItemTemplateHandle ~= 0 then
							if CLGetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_ICON) then
								LuaArg = as3.tolua(LuaRet)				
								CLSetLuaArg(LuaArg)
								CLSetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID)
							end
	
							if CLGetItemTemplatePropByHandle(_ItemTemplateHandle, ITEM_PROP_NAME) then
								local _ItemName = as3.tolua(LuaRet)
								_GUIIDString = "Name".._Idx
								_WndHandle = GUIWndFindChildM(GameMall.WndHandle, _GUIIDString)
								if 0 ~= _WndHandle then
									GUIEditSetTextM(_WndHandle, _ItemName)
								end
							end
						end
					end
				end
	
				_GUIIDString = "NowPrice".._Idx
				_WndHandle = GUIWndFindChildM(GameMall.WndHandle, _GUIIDString)
				if 0 ~= _WndHandle then
					local _UintString = GameMall.PriceTypeString(_PriceUinit)
					local _PriceString = "#COLORCOLOR_GOLD#�ּۣ�#COLORCOLOR_WHITE#".._DisCountPrice.." ".._UintString.."#COLORCOLOR_END#"
					GUIRichEditAppendString(_WndHandle, _PriceString)
				end			
			else
				GameMall.UpdataItemWndVisible(_Idx, false)
			end
		end
	else
		for _Idx = 0, _ItemCount do
			GameMall.UpdataItemWndVisible(_Idx, false)
		end
	end
end

function GameMall.UpdataItemWndVisible(_Idx, _Visible)
	local _Parent = GameMall.WndHandle
	local _WndID = "ItemBackWnd".._Idx
	local _WndHandle = GUIWndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUIWndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "Item".._Idx
	_WndHandle = GUIWndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUIWndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "Name".._Idx
	_WndHandle = GUIWndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUIWndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "NowPrice".._Idx
	_WndHandle = GUIWndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUIWndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "Buy".._Idx
	_WndHandle = GUIWndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUIWndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "ItemImg".._Idx
	_WndHandle = GUIWndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		GUIWndSetVisible(_WndHandle, _Visible)
	end

	_WndID = "ItemHotImage".._Idx
	_WndHandle = GUIWndFindChildM(_Parent, _WndID)
	if _WndHandle ~= 0 then
		if _Visible == true then
			if GameMall.CurTab ~= 0 then
				GUIWndSetVisible(_WndHandle, false)
			end	
		else
			GUIWndSetVisible(_WndHandle, false)
		end
	end
end


function GameMall.OnLeftButton(_Handle,_Param)
    if GameMall.CurPage > 1 then
        GameMall.CurPage = GameMall.CurPage - 1
        GameMall.UpdataPage()
        GameMall.UpdataItem()
    end 
end

function GameMall.OnRightButton(_Handle,_Param)
    if GameMall.CurPage < GameMall.PageCount then
        GameMall.CurPage = GameMall.CurPage + 1
        GameMall.UpdataPage()
        GameMall.UpdataItem()
    end
end

function GameMall.ClearItem()
    for _Idx = 0, GameMall.WndPageCount do
        local _GUIIDString = "Item".._Idx
        local _WndHandle = GUIWndFindChildM(GameMall.WndHandle, _GUIIDString)
        if 0 ~= _WndHandle then
            local _ItemDataHandle = GUIItemCtrlGetGUIData(_WndHandle)
            if 0 ~= _ItemDataHandle then
                LuaArg = false		
				CLSetLuaArg(LuaArg)
                CLSetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_INVALIDATE) 
            end
        end
        _GUIIDString = "Name".._Idx
        _WndHandle = GUIWndFindChildM(GameMall.WndHandle, _GUIIDString)
        if 0 ~= _WndHandle then
            GUIEditSetTextM(_WndHandle, "")
        end

        _GUIIDString = "NowPrice".._Idx
        _WndHandle = GUIWndFindChildM(GameMall.WndHandle, _GUIIDString)
        if 0 ~= _WndHandle then
            GUIRichEditClear(_WndHandle)
        end
    end
end


function GameMall.SelectSortItem(_Handle,_Param)
	GameMall.CurSelectIdx = -1	
end


function GameMall.OnBuyItem(_Handle, _Param)
    if 0~= _Handle then
        local _Param = GUIWndGetParam(_Handle)
        local _MallIndex = (GameMall.CurPage - 1) * GameMall.WndPageCount + _Param
        CLBuyMallItemByIndex(_MallIndex, 1, false)
		--CLBuyMallItemUseBulkWnd(_MallIndex)
    end
end

function GameMall.OnSortButItem(_Handle, _Param)
    if 0~= _Handle then
	    local _Param = GUIWndGetParam(_Handle)
        CLBuySortMallItemByIndex(_Param, false, false)
    end
end


function GameMall.OnTabChange(_Handle, _Param)
	local _CurTab = GUIWndGetParam(_Handle)
    if _CurTab ~= GameMall.CurTab then
        GameMall.PageCount = 0
        GameMall.CurPage = 1
		GameMall.CurTab = _CurTab
		CLGetTradeMallList(GameMall.CurTab)
    end
end

function GameMall.PriceTypeString(_PriceType)
    if _PriceType == 0 then
        return "Ԫ��"
    elseif _PriceType == 1 then
        return "��Ԫ"
    elseif _PriceType == 2 then
        return "����"
    elseif _PriceType == 3 then
        return "���"
    elseif _PriceType == 4 then
        return "���"
    end
    return ""
end

LuaGlobal["GameMallItemPageCount"] = 9

GameMall.main()
RegisterUIEvent(LUA_EVENT_UPDATAMALLITEM, EVENT_DEFAULT_TAG, GameMall.OnItemUpdata)