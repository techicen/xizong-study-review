# Example 05: Decision Engine Sample

This sample is fictional and only demonstrates output format. It is not a real exam question.

## Prompt

```markdown
Use the xizong-study-review skill.

I already understand the basic mechanism.
Now use Decision Engine v1 for fast option elimination.

Stem:
A patient has repeated episodic wheezing after allergen exposure. Symptoms improve after inhaled bronchodilator. Which feature best supports asthma rather than COPD?

Options:
A. Chronic productive cough for many years
B. Reversible airflow limitation
C. Persistent hypoxemia at rest
D. Irreversible alveolar wall destruction
E. Barrel chest
```

## Expected Skill Behavior

```markdown
## Quick Understanding

考点是哮喘与 COPD 的鉴别。关键词是反复发作、过敏原诱发、支气管扩张剂后改善。

## Option Elimination

- A: distractor。更偏慢性支气管炎/COPD 表达。
- B: correct candidate。可逆性气流受限支持哮喘。
- C: distractor。不能作为哮喘优先特征。
- D: trap option。肺泡壁破坏偏肺气肿/COPD。
- E: distractor。桶状胸偏长期肺过度充气。

## Fast Decision Path

→ 先抓“发作性 + 过敏诱发 + 支气管扩张剂改善”  
→ 排除 COPD 长期结构破坏相关选项  
→ 保留“可逆性气流受限”  
→ final choice: B

## FINAL DECISION

- 选项：B
- 置信度：high
- 决策依据：发作性、过敏诱发、支气管扩张剂后改善

## Error Risk

容易把“喘息”泛化成所有阻塞性肺病，而忽略可逆性。
```
