<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3293" name="[����]-ˮ��ʯ������(5)" type="1" suggest_level="1" visible="1" next_id="3294">
		<script name="3293" />
		<description>
			������Щ������ħ�����ת���£����������һ���µľ��塣����ϸ���ܣ����־����̺���������͡�ʪ����ͬˮһ�㣬���ǿ��Գ�֮Ϊˮ֮�����塣\n�������룬�ں����ؾ��У�һ�������������������Ϣ�ɣ�����Ǻ���һ������������ˣ����ǵ���ħʯ��ǰ���������߰�,��˵��ȥ�˺����ؾ�,�������ö���壬�ҵ���,����������
		</description>
		<dialogue>
			<brief>������Щ������ħ�����ת���£����������һ���µľ��塣����ϸ���ܣ����־����̺���������͡�ʪ����ͬˮһ�㣬���ǿ��Գ�֮Ϊˮ֮�����塣\n�������룬�ں����ؾ��У�һ�������������������Ϣ�ɣ�����Ǻ���һ������������ˣ����ǵ���ħʯ��ǰ���������߰�,�����ǵ��ҵĴ�ʦ��,��˵ȥ�˺����ؾ�,�������ö���壬�ҵ���,����������</brief>
			<await>������ö��ʯ,ȥ����ħʯ��ǰ���������߿�����</await>
			<finish>ˮ��ʯ�����Ȼ��ˮ��ʯ����Ȼ����һ����ɫ������ħ�����ת���µ���������Ȼ��ͬС�ɡ�</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="53" max_num="200" />
			<prologues>
				<group>
					<prologue id="3301" />
				</group>
			</prologues>
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
			<acquire_items>
				<acquire_item keyname="ˮ��ʯ"  n="1" bind_require="1" />
			</acquire_items>
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[ȥ���׳�����#NPCLINK<STR:������ʦ,NPCKEYNAME:�������ߺ���,MOVE:1>#����]]>
			</progressing>
			<accomplishing>
			<![CDATA[ȥ���׳�����#NPCLINK<STR:������ʦ,NPCKEYNAME:�������ߺ���,MOVE:1>#����]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<items>
				<item keyname="ˮ��ʯ"  n="1" bind_require="1" />
			</items>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="482000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
			<awards>
				<award keyname="ף����ˮ"  n="2" bind_require="1" />
			</awards>
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>