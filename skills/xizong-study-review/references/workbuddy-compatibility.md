# WorkBuddy Compatibility

Use this reference when the user asks whether this public skill supports Tencent WorkBuddy, or when adapting public wording for WorkBuddy.

## What WorkBuddy Is

WorkBuddy is Tencent CodeBuddy's all-scenario AI Agent desktop workbench. It is task-oriented: the user describes a task in natural language, WorkBuddy plans, executes, and returns deliverables. Official docs describe task creation, task conversation, result viewing, projects, experts, Skills, connectors, permissions, and IM assistants.

Useful official pages:

- WorkBuddy landing page: https://www.codebuddy.cn/work/Workbody
- WorkBuddy overview: https://www.codebuddy.cn/docs/workbuddy/Overview
- Create task: https://www.codebuddy.cn/docs/workbuddy/Create-Task
- Skills: https://www.codebuddy.cn/docs/workbuddy/From-Beginner-to-Expert-Guide/Function-Description/Skills-Market
- Connectors: https://www.codebuddy.cn/docs/workbuddy/From-Beginner-to-Expert-Guide/Function-Description/Connector
- Assistant / IM access: https://www.codebuddy.cn/docs/workbuddy/Claw

## Compatibility Boundary

This repository ships one `SKILL.md`-based skill package:

```text
skills/xizong-study-review/SKILL.md
```

Use that directory as the source of truth for the study-review behavior in both Codex and WorkBuddy. WorkBuddy Skills are described as abilities that can be imported as local skill packages, searched, created, enabled, disabled, and may read files or call third-party APIs depending on their permissions. For this public skill, assume `SKILL.md` is the installable behavior package and avoid maintaining a second WorkBuddy-only rule set unless WorkBuddy later requires a different package format.

Therefore:

- Accurate: "This project supports WorkBuddy task flows with paste-ready prompts, review blocks, and handoff checklists."
- Accurate: "The same `skills/xizong-study-review/SKILL.md` package is the source of truth for Codex and WorkBuddy behavior."
- Accurate: "WorkBuddy users can paste the provided task prompt into WorkBuddy and use it as a study-review workflow."
- Accurate: "WorkBuddy users can install or upload `skills/xizong-study-review/` when WorkBuddy accepts `SKILL.md`-based skills."
- Not accurate unless separately published: "Install this directly from the WorkBuddy Skill Market."
- Not accurate unless implemented: "This project includes a WorkBuddy connector, MCP server, or CLI integration."

## How To Respond In WorkBuddy Contexts

When the user is using WorkBuddy, produce a task-oriented response:

1. Preserve the learner's original text.
2. Add `Codex Review` blocks or compact tables.
3. Add `Learning Feedback`.
4. End with `WorkBuddy Handoff`: one or two concrete next tasks.
5. If the user asks for direct document mutation or remote assistant behavior, explain that this requires WorkBuddy-side file permissions, connectors, or another direct-editing capability.

## If WorkBuddy Packaging Comes Up

Treat WorkBuddy support as the same `SKILL.md` package by default. Do not create or describe a separate WorkBuddy package unless WorkBuddy later requires a different format for a specific distribution channel.
