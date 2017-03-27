<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="150" name="#COLORCOLOR_YELLOW#[主线] #COLORCOLOR_ORANGE#装备1转武器" type="1" suggest_level="1" visible="1" next_id="151">
		<script name="任务执行脚本" />
		<description>
			接下来的挑战，会更加有难度，所以你没有更好的装备，就不要去送死了，先去装备1转的武器保护好自己再来吧。
		</description>
		<dialogue>
			<brief>接下来的挑战，会更加有难度，所以你没有更好的装备，就不要去送死了，先去装备1转的武器保护好自己再来吧。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>看来新武器很适合你，感觉还不错吧。看样子，可以去试一试了。</finish>
		</dialogue>
		<requirements>
			<level enable="0" min_num="61" max_num="100" />
			<prologues>
				<group>
					<prologue id="149" />
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
			<![CDATA[#COLORCOLOR_GOLD#快速完成：#COLOREND# #UILINK<STR:购买主宰礼包,WND:执行脚本,PARAM:TaskOpenActivities(4)>#
#COLORCOLOR_GOLD#快速完成：#COLOREND# #UILINK<STR:探宝,WND:执行脚本,PARAM:CLOnOpenTreasure()>#
#COLORCOLOR_BROWN#获得方式1：#COLOREND##NPCLINK<STR:灭神禁地,NPCKEYNAME:巫山BOSS传送员,MOVE:1># 
#COLORCOLOR_BROWN#获得方式2：#COLOREND##NPCLINK<STR:远古神殿,NPCKEYNAME:玛雅神殿使者,MOVE:1># 
#COLORCOLOR_BROWN#获得方式3：#COLOREND##NPCLINK<STR:锁魔宫,NPCKEYNAME:巫山城暗殿引路人,MOVE:1># 
任务奖励：#COLORCOLOR_MAGENTA#900万经验#COLOREND# #MONSTERGROUP0#]]>
			</progressing>
			<accomplishing>
			<![CDATA[回复 #NPCLINK<STR:王城守卫,NPCKEYNAME:巫山城王城守卫,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="1" max_num="200" />
			<group_huntings>
				<group n="1" >
					<group_hunting keyname="测试鸡" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="9000000" ingot="0" bind_ingot="0" integral="0" gold="0" bind_gold="1000000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="1" idletime="0" />
		</auto>
	</quest>
</quests>