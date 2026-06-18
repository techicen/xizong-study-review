# True-Question Boundaries

## Public Skill Boundary

考研西综真题 may be publicly accessible in many contexts, and users may upload or provide them for local analysis. This public skill may contain workflows, schemas, and derived metadata rules for processing true questions.

Do not ship original true-question PDFs, screenshots, full extracted question text, answer keys, or explanations inside the public repository. The skill should help users process their own local copies.

## Allowed Uses

Use true questions to:

1. Understand how knowledge is expressed in exams.
2. Understand how distractors manufacture mistakes.
3. Check whether the user's output supports solving.
4. Expose error patterns.
5. Practice answer-free reasoning when answers are properly hidden.
6. Build a local structured database from user-uploaded or user-provided question content.

## Prohibited Uses

Do not use true questions to:

- predict this year's exam
- claim a point is guaranteed to appear
- generate mock question banks
- redistribute original source files
- publish full copied question/answer/explanation collections
- replace lecture learning
- replace the learner's active output
- treat old answers as current medical truth without checking current sources

## Local Structured Processing

When a user uploads true questions, create local derived structure rather than public source redistribution:

- source inventory
- answer-free question set
- sealed answer key if blind solving is requested
- explanation file separate from bare questions
- topic/action/trap tags
- historical-status and current-use caution
- anchor status and source-link notes

Use `assets/templates/true_question_schema.template.json` as a starting point.

## Historical Status

When structuring old questions, use one of:

- `current_core`
- `current_but_low_yield`
- `legacy_prototype`
- `outdated_or_conflicting`
- `no_lecture_anchor`
- `unsure_needs_check`

If an old answer conflicts with current teaching material, keep separate fields for:

- original exam answer
- current lecture position
- conflict note

## Anchor Failure

Lecture anchoring may fail. Never invent page numbers, teacher positions, or source anchors.

Use:

- `lecture_anchor: null`
- `anchor_status: no_lecture_anchor`
- `next_action: 待讲义/教材/老师口径核对`

## Evidence Levels

For trend or emphasis claims, use:

- `strong_current`
- `medium_current`
- `historical_high_frequency`
- `legacy_only`
- `personal_high_risk`

Avoid: 必考, 一定考, 今年肯定考, 出题人必然会.

## Blind Solving

If the user asks for blind solving:

1. Read only the stem and options.
2. Answer independently.
3. Show reasoning.
4. Read the answer only after the independent answer is complete.
5. Attribute errors.

If the source is an image PDF or the answer appears under the question, do not claim blind testing until the answer is masked and leakage-checked.
