# Business Analysis Approach Plan
## Complaint Management Process Redesign

## 1. Approach

**Hybrid.** Business requirements are agreed and signed off up front in a BRD, because compliance and the sponsor need a fixed baseline. Detailed requirements are then delivered as user stories in two week sprints by the CRM team, with the BA refining stories with the product owner each sprint.

## 2. Elicitation techniques

| Technique | With whom | Why |
|---|---|---|
| Document analysis | Audit report, procedures, FCAC guidance, complaint letters | Understand rules and current written process |
| Interviews | CCO, Complaints Office manager, Fraud and Disputes lead, branch managers | Individual perspectives and pain points |
| Observation (job shadowing) | Complaints specialists, contact centre agents | See what really happens, not what the procedure says |
| Workshops | Complaints Office, frontline leads, IT | Map current and future state together |
| Data analysis (SQL) | 2024 complaint records | Measure delays, breaches and quality |
| Survey | All branch staff | Reach 42 branches quickly |
| Prototyping | Frontline staff | Test the new capture screen early |

## 3. Requirements management

* **Tool:** Jira for stories and defects, Confluence for the BRD and models
* **IDs:** Business requirements BR01 to BR12; functional requirements FR01 onward; user stories CM01 onward
* **Prioritization:** MoSCoW (Must, Should, Could, Won't this time)
* **Traceability:** every functional requirement traces to a business requirement and an objective, and to at least one test case
* **Change control:** changes to signed off business requirements go to the sponsor and CCO

## 4. Schedule

| Phase | Dates | Key output |
|---|---|---|
| Initiation | Jan 6 to Jan 24, 2025 | Brief, stakeholders, this plan |
| Elicitation | Jan 27 to Feb 28 | Current state, data analysis, root causes |
| Analysis | Mar 3 to Mar 28 | Gap analysis, future state, BRD signed off |
| Requirements | Mar 31 to Apr 25 | Functional requirements, stories, data dictionary, RTM |
| Build (CRM team, 6 sprints) | Apr 28 to Jul 18 | BA supports refinement and reviews |
| UAT | Jul 21 to Aug 15 | Test results and sign off |
| Go live | Aug 25, 2025 | |
| Benefits review | Q4 2025 | Benefits report |

## 5. Quality checks for requirements

Each requirement must be: **clear** (one meaning), **testable** (has acceptance criteria), **necessary** (traces to an objective), **feasible** (confirmed by IT) and **owned** (has a business owner).
