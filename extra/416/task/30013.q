<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="30013" name="[悬赏]-讨伐沃玛祠庙" type="1" suggest_level="1" visible="0">
		<description>
			<![CDATA[#IMAGE1902100022#
 #COLORCOLOR_GREENG#接任务：天机老人#COLOREND#
 #COLORCOLOR_GREENG#交任务：天机老人#COLOREND#

#IMAGE1902100023#
     去#COLORCOLOR_GREENG##LINK<MAP:沃玛祠庙2,POSX:347,POSY:347,STR:沃玛祠庙,MOVE:1>##COLOREND#击败10只任意#COLORCOLOR_GREENG##LINK<MAP:沃玛祠庙2,POSX:347,POSY:347,STR:怪物,MOVE:1>##COLOREND#后回来找我


#IMAGE1902100024#
     击败10只#COLORCOLOR_GREENG##LINK<MAP:沃玛祠庙2,POSX:347,POSY:347,STR:沃玛祠庙,MOVE:1>##COLOREND#的任意#COLORCOLOR_GREENG##LINK<MAP:沃玛祠庙2,POSX:347,POSY:347,STR:怪物,MOVE:1>##COLOREND#后与#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCID:25002,MOVE:1>##COLOREND#对话


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
			<level enable="1" min_num="30" max_num="200" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[去#COLORCOLOR_GREENG##LINK<MAP:沃玛祠庙2,POSX:26,POSY:37,STR:沃玛祠庙,MOVE:1>##COLOREND#击败10只任意#COLORCOLOR_GREENG##LINK<MAP:沃玛祠庙2,POSX:26,POSY:37,STR:怪物,MOVE:1>##COLOREND##MONSTERGROUP0#后回来找我]]>
			</progressing>
			<accomplishing>
			<![CDATA[回去找#COLORCOLOR_GREENG##NPCLINK<STR:天机老人,NPCKEYNAME:天机老人龙城,MOVE:1>##COLOREND#完成任务]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="10" >
					<group_hunting keyname="沃玛卫士" />
					<group_hunting keyname="沃玛勇士" />
					<group_hunting keyname="沃玛勇士0" />
					<group_hunting keyname="沃玛战将" />
					<group_hunting keyname="沃玛战将0" />
					<group_hunting keyname="沃玛战士" />
					<group_hunting keyname="沃玛战士0" />
					<group_hunting keyname="粪虫" />
					<group_hunting keyname="火焰沃玛0" />
					<group_hunting keyname="火焰沃玛" />
					<group_hunting keyname="山洞蝙蝠0" />
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