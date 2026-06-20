# PUBLIC_RELEASE_CHECKLIST

## Must Pass Before GitHub Publish

- [ ] No lecture PDFs, ZIPs, screenshots, OCR outputs, or paid-course materials.
- [ ] No true-question PDFs, answer keys, or explanations.
- [ ] Public true-question support is limited to workflows, schemas, and derived local-processing rules.
- [ ] No personal Obsidian notes.
- [ ] No personal learning-state profile or wrong-question ledger.
- [ ] No local absolute paths or personal filesystem paths.
- [ ] No private method notes that identify personal materials.
- [ ] No claim that the skill predicts exams.
- [ ] No claim that the skill provides medical advice.
- [ ] README says users may upload their own materials for local processing.
- [ ] README includes quick install instructions using `scripts/install-skill.sh` and `scripts/install-skill.bat`.
- [ ] `examples/` contains only fictional, simplified, or user-provided-safe demo content.
- [ ] `assets/preview/` contains no real lecture, question, answer, OCR, or personal note content.
- [ ] `tests/regression/` covers note review, document-platform adaptation, wrong-question review, Decision Engine boundaries, and safety boundaries.
- [ ] `skills/xizong-study-review/SKILL.md` validates with `quick_validate.py`.
- [ ] License choice is deliberate.

## Recommended GitHub Description

`Xizong Exam Intelligence Tutor: a Codex skill for active-output review, document-app note critique, callbacks, wrong-question diagnosis, and exam reasoning.`

## Private Files To Keep Out

- private generated run directories
- `.obsidian/`
- personal note folders
- lecture folders
- true-question folders
- PDF/ZIP/images
- generated OCR or structured question files

## Public Demo Files Allowed

- fictional examples
- simplified COPD/asthma/pneumonia demo text
- installation scripts
- SVG preview images
- regression test prompts with no real copyrighted source content
