<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3278" name="[����]-ħ�����ߵıʼ�(2)" type="1" suggest_level="1" visible="1" next_id="3279">
		<description>
			�ҷǳ������ҵ��о��ɹ���������֪�������ǣ�������ȷ���Է�����һ��а����ˡ���֪���ϱ������е�ð���߶��ǳ��˽⣬��������õ��ϱ�����������ŵĻ�����Ϳ��������ҵ��о��ʼ��ˡ�
		</description>
		<dialogue>
			<brief>�ҷǳ������ҵ��о��ɹ���������֪�������ǣ�������ȷ���Է�����һ��а����ˡ���֪���ϱ������е�ð���߶��ǳ��˽⣬��������õ��ϱ�����������ŵĻ�����Ϳ��������ҵ��о��ʼ��ˡ�</brief>
			<await>û��ȷ���ŵĻ�,�Ҳ����ܽ�ʼǸ����Ŷ</await>
			<finish>��Ҫ��ħ�����ߵ��о��ʼǣ�����Ƿǳ���Ҫ�����ϡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="50" max_num="200" />
			<prologues>
				<group>
					<prologue id="3277" />
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
			<![CDATA[���#NPCLINK<STR:�����ϱ�,NPCKEYNAME:�����ϱ�,MOVE:1>#������Ʒ�Ե�ȷ����]]>
			</progressing>
			<accomplishing>
			<![CDATA[���#NPCLINK<STR:�����ϱ�,NPCKEYNAME:�����ϱ�,MOVE:1>#������Ʒ�Ե�ȷ����]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="120000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>