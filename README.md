# Xizong Exam Intelligence Tutor

A public Codex skill for active-output review, Obsidian critique, wrong-question diagnosis, and exam-reasoning feedback for the Chinese postgraduate medical entrance exam, commonly known as 考研西综 / 306.

Skill folder: `skills/xizong-study-review`

This repository is a public, sanitized release. It contains the learning workflow, prompt contracts, templates, and safety boundaries. It does not contain lecture PDFs, true-question PDFs, answer keys, explanations, OCR outputs, personal notes, or private learning records.

## Why This Skill Exists

Most study tools help learners collect more information. This skill is designed for a harder question:

Can the learner actually explain, repair, and use what they studied?

`Xizong Exam Intelligence Tutor` turns Codex into a professional 西综 learning tutor. It does not replace the learner with an AI summary. It watches the learner's own output, finds the weak link, and gives a small next action.

It is built for the moment when a learner says:

- "I understood the lecture, but I cannot choose the answer."
- "My note looks complete, but I do not know whether it supports solving questions."
- "I know physiology, pathology, and internal medicine separately, but clinical questions break the chain."
- "I read the explanation, but I still cannot see how the examiner hid the answer."
- "My wrong-question review always becomes 'I did not know this', and stops there."

This skill helps Codex respond with learning-state judgment, mechanism repair, callback suggestions, true-question reasoning boundaries, and option decision support only when the question is complete.

## What Makes It Different

- **Active output first.** The skill asks the learner to explain in their own words before accepting passive summaries.
- **Obsidian-native review.** It preserves the user's original note and inserts targeted `Codex 核对` callouts under the relevant paragraphs.
- **Learning-state aware.** It classifies the learner as `beginner`, `unstable`, `consolidating`, `exam-ready`, `confused-zone`, or `unsure`.
- **Wrong-cause diagnosis.** It separates `knowledge gap`, `mechanism break`, `mapping failure`, `examiner trap not recognized`, `clinical decision error`, and `threshold / priority error`.
- **Physiology-pathology-clinical callbacks.** It helps connect basic mechanisms with clinical decisions instead of letting subjects stay isolated.
- **Responsible true-question use.** True questions are used to understand exam expression, distractor design, and decision paths, not to predict the exam or distribute source files.
- **Decision support only when appropriate.** Fast option elimination and `FINAL DECISION` are activated only when the user provides a complete stem and options.
- **User-upload friendly.** Learners can upload their own lecture notes, exercises, question text, screenshots, or OCR files. The skill first identifies file type, readability, answer leakage risk, and suitable use.

## End-to-End Example

This example shows the intended public workflow: install the skill, write a prompt, paste an Obsidian note, receive inline critique, revise the note, then ask for a second review. The sample content below is fictional and simplified.

### 1. Install The Skill

Clone the repository:

```bash
git clone https://github.com/techicen/xizong-study-review.git
```

Copy the skill folder into your Codex skills directory:

```bash
cp -R xizong-study-review/skills/xizong-study-review ~/.codex/skills/
```

Start a new Codex session. The skill is now available as `xizong-study-review`.

### 2. Optional: Prepare Private Learning Files

The public repository ships blank templates only. You can copy them into your own private study folder:

```bash
mkdir -p my-xizong-learning-state
cp xizong-study-review/skills/xizong-study-review/assets/templates/*.template.md my-xizong-learning-state/
```

Use these templates for private records such as learning-state profiles, error-pattern maps, source manifests, and local question schemas. Do not publish those private records.

### 3. First Prompt: Ask For Obsidian Review

Use a prompt like this:

```markdown
Use the xizong-study-review skill.

Please review this Obsidian output as a professional 西综 learning tutor.

Rules:
1. Do not rewrite the full note.
2. Preserve my original text.
3. Judge my learning state.
4. Identify only 1-2 main problems.
5. Insert Codex 核对 callouts directly under the relevant paragraphs.
6. Add Learning Feedback.
7. Give only 1-2 next tasks.
```

### 4. Example User Obsidian Output

```markdown
# COPD

COPD 的本质是慢性气流受限，主要和小气道炎症有关。

患者会出现呼气困难，是因为气道变窄，气体排不出来。

肺气肿时肺泡被破坏，所以会影响换气。治疗上主要用支气管扩张剂。
```

### 5. Example Skill Output

```markdown
## 当前学习状态

unstable

依据：你已经抓到了 COPD 的关键词：气流受限、小气道炎症、呼气困难、肺气肿、支气管扩张剂。但机制链还没有完全闭合，尤其是“小气道病变”和“肺泡弹性回缩力下降”如何共同导致呼气相气流受限。

## 主要问题

- mechanism break
- callback missing

## 该用哪一层

V3

## 处理结果

# COPD

COPD 的本质是慢性气流受限，主要和小气道炎症有关。

> [!warning] Codex 核对
> **问题**：这句话方向对，但还不够考试化。COPD 的气流受限不能只归因于小气道炎症，还要补上肺泡壁破坏后弹性回缩力下降。
> **为什么影响理解/做题**：如果只记“小气道炎症”，遇到肺气肿、呼气性气流受限、残气量增加、桶状胸等题干时，容易把机制链接不上。
> **修正方向**：改成“小气道阻塞 + 肺泡弹性回缩力下降，共同造成呼气相气流受限”。
> **讲义/真题依据**：请回扣用户本地 COPD 讲义；若未上传资料，标记 `needs_user_source`。
> **下一步动作**：用一句话解释为什么 COPD 是“呼气更困难”。

患者会出现呼气困难，是因为气道变窄，气体排不出来。

> [!warning] Codex 核对
> **问题**：这句是现象描述，还没有解释“为什么呼气时更明显”。
> **为什么影响理解/做题**：考试常把机制藏在呼气、残气量、肺过度充气、FEV1/FVC 下降这些表达里。
> **修正方向**：补一句“呼气时胸内压升高，小气道更易塌陷；弹性回缩力下降使气体排出更差”。
> **讲义/真题依据**：本地讲义锚点待用户上传后确认。
> **下一步动作**：把这句改成机制链，不要只写症状。

肺气肿时肺泡被破坏，所以会影响换气。治疗上主要用支气管扩张剂。

> [!success] Codex 核对
> 这段可以保留。它的优点是：已经把肺气肿和治疗方向放在同一段里，后续可以继续补“为什么支气管扩张剂是症状改善而不是逆转肺泡破坏”。

## Learning Feedback

- 理解程度判断：听懂了关键词，但机制链仍不稳定。
- 是否真正掌握机制链：暂时没有完全掌握。
- 是否存在认知断点：存在，断在“呼气相气流受限”的力学机制。
- 下一步应该：加深讲解，然后做一类机制链真题验证。

## 下一步

1. 重写一句话：COPD 为什么以呼气性气流受限为核心？
2. 回扣一个生理点：胸内压变化如何影响小气道塌陷？
```

### 6. Revision Prompt

After revising the note, ask for a second pass:

```markdown
I revised the COPD paragraph based on your Codex 核对.

Please do a second review:
1. Judge whether the mechanism chain is now complete.
2. Do not add new knowledge unless the chain is still broken.
3. Tell me whether I can move from V3 learning review to true-question validation.
```

### 7. Second-Pass Result

The skill should now decide one of three paths:

- If the mechanism is still broken: stay in V3 and repair one point.
- If the mechanism is basically stable: move to a small true-question validation task.
- If the learner provides a complete question stem and options: activate Decision Engine v1 for option elimination and forced choice.

### 8. Complete Question Decision Prompt

Only use this when you already have the full stem and options:

```markdown
I understand the COPD mechanism, but I am stuck between options B and D.

Use Decision Engine v1:
1. Quick Understanding
2. Option Elimination
3. Fast Decision Path
4. FINAL DECISION
5. Error Risk
```

## What This Repository Does Not Ship

This public release does not include:

- paid course files
- lecture PDFs
- true-question PDFs
- answer keys
- answer explanations
- OCR outputs
- personal Obsidian notes
- private learning-state profiles
- local filesystem paths

Publicly available true questions may be analyzed locally when the user provides them, but this repository does not redistribute the original files.

## Repository Layout

```text
skills/xizong-study-review/
  SKILL.md
  agents/openai.yaml
  references/
  assets/templates/
```

## Suggested First Prompt

```markdown
Use the xizong-study-review skill.

Please review my 西综 output as a professional learning tutor:
1. Judge my learning state.
2. Identify only 1-2 main problems.
3. Preserve my original wording.
4. Insert Codex 核对 callouts under the relevant paragraphs.
5. Add Learning Feedback.
6. Give only 1-2 next tasks.
```

## Suggested Upload Prompt

```markdown
Use the xizong-study-review skill.

I uploaded a 西综 lecture / note / exercise / true-question file.
First identify:
1. file type
2. readability
3. whether it contains answers or explanations
4. whether it is safe for blind review
5. whether it should be used for output review, wrong-question review, true-question structure analysis, or option decision

Do not generate a question bank. Do not redistribute source content.
```

# 西综智能学习助教

一个面向考研西综 / 306 的 Codex 公共 skill，用来做主动输出审稿、Obsidian 原文批注、错题错因诊断、生理-病理-内科 callback、真题结构理解和完整题干选项下的考试决策辅助。

公开版名称是 `Xizong Exam Intelligence Tutor`，安装目录仍然是 `skills/xizong-study-review`。这样既保留稳定的 skill 触发名，也让公开展示更清晰。

这个仓库是公开、安全、脱敏版本。它只包含学习工作流、提示词合同、模板和边界规则，不包含讲义 PDF、真题 PDF、答案解析、OCR 文本、个人笔记或私人学习记录。

## 为什么它值得安装

很多学习工具帮你“整理更多知识”，但西综真正困难的地方往往不是资料不够，而是：

- 你以为自己懂了，但一做题就不会选；
- 笔记看起来很完整，但不知道能不能支撑真题；
- 生理、病理、内科各自会背，临床题一出现就断链；
- 错题复盘只写“知识点不会”，没有找到真正错因；
- 看完解析觉得懂了，却看不出出题人怎么藏答案、怎么设计干扰项。

这个 skill 的核心价值是：让 Codex 不再替你写百科总结，而是贴着你的真实输出判断你到底学到了哪一步。

它会回答：

- 你现在是 `beginner`、`unstable`、`consolidating`、`exam-ready`，还是 `confused-zone`？
- 你错在知识缺口、机制断裂、讲义到题目的映射失败，还是优先级判断错误？
- 这段 Obsidian 输出是否真的能解释题干？
- 这个病应该 callback 哪一个生理点、哪一个病理点、哪一个内科决策点？
- 真题里的正确答案是如何被隐藏的，干扰项是如何制造的？
- 当你已经理解机制但卡在选项之间时，怎样快速排除并强制收敛到一个答案？

## 它的优点

- **保护你的主动输出。** 不默认重写全文，而是在你的原文下方插入 `Codex 核对`，告诉你哪里影响理解和做题。
- **能识别学习状态。** 不是所有问题都该直接做题。有时要回到机制，有时要做对比，有时才能进入选项决策。
- **能诊断错因。** 错题不再只是“不会”，而会拆成 knowledge gap、mechanism break、mapping failure、examiner trap not recognized、clinical decision error、threshold / priority error。
- **能把三门课接起来。** 它会提醒你把生理机制、病理变化和内科表现连成一条能做题的链。
- **能安全使用真题。** 真题只用于理解命题表达、干扰项和决策路径，不用于押题，不生成题库，不分发真题文件。
- **支持用户自己的资料。** 你可以上传自己的讲义、笔记、习题、真题文本或截图，skill 会先识别文件类型、可读性、是否含答案和适合用途。
- **理解稳定后才进入决策。** 只有当你给出完整题干和选项，并且需要快速排除时，才启用 Decision Engine v1。

## 完整案例：从安装到 Obsidian 审稿

下面是一个公开版使用示例。内容是虚构的 COPD 学习输出，只演示流程，不使用任何私有讲义、真题或个人笔记。

### 1. 安装 skill

克隆仓库：

```bash
git clone https://github.com/techicen/xizong-study-review.git
```

复制 skill 到 Codex skills 目录：

```bash
cp -R xizong-study-review/skills/xizong-study-review ~/.codex/skills/
```

重新开启一个 Codex 会话，就可以使用 `xizong-study-review`。

### 2. 可选：建立自己的私有学习记录

公开仓库只提供空白模板。你可以把模板复制到自己的私有学习文件夹：

```bash
mkdir -p my-xizong-learning-state
cp xizong-study-review/skills/xizong-study-review/assets/templates/*.template.md my-xizong-learning-state/
```

这些文件可以用于记录学习状态、错因画像、资料索引和本地真题结构化结果。不要把自己的私有记录发布到公开仓库。

### 3. 写第一个提示词

```markdown
请使用 xizong-study-review skill。

请按西综专业学习助教模式审稿我的 Obsidian 输出。

要求：
1. 不要替我重写全文。
2. 保留我的原文。
3. 判断我的学习状态。
4. 只找 1-2 个主要问题。
5. 在相关原文下方插入 Codex 核对 callout。
6. 加上 Learning Feedback。
7. 最后只给 1-2 个下一步任务。
```

### 4. 用户粘贴一段 Obsidian 输出

```markdown
# COPD

COPD 的本质是慢性气流受限，主要和小气道炎症有关。

患者会出现呼气困难，是因为气道变窄，气体排不出来。

肺气肿时肺泡被破坏，所以会影响换气。治疗上主要用支气管扩张剂。
```

### 5. skill 的审稿输出示例

```markdown
## 当前学习状态

unstable

依据：你已经抓到了 COPD 的关键词：气流受限、小气道炎症、呼气困难、肺气肿、支气管扩张剂。但机制链还没有完全闭合，尤其是“小气道病变”和“肺泡弹性回缩力下降”如何共同导致呼气相气流受限。

## 主要问题

- mechanism break
- callback missing

## 该用哪一层

V3

## 处理结果

# COPD

COPD 的本质是慢性气流受限，主要和小气道炎症有关。

> [!warning] Codex 核对
> **问题**：这句话方向对，但还不够考试化。COPD 的气流受限不能只归因于小气道炎症，还要补上肺泡壁破坏后弹性回缩力下降。
> **为什么影响理解/做题**：如果只记“小气道炎症”，遇到肺气肿、呼气性气流受限、残气量增加、桶状胸等题干时，容易把机制链接不上。
> **修正方向**：改成“小气道阻塞 + 肺泡弹性回缩力下降，共同造成呼气相气流受限”。
> **讲义/真题依据**：请回扣用户本地 COPD 讲义；若未上传资料，标记 `needs_user_source`。
> **下一步动作**：用一句话解释为什么 COPD 是“呼气更困难”。

患者会出现呼气困难，是因为气道变窄，气体排不出来。

> [!warning] Codex 核对
> **问题**：这句是现象描述，还没有解释“为什么呼气时更明显”。
> **为什么影响理解/做题**：考试常把机制藏在呼气、残气量、肺过度充气、FEV1/FVC 下降这些表达里。
> **修正方向**：补一句“呼气时胸内压升高，小气道更易塌陷；弹性回缩力下降使气体排出更差”。
> **讲义/真题依据**：本地讲义锚点待用户上传后确认。
> **下一步动作**：把这句改成机制链，不要只写症状。

肺气肿时肺泡被破坏，所以会影响换气。治疗上主要用支气管扩张剂。

> [!success] Codex 核对
> 这段可以保留。它的优点是：已经把肺气肿和治疗方向放在同一段里，后续可以继续补“为什么支气管扩张剂是症状改善而不是逆转肺泡破坏”。

## Learning Feedback

- 理解程度判断：听懂了关键词，但机制链仍不稳定。
- 是否真正掌握机制链：暂时没有完全掌握。
- 是否存在认知断点：存在，断在“呼气相气流受限”的力学机制。
- 下一步应该：加深讲解，然后做一类机制链真题验证。

## 下一步

1. 重写一句话：COPD 为什么以呼气性气流受限为核心？
2. 回扣一个生理点：胸内压变化如何影响小气道塌陷？
```

### 6. 根据批注继续修

```markdown
我已经根据上面的 Codex 核对修改了 COPD 段落。

请做二次审核：
1. 判断机制链是否已经闭合。
2. 如果仍然断裂，只指出一个最关键断点。
3. 如果基本稳定，告诉我是否可以进入真题验证。
4. 不要扩写成完整讲义。
```

### 7. 二次审核后会发生什么

skill 会根据学习反馈选择下一步：

- 如果机制仍断裂：继续停留在 V3，修一个点。
- 如果机制基本稳定：进入小范围真题结构验证。
- 如果用户给出完整题干和选项：进入 Decision Engine v1，做选项排除和强制决策。

### 8. 完整题干选项下的决策提示词

只有当你已经有完整题干和选项时才用：

```markdown
我已经理解 COPD 机制，但这道题卡在 B 和 D 之间。

请启用 Decision Engine v1：
1. Quick Understanding
2. Option Elimination
3. Fast Decision Path
4. FINAL DECISION
5. Error Risk
```

## 公开版不包含什么

这个仓库不会包含：

- 付费课程资料
- 讲义 PDF
- 真题 PDF
- 答案 key
- 答案解析
- OCR 输出
- 个人 Obsidian 笔记
- 个人学习状态记录
- 本地绝对路径

公开真题可以由用户自己上传后在本地分析，但这个仓库不直接分发原始真题文件。

## 仓库结构

```text
skills/xizong-study-review/
  SKILL.md
  agents/openai.yaml
  references/
  assets/templates/
```

## 推荐初始提示词

```markdown
请使用 xizong-study-review skill。

请按西综专业学习助教模式审稿我的输出：
1. 判断当前学习状态；
2. 找出 1-2 个主要问题；
3. 保留原文，不要重写全文；
4. 如果是 Obsidian 笔记，请在原文下方插入 Codex 核对 callout；
5. 加上 Learning Feedback；
6. 最后只给 1-2 个下一步任务。
```

## 推荐上传资料提示词

```markdown
请使用 xizong-study-review skill。

我上传了一份西综资料 / 习题 / 真题。
请先识别：
1. 文件类型；
2. 可读性；
3. 是否含答案或解析；
4. 是否适合盲测；
5. 更适合用于学习输出、Obsidian 审稿、错题复盘、真题结构分析还是选项决策。

不要生成题库，不要分发原始内容。
```

## Release Safety

Before publishing, run through `PUBLIC_RELEASE_CHECKLIST.md`.

Publishing commands are in `PUBLISH.md`.
