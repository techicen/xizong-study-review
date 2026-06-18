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
