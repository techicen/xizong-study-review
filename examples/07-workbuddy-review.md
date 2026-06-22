# Example 07: WorkBuddy Paste-Ready Review

## Prompt

```markdown
Use the xizong-study-review Skill inside Tencent WorkBuddy.

Please review this note and return portable Markdown I can paste back into my WorkBuddy task.
Use `skills/xizong-study-review/` as the core Skill behavior. No direct document connector is available in this paste-only example.
```

## User Note

```markdown
肺气肿就是肺泡被破坏，所以 COPD 病人呼气困难。
```

## Expected Skill Behavior

```markdown
## 当前学习状态

unstable

## 主要问题

- mechanism break
- callback missing

## 处理结果

肺气肿就是肺泡被破坏，所以 COPD 病人呼气困难。

> Codex Review
> 问题：这句话抓到了肺气肿和呼气困难的关系，但机制链还缺一段：肺泡壁破坏会让弹性回缩力下降，呼气时小气道更容易塌陷，气体更难排出。
> 为什么影响理解/做题：如果只写“肺泡被破坏”，遇到残气量增加、FEV1/FVC 下降、桶状胸、呼气相气流受限时，容易不能把题干信号接回 COPD 机制。
> 修正方向：改成“肺泡壁破坏 -> 弹性回缩力下降 + 小气道塌陷 -> 呼气相气流受限 -> 残气量增加”。
> 依据：needs_user_source
> 下一步动作：用一句话解释“为什么 COPD 是呼气更困难，而不是吸气更困难”。

## Learning Feedback

- 理解程度判断：知道关键词，但机制链不稳。
- 下一步应该：先补呼气相力学机制，再做小范围真题验证。

## WorkBuddy Handoff

- Rewrite this COPD sentence as one complete mechanism chain.
- Add one callback note: 呼气时胸内压升高如何影响小气道。
```
