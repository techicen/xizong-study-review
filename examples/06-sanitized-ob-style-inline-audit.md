# Example 06: Sanitized Obsidian-Style Inline Audit

This example is inspired by a private Obsidian-style workflow, but all source names, dates, lecture references, personal note details, and specific private content have been removed or replaced with safe placeholders.

Do not publish real lecture filenames, private paths, personal Obsidian pages, paid-course screenshots, true-question PDFs, answer keys, or OCR outputs.

## Prompt

```markdown
Use the xizong-study-review skill.

Please review this Obsidian-style 西综 output.
Preserve my original text.
Insert Codex 核对 callouts under the paragraphs that need correction.
Use success callouts for paragraphs that are directionally correct.
Do not rewrite the whole note.
```

## User Note

```markdown
# 某呼吸系统疾病_输出稿

## 0. 本节任务

- [ ] 用一句话说明疾病本质
- [ ] 解释关键表现背后的机制链
- [ ] 区分相似疾病和常见干扰项
- [ ] 回扣一个生理点和一个病理点

## 1. 疾病本质

### 一句话本质

某慢性呼吸系统疾病的核心是长期气流受限。

### 短特征

- 慢性咳嗽
- 活动后气促
- 检查提示气流受限

### 为什么会这样

我理解是气道变窄，所以气体不容易出来。
```

## Expected Skill Behavior

```markdown
## 当前学习状态

unstable

## 主要问题

- mechanism break
- callback missing

## 处理结果

# 某呼吸系统疾病_输出稿

## 0. 本节任务

- [ ] 用一句话说明疾病本质
- [ ] 解释关键表现背后的机制链
- [ ] 区分相似疾病和常见干扰项
- [ ] 回扣一个生理点和一个病理点

## 1. 疾病本质

### 一句话本质

某慢性呼吸系统疾病的核心是长期气流受限。

> [!warning] Codex 核对
> **问题**：这句话写出了结果，但还没有写出“为什么会长期气流受限”。
> **为什么影响理解/做题**：题干常不会直接问疾病本质，而是用表现、检查异常、机制词来绕开答案。
> **修正方向**：补成“结构改变 / 炎症改变 → 气道阻力或弹性回缩改变 → 呼气受限 / 检查异常”。
> **讲义/真题依据**：needs_user_source
> **下一步动作**：把一句话本质改成因果链，不要只写结论。

### 短特征

- 慢性咳嗽
- 活动后气促
- 检查提示气流受限

> [!success] Codex 核对
> 这段可以保留。它的优点是：已经把症状和检查线索集中在一起，适合后面接“为什么”。

### 为什么会这样

我理解是气道变窄，所以气体不容易出来。

> [!warning] Codex 核对
> **问题**：方向对，但机制太短，只写了“气道变窄”。
> **为什么影响理解/做题**：做题时需要区分气道阻力、弹性回缩、通气/换气、感染/炎症等不同层级。
> **修正方向**：至少补出一个生理 callback 和一个病理 callback。
> **讲义/真题依据**：needs_user_source
> **下一步动作**：回答两个问题：气道阻力为什么影响通气？慢性炎症如何改变气道结构？

## Learning Feedback

- 理解程度判断：能抓住核心结果，但机制链还不够考试化。
- 是否真正掌握机制链：暂时没有。
- 是否存在认知断点：存在，断在结构改变到临床表现之间。
- 下一步应该：加深讲解。

## 下一步

1. 重写“一句话本质”，必须包含因果顺序。
2. 只回扣一个生理点：气道阻力与通气。
```
