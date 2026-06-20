# Example 01: COPD Note Review

## Prompt

```markdown
Use the xizong-study-review skill.

Please review this 西综 study note.
My note app is: Obsidian.

Rules:
1. Do not rewrite the full note.
2. Preserve my original text.
3. Judge my learning state.
4. Identify only 1-2 main problems.
5. Insert Codex 核对 callouts under relevant paragraphs.
6. Add Learning Feedback.
7. Give only 1-2 next tasks.
```

## User Note

```markdown
# COPD

COPD 的本质是慢性气流受限，主要和小气道炎症有关。

患者会出现呼气困难，是因为气道变窄，气体排不出来。

肺气肿时肺泡被破坏，所以会影响换气。治疗上主要用支气管扩张剂。
```

## Expected Skill Behavior

```markdown
## 当前学习状态

unstable

依据：已经抓到 COPD 的关键词，但呼气性气流受限的机制链还不完整。

## 主要问题

- mechanism break
- callback missing

## 该用哪一层

V3 理解反馈层

## 处理结果

# COPD

COPD 的本质是慢性气流受限，主要和小气道炎症有关。

> [!warning] Codex 核对
> **问题**：方向对，但把气流受限几乎全部归因于小气道炎症，缺少肺泡壁破坏后弹性回缩力下降。
> **为什么影响理解/做题**：遇到肺气肿、残气量增加、桶状胸、FEV1/FVC 下降等题干时，机制链容易断。
> **修正方向**：补成“小气道阻塞 + 肺泡弹性回缩力下降，共同造成呼气相气流受限”。
> **讲义/真题依据**：needs_user_source
> **下一步动作**：用一句话解释为什么 COPD 是“呼气更困难”。

## Learning Feedback

- 理解程度判断：关键词听懂了，但机制链还不稳定。
- 是否真正掌握机制链：暂时没有。
- 是否存在认知断点：存在，断在呼气相气流受限的力学机制。
- 下一步应该：加深讲解。

## 下一步

1. 重写一句话：COPD 为什么以呼气性气流受限为核心？
2. 回扣一个生理点：胸内压变化如何影响小气道塌陷？
```
