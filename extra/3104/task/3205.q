<?xml version="1.0" encoding="gb2312"?>
<quests>
	<quest id="3205" name="[主线]-变得更强" type="1" suggest_level="1" visible="1" next_id="3206">
		<description>
			为了迎接即将到来的挑战，你必须再增强一下自己的实力！等你提升到37后，去找找东临城老兵吧，我听说他在打听一位强大的勇士。
		</description>
		<dialogue>
			<brief>为了迎接即将到来的挑战，你必须再增强一下自己的实力！等你提升到37后，去找找东临城老兵吧，我听说他在打听一位强大的勇士。</brief>
			<await>等你37级的时候再来找我吧</await>
			<finish>终于等到了一位强大的勇士了。</finish>
		</dialogue>
		<requirements>
			<level enable="1" min_num="1" max_num="100" />
			<prologues>
				<group>
					<prologue id="3204" />
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
			<![CDATA[达到37级时，到东临城找#NPCLINK<STR:老兵,NPCKEYNAME:东临城老兵,MOVE:1>#]]>
			</progressing>
			<accomplishing>
			<![CDATA[与东临城的#NPCLINK<STR:老兵,NPCKEYNAME:东临城老兵,MOVE:1>#对话]]>
			</accomplishing>
		</tracker>
		<achievements>
			<level enable="1" min_num="37" max_num="200" />
			<apply_items>
			</apply_items>
			<npcs>
			</npcs>
		</achievements>
		<rewards exp="20000" >
		</rewards>
		<auto>
			<accept enable="0" idletime="0" />
			<submit enable="0" idletime="0" />
		</auto>
	</quest>
</quests>