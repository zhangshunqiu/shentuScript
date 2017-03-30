local s = {
				{"1 + 1 = ", 2, {1, 2, 3, 4}},
				{"1 + 2 = ", 3, {1, 2, 3, 4}},
				{"1 + 3 = ", 4, {1, 2, 3, 4}},
				{"1 + 4 = ", 1, {5, 2, 3, 4}},
				{"1 + 5 = ", 3, {1, 2, 6, 4}},
				{"1 + 6 = ", 4, {1, 2, 3, 7}},
				{"1 + 7 = ", 2, {1, 8, 3, 4}},
				{"1 + 8 = ", 2, {1, 9, 3, 4}},
				{"1 + 9 = ", 1, {10, 2, 3, 4}},
				{"2 + 2 = ", 4, {12, 11, 5, 4}},
				{"2 + 3 = ", 1, {5, 23, 32, 4}},
				{"2 + 4 = ", 3, {7, 5, 6, 2}},
				{"2 + 5 = ", 2, {11, 7, 2, 9}},
				{"2 + 6 = ", 3, {22, 12, 8, 4}},
				{"2 + 7 = ", 1, {9, 19, 27, 5}},
				{"2 + 8 = ", 4, {6, 4, 16, 10}},
				{"2 + 9 = ", 3, {18, 7, 11, 4}},
				{"3 + 3 = ", 2, {9, 6, 3, 1}},
				{"3 + 4 = ", 1, {7, 12, 1, 2}},
				{"3 + 5 = ", 3, {15, 12, 8, 2}},
				{"3 + 6 = ", 4, {8, 7, 2, 9}},
				{"3 + 7 = ", 2, {4, 10, 13, 6}},
				{"3 + 8 = ", 3, {5, 12, 11, 10}},
				{"3 + 9 = ", 2, {15, 12, 3, 6}},
				{"4 + 4 = ", 1, {8, 7, 9, 6}},
				{"4 + 5 = ", 4, {10, 20, 1, 9}},
				{"4 + 6 = ", 3, {11, 9, 10, 6}},
				{"4 + 7 = ", 4, {15, 12, 13, 11}},
				{"4 + 8 = ", 2, {11, 12, 13, 9}},
				{"4 + 9 = ", 3, {15, 14, 13, 12}},
				{"5 + 5 = ", 1, {10, 12, 11, 9}},
				{"5 + 6 = ", 3, {12, 13, 11, 10}},
				{"5 + 7 = ", 2, {15, 12, 13, 16}},
				{"5 + 8 = ", 3, {11, 12, 13, 14}},
				{"5 + 9 = ", 1, {14, 12, 13, 11}},
				{"6 + 6 = ", 2, {11, 12, 13, 14}},
				{"6 + 7 = ", 3, {11, 12, 13, 16}},
				{"6 + 8 = ", 4, {15, 12, 13, 14}},
				{"6 + 9 = ", 1, {15, 12, 13, 16}},
				{"7 + 7 = ", 1, {14, 12, 13, 16}},
				{"7 + 8 = ", 1, {15, 12, 13, 16}},
				{"7 + 9 = ", 4, {15, 12, 13, 16}},
				{"8 + 8 = ", 4, {15, 14, 13, 16}},
				{"8 + 9 = ", 3, {16, 15, 17, 18}},
				{"9 + 9 = ", 3, {20, 19, 18, 17}},
				{"ʮ + ʮ = ", 1, {20, 19, 22, 23}},
				{"ʮ + ʮһ = ", 2, {20, 21, 22, 23}},
				{"ʮ + ʮ�� = ", 3, {20, 21, 22, 23}},
				{"ʮ + ʮ�� = ", 3, {21, 22, 23, 24}},
				{"ʮ + ʮ�� = ", 4, {23, 25, 26, 24}},
				{"ʮ + ʮ�� = ", 1, {25, 26, 27, 28}},
				{"ʮ + ʮ�� = ", 3, {27, 24, 26, 25}},
				{"ʮ + ʮ�� = ", 1, {27, 24, 23, 28}},
				{"ʮ + ʮ�� = ", 4, {29, 30, 31, 28}},
				{"ʮ + ʮ�� = ", 2, {20, 29, 19, 39}},
				{"ʮһ + ʮһ = ", 3, {32, 21, 22, 23}},
				{"ʮһ + ʮ�� = ", 4, {20, 21, 22, 23}},
				{"ʮһ + ʮ�� = ", 1, {24, 25, 22, 26}},
				{"ʮһ + ʮ�� = ", 4, {23, 35, 24, 25}},
				{"ʮһ + ʮ�� = ", 2, {29, 26, 38, 17}},
				{"ʮһ + ʮ�� = ", 3, {26, 37, 27, 17}},
				{"ʮһ + ʮ�� = ", 2, {38, 28, 18, 27}},
				{"ʮһ + ʮ�� = ", 2, {39, 29, 20, 31}},
				{"ʮһ + ʮ�� = ", 1, {30, 29, 31, 32}},
				{"ʮ�� + ʮ�� = ", 4, {29, 26, 25, 24}},
				{"ʮ�� + ʮ�� = ", 1, {25, 35, 45, 24}},
				{"ʮ�� + ʮ�� = ", 3, {24, 25, 26, 27}},
				{"ʮ�� + ʮ�� = ", 2, {24, 26, 35, 27}},
				{"ʮ�� + ʮ�� = ", 3, {19, 18, 28, 27}},
				{"ʮ�� + ʮ�� = ", 4, {31, 25, 30, 29}},
				{"ʮ�� + ʮ�� = ", 1, {30, 29, 31, 32}},
				{"ʮ�� + ʮ�� = ", 2, {29, 31, 32, 33}},
				{"ʮ�� + ʮ�� = ", 4, {24, 27, 25, 26}},
				{"ʮ�� + ʮ�� = ", 1, {27, 31, 24, 28}},
				{"ʮ�� + ʮ�� = ", 3, {20, 19, 28, 17}},
				{"ʮ�� + ʮ�� = ", 4, {31, 30, 28, 29}},
				{"ʮ�� + ʮ�� = ", 2, {40, 30, 20, 31}},
				{"ʮ�� + ʮ�� = ", 2, {30, 31, 33, 29}},
				{"ʮ�� + ʮ�� = ", 1, {32, 33, 31, 30}},
				{"ʮ�� + ʮ�� = ", 4, {30, 29, 27, 28}},
				{"ʮ�� + ʮ�� = ", 3, {28, 19, 29, 30}},
				{"ʮ�� + ʮ�� = ", 2, {29, 30, 31, 32}},
				{"ʮ�� + ʮ�� = ", 3, {29, 30, 31, 32}},
				{"ʮ�� + ʮ�� = ", 1, {32, 31, 30, 29}},
				{"ʮ�� + ʮ�� = ", 4, {30, 35, 32, 33}},
				{"ʮ�� + ʮ�� = ", 4, {20, 50, 40, 30}},
				{"ʮ�� + ʮ�� = ", 2, {30, 31, 28, 29}},
				{"ʮ�� + ʮ�� = ", 1, {32, 33, 34, 35}},
				{"ʮ�� + ʮ�� = ", 2, {32, 33, 34, 35}},
				{"ʮ�� + ʮ�� = ", 3, {32, 33, 34, 35}},
				{"ʮ�� + ʮ�� = ", 4, {33, 30, 31, 32}},
				{"ʮ�� + ʮ�� = ", 3, {53, 43, 33, 23}},
				{"ʮ�� + ʮ�� = ", 2, {24, 34, 35, 25}},
				{"ʮ�� + ʮ�� = ", 4, {31, 45, 25, 35}},
				{"ʮ�� + ʮ�� = ", 1, {34, 33, 32, 31}},
				{"ʮ�� + ʮ�� = ", 3, {33, 36, 35, 34}},
				{"ʮ�� + ʮ�� = ", 4, {29, 26, 39, 36}},
				{"ʮ�� + ʮ�� = ", 2, {26, 36, 37, 27}},
				{"ʮ�� + ʮ�� = ", 1, {37, 46, 28, 35}},
				{"ʮ�� + ʮ�� = ", 3, {48, 33, 38, 42}},
			}

function plup(player)
	local times = lualib:GetAllTime()
	local plupTime = lualib:GetInt(player, "plupTime")
	
	if times - plupTime < 1000 then
		return ""
	end
	
	lualib:SetInt(player, "plupTime", times)
	
	lualib:SysMsg_SendTriggerMsg(player, "ϵͳ����10����ͷ���Ҽ�⣡")
	lualib:AddTimerEx(player, 997, 10000, 1, "plupEx", "")
	return ""
end


local boss_map_list = {
						["������4"]=1,
						["������5"]=1,
						["������6"]=1,
						["����ڣ3"]=1,
						["����ڣboss"]=1,
						["����ڣ����"]=1,
						["��ɽ��Ѩ5"]=1,
						["��ɽ��Ѩ8"]=1,
						["��ɽ��Ѩboss"]=1,
						["а��6-1"]=1,
						["а��6-2"]=1,
						["а��6-3"]=1,
						["а��6-4"]=1,
						["а��6-5"]=1,
						["а��6-6"]=1,
						["а��6-7"]=1,
						["а��6-8"]=1,
						["а��6-9"]=1,
						["а��6-10"]=1,
						["а��6-11"]=1,
						["а��6-12"]=1,
						["а��6-13"]=1,
						["а��6-14"]=1,
						["а��6-15"]=1,
						["а��6-16"]=1,
						["а��7-1"]=1,
						["а��7-2"]=1,
						["а��7-3"]=1,
						["а��boss"]=1,
						["�����5"]=1,
						["�����6"]=1,
						["�����7-1"]=1,
						["�����7-2"]=1,
						["�����7-3"]=1,
						["�����7-4"]=1,
						["�����7-5"]=1,
						["�����7-6"]=1,
						["�����7-7"]=1,
						["�����7-8"]=1,
						["�����7-9"]=1,
						["�����boss"]=1,
						["��·��3"]=1,
						["��·��boss"]=1,
						["��ħʯ��3"]=1,
						["��ħʯ��4"]=1,
						["��ħʯ��boss"]=1,
						["����2"]=1,
						["����3"]=1,
						["����3Ұ��"]=1,
						["����4"]=1,
						["����4Ұ��"]=1,
						["����5"]=1,
						["����1����1"]=1,
						["����1����2"]=1,
						["����1����3"]=1,
						["����1����4"]=1,
						["����1����5"]=1,
						["����1����6"]=1,
						["����1����7"]=1,
						["����2����1"]=1,
						["����2����2"]=1,
						["����2����3"]=1,
						["����2����4"]=1,
						["����2����5"]=1,
						["����2����6"]=1,
						["����3����1"]=1,
						["����4����1"]=1,
						["����4����2"]=1,
						["��ħ����1"]=1,
						["��ħ����2"]=1,
						["��ħ����3"]=1,
						["��ħ����4"]=1,
						["��ħ����5"]=1,
						["��ħ����6"]=1,
						["��ħ����7"]=1,
						["��ħ����8"]=1,
						["��ħ����9"]=1,
						["��ħ����10"]=1,
						["��ħ����11"]=1,
						["��ħ����12"]=1,
						["��ħ���"]=1,
						["��ħ�ص�1"]=1,
						["��ħ�ص�2"]=1,
						["���ײ������"]=1,
						["���ײ���1"]=1,
						["���ײ���2"]=1,
						["���ײ���3"]=1,
						["���׽���"]=1,
						["���ǻʹ�"]=1,
						["����"]=1,
						["�����ܵ�"]=1,
						["ʬ�����"]=1,
						["��Ĺ���"]=1,
						["���������ض�"]=1,
						["���µ�һս��"]=1,
						["Ư����"]=1,
						["����������"]=1,
						["�м�������"]=1,
						["�߼�������"]=1,
						["������ս��1"]=1,
						["������ս��2"]=1,
						["������ս��3"]=1,
						["��ħ��"]=1,
						["������"]=1,
						["�������"]=1,
						["��ɽ"]=1,
						["������þ�"]=1,
						["��ħ��"]=1,
						["��Ĺ"]=1,
						["�ᱦ����"]=1,
						["���³�"]=1,
						["�䶷��"]=1,
						["���ϸ�"]=1,
						["��ħ̨"]=1,
						["��ħ��"]=1,
						["������"]=1,
						["�ؾ�¥"]=1,
						["������"]=1,
						["�䱦��"]=1,
						["�ٲ���"]=1,
						["ľ����"]=1,
						["ľ����2"]=1,
						["ľ����3"]=1,
						["��Ԫ�ؾ�1"]=1,
						["��Ԫ�ؾ�2"]=1,
						["��Ԫ�ؾ�3"]=1,
						["������Ԩ1"]=1,
						["������Ԩ2"]=1,
						["������Ԩ3"]=1,
						["ǧ����"]=1,
						["��Ϣ��"]=1,
						["��̨"]=1,
						["�غ���ӡ"]=1,
						["����������"]=1,
						["��Ӣ������-Ⱥ����¹"]=1,
						["��Ӣ������-16��8"]=1,
						["��Ӣ������-8��4"]=1,
						["��Ӣ������-4��2"]=1,
						["��Ӣ������-������"]=1,
						["��Ӣ������-���Ǿ���"]=1,
						["��Ӣ������-��Ϣ��"]=1,
						["��Ӣ������-�����"]=1,
						["��ս��1"]=1,
						["��ս��2"]=1,
						["��ս��3"]=1,
						["���̵Ĳؽ���"]=1,
						["ս������"]=1,
						["�ػ�����"]=1,
						["���񸱱�1"]=1,
						["����ɱ"]=1,
						["�ɽ�"]=1,
}






function plupEx(player)
	
	local map = lualib:Name(lualib:MapGuid(player))
	local X = lualib:X(player)
	local Y = lualib:Y(player)
	
	local t1 = map == "��ɽ��" and X > 200 and X < 260 and Y > 200 and Y > 260
	local t2 = map == "���ٳ�" and X > 295 and X < 355 and Y > 270 and Y > 330
	local t3 = map == "���ǳ�" and X > 180 and X < 300 and Y > 240 and Y > 360
	local t4 = map == "�����"
	
	if t1 == true or t2 == true or t3 == true or t4 == true then
		return ""
	end
	
	if boss_map_list[map] == 1 then
		return ""
	end
	
	local msg = "����Ҽ�⣬��1�����ڻش���������⣡\n \n"
	
	local rand = math.random(1, #s)
	
	msg = msg..s[rand][1].."\n \n"
	
	for i = 1, #s[rand][3] do
		msg = msg.."<@huida#"..rand.."#"..i.." *01*"..s[rand][3][i]..">"
		msg = msg.."       "
	end
	lualib:AddTimerEx(player, 999, 60000, 1, "Kick", "")
	lualib:NPCTalk(player, msg)
	return ""
end


function huida(player, rand, i)
	local name =lualib:Name(player)
	local plup_in_num = lualib:GetInt(player, "plup_in_num")
	if tonumber(i) == s[tonumber(rand)][2] then
		lualib:Player_SubExp(player, 1000, "�����", "")
		lualib:DisableTimer(player, 999)
		lualib:SetInt(player, "plup_in_num", 0)
		return ""
	elseif plup_in_num > 0 then
		lualib:SysMsg_SendTriggerMsg(player, "���ڷ���Ҽ������������ʧ�ܣ����������ߣ�")
		lualib:AddTimerEx(player, 998, 2500, 1, "Kick", "")
		return ""
	else
		lualib:SetInt(player, "plup_in_num", plup_in_num + 1)
		lualib:SysMsg_SendTriggerMsg(player, "�ش���������»ش�")
		plupEx(player)
	end
end

	
function Kick(player)
	local plup_in_num = lualib:GetInt(player, "plup_in_num")
	local name =lualib:Name(player)
	local getint = lualib:GetInt(player, "plup-in")
	if plup_in_num > 1 then
		lualib:SetInt(player, "plup-in", getint + 1)
		lualib:Player_Kick(player)
		lualib:SendMail("ϵͳ", name, "���ڷ���Ҽ����ʧ�ܣ��������ߣ�")
	else
		lualib:SetInt(player, "plup_in_num", plup_in_num + 1)
		lualib:SysMsg_SendTriggerMsg(player, "�����»ش𣬷��򽫱������ߣ�")
		plupEx(player)
	end
	return ""
end