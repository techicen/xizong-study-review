# Regression Tests

These are lightweight behavior tests for the public skill. They are not automated by default; use them as review fixtures when changing `SKILL.md`, references, templates, or README examples.

Each case defines:

- `input`
- `expected_behavior`
- `failure_mode_to_avoid`
- `pass_criteria`

Recommended workflow:

1. Install the skill locally.
2. Start a fresh Codex session.
3. Run each case prompt.
4. Compare output against `pass_criteria`.
5. Do not update the skill if a core behavior regresses.

Test files:

- `note-review.yaml`
- `document-platform-adaptation.yaml`
- `wrong-question-review.yaml`
- `decision-engine.yaml`
- `boundary-safety.yaml`
