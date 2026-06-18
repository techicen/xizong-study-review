# Obsidian Review Loop

## Review Rule

Preserve the user's original text. Do not rewrite the full note or create a detached review essay. Insert short callouts directly below the original passage that needs feedback.

## Warning Callout

```markdown
> [!warning] Codex 核对
> **问题**：
> **为什么影响理解/做题**：
> **修正方向**：
> **讲义/真题依据**：
> **下一步动作**：
```

## Success Callout

```markdown
> [!success] Codex 核对
> 这段可以保留。它的优点是：
```

## Each Review Must Do

1. Choose one primary learning state.
2. Choose one or two main problems.
3. Insert callouts under relevant original passages.
4. Decide whether a small callback is needed.
5. Give one or two next actions.
6. If persistent files exist in the user's workspace, update:
   - `learning_state_profile.md`
   - `error_pattern_map.md`
   - `obsidian_review_ledger.md`

## Persistent File Templates

Use the templates in `assets/templates/` when the user wants to initialize an Obsidian review loop:

- `learning_state_profile.template.md`
- `error_pattern_map.template.md`
- `obsidian_review_ledger.template.md`

Every 5 reviewed notes, suggest a `learning_state_calibration_report.md`.

Every 10-20 reviewed notes, suggest `skill_patch_candidates.md` as a proposal only. Do not directly patch the skill during ordinary note review unless the user explicitly requests it.
