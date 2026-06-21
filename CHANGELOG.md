# Changelog

All notable changes to this project will be documented in this file.

This project uses semantic versioning where possible.
Current public version: `0.1.0-public-preview`.

---

## 2026-06-21

### Added

* Added Tencent WorkBuddy software support and positioned the public package as a Codex + WorkBuddy dual-surface Skill.
* Added WorkBuddy installation and quick-start prompts in README, clarifying that WorkBuddy can install or upload the same `skills/xizong-study-review/SKILL.md` package.
* Added concrete WorkBuddy onboarding content for traffic-stage readers: target users, a 3-minute trial flow, and common in-app usage scenarios.
* Added `examples/07-workbuddy-review.md` with a paste-ready Markdown review and short `WorkBuddy Handoff` checklist.
* Added a WorkBuddy regression fixture to protect paste-ready behavior, direct-editing boundaries, and the distinction between WorkBuddy software and a generic workspace label.

### Changed

* Updated the skill card metadata to mention WorkBuddy support.
* Updated the default skill prompt to explicitly invoke `$xizong-study-review`.
* Clarified that direct document editing or synchronization requires an available connector, browser, or editable file surface.
* Clarified that WorkBuddy is an AI Agent software product, not merely a workspace label, and that the same `skills/xizong-study-review/SKILL.md` package is intended for both Codex and WorkBuddy use.

## [0.1.0-public-preview] - 2026-06-20

### Added

* First public preview release of `xizong-study-review`.
* Added the core Codex Skill package for Xizong exam-oriented learning review.
* Added professional learning-tutor workflow for 西综 study output review.
* Added Learning Feedback mode for judging the learner's current state.
* Added note-review workflow with review block output.
* Added wrong-question review workflow for identifying weak points and mapping failures.
* Added Decision Engine v1 boundary for complete option-decision scenarios.
* Added support notes for Obsidian, Markdown, Word, Notion, Feishu/Lark Docs, FlowUs, Yuque, Tencent Docs, and other writing environments.
* Added recommended initial prompts for quick onboarding.
* Added fictional examples and blank templates.
* Added behavior-regression prompts to prevent the Skill from drifting into a generic summarizer or unauthorized question-bank tool.
* Added public/private boundary documentation.
* Added public release safety checklist.
* Added install scripts for macOS/Linux and Windows.

### Calibrated

* Calibrated the Skill behavior against real Xizong learning scenarios, including textbook-style frameworks, lecture-note structures, knowledge-output samples, wrong-question review patterns, and exam-material task patterns.
* Refined boundaries for when the Skill should explain, review, diagnose, trigger option-decision mode, or stop over-inference.
* Improved alignment toward exam-oriented reasoning instead of generic medical summarization.

### Safety

* Public release does not include paid course materials.
* Public release does not include lecture PDFs.
* Public release does not include textbook scans.
* Public release does not include true-question PDFs.
* Public release does not include answer keys.
* Public release does not include answer explanations.
* Public release does not include OCR outputs.
* Public release does not include personal notes.
* Public release does not include personal learning-state records.
* Public release does not include local question databases, private paths, or private configuration files.

### Status

* This is a public preview release.
* The Skill is usable for real note review, wrong-question diagnosis, learning-state judgment, and next-step task generation.
* Continued calibration is still needed for:

  * learning-state judgment stability;
  * mapping-failure diagnosis;
  * long-term review consistency;
  * platform-specific output adaptation;
  * balancing exam-oriented language and learning-support language.
