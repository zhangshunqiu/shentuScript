<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="18" name="��������-�黹���� " type="1" suggest_level="1" visible="1" next_id="19">
		<description>
			˵����ô���㶼��ס�˰ɣ������θ�������û�ȥ�����������ϰ�ɣ�
		</description>
		<dialogue>
			<brief>˵����ô���㶼��ס�˰ɣ������θ�������û�ȥ�����������ϰ�ɣ�</brief>
			<await>˵����ô���㶼��ס�˰ɣ������θ�������û�ȥ�����������ϰ�ɣ�</await>
			<finish>��ѽ������̫лл���ˣ��������ڿ��Ժ����򽻲��ˡ�</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="17" />
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
			<![CDATA[ǰ��-#NPCLINK<STR:�������ϰ�,NPCKEYNAME:����������>#
  (������Զ�Ѱ·)]]>
			</progressing>
			<accomplishing>
			<![CDATA[ǰ��-#NPCLINK<STR:�������ϰ�,NPCKEYNAME:����������>#
  (������Զ�Ѱ·)
  #COLORCOLOR_RED#��[Tab]���򿪵�ͼ#COLOREND#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="500" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>