# xizong-study-review

Public, sanitized Codex skill for reviewing and improving 考研西综 learning outputs.

This repository contains a reusable skill template for a professional 西综 learning tutor. It keeps the full study workflow: active output, user-uploaded content identification, lecture/note/exercise intake, physiology-pathology-clinical callbacks, Obsidian inline critique, true-question reasoning boundaries, wrong-question review, and careful option-decision support.

## 项目介绍

`xizong-study-review` 是一个面向考研西综学习的 Codex skill。它的定位不是题库、押题工具或百科总结器，而是一个“专业学习助教”：帮助学习者把讲义、个人笔记、Obsidian 输出、错题和真题材料转化为可复述、可复盘、可做题的理解结构。

这个 skill 支持用户上传自己的西综资料、习题或真题文本，由 Codex 在本地识别资料类型、判断是否含答案/解析、建立私有索引，并围绕主动输出、机制链、生理-病理-内科 callback、错因诊断和真题结构理解给出反馈。公开仓库只提供工作流、规则和空白模板，不分发讲义、真题 PDF、答案解析或任何个人学习记录。

它最适合用于三类场景：第一，审稿学习者用自己的话写出的西综输出，判断是否真正理解；第二，贴着 Obsidian 原文插入 `Codex 核对` callout，帮助用户修正机制断点和表达问题；第三，在用户提供完整题干和选项时，辅助分析真题的命题结构、干扰项设计和选项排除路径。

## What This Is

- A Codex skill for study-note review and learning feedback.
- A workflow for users to upload their own 西综 lectures, notes, exercises, and true-question materials for local identification and analysis.
- A workflow for Obsidian output auditing.
- A method for diagnosing wrong-question causes.
- A boundary-safe way to use publicly available true questions for local reasoning and structure, not prediction or redistribution.

## What This Is Not

- Not a question bank.
- Not an exam prediction system.
- Not a repository of lecture PDFs, true-question PDFs, answer keys, or explanations.
- Not medical advice.
- Not a replacement for official textbooks, lectures, teachers, or current clinical guidelines.

## Install

Copy the skill folder into your Codex skills directory:

```bash
cp -R skills/xizong-study-review ~/.codex/skills/
```

Then start a new Codex session and ask it to review a 西综 output, Obsidian note, or wrong-question analysis.

## Repository Layout

```text
skills/xizong-study-review/
  SKILL.md
  agents/openai.yaml
  references/
  assets/templates/
```

## Public/Private Boundary

This public repository intentionally excludes:

- paid course materials
- lecture PDFs
- true-question PDFs
- answer explanations
- OCR outputs
- personal Obsidian notes
- personal learning-state profiles
- local filesystem paths

It does include workflows and schemas so users can process their own uploaded materials locally.

Use `assets/templates/` to initialize private learning-state files, source manifests, and local true-question schemas.

## Suggested First Prompt

```markdown
请按西综专业学习助教模式审稿我的输出：
1. 判断当前学习状态；
2. 找出 1-2 个主要问题；
3. 保留原文，不要重写全文；
4. 如果是 Obsidian 笔记，请在原文下方插入 Codex 核对 callout；
5. 最后只给 1-2 个下一步任务。
```

## Suggested Upload Prompt

```markdown
我上传了一份西综资料/习题/真题。
请先识别文件类型、是否含答案/解析、可读性和风险；
再判断它适合用于学习输出、Obsidian 审稿、错题复盘、真题结构分析还是选项决策。
不要重写成百科，不要生成题库。
```

## Release Safety

Before publishing, run through `PUBLIC_RELEASE_CHECKLIST.md`.

Publishing commands are in `PUBLISH.md`.
