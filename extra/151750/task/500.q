<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="500" name="#COLORCOLOR_YELLOW#[经验、功勋] #COLORCOLOR_ORANGE#功勋除魔#COLORCOLOR_RED#(可接)" type="2" suggest_level="1" visible="1" next_id="">
		<description>
			年轻人想要闯出自己的天地，需要循序渐进，不可操之过急，你现在最缺的是一把称手的兵器，去找武器大师，他哪里有不少的好东西，不过在去他那里之前为了证明你自己的实力，先去消灭1只鸡。
		</description>
		<dialogue>
			<brief>年轻人想要闯出自己的天地，需要循序渐进，不可操之过急，你现在最缺的是一把称手的兵器，去找武器大师，他哪里有不少的好东西，不过在去他那里之前为了证明你自己的实力，先去消灭1只鸡。</brief>
			<await>找不到路？没关系，任务追踪点击可自动带你前往。速去速回。</await>
			<finish>什么？是那老头让你来找我的？那老头眼光向来毒辣，能让他看上的人定有与众不同之处，拿着吧，这是最适合目前你阶段的武器，不要小瞧它，天下武器都是双刃剑，想要完全驾驭不易。</finish>
		</dialogue>
		<requirements>
			<repeat enable="1" times="999999999"  />
			<level enable="1" min_num="46" max_num="500" />
			<jobs>
				<job id="1" />
				<job id="2" />
				<job id="3" />
			</jobs>
			<gender enable="0" gender="0" />
		</requirements>
		<tracker>
			<progressing>
			<![CDATA[找除魔使节 #NPCLINK<STR:（接取任务）,NPCKEYNAME:巫山城除魔使节,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[找除魔使节 #NPCLINK<STR:（接取任务）,NPCKEYNAME:巫山城除魔使节,MOVE:1>#]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="0" min_num="0" max_num="0" />
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