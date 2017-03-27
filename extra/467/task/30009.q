<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="30009" name="[悬赏]-讨伐骷髅洞" type="1" suggest_level="1" visible="0" next_id="">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     去#COLORCOLOR_GREENG##LINK<MAP:兽人古墓一层,POSX:223,POSY:399,STR:骷髅洞,MOVE:1>##COLOREND#击败10只任意#COLORCOLOR_GREENG##LINK<MAP:兽人古墓一层,POSX:223,POSY:399,STR:怪物,MOVE:1>##COLOREND#后回来找我


#IMAGE1902100024#
     击败10只#COLORCOLOR_GREENG##LINK<MAP:兽人古墓一层,POSX:223,POSY:399,STR:骷髅洞,MOVE:1>##COLOREND#的任意#COLORCOLOR_GREENG##LINK<MAP:兽人古墓一层,POSX:223,POSY:399,STR:怪物,MOVE:1>##COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25002,MOVE:1>##COLOREND#对话


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
			<level enable="1" min_num="20" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:兽人古墓一层,POSX:223,POSY:399,STR:骷髅洞,MOVE:1>##COLOREND#击败10只任意#COLORCOLOR_GREENG##LINK<MAP:兽人古墓一层,POSX:223,POSY:399,STR:怪物,MOVE:1>##COLOREND##MONSTERGROUP0#后回来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="蝎子" />
					<group_hunting keyname="山洞蝙蝠0" />
					<group_hunting keyname="山洞蝙蝠" />
					<group_hunting keyname="骷髅战士0" />
					<group_hunting keyname="骷髅战士" />
					<group_hunting keyname="骷髅精灵" />
					<group_hunting keyname="骷髅0" />
					<group_hunting keyname="骷髅" />
					<group_hunting keyname="洞蛆" />
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