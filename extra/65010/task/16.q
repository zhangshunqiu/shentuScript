<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="16" name="#COLORCOLOR_YELLOW#[����] #COLORCOLOR_ORANGE#������ɽ��" type="1" suggest_level="1" visible="1" next_id="17">
		<script name="����ִ�нű�" />
		<description>
			�����ǵ�һ������ɽ�������ÿ��Թ����ɽ�ǣ�����������
		</description>
		<dialogue>
			<brief>�����ǵ�һ������ɽ�������ÿ��Թ����ɽ�ǣ�����������</brief>
			<await>�Ҳ���·��û��ϵ������׷�ٵ�����Զ�����ǰ������ȥ�ٻء�</await>
			<finish>�������˹����ˣ��⼸��������ֻ���˳�ȥ��һ���������˶�û�С�������εĴ󶯾���һ�����ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="15" />
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
			<![CDATA[#NPCLINK<STR:��������,NPCKEYNAME:��ɽ����������,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[�ظ� #NPCLINK<STR:��������,NPCKEYNAME:��ɽ����������,MOVE:1>#]]>
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