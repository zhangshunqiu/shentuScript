<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="57" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#��ħ�ƺ�" type="1" suggest_level="1" visible="1" next_id="58">
		<script name="48_reward" />
		<description>
			���ˣ�͵͵����������ܣ���ħ�ﵽһ���������Ի�ð����ĳƺţ��ƺſ��Դ�������������Ŷ��ȥ�����ɡ�
		</description>
		<dialogue>
			<brief>���ˣ�͵͵����������ܣ���ħ�ﵽһ���������Ի�ð����ĳƺţ��ƺſ��Դ�������������Ŷ��ȥ�����ɡ�</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>��ʱ�����ƺţ�����İ������Ǻܴ��Ŷ�����Ա������ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="47" max_num="100" />
			<prologues>
				<group>
					<prologue id="55" />
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
			<![CDATA[�ظ� #NPCLINK<STR:��ħʹ��,NPCKEYNAME:��ɽ�ǳ�ħʹ��,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��ħʹ��,NPCKEYNAME:��ɽ�ǳ�ħʹ��,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="1500000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="80000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="30" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>