<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="100" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#个人BOSS之牛魔王" type="1" suggest_level="1" visible="1" next_id="101">
		<script name="任务执行脚本" />
		<description>
			恭喜，你终于可以去挑战个人BOSS牛魔王了	，可以获得海量的材料及极品神装，还犹豫什么，赶紧去试试吧
		</description>
		<dialogue>
			<brief>恭喜，你终于可以去挑战个人BOSS牛魔王了	，可以获得海量的材料及极品神装，还犹豫什么，赶紧去试试吧</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>个人BOSS每日可挑战1次。BOSS若不死亡，可以再次进行挑战，不会扣该副本次数</finish>
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
			<![CDATA[击杀 #UILINK<STR:牛魔王,WND:执行脚本,PARAM:TaskBoss(4)># #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:巫山使节,NPCKEYNAME:巫山城巫山使节,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="牛魔王副本" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="4000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>