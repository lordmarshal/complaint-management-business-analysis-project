# Elicitation Log
## Complaint Management Process Redesign

Elicitation ran from January 27 to February 28, 2025. Each session was written up and confirmed with participants within two business days.

## Sessions

| ID | Date | Technique | Participants | Key findings |
|---|---|---|---|---|
| E01 | Jan 28 | Document analysis | BA | Written procedure lists 4 channels; bank actually receives complaints through 6. Social media and letters have no documented steps. |
| E02 | Jan 29 | Interview | Marie Tremblay, CCO | Clock starts at receipt. Main fear is complaints "resolved" at the branch but never recorded, which leaves no evidence for FCAC. |
| E03 | Jan 31 | Interview | Complaints Office Manager | Specialists track deadlines in a shared spreadsheet. No warning before day 56. Fraud cases wait on the Fraud team with no visibility. |
| E04 | Feb 3 to 5 | Observation | 3 complaints specialists | Average 25 minutes per case spent re keying details from emails and branch forms. One specialist kept a personal list of "cases about to breach." |
| E05 | Feb 6 | Observation | 6 contact centre agents | Phone complaints logged during the call; works well. Agents unsure when a "concern" becomes a complaint, so some are not logged. |
| E06 | Feb 10 to 13 | Interviews | 4 branch managers (Regina, Saskatoon, Moose Jaw, Yorkton) | Branches use a paper form, then someone types it in "when it is quiet." Busy branches batch them weekly. |
| E07 | Feb 14 | Survey | 312 branch staff (61% response) | 58% said logging takes too long; 44% were unsure what counts as a complaint; 71% wanted to log from the teller workstation. |
| E08 | Feb 18 | Interview | Fraud and Disputes lead | Investigations depend on card network timelines; no way to flag that a complaint is waiting on an external party. |
| E09 | Feb 19 | Interview | Digital and social media team | Social complaints are answered publicly, then emailed to Complaints. No link back to the customer's record. |
| E10 | Feb 20 | Data analysis (SQL) | BA | See [data analysis findings](data_analysis/data_analysis_findings.md). |
| E11 | Feb 24 | Current state workshop | Complaints Office, 2 branch managers, contact centre lead, IT | Mapped the [current state process](current_state_process.md) and agreed pain points. |
| E12 | Feb 26 | Root cause workshop | Same as E11 plus product owner for fees | Built the [root cause analysis](root_cause_analysis.md). |
| E13 | Feb 27 | Customer review | 40 complaint letters, 10 customer call backs | Customers' main frustration: "Nobody told me what was happening." Several had to repeat their story to three people. |

## Themes

| Theme | Sources | Data evidence |
|---|---|---|
| T1 Complaints captured late or not at all | E02, E05, E06, E07 | Manual channels logged 3.3 to 6.4 days late on average |
| T2 No deadline control in escalation | E03, E04, E08 | 29.7% of Level 2 complaints over 56 days |
| T3 Unclear definition of a complaint | E05, E07 | 44% of branch staff unsure |
| T4 Re keying and disconnected channels | E04, E09 | 53 possible duplicate pairs; 25 minutes per case re keying |
| T5 Customers left without updates | E13 | 37.2% not acknowledged within 2 days |
| T6 Root causes not used to prevent repeats | E12 | 20.5% of complaints from 3 fee issues; 5.8% with no root cause |

## Open questions resolved

| Question | Answer | Who decided | Date |
|---|---|---|---|
| Does a concern resolved on the spot count as a complaint? | Yes. Any expression of dissatisfaction about a product or service is recorded, even if resolved immediately. | CCO | Feb 21 |
| Should social media complaints get the same 56 day clock? | Yes, from the time the bank first sees the post or message. | CCO | Feb 21 |
| Can the CRM send automatic acknowledgements by email and text? | Yes, with templates in English and French. | IT | Feb 24 |
