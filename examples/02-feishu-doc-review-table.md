# Example 02: Feishu Docs Review Table

## Prompt

```markdown
Use the xizong-study-review skill.

Please review this 西综 note for Feishu Docs / Lark Docs.
Do not use Obsidian callouts.
Output a compact review table that I can paste under the original paragraph.
```

## User Note

```markdown
支气管哮喘是气道慢性炎症，发作时主要表现为喘息。治疗上可以使用支气管扩张剂。
```

## Expected Skill Behavior

```markdown
## 当前学习状态

beginner / unstable

## 主要问题

- over-summary
- mechanism break

## 飞书文档审稿表

| 原文段落 | 问题 | 为什么影响理解/做题 | 修正方向 | 依据 | 下一步 |
| --- | --- | --- | --- | --- | --- |
| 支气管哮喘是气道慢性炎症，发作时主要表现为喘息。治疗上可以使用支气管扩张剂。 | 这段只写了结论，缺少“气道高反应性 + 可逆性气流受限”的考试化表达。 | 如果只记“喘息”和“支气管扩张剂”，遇到 COPD 鉴别、可逆性、诱因、急性发作处理时容易混。 | 补一句：哮喘核心是慢性气道炎症导致气道高反应性，发作时出现可逆性气流受限。 | needs_user_source | 用一句话比较哮喘与 COPD 的气流受限差异。 |

## Learning Feedback

- 理解程度判断：知道疾病标签，但机制表达偏薄。
- 下一步应该：对比讲解。
```
