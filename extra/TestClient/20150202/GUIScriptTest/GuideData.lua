--[[
type = 1:
data:������ X���� Y���� ���� �߶� ��ŮͼƬ �Ƿ�㴩 ��ͷ����(0��1��2��3��4��) ��ʱ�ر�(��) ����
type = 2:
data:MagicID X���� Y���� �����ٶ� ����ʱ��

����:     ����               ֵ                ����
        ��ȡ����            ����id             ״̬
        ��ȡ�����¼�        ����id             �¼�
        �������            ����id             ״̬
        ��������¼�        ����id             �¼�
        ��������            ����id             ״̬
        ���������¼�        ����id             �¼�
        ���������¼�        ����id             �¼�
        ׷�ٵ���¼�        �������           �¼�
        ������            ��������           ״̬
        �������¼�        ��������           �¼�
        �ر������¼�        ��������           �¼�
        ��NPC�¼�         NPC������          �¼�
        ������¼�        lay�ļ���          �¼�
        ���NPC�����¼�     ��������           �¼�
        ����ؼ��¼�        �ؼ��ַ�����ʶ     �¼�
		ѧϰ�����¼�        ��                 �¼�
]]

local LLW = 64
local LLH = 32

--������������
GuideSwitch = true

Guide = 
{
--ʾ����
--[[
	["��������"] = 
	{
		{--��ʾ
			type = 1,
			data = 
			{
			"GameMainInterface,TaskWindow", -255, 35, 140, 40, 1904100071, true, 4, 0, "���#COLORCOLOR_GREENG#[�ڼ�����]#COLOREND#���Զ�Ѱ�� NPC",
			},
			delay = 100,
			flag = 1,
			init = "",
		},
		{--��������
			{
				{"���������¼�", 1},
			},
		},
		{--�ر�����
			{
				{"�������¼�", "�����ύ����"},
			},
			{
				{"׷�ٵ���¼�", "�ڼ�����"},
			},
			{
				{"��������¼�", 1},
			},
			{
				{"���������¼�", 1},
			},
			{
				{"��NPC�¼�", "�ڼ�����"},
			},
		},
		{--�������
			{
				{"�������", 1},
			},
		},
	},
	["�����ύ����"] = 
	{
		{--��ʾ
			type = 1,
			data = 
			{
			"NpcTalk", 10, 295, 100, 60, 1904100071, true, 1, 0, " \n �������\n#COLORCOLOR_SKYBLUE#[�ύ����]#COLOREND#",
			},
			pre_script = "GuideFunc.rectify_open(\"NpcTalk\", 200, 180);",
			delay = 100,
			flag = 2,
			init = "",
		},
		{--��������
			{
				{"��������", 1},
				{"��NPC�¼�", "�ڼ�����"},
			},
		},
		{--�ر�����
			{
				{"��������¼�", 1},
			},
			{
				{"�������¼�", "�����ύ����2"},
			},
		},
		{--�������
			{
				{"��������¼�", 1},
			},
		},
	},]]
}

