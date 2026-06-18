# xizong-study-review

Public, sanitized Codex skill for turning 考研西综 study from passive notes into active, testable understanding.

`xizong-study-review` is a professional learning-tutor skill for Codex. It helps users review their own medical exam notes, uploaded study materials, exercises, wrong-question reflections, and Obsidian outputs through one stable workflow: active output, learning-state judgment, physiology-pathology-clinical callbacks, true-question reasoning boundaries, wrong-cause diagnosis, and option-level decision support when the user provides a complete question.

It is not a question bank, prediction tool, or encyclopedia generator. Its job is more practical: help a learner find where understanding breaks, why a question feels difficult, and what the next small correction should be.

## 中文介绍

如果你学西综时经常遇到这些情况：

- 看完讲义觉得懂了，但一做题就选不出来；
- 笔记越写越长，却不知道哪些内容真的能支撑做题；
- 生理、病理、内科各学各的，临床题一出现就断链；
- 错题复盘只停在“我不会”，找不到真正错因；
- 真题解析看得懂，但看不出出题人怎么把知识点改造成题干和干扰项；

那么这个 skill 就是为你准备的。

`xizong-study-review` 是一个面向考研西综的 Codex 专业学习助教。它不替你写百科总结，也不做押题。它会贴着你的真实输出工作：判断你当前是刚理解、理解不稳、正在巩固，还是已经可以考试化；找出主要问题是知识缺口、机制断裂、讲义到题目的映射失败，还是选项优先级判断错误；再给你一个很小、很具体的下一步动作。

它支持用户上传自己的西综讲义、笔记、习题或真题文本，由 Codex 在本地识别资料类型、可读性、是否含答案/解析和适用场景。公开仓库只提供规则、工作流和空白模板，不分发讲义、真题 PDF、答案解析或个人学习记录。

## English Introduction

Most medical exam study tools answer the wrong question. They help you collect more information, but they do not tell you whether you can actually use it under exam pressure.

`xizong-study-review` is built around a different idea: learning should become visible. When you paste a note, upload a study file, review a wrong question, or provide a full exam question, the skill helps Codex ask the questions that matter:

- Can you explain the core mechanism in your own words?
- Does your note connect physiology, pathology, and clinical reasoning?
- Did you understand the knowledge point but fail to map it into a question?
- Was the wrong answer caused by a knowledge gap, a broken mechanism chain, a trap option, or a priority error?
- Is this question asking for understanding, discrimination, first-choice decision, or option elimination?

The result is not a longer summary. The result is a tighter learning loop: output, critique, callback, repair, and then a small next task.

## 为什么值得安装

- **它保护你的主动输出。** 它不会默认重写整篇笔记，而是保留你的原文，在关键位置插入 `Codex 核对`，告诉你哪里影响理解和做题。
- **它能诊断“为什么错”。** 错题不会只归结为“不会”，而会拆成 knowledge gap、mechanism break、mapping failure、examiner trap not recognized、clinical decision error、threshold / priority error 等类型。
- **它把生理、病理、内科接起来。** 学到一个疾病时，它会提醒你该回扣哪一个生理机制、哪一个病理变化、哪一个内科表现或决策。
- **它让真题变成反馈工具。** 真题只用于理解命题表达、干扰项设计和正确决策路径，不用于押题或制造题库。
- **它支持用户自己的资料。** 用户可以上传自己的讲义、笔记、习题和真题文本，skill 会先做资料识别和风险判断，再决定适合审稿、复盘、结构分析还是选项决策。
- **它在该快的时候能快。** 当用户给出完整题干和选项，并明确需要决策时，Decision Engine v1 会进入选项排除、决策压缩和 FINAL DECISION。

## Why Install It

- **It keeps the learner in charge.** The skill does not replace your thinking with a polished AI summary. It reviews your own output and points to the exact part that needs repair.
- **It diagnoses the failure mode, not just the answer.** A wrong question can mean missing knowledge, broken mechanism reasoning, poor lecture-to-question mapping, trap-option failure, or priority inversion. The skill separates these cases.
- **It bridges basic science and clinical reasoning.** Physiology, pathology, and internal medicine are treated as one chain instead of disconnected subjects.
- **It uses true questions responsibly.** Public true questions can be used locally to understand exam structure and distractors, but the repository does not redistribute PDFs, answer keys, explanations, or private OCR outputs.
- **It works with user-uploaded material.** Users bring their own notes, lectures, exercises, and question text; the skill provides the workflow for identifying, reviewing, and learning from them.
- **It supports fast decisions only when appropriate.** Option elimination and forced choice are activated for complete question stems and options, not for ordinary learning or note review.

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
