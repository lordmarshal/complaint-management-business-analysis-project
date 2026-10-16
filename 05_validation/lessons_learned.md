# Lessons Learned
## Complaint Management Process Redesign

Retrospective held December 15, 2025 with the sponsor, Compliance, the Complaints Office, frontline leads, IT and Internal Audit.

## What worked

| Lesson | Why it worked |
|---|---|
| Analyze the data before writing requirements | SQL showed every 56 day breach was in escalated cases, so effort went to escalation, not frontline |
| Combine interviews with observation | Job shadowing revealed the personal "about to breach" list and 25 minutes of re keying per case, which interviews alone missed |
| Get the definition of a complaint decided early | The CCO's ruling (RULE01) settled arguments that would have stalled requirements |
| Keep a traceability matrix from day one | Every requirement had a test, and UAT sign off was fast because coverage was provable |
| Share the SQL queries | Benefits were measured with the same queries as the baseline, so nobody questioned the comparison |

## What to do differently

| Lesson | What happened | Next time |
|---|---|---|
| Test date mappings with real examples early | D01: email received date mapped to conversion date | Include real dated examples in story acceptance criteria |
| Plan for joint accounts in matching rules | D03: duplicate check missed joint holders | Ask "who else is on this record?" in refinement |
| Involve the busiest branches in prototype testing | Saturday logging delays in three branches | Test with peak day conditions, not just quiet periods |

## How the BA role added value

* Turned a vague audit finding into 12 measurable business requirements
* Used data to find **where** the problem was, not just **that** there was a problem
* Kept Compliance, operations and IT aligned on one BRD
* Made every requirement testable and traceable, from objective to UAT result
