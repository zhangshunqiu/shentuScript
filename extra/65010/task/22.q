<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="22" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#��֪��������" type="2" suggest_level="1" visible="1" next_id="23">
		<script name="22q" />
		<description>
			���ˣ�����һ���¡�������¸��߶������ߣ����뿴��������ʲô���顣����������
		</description>
		<dialogue>
			<brief>���ˣ�����һ���¡�������¸��߶������ߣ����뿴��������ʲô���顣����������</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�š���������һ���ż�֮�п������д�Ԥ�ԣ���֪�Ƿ��ɺϣ����������顭��</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="110110" />
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
			<![CDATA[�ظ� #NPCLINK<STR:��������,NPCKEYNAME:��ɽ�Ƕ�������,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��������,NPCKEYNAME:��ɽ�Ƕ�������,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="200000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="1" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>