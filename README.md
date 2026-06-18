# xizong-study-review

Public, sanitized Codex skill for reviewing and improving 考研西综 learning outputs.

This repository contains a reusable skill template for a professional 西综 learning tutor. It keeps the full study workflow: active output, user-uploaded content identification, lecture/note/exercise intake, physiology-pathology-clinical callbacks, Obsidian inline critique, true-question reasoning boundaries, wrong-question review, and careful option-decision support.

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
