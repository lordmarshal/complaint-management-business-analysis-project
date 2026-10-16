# User Stories
## Complaint Management Process Redesign

Format: **As a [role], I want [goal], so that [benefit].** Each story traces to one functional requirement. A Jira ready version is in [jira_backlog_import.csv](jira_backlog_import.csv).

| Sprint | Dates | Stories | Points |
|---|---|---|---|
| 1 | Apr 28 to May 9 | 6 | 19 |
| 2 | May 12 to May 23 | 5 | 21 |
| 3 | May 26 to Jun 6 | 4 | 20 |
| 4 | Jun 9 to Jun 20 | 4 | 17 |
| 5 | Jun 23 to Jul 4 | 3 | 15 |
| 6 | Jul 7 to Jul 18 | 2 | 8 |
| **Total** | | **24** | **100** |

## Stories

| ID | User story | Acceptance criteria | FR | Points | Sprint |
|---|---|---|---|---|---|
| CM01 | As a branch employee, I want to log a complaint from my teller workstation, so that I stop using paper forms. | Screen opens from customer profile in under 3 seconds; customer and channel pre filled; save creates complaint ID. | FR01 | 5 | 1 |
| CM02 | As a complaints specialist, I want to turn a complaint email into a CRM record in one click, so that I stop re keying emails. | Original email attached; sender matched to customer where possible; received date set to email date. | FR02 | 8 | 2 |
| CM03 | As a digital team member, I want to create a complaint from a social media message, so that it enters the same process as every other complaint. | Post link and screenshot stored; received date set to first seen date. | FR03 | 5 | 3 |
| CM04 | As a complaints specialist, I want to attach a scanned letter when logging it, so that the original is kept with the record. | PDF or image up to 20 MB attached; received date set to date stamped on arrival. | FR04 | 3 | 2 |
| CM05 | As a compliance officer, I want the received date recorded separately from the logged date, so that the 56 day clock is measured correctly. | Field mandatory; future dates blocked; received date later than logged date blocked with message. | FR05 | 3 | 1 |
| CM06 | As a customer, I want to be told quickly that my complaint was received, so that I know I have been heard. | Sent within 1 business day of logging; includes complaint ID and next steps; logged on the record. | FR06 | 5 | 1 |
| CM07 | As a customer, I want updates when my complaint moves forward, so that I do not have to chase anyone. | Update sent on escalation and on final response; logged on the record. | FR07 | 3 | 4 |
| CM08 | As a complaints specialist, I want the due date calculated for me, so that I never miscount the deadline. | Due date equals received date plus 56 days; recalculated if received date is corrected, with audit entry. | FR08 | 2 | 1 |
| CM09 | As a complaints specialist, I want warnings before a complaint reaches day 56, so that I can act in time. | Alerts generated on the correct days for open complaints only; shown in CRM and by email. | FR09 | 5 | 3 |
| CM10 | As a complaints manager, I want a dashboard of open complaints by age, so that I can rebalance work before deadlines are missed. | Age bands 0 to 29, 30 to 44, 45 to 49, 50 to 56, over 56; filters by owner and category; refreshed hourly. | FR10 | 8 | 4 |
| CM11 | As a complaints specialist, I want a delay notice template with OBSI information, so that customers get the information they are entitled to. | Template in English and French; reason field mandatory; date sent logged. | FR11 | 3 | 4 |
| CM12 | As a complaints manager, I want to be told if a complaint is about to breach with no notice sent, so that nothing slips through. | Escalation at day 55 only when both are missing; manager notified in CRM and by email. | FR12 | 3 | 4 |
| CM13 | As a complaints specialist, I want to assign tasks to other teams inside the CRM, so that hand offs are tracked, not lost in email. | Task has owner, due date and status; owner notified; overdue tasks highlighted. | FR13 | 8 | 3 |
| CM14 | As a fraud and disputes specialist, I want to mark that I am waiting on a card network, so that everyone sees why the case is paused. | Status available; expected date mandatory; visible on dashboard. | FR14 | 2 | 3 |
| CM15 | As a fraud and disputes specialist, I want fraud complaints routed straight to my queue, so that they are handled by the right people quickly. | Routing by category; priority set to High; other categories go to Complaints Office queue. | FR15 | 3 | 2 |
| CM16 | As a frontline employee, I want to see if this complaint is already logged, so that we do not investigate the same issue twice. | Matches shown before save; employee can link or confirm new; decision logged. | FR16 | 5 | 5 |
| CM17 | As a compliance officer, I want every closed complaint to have an outcome and root cause, so that trend data is complete. | Close button disabled until both selected; free text not accepted as root cause. | FR17 | 2 | 2 |
| CM18 | As a complaints manager, I want to control the root cause list, so that categories stay consistent. | Only manager role can add, edit or retire values; changes logged. | FR18 | 2 | 5 |
| CM19 | As a product owner, I want a monthly view of complaint root causes, so that I can fix problems at the source. | Dashboard by month; drill down; Excel export; available to product owner role. | FR19 | 8 | 5 |
| CM20 | As a branch employee, I want the complaint definition on screen when I log, so that I know when a concern must be recorded. | Definition shown; help link to procedure; in English and French. | FR20 | 1 | 1 |
| CM21 | As a internal auditor, I want a full, unalterable history of each complaint, so that I can verify how it was handled. | Every create, edit, status change and communication logged with user and time; no user can edit or delete entries. | FR21 | 5 | 2 |
| CM22 | As a compliance officer, I want a complaint report for any period, so that regulatory and board reporting is accurate and fast. | Report by date range; matches underlying records; export to Excel. | FR22 | 5 | 6 |
| CM23 | As a customer, I want communications in my official language, so that I fully understand them. | Every template available in both languages; language follows customer preference. | FR23 | 3 | 1 |
| CM24 | As a branch employee, I want to record and close a complaint I resolved on the spot, so that resolved complaints are still on record. | Resolved at first contact option; outcome and root cause required; closes immediately. | FR24 | 3 | 6 |

## Example in Gherkin: CM05 Received date

```gherkin
Scenario: Received date earlier than logged date
  Given a letter complaint stamped as received on March 3
  When a specialist logs it on March 7 and enters a received date of March 3
  Then the complaint is saved
  And the due date is set to April 28

Scenario: Received date in the future
  Given a specialist is logging a complaint today
  When they enter a received date of tomorrow
  Then the system blocks the save
  And shows "Received date cannot be in the future"
```
