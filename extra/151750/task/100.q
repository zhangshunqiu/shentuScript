<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="100" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#ǿ��1��+8��װ��" type="1" suggest_level="1" visible="1" next_id="101">
		<script name="����ִ�нű�" />
		<description>
			ǿ�����Կ��������Լ���ʵ����˵�ٶ಻����ȥ��һ�ԣ�ȥ����1��+8��װ��������
		</description>
		<dialogue>
			<brief>ǿ�����Կ��������Լ���ʵ����˵�ٶ಻����ȥ��һ�ԣ�ȥ����1��+8��װ��������</brief>
			<await>��ǿ�����棬���ɶ�ѡ�е�װ������ǿ����</await>
			<finish>�ţ�������ǿ����������������������ָ��ֻ�ӹ�����������ǿ���������Ҫע��Ŷ��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="99" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[#COLORCOLOR_BROWN#����򿪣�#COLOREND# #UILINK<STR:ǿ������,WND:ִ�нű�,PARAM:CL:OnOpenForge()>#
��������#COLORCOLOR_MAGENTA#450����#COLOREND# #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��ɽʹ��,NPCKEYNAME:��ɽ����ɽʹ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="���Լ�" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="4500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="500000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>