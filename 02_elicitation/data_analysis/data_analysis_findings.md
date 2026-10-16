# Data Analysis Findings
## Complaint Management Process Redesign

| Item | Detail |
|---|---|
| Data | [complaints_2024.csv](complaints_2024.csv): 2,440 complaint records, January 1 to December 31, 2024 (synthetic data) |
| Method | SQL queries in [analysis.sql](analysis.sql), run with [run_analysis.py](run_analysis.py) |
| Full results | [query_results.md](query_results.md) |
| Analyst | Blessing Adeniyi |

## Why analyze the data

Interviews told us the process *felt* slow and inconsistent. The data tells us **where**, **how much** and **for which customers**. Every finding below links to the query that produced it, so anyone can check or rerun it.

## Key numbers

| Measure | Result | Query |
|---|---|---|
| Complaints received | 2,440 | Q1 |
| Logged within 1 day of receipt | 63.5% | |
| Closed by year end | 2,287 | Q6 |
| Closed within 56 days | **92.0%** (184 took longer) | Q6 |
| Acknowledged within 2 days | **62.8%** | Q4 |
| Average days to resolve (closed) | 19.4 | |
| Escalated beyond frontline | 26.1% | Q9 |
| Compensation paid | $58,145 | Q14 |

## Finding 1: Complaints from manual channels are logged days late

Branch, email and letter complaints make up **48.4%** of volume, and they are typed into the complaints system by hand.

| Channel | Average days to log | Logged more than 2 days after receipt |
|---|---|---|
| Letter | 6.4 | 80.7% |
| Email | 3.7 | 48.4% |
| Branch | 3.3 | 47.3% |
| Social media | 1.5 | 25.0% |
| Phone | 0.3 | 1.6% |
| Web form | 0.0 | 0.0% |

**Why it matters:** the regulatory clock starts when the bank *receives* a complaint, not when it is logged. Every day lost before logging is a day lost from the 56 day window.

## Finding 2: Acknowledgements are slow for the same channels

| Channel | Acknowledged within 2 days |
|---|---|
| Letter | 0.0% |
| Email | 11.6% |
| Branch | 47.1% |
| Social media | 49.4% |
| Phone | 97.7% |
| Web form | 100.0% |

Phone and web form complaints are acknowledged almost immediately because the system does it automatically. Everything else depends on someone remembering.

## Finding 3: The 56 day problem sits almost entirely in escalated complaints

| Handling level | Closed | Average days | Over 56 days |
|---|---|---|---|
| Level 1 Frontline | 1,740 | 10.1 | 0 (0.0%) |
| Level 2 Complaints Office | 516 | 45.5 | 153 (29.7%) |
| External (OBSI) | 31 | 107.9 | 31 (100.0%) |

All 184 complaints that took longer than 56 days were escalated. Frontline handling is working; the escalation path is not. A further **14 open complaints** were already past 56 days at year end (Q8).

## Finding 4: Fraud and disputes is the highest risk category

| Category | Escalated | Over 56 days (closed) |
|---|---|---|
| Fraud and disputes | 43.3% | 18.8% |
| Lending | 35.2% | 6.2% |
| Digital banking | 28.8% | 9.6% |
| Account access | 22.3% | 4.9% |
| Service fees | 18.4% | 5.9% |
| Customer service | 13.9% | 2.9% |

Fraud and disputes also sent the most complaints to OBSI (18 of 48).

## Finding 5: Three fee issues drive one in five complaints

"Fee not disclosed clearly" (175), "Fee charged in error" (169) and "Fee reversal refused" (157) together account for **501 complaints (20.5%)**. These are preventable at the source, not just faster to fix. Service fees also cost the most in compensation ($26,047.50).

## Finding 6: The data itself has quality gaps

* **5.8%** of records have no root cause, and **3.3%** have no region (Q11)
* **53 possible duplicate pairs:** the same issue logged twice through different channels (Q12)

Without a root cause, the bank cannot spot trends. Duplicates inflate volumes and waste investigation time.

## What this means for requirements

| Finding | Requirement direction |
|---|---|
| 1, 2 | Capture complaints at the point of contact in every channel; automatic acknowledgement |
| 3 | Escalation workflow with deadline tracking and warnings well before day 56 |
| 4 | Specialist routing and priority for fraud and disputes |
| 5 | Root cause reporting fed back to product and fee owners |
| 6 | Mandatory root cause on closure; duplicate detection |

These directions are carried into the [gap analysis](../../03_analysis/gap_analysis.md) and the [business requirements document](../../03_analysis/business_requirements_document.md).
