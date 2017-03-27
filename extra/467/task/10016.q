<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="10016" name="[悬赏]-讨伐赤月丛林" type="1" suggest_level="1" visible="0" next_id="">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     去#COLORCOLOR_GREENG##LINK<MAP:魔月峡谷北,POSX:277,POSY:390,STR:赤月丛林,MOVE:1>##COLOREND#击败25只任意#COLORCOLOR_GREENG##LINK<MAP:魔月峡谷北,POSX:277,POSY:390,STR:怪物,MOVE:1>##COLOREND#后回来找我


#IMAGE1902100024#
     击败25只#COLORCOLOR_GREENG##LINK<MAP:魔月峡谷北,POSX:277,POSY:390,STR:赤月丛林,MOVE:1>##COLOREND#的任意#COLORCOLOR_GREENG##LINK<MAP:魔月峡谷北,POSX:277,POSY:390,STR:怪物,MOVE:1>##COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25002,MOVE:1>##COLOREND#对话


#IMAGE1902100025#

   奖励经验：角色等级越高获得越多]]>
		</description>
		<dialogue>
		</dialogue>
		<requirements>
			<repeat enable="1" times="300"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:59" />
			</time>
			<level enable="1" min_num="35" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去#COLORCOLOR_GREENG#天荒邪庙#COLOREND#，击败25只#LINK<MAP:魔月峡谷北,POSX:277,POSY:390,STR:怪物,MOVE:1>##MONSTERGROUP0#后回来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="25" >
					<group_hunting keyname="血巨人" />
					<group_hunting keyname="月魔蜘蛛" />
					<group_hunting keyname="暴牙蜘蛛" />
					<group_hunting keyname="黑锷蜘蛛" />
					<group_hunting keyname="黑锷蜘蛛0" />
					<group_hunting keyname="幻影蜘蛛" />
					<group_hunting keyname="花吻蜘蛛0" />
					<group_hunting keyname="花吻蜘蛛" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>