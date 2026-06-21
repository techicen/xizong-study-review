# Xizong Exam Intelligence Tutor
<p align="center">
  <img src="https://img.shields.io/badge/license-MIT-blue?style=flat-square" />
  <img src="https://img.shields.io/badge/version-v0.1.0--public--preview-orange?style=flat-square" />
  <img src="https://img.shields.io/badge/Codex-Skill-8A2BE2?style=flat-square" />
  <img src="https://img.shields.io/badge/Xizong-study--review-2ea44f?style=flat-square" />
  <img src="https://img.shields.io/badge/status-public--preview-brightgreen?style=flat-square" />
  <img src="https://img.shields.io/badge/privacy-public--safe-lightgrey?style=flat-square" />
</p>

## 📋 更新日志

完整更新日志见 [`CHANGELOG.md`](CHANGELOG.md)。

### 2026/6/21  WorkBuddy support

* 增加 WorkBuddy 工作区支持：Skill 触发描述、平台识别和审稿输出合同都已覆盖 WorkBuddy。
* 增加 WorkBuddy 使用提示词，默认输出可复制回任务或文档的 Markdown review block。
* 增加 `examples/07-workbuddy-review.md`，展示 WorkBuddy 可粘贴审稿和 `WorkBuddy Handoff` 清单。
* 增加 WorkBuddy 回归测试，防止误称直接同步/编辑文档，或在没有完整题干选项时误入 Decision Engine v1。

### 2026/6/20  v0.1.0-public-preview

* 发布第一个 public preview 版本：`xizong-study-review` 正式作为公开 Codex Skill 发行。
* 明确 Skill 定位：不是知识点总结器，也不是题库搬运工具，而是面向西综学习的专业学习助教。
* 建立核心工作流：

  * 学习输出审稿；
  * 笔记 review block；
  * Learning Feedback；
  * 错题复盘；
  * 学习状态判断；
  * 题干到知识点的 mapping failure 识别；
  * 完整选项决策场景下的 Decision Engine v1 触发边界。
* 加入真实学习场景校准说明：Skill 的行为设计经过教材框架、课程讲义结构、知识点笔记、错题复盘样本和历年考试材料所呈现出的题目风格反复打磨，但公开版本不包含任何原始讲义、课本扫描件、真题 PDF、答案 key、解析、OCR 输出或个人学习记录。
* 加入 public-safe 发行边界：

  * 不分发付费课程资料；
  * 不分发讲义 PDF；
  * 不分发课本扫描件；
  * 不分发真题 PDF；
  * 不分发答案 key；
  * 不分发答案解析；
  * 不包含未脱敏个人笔记；
  * 不包含个人学习状态记录；
  * 不包含本地题库或私有路径。
* 增加多平台笔记适配说明，覆盖 Obsidian、Markdown、Word、Notion、飞书、FlowUs、语雀、腾讯文档等常见学习写作环境。
* 提供安装脚本：

  * `scripts/install-skill.sh`
  * `scripts/install-skill.bat`
* 提供推荐初始提示词，方便用户安装后快速进入西综学习助教模式。
* 增加示例 prompt、空白模板、fictional 示例和行为回归测试提示，用于帮助用户理解 Skill 的正确使用方式。
* 增加 `PUBLIC_RELEASE_CHECKLIST.md` 和 public/private boundary 说明，降低公开发行时的资料泄露风险。
* 设置版本语义：当前版本为 `0.1.0-public-preview`，表示已经可以公开试用，但仍处于持续校准和快速迭代阶段。

## 介绍
很多人学西综卡住，不是因为资料不够，而是因为“看懂了”到“能讲清楚”，再到“能做题选出来”之间断了一截。

`Xizong Exam Intelligence Tutor` 就是为这段断层做的公开版 Codex skill。它不是题库，不是押题工具，也不是一键生成百科总结的 AI。它更像一个专业西综学习助教：看你的原文输出，判断你现在到底懂到哪一步，找出机制链断点和错因，再给你一个很小但能推进学习的下一步。

它可以做主动输出审稿、笔记原文批注、错题错因诊断、生理-病理-内科 callback、真题结构理解，以及在完整题干和选项出现时的考试决策辅助。

公开版名称是 `Xizong Exam Intelligence Tutor`，安装目录仍然是 `skills/xizong-study-review`。这样既保留稳定的 skill 触发名，也让公开展示更清晰。

这个仓库是公开、安全、脱敏版本。它只包含学习工作流、提示词合同、模板、预览图和边界规则，不包含讲义 PDF、真题 PDF、答案解析、OCR 文本、未脱敏个人笔记或私人学习记录。仓库中保留了一张已授权、已遮挡讲义来源的真实工作流截图，用来展示实际审稿效果。

![学习闭环](assets/preview/preview-learning-loop-zh.svg)

真实 Obsidian 审稿工作流脱敏预览：

![真实 Obsidian 审稿工作流脱敏预览](assets/preview/ob-workflow-redacted.png)

## 你能立刻感受到的变化

1. **它不替你写笔记。** 它会保留你的原文，在关键句下面插入 `Codex 核对`，告诉你哪里只是背了结论，哪里会影响做题。
2. **它会判断你到底懂没懂。** 不是每次都让你刷题，而是先判断你是刚懂一点、理解不稳、正在巩固，还是已经可以考试化。
3. **它能找出真正错因。** 错题不再只写“知识点不会”，而是拆成知识缺口、机制断裂、映射失败、干扰项未识别、临床决策错误或优先级错误。
4. **它会把生理、病理、内科接起来。** 如果内科表现背后的生理/病理链断了，它会让你只回扣一个小点，不会让你整章重学。
5. **它会安全使用真题。** 真题只用于理解命题表达、干扰项和决策路径，不押题、不分发文件、不生成题库。
6. **它支持主流文档软件和 WorkBuddy。** Obsidian、WorkBuddy、Notion、FlowUs、飞书文档、腾讯文档、语雀、WPS、Word、Google Docs、普通 Markdown、纯文本都能适配。

## 快速开始

克隆仓库：

```bash
git clone https://github.com/techicen/xizong-study-review.git
cd xizong-study-review
```

安装 skill：

```bash
bash scripts/install-skill.sh
```

Windows 用户：

```bat
scripts\install-skill.bat
```

重启 Codex 后，可以直接试：

```markdown
请使用 xizong-study-review skill。

请按西综专业学习助教模式审稿我的笔记：
1. 判断当前学习状态；
2. 找出 1-2 个主要问题；
3. 保留原文，不要重写全文；
4. 按我的笔记/文档软件输出适配格式；
5. 加上 Learning Feedback；
6. 最后只给 1-2 个下一步任务。
```

### 在 WorkBuddy 里使用

WorkBuddy 支持不需要单独的 skill 目录：安装同一个 `xizong-study-review` skill，然后在能调用本地 Codex skills 的 WorkBuddy 工作区或对话里使用。

可以这样问：

```markdown
请在 WorkBuddy 中使用 xizong-study-review skill。

请按西综专业学习助教模式审稿我的笔记。
我的工作区是 WorkBuddy，请输出可复制回任务或文档的 Markdown review block。
除非本次会话里 WorkBuddy 已经提供可编辑文件、浏览器或连接器，否则不要声称能直接改文档或插入评论。
```

没有直接连接器时，skill 默认给复制粘贴级 Markdown；如果 WorkBuddy 提供了选中文本、上传文件或可编辑文档上下文，Codex 可以读取这些上下文，但仍要保留学习者原文。

## 示例和预览

- `examples/01-copd-note-review.md`：笔记审稿与学习状态反馈。
- `examples/02-feishu-doc-review-table.md`：飞书文档审稿表格。
- `examples/03-notion-flowus-review-block.md`：Notion / FlowUs 通用块。
- `examples/04-wrong-question-review.md`：错题错因诊断。
- `examples/05-decision-engine-sample.md`：理解稳定后的选项决策。
- `examples/06-sanitized-ob-style-inline-audit.md`：真实工作流风格的脱敏 Obsidian 原文批注案例。
- `examples/07-workbuddy-review.md`：WorkBuddy 可复制 Markdown 审稿和简短交接清单。

![文档软件适配](assets/preview/preview-document-apps-zh.svg)

![错因诊断](assets/preview/preview-error-diagnosis-zh.svg)

真实工作流风格脱敏预览：

![Obsidian 原文批注风格](assets/preview/ob-workflow-redacted.png)

## 为什么它值得安装

很多学习工具帮你“整理更多知识”，但西综真正困难的地方往往不是资料不够，而是：

- 你以为自己懂了，但一做题就不会选；
- 笔记看起来很完整，但不知道能不能支撑真题；
- 生理、病理、内科各自会背，临床题一出现就断链；
- 错题复盘只写“知识点不会”，没有找到真正错因；
- 看完解析觉得懂了，却看不出出题人怎么藏答案、怎么设计干扰项。

这个 skill 的核心价值是：让 Codex 不再替你写百科总结，而是贴着你的真实输出判断你到底学到了哪一步。

它会回答：

- 你现在是 `beginner`、`unstable`、`consolidating`、`exam-ready`，还是 `confused-zone`？
- 你错在知识缺口、机制断裂、讲义到题目的映射失败，还是优先级判断错误？
- 这段笔记输出是否真的能解释题干？
- 这个病应该 callback 哪一个生理点、哪一个病理点、哪一个内科决策点？
- 真题里的正确答案是如何被隐藏的，干扰项是如何制造的？
- 当你已经理解机制但卡在选项之间时，怎样快速排除并强制收敛到一个答案？

## 它的优点

- **保护你的主动输出。** 不默认重写全文，而是在你的原文下方插入 `Codex 核对` 或通用 review block，告诉你哪里影响理解和做题。
- **能识别学习状态。** 不是所有问题都该直接做题。有时要回到机制，有时要做对比，有时才能进入选项决策。
- **能诊断错因。** 错题不再只是“不会”，而会拆成 knowledge gap、mechanism break、mapping failure、examiner trap not recognized、clinical decision error、threshold / priority error。
- **能把三门课接起来。** 它会提醒你把生理机制、病理变化和内科表现连成一条能做题的链。
- **能安全使用真题。** 真题只用于理解命题表达、干扰项和决策路径，不用于押题，不生成题库，不分发真题文件。
- **支持用户自己的资料。** 你可以上传自己的讲义、笔记、习题、真题文本或截图，skill 会先识别文件类型、可读性、是否含答案和适合用途。
- **不强依赖 Obsidian。** Obsidian 是最佳 Markdown 体验之一，但 WorkBuddy、Notion、FlowUs、飞书文档、语雀、Word、普通 Markdown、直接复制粘贴都可以用。
- **理解稳定后才进入决策。** 只有当你给出完整题干和选项，并且需要快速排除时，才启用 Decision Engine v1。

## V3 和 v1 到底是什么意思

公开用户不需要把 V3 / v1 当成复杂系统版本。它们只是两个工作模式：

| 名称 | 普通话解释 | 什么时候用 | 输出重点 |
| --- | --- | --- | --- |
| Tutor Core | 基础学习助教流程 | 学习输出、上传资料、错题复盘、笔记审稿 | 先识别任务，再选择合适动作 |
| V3 理解反馈层 | 判断你是否真的理解 | 你在解释、复盘、困惑、审稿、找错因时 | 判断学习状态、找断点、补机制、给下一步 |
| Decision Engine v1 | 考试选项决策层 | 你给出完整题干和选项，并需要快速选择时 | 排除选项、识别陷阱、压缩决策、输出最终答案 |

一句话：

```text
默认用 V3 帮你学明白。
只有完整题干和选项出现时，才用 v1 帮你选出来。
```

所以这个 skill 不是把所有学习都变成考试。它会先判断：你现在是否已经理解到足以做决策？如果还没有，就继续停在 V3 修理解；如果已经理解稳定，再进入 v1 做选项排除。

## 支持主流笔记和文档软件

Obsidian 只是因为支持 Markdown callout，所以很适合展示 `Codex 核对`。但它不是必要条件。主流笔记软件和协作文档都可以用。

你可以这样用：

- **Obsidian：** 使用 `> [!warning] Codex 核对` 形式。
- **Notion：** 把核对内容粘在原文下方，用引用块、折叠块、callout 块都可以。
- **FlowUs：** 把核对内容粘在原文下方，用引用块或类似 callout 的块。
- **飞书文档 / Lark Docs：** 把 `Codex Review` 放在原段落下方，或把每一条核对转成文档评论。
- **腾讯文档 / 语雀：** 适合用“原文摘录 + 审稿表格”的形式。
- **WorkBuddy：** 使用通用 Markdown `Codex Review`，需要形成后续任务时再加一个简短的 `WorkBuddy Handoff` 清单。
- **WPS / Microsoft Word / Google Docs：** 可以用批注、评论、段落下方审稿表格。
- **普通 Markdown：** 原文下面直接加 review block。
- **没有笔记软件：** 直接把段落粘给 Codex，修完后复制回你自己的学习文档。

通用格式：

```markdown
> Codex Review
> 问题：
> 为什么影响理解/做题：
> 修正方向：
> 依据：
> 下一步动作：
```

关键不是使用哪个软件，而是保留你的原文，让 Codex 贴着你的表达指出问题，而不是替你生成一篇看起来很漂亮但不属于你的总结。

对飞书文档、腾讯文档、Word、Google Docs 这类协作文档，更推荐表格格式：

```markdown
| 原文段落 | 问题 | 为什么影响理解/做题 | 修正方向 | 依据 | 下一步 |
| --- | --- | --- | --- | --- | --- |
| 粘贴你的原文 | ... | ... | ... | ... | ... |
```

## 文档软件识别与个性化协同

这个 skill 不只是“能粘贴到不同软件里”，而是会先识别用户使用的笔记/文档平台，再选择对应输出模板。

| 平台 | 推荐输出 | 适合场景 |
| --- | --- | --- |
| Obsidian | Markdown callout | 原子笔记、双链笔记、想保留 `Codex 核对` 块 |
| Notion | callout / toggle / quote 块 | 想把审稿折叠在原文下方 |
| FlowUs | 引用块或类 callout 块 | 使用国产 Notion-like 工作区 |
| 飞书文档 / Lark Docs | 审稿表格或评论式要点 | 协作文档、段落审稿、多人复盘 |
| 腾讯文档 | 精简审稿表格 | 团队可读的订正表 |
| 语雀 | 原文引用 + review block | 知识库式笔记 |
| WorkBuddy | 通用 Markdown review block + `WorkBuddy Handoff` 清单 | 想把审稿结果直接变成工作区任务的用户 |
| WPS / Word / Google Docs | 批注式审稿或表格 | 文档编辑和审阅流程 |
| 普通 Markdown / 纯文本 | 通用 `Codex Review` 块 | 不想使用专门笔记软件 |

协同有三种层级：

1. **复制粘贴级协同：** Codex 输出适合该软件的块、表格或评论式文字，用户直接粘贴。
2. **导出文件级协同：** 用户上传 Markdown、DOCX、HTML、CSV 或导出文本后，Codex 按原结构生成审稿结果。
3. **直接文档协同：** 如果用户的 Codex 环境有浏览器、连接器、API 或可编辑文档文件，并且用户授权，Codex 可以更精确地定位段落、准备评论或生成插入补丁。

公开版默认承诺前两种：复制粘贴级协同和导出文件级协同。直接编辑文档取决于用户的 Codex 或 WorkBuddy 环境是否提供对应工具和权限。

## 完整案例：从安装到笔记审稿

下面是一个公开版使用示例。内容是虚构的 COPD 学习输出，只演示流程，不使用任何私有讲义、真题或个人笔记。你可以在 Obsidian、WorkBuddy、Notion、FlowUs、飞书文档、腾讯文档、语雀、WPS、Word、Google Docs、普通 Markdown 或直接复制粘贴中使用这个流程。

### 1. 安装 skill

最快安装：

```bash
git clone https://github.com/techicen/xizong-study-review.git
cd xizong-study-review
bash scripts/install-skill.sh
```

也可以手动复制：

```bash
cp -R xizong-study-review/skills/xizong-study-review ~/.codex/skills/
```

重新开启一个 Codex 会话，就可以使用 `xizong-study-review`。

如果在 WorkBuddy 里使用，安装目录不变。只要当前 WorkBuddy 环境能调用本地 Codex skills，就用同一个触发名 `xizong-study-review`。没有直接编辑连接器时，请让它输出可复制粘贴的 Markdown。

### 2. 可选：建立自己的私有学习记录

公开仓库只提供空白模板。你可以把模板复制到自己的私有学习文件夹：

```bash
mkdir -p my-xizong-learning-state
cp xizong-study-review/skills/xizong-study-review/assets/templates/*.template.md my-xizong-learning-state/
```

这些文件可以用于记录学习状态、错因画像、资料索引和本地真题结构化结果。不要把自己的私有记录发布到公开仓库。

### 3. 写第一个提示词

```markdown
请使用 xizong-study-review skill。

请按西综专业学习助教模式审稿我的笔记输出。

要求：
1. 不要替我重写全文。
2. 保留我的原文。
3. 判断我的学习状态。
4. 只找 1-2 个主要问题。
5. 在相关原文下方插入 Codex 核对或通用 review block。
6. 加上 Learning Feedback。
7. 最后只给 1-2 个下一步任务。

我的笔记软件或工作区是：Obsidian / WorkBuddy / Notion / FlowUs / 飞书文档 / 腾讯文档 / 语雀 / WPS / Word / Google Docs / Markdown / 纯文本。
```

### 4. 用户粘贴一段笔记输出

```markdown
# COPD

COPD 的本质是慢性气流受限，主要和小气道炎症有关。

患者会出现呼气困难，是因为气道变窄，气体排不出来。

肺气肿时肺泡被破坏，所以会影响换气。治疗上主要用支气管扩张剂。
```

### 5. skill 的审稿输出示例

```markdown
## 当前学习状态

unstable

依据：你已经抓到了 COPD 的关键词：气流受限、小气道炎症、呼气困难、肺气肿、支气管扩张剂。但机制链还没有完全闭合，尤其是“小气道病变”和“肺泡弹性回缩力下降”如何共同导致呼气相气流受限。

## 主要问题

- mechanism break
- callback missing

## 该用哪一层

V3

## 处理结果

# COPD

COPD 的本质是慢性气流受限，主要和小气道炎症有关。

> [!warning] Codex 核对
> **问题**：这句话方向对，但还不够考试化。COPD 的气流受限不能只归因于小气道炎症，还要补上肺泡壁破坏后弹性回缩力下降。
> **为什么影响理解/做题**：如果只记“小气道炎症”，遇到肺气肿、呼气性气流受限、残气量增加、桶状胸等题干时，容易把机制链接不上。
> **修正方向**：改成“小气道阻塞 + 肺泡弹性回缩力下降，共同造成呼气相气流受限”。
> **讲义/真题依据**：请回扣用户本地 COPD 讲义；若未上传资料，标记 `needs_user_source`。
> **下一步动作**：用一句话解释为什么 COPD 是“呼气更困难”。

患者会出现呼气困难，是因为气道变窄，气体排不出来。

> [!warning] Codex 核对
> **问题**：这句是现象描述，还没有解释“为什么呼气时更明显”。
> **为什么影响理解/做题**：考试常把机制藏在呼气、残气量、肺过度充气、FEV1/FVC 下降这些表达里。
> **修正方向**：补一句“呼气时胸内压升高，小气道更易塌陷；弹性回缩力下降使气体排出更差”。
> **讲义/真题依据**：本地讲义锚点待用户上传后确认。
> **下一步动作**：把这句改成机制链，不要只写症状。

肺气肿时肺泡被破坏，所以会影响换气。治疗上主要用支气管扩张剂。

> [!success] Codex 核对
> 这段可以保留。它的优点是：已经把肺气肿和治疗方向放在同一段里，后续可以继续补“为什么支气管扩张剂是症状改善而不是逆转肺泡破坏”。

## Learning Feedback

- 理解程度判断：听懂了关键词，但机制链仍不稳定。
- 是否真正掌握机制链：暂时没有完全掌握。
- 是否存在认知断点：存在，断在“呼气相气流受限”的力学机制。
- 下一步应该：加深讲解，然后做一类机制链真题验证。

## 下一步

1. 重写一句话：COPD 为什么以呼气性气流受限为核心？
2. 回扣一个生理点：胸内压变化如何影响小气道塌陷？
```

### 6. 如果你不用 Obsidian

可以在提示词里加一句：

```markdown
请不要使用 Obsidian callout。
请使用适合 WorkBuddy / Notion / FlowUs / 飞书文档 / 腾讯文档 / Word / Google Docs / 普通 Markdown 的 Codex Review block。
```

输出可以变成：

```markdown
> Codex Review
> 问题：这句话方向对，但还不够考试化。
> 为什么影响理解/做题：如果只记“小气道炎症”，遇到肺气肿、呼气性气流受限、残气量增加时容易断链。
> 修正方向：补上“小气道阻塞 + 肺泡弹性回缩力下降”。
> 依据：回扣用户本地 COPD 讲义；未上传资料时标记 `needs_user_source`。
> 下一步动作：用一句话解释为什么 COPD 是“呼气更困难”。
```

### 7. 根据批注继续修

```markdown
我已经根据上面的 Codex 核对修改了 COPD 段落。

请做二次审核：
1. 判断机制链是否已经闭合。
2. 如果仍然断裂，只指出一个最关键断点。
3. 如果基本稳定，告诉我是否可以进入真题验证。
4. 不要扩写成完整讲义。
```

### 8. 二次审核后会发生什么

skill 会根据学习反馈选择下一步：

- 如果机制仍断裂：继续停留在 V3，修一个点。
- 如果机制基本稳定：进入小范围真题结构验证。
- 如果用户给出完整题干和选项：进入 Decision Engine v1，做选项排除和强制决策。

### 9. 完整题干选项下的决策提示词

只有当你已经有完整题干和选项时才用：

```markdown
我已经理解 COPD 机制，但这道题卡在 B 和 D 之间。

请启用 Decision Engine v1：
1. Quick Understanding
2. Option Elimination
3. Fast Decision Path
4. FINAL DECISION
5. Error Risk
```

## 公开版不包含什么

这个仓库不会包含：

- 付费课程资料
- 讲义 PDF
- 真题 PDF
- 答案 key
- 答案解析
- OCR 输出
- 未脱敏个人笔记或笔记软件导出内容
- 个人学习状态记录
- 本地绝对路径

公开真题可以由用户自己上传后在本地分析，但这个仓库不直接分发原始真题文件。

## 仓库结构

```text
assets/preview/
examples/
scripts/
skills/xizong-study-review/
  SKILL.md
  agents/openai.yaml
  references/
  assets/templates/
tests/regression/
```

`tests/regression/` 是行为回归测试集，用来防止 skill 后续改着改着变成百科总结器、押题器，或者忘记平台适配、来源边界和 v1 触发条件。

## 推荐初始提示词

```markdown
请使用 xizong-study-review skill。

请按西综专业学习助教模式审稿我的输出：
1. 判断当前学习状态；
2. 找出 1-2 个主要问题；
3. 保留原文，不要重写全文；
4. 如果是笔记内容，请在原文下方插入 Codex 核对或通用 review block；
5. 加上 Learning Feedback；
6. 最后只给 1-2 个下一步任务。
```

## 推荐上传资料提示词

```markdown
请使用 xizong-study-review skill。

我上传了一份西综资料 / 习题 / 真题。
请先识别：
1. 文件类型；
2. 可读性；
3. 是否含答案或解析；
4. 是否适合盲测；
5. 更适合用于学习输出、笔记审稿、错题复盘、真题结构分析还是选项决策。

不要生成题库，不要分发原始内容。
```

## Release Safety

Before publishing, run through `PUBLIC_RELEASE_CHECKLIST.md`.

Publishing commands are in `PUBLISH.md`.
