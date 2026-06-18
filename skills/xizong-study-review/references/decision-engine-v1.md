# Decision Engine v1

## Scope

Use Decision Engine v1 only when the user provides a complete question stem and options and wants a fast exam-style choice.

Do not use it to replace understanding. If the learner is `beginner`, `confused-zone`, or missing the mechanism, return to V3 understanding work.

## Option Labels

Classify each option as:

- `correct candidate`
- `distractor`
- `partially true but wrong level`
- `trap option`

## Elimination Order

1. Remove obviously wrong options.
2. Remove non-first-choice options when clinical priority exists.
3. Remove mechanism-incomplete options.
4. Remove non-standard exam expressions.
5. Keep the single best remaining answer.

## Output

```markdown
## Quick Understanding

## Option Elimination

## FINAL DECISION
- 选项：
- 置信度：high / medium / low
- 决策依据：最多3条

## Error Risk

## 下一步
```

## Decision Error Types

If wrong or weak, classify:

- `analysis error`
- `elimination error`
- `time pressure error`
- `trap not recognized`
- `priority inversion`
