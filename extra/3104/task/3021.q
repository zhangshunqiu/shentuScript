<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3021" name="[����]-����ѵ��" type="1" suggest_level="1" visible="1" next_id="3022">
		<script name="3021" />
		<description>
			Ϊ������������Ϥ���ܣ�ȥ��������5ֻ��é�ˡ�
		</description>
		<dialogue>
			<brief>���Ѿ�ѧ�Ἴ�ܣ�������Ҫ��סŶ�����ֻ��������ļ��ܣ�ֻ�ж��ʹ�ã��������������ȣ����ܵ������Ż�������\n����Ϊ������������Ϥ���ܣ��Ҹ���һ���ʺ������ϰ�����ɣ�ȥ��������5ֻ��é�ˡ�</brief>
			<await>�����5ֻ��é������</await>
			<finish>���úܺã��ɴ����߱���ٰ�ĥ������ϰ���ܺ�����ڼ���ϰ�����˳���ľ��飬���ܷ��ӳ����ܵ����������</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3020" />
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
			<![CDATA[�ڴ��Ӹ�������5ֻ#LINK<MAP:���ִ�,POSX:138,POSY:193,STR:��é��,MOVE:1>##MONSTERGROUP0#����������]]>
			</progressing>
			<accomplishing>
			<![CDATA[��#NPCLINK<STR:����,NPCKEYNAME:���ִ�������,MOVE:1>#�Ի�]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="5" >
					<group_hunting keyname="��é��" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="11200" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>