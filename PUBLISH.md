# Publish To GitHub

This repository is prepared for public release.

## 1. Re-authenticate GitHub CLI

```bash
gh auth login -h github.com
```

Check:

```bash
gh auth status
```

## 2. Publish As A Public Repository

From this directory:

```bash
gh repo create xizong-study-review --public --source=. --remote=origin --push
```

If that repository name already exists, use another name:

```bash
gh repo create xizong-study-review-skill --public --source=. --remote=origin --push
```

## 3. Final Safety Check

Before publishing, review:

- `PUBLIC_RELEASE_CHECKLIST.md`
- `PRIVATE_PUBLIC_BOUNDARY.md`

This public repository should not contain lecture PDFs, true-question PDFs, answer keys, explanations, OCR outputs, personal Obsidian notes, or personal learning-state records.

Recommended local checks:

```bash
python3 ~/.codex/skills/.system/skill-creator/scripts/quick_validate.py skills/xizong-study-review
rg -n "/Users/|sealed_answer|_codex_xizong|答案解析PDF|讲义.*zip|token|secret" .
```

Also inspect:

- `examples/`
- `assets/preview/`
- `tests/regression/`
- `scripts/install-skill.sh`
- `scripts/install-skill.bat`
