# Note And Document Review Loop

This reference covers Obsidian, Notion, FlowUs, Feishu/Lark Docs, Tencent Docs, Yuque, WPS, Word, Google Docs, Markdown, and plain pasted text. The filename keeps `obsidian` for compatibility with earlier versions of the skill, but the workflow is platform-neutral.

## Review Rule

Preserve the user's original text. Do not rewrite the full note or create a detached review essay. Insert short review blocks directly below the original passage that needs feedback, or provide a table/comment format when the user's document platform fits that better.

## Platform Detection

Before reviewing, identify the platform from:

1. The user's explicit statement, such as "I use Feishu Docs".
2. Uploaded or exported file type, such as `.md`, `.docx`, `.html`, `.csv`, or pasted OCR text.
3. Screenshot or copied formatting clues.
4. If still unclear, default to portable Markdown/plain-text review blocks.

Do not claim direct editing, exact in-document commenting, or automatic synchronization unless the current Codex environment has a browser, connector, API, or editable file access and the user permits it.

## Output Template By Platform

### Obsidian

Use Markdown callouts.

```markdown
> [!warning] Codex 核对
> **问题**：
> **为什么影响理解/做题**：
> **修正方向**：
> **讲义/真题依据**：
> **下一步动作**：
```

```markdown
> [!success] Codex 核对
> 这段可以保留。它的优点是：
```

### Notion / FlowUs

Use portable blocks that can become quote, callout, or toggle blocks.

```markdown
Codex Review
- Problem:
- Why it matters:
- Fix direction:
- Source/evidence:
- Next action:
```

### Feishu Docs / Lark Docs / Tencent Docs / Word / WPS / Google Docs

Prefer compact tables or comment-style bullets.

```markdown
| Original paragraph | Problem | Why it matters | Fix direction | Evidence/source | Next action |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |
```

Comment-style version:

```markdown
Codex Review for this paragraph:
1. Problem:
2. Why it matters for understanding/questions:
3. Fix direction:
4. Source/evidence:
5. Next action:
```

### Yuque / Markdown / Plain Text

Use a quote-style review block.

```markdown
> Codex Review
> Problem:
> Why it matters for understanding/questions:
> Fix direction:
> Source/evidence:
> Next action:
```

## Collaboration Levels

1. Paste-ready collaboration: output a platform-specific block, table, or comment-style review that the user can paste.
2. Export-aware collaboration: if the user uploads Markdown, DOCX, HTML, CSV, OCR text, or exported text, preserve source structure and provide matched review output.
3. Direct document collaboration: only when browser control, a connector, an API, or an editable document file is available and user permission is clear.

## Each Review Must Do

1. Choose one primary learning state.
2. Choose one or two main problems.
3. Preserve the user's original text.
4. Insert or provide platform-adapted review blocks under relevant original passages.
5. Decide whether a small callback is needed.
6. Give one or two next actions.
7. If persistent files exist in the user's workspace, update:
   - `learning_state_profile.md`
   - `error_pattern_map.md`
   - `note_review_ledger.md`

## Persistent File Templates

Use the templates in `assets/templates/` when the user wants to initialize a long-term review loop:

- `learning_state_profile.template.md`
- `error_pattern_map.template.md`
- `note_review_ledger.template.md`

Every 5 reviewed notes, suggest a `learning_state_calibration_report.md`.

Every 10-20 reviewed notes, suggest `skill_patch_candidates.md` as a proposal only. Do not directly patch the skill during ordinary note review unless the user explicitly requests it.
