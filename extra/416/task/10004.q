<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="10004" name="[悬赏]-讨伐蜈蚣洞" type="1" suggest_level="1" visible="0">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     去#COLORCOLOR_GREENG##LINK<MAP:地牢1层东,POSX:333,POSY:397,STR:蜈蚣洞,MOVE:1>##COLOREND#的矿洞入口(113.149)附近击败10只#COLORCOLOR_GREENG##LINK<MAP:地牢1层东,POSX:333,POSY:397,STR:蜈蚣,MOVE:1>##COLOREND#后回来找我


#IMAGE1902100024#
     击败10只#COLORCOLOR_GREENG##LINK<MAP:地牢1层东,POSX:333,POSY:397,STR:蜈蚣洞,MOVE:1>##COLOREND#的#COLORCOLOR_GREENG##LINK<MAP:地牢1层东,POSX:333,POSY:397,STR:蜈蚣,MOVE:1>##COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>##COLOREND#对话


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
			<level enable="1" min_num="25" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:地牢1层东,POSX:38,POSY:52,STR:蜈蚣洞,MOVE:1>##COLOREND#击败10只#COLORCOLOR_GREENG##LINK<MAP:地牢1层东,POSX:38,POSY:52,STR:蜈蚣,MOVE:1>##COLOREND##MONSTERGROUP0#后回来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="蜈蚣" />
					<group_hunting keyname="蜈蚣0" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="0" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>