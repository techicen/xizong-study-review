# User-Uploaded Content Workflow

## Purpose

Support users who upload their own 西综 materials: lecture PDFs, textbook excerpts, personal notes, note/document drafts from Obsidian, Notion, FlowUs, Feishu/Lark Docs, Tencent Docs, Yuque, WPS, Word, Google Docs, exercises, true questions, answer keys, explanations, screenshots, or OCR text.

The skill may identify, index, and analyze user-provided content locally. It must not redistribute source files or turn the public repository into a source-material archive.

## Intake Steps

1. Classify the uploaded content:
   - lecture
   - lecture index
   - personal note
   - note/document draft
   - exercise
   - true question
   - answer key
   - explanation
   - true question with answer
   - unknown
2. Check readability:
   - readable text
   - readable PDF text
   - image/scanned PDF
   - screenshot/image
   - unreadable
   - unknown
3. Check whether answers or explanations are visible.
4. Decide mode:
   - learning output support
   - note/document review
   - wrong-question review
   - true-question structure analysis
   - blind solving
   - option decision
5. Keep source references local. Use source paths, page numbers, headings, or user-provided identifiers when available, but do not invent anchors.

## Uploaded Lecture Material

When users upload lectures or notes:

- build a local index of topics, headings, and callback points
- help the learner produce one-sentence essence and mechanism chains
- connect physiology, pathology, and clinical medicine
- avoid rewriting the lecture into a full AI textbook
- mark missing or unclear sources as `待核对`

## Uploaded Exercises

When users upload exercises:

- preserve the original stem and options in the user's local workspace
- identify whether answers are present
- separate answer-free solving from answer/explanation review
- diagnose whether errors are knowledge, mechanism, mapping, trap, clinical decision, or priority errors

## Uploaded True Questions

Public true questions may be analyzed from user-provided files or text. The skill can create local derived artifacts such as schemas, tags, topic maps, and error ledgers.

Do not include original PDFs, images, answer explanations, or full extracted question banks in the public skill repository.

Use derived fields such as:

- year
- question number
- subject
- topic
- tested point
- exam action
- trap type
- anchor status
- historical status
- use-for-current-exam caution

## Safety Boundary

If a file contains paid-course material, answer explanations, user notes, or personal learning history, treat it as private user material. Keep it local.
