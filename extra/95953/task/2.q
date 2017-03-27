<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="2" name="每日任务-清理死亡山谷" type="1" suggest_level="1" visible="1">
		<script name="每日任务" />
		<description>
			蜈蚣洞本来叫做“死亡山谷”，曾是远古时期穴居人的一条地下密道，当年穴居人在挖掘时，
不小心释放出大量沉睡在地底的虫类生物，如今这些巨型虫已经威胁到了龙城居民的生命安全。
你的任务是：前往蜈蚣洞杀死20只蜈蚣，20只黑色恶蛆，20只跳跳蜂，20只巨型蠕虫。
任务奖励：经验40000 绑定金币50000 绑定元宝50
		</description>
		<dialogue>
			<brief>蜈蚣洞本来叫做“死亡山谷”，曾是远古时期穴居人的一条地下密道，当年穴居人在挖掘时，
不小心释放出大量沉睡在地底的虫类生物，如今这些巨型虫已经威胁到了龙城居民的生命安全。
你的任务是：前往蜈蚣洞杀死20只蜈蚣，20只黑色恶蛆，20只跳跳蜂，20只巨型蠕虫。
任务奖励：经验40000 绑定金币50000 绑定元宝50</brief>
			<await>完成任务</await>
			<finish>完成任务</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="999999"  />
			<time enable="1" type="5">
				<section start="00:00:00" end="23:59:00" />
			</time>
			<level enable="1" min_num="25" max_num="44" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[#NPCLINK<STR:传送到蜈蚣洞,NPCKEYNAME:龙城老兵># 
蜈蚣：#MONSTERGROUP0#
黑色恶蛆：#MONSTERGROUP1#
跳跳蜂：#MONSTERGROUP2#
巨型蠕虫：#MONSTERGROUP3#
(组队打怪效率更快)]]>
			</progressing>
			<accomplishing>
			<![CDATA[#NPCLINK<STR:找龙城任务使者交任务,NPCKEYNAME:任务使者>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
			<group_huntings>
				<group n="20" >
					<group_hunting keyname="蜈蚣" />
					<group_hunting keyname="蜈蚣0" />
					<group_hunting keyname="蜈蚣1" />
				</group>
				<group n="20" >
					<group_hunting keyname="黑色恶蛆" />
					<group_hunting keyname="黑色恶蛆0" />
					<group_hunting keyname="黑色恶蛆1" />
				</group>
				<group n="20" >
					<group_hunting keyname="跳跳蜂" />
					<group_hunting keyname="跳跳蜂0" />
					<group_hunting keyname="跳跳蜂1" />
				</group>
				<group n="20" >
					<group_hunting keyname="巨型蠕虫" />
					<group_hunting keyname="巨型蠕虫0" />
					<group_hunting keyname="巨型蠕虫1" />
				</group>
			</group_huntings>
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="0" ingot="0" bind_ingot="50" integral="0" gold="0" bind_gold="50000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>