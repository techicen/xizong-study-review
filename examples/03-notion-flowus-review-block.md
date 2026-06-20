# Example 03: Notion / FlowUs Review Block

## Prompt

```markdown
Use the xizong-study-review skill.

Please review this note for Notion / FlowUs.
Use a portable block format that I can paste under each paragraph.
```

## User Note

```markdown
肺炎主要是感染导致肺实变，所以患者会发热、咳嗽、咳痰。治疗就是抗感染。
```

## Expected Skill Behavior

```markdown
## 当前学习状态

unstable

## 主要问题

- over-summary
- clinical decision error

## 处理结果

肺炎主要是感染导致肺实变，所以患者会发热、咳嗽、咳痰。治疗就是抗感染。

Codex Review
- Problem: 这段过度概括，缺少病原、严重程度、经验性抗感染选择、并发症风险等临床决策点。
- Why it matters: 真题常不只问“是不是肺炎”，而是考病原倾向、首选检查、抗菌药选择、重症判断。
- Fix direction: 保留“感染 + 实变”，但补出“根据场景判断病原和治疗优先级”的决策框架。
- Source/evidence: needs_user_source
- Next action: 写一个 3 行表：社区获得性肺炎、院内获得性肺炎、吸入性肺炎的题干提示。

## Learning Feedback

- 理解程度判断：能说出疾病大方向，但还不能稳定转成临床决策。
- 下一步应该：真题验证前先做对比讲解。
```
