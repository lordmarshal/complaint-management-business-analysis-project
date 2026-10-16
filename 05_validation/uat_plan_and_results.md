# User Acceptance Testing (UAT) Plan and Results
## Complaint Management Process Redesign

| Item | Detail |
|---|---|
| UAT window | July 21 to August 15, 2025 |
| UAT lead | Blessing Adeniyi, Business Analyst |
| Testers | 3 complaints specialists, 2 fraud and disputes specialists, 4 branch staff, 2 contact centre agents, 1 digital team member, complaints manager |
| Observer | Internal Audit |
| Sign off | Rachel Dubois (Sponsor), Marie Tremblay (CCO) |

## 1. Objective

Confirm the complaints module meets every functional requirement and supports the real work of frontline staff and specialists, using realistic test complaints across all six channels.

## 2. Entry criteria

* All 24 user stories accepted by the product owner
* System testing complete with no open critical defects
* Test environment loaded with masked customer data and 60 scripted test complaints
* Testers trained; test scripts approved

## 3. Exit criteria

* 100% of test cases executed and passed
* No open critical or high defects
* Internal Audit confirms the audit trail and reports
* Sign off by Sponsor and CCO

## 4. Test cases

Each test case traces to one functional requirement. See the [traceability matrix](../04_requirements/requirements_traceability_matrix.md).

| Test case | Requirement | What is tested | Result |
|---|---|---|---|
| TC01 | FR01 | Screen opens from customer profile in under 3 seconds; customer and channel pre filled; save creates complaint ID. | Pass |
| TC02 | FR02 | Original email attached; sender matched to customer where possible; received date set to email date. | Pass after fix (D01) |
| TC03 | FR03 | Post link and screenshot stored; received date set to first seen date. | Pass |
| TC04 | FR04 | PDF or image up to 20 MB attached; received date set to date stamped on arrival. | Pass |
| TC05 | FR05 | Field mandatory; future dates blocked; received date later than logged date blocked with message. | Pass |
| TC06 | FR06 | Sent within 1 business day of logging; includes complaint ID and next steps; logged on the record. | Pass |
| TC07 | FR07 | Update sent on escalation and on final response; logged on the record. | Pass |
| TC08 | FR08 | Due date equals received date plus 56 days; recalculated if received date is corrected, with audit entry. | Pass |
| TC09 | FR09 | Alerts generated on the correct days for open complaints only; shown in CRM and by email. | Pass after fix (D02) |
| TC10 | FR10 | Age bands 0 to 29, 30 to 44, 45 to 49, 50 to 56, over 56; filters by owner and category; refreshed hourly. | Pass |
| TC11 | FR11 | Template in English and French; reason field mandatory; date sent logged. | Pass |
| TC12 | FR12 | Escalation at day 55 only when both are missing; manager notified in CRM and by email. | Pass |
| TC13 | FR13 | Task has owner, due date and status; owner notified; overdue tasks highlighted. | Pass |
| TC14 | FR14 | Status available; expected date mandatory; visible on dashboard. | Pass |
| TC15 | FR15 | Routing by category; priority set to High; other categories go to Complaints Office queue. | Pass |
| TC16 | FR16 | Matches shown before save; employee can link or confirm new; decision logged. | Pass after fix (D03) |
| TC17 | FR17 | Close button disabled until both selected; free text not accepted as root cause. | Pass |
| TC18 | FR18 | Only manager role can add, edit or retire values; changes logged. | Pass |
| TC19 | FR19 | Dashboard by month; drill down; Excel export; available to product owner role. | Pass |
| TC20 | FR20 | Definition shown; help link to procedure; in English and French. | Pass |
| TC21 | FR21 | Every create, edit, status change and communication logged with user and time; no user can edit or delete entries. | Pass |
| TC22 | FR22 | Report by date range; matches underlying records; export to Excel. | Pass |
| TC23 | FR23 | Every template available in both languages; language follows customer preference. | Pass |
| TC24 | FR24 | Resolved at first contact option; outcome and root cause required; closes immediately. | Pass |

## 5. Defects

| ID | Test | Severity | Description | Fix | Status |
|---|---|---|---|---|---|
| D01 | TC02 | High | Received date set to the date the email was converted, not the date it arrived in the mailbox | Mapping changed to email received timestamp | Closed |
| D02 | TC09 | High | Day 30 alert also fired on closed complaints | Alert rule limited to open status | Closed |
| D03 | TC16 | Medium | Duplicate check missed complaints logged under a joint account holder | Match extended to all holders on the account | Closed |
| D04 | TC10 | Low | Dashboard label read "Over 56" without "days" (cosmetic; test still passed) | Label corrected | Closed |

## 6. Results summary

| Measure | Result |
|---|---|
| Test cases executed | 24 of 24 |
| Passed first time | 21 |
| Passed after fix | 3 |
| Defects raised | 4 (0 critical, 2 high, 1 medium, 1 low) |
| Open defects at sign off | 0 |
| Internal Audit review | Satisfactory |

## 7. Sign off

| Name | Role | Decision | Date |
|---|---|---|---|
| Rachel Dubois | VP Customer Experience, Sponsor | Accepted | Aug 15, 2025 |
| Marie Tremblay | Chief Compliance Officer | Accepted | Aug 15, 2025 |
| Complaints Office Manager | Business owner | Accepted | Aug 15, 2025 |
