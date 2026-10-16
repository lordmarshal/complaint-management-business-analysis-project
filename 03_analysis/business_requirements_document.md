# Business Requirements Document (BRD)
## Complaint Management Process Redesign

| Item | Detail |
|---|---|
| Version | 1.0, signed off March 28, 2025 |
| Author | Blessing Adeniyi, Business Analyst |
| Sponsor | Rachel Dubois, VP Customer Experience |
| Approvers | Marie Tremblay (CCO), Complaints Office Manager, Head of CRM Platform |

## 1. Purpose

This document sets out **what** the business needs from the redesigned complaint process and CRM complaints module. It does not describe **how** the system will be built; that is in the [functional requirements](../04_requirements/functional_requirements.md) and [user stories](../04_requirements/user_stories.md).

## 2. Background and problem

See the [project brief](../01_initiation/project_brief.md). In 2024, 8.0% of closed complaints missed the 56 day final response deadline, 37.2% were not acknowledged within 2 days, and manual channels were logged an average of 3.3 to 6.4 days late. Root causes are in the [root cause analysis](../02_elicitation/root_cause_analysis.md).

## 3. Business objectives

| ID | Objective | Target |
|---|---|---|
| BO1 | Final response within 56 days for every complaint | 100% |
| BO2 | Acknowledgement within 2 days | 98% |
| BO3 | Logged within 1 day of receipt | 98% |
| BO4 | Every closed record has a root cause | 100% |
| BO5 | Fewer complaints from the top 3 fee root causes | 30% reduction |

## 4. Scope

In scope and out of scope are as defined in the [project brief](../01_initiation/project_brief.md), section 4.

## 5. Business requirements

Priority uses MoSCoW: **M** Must, **S** Should, **C** Could.

| ID | Business requirement | Objective | Priority | Source | Owner |
|---|---|---|---|---|---|
| BR01 | The bank must be able to record a complaint at the point of contact in every channel: branch, phone, email, web form, social media and letter. | BO3 | M | E02, E06, E07 | Complaints Office Manager |
| BR02 | Each complaint must record the date the bank received it, separately from the date it was logged. | BO1, BO3 | M | E02, 5 Whys | CCO |
| BR03 | Every complaint must receive an acknowledgement within 1 business day, and customers must be updated at key stages, in their preferred official language. | BO2 | M | E13 | VP Customer Experience |
| BR04 | The system must calculate the 56 day final response date from the received date and warn the case owner and their manager before it is reached. | BO1 | M | E03, E04 | CCO |
| BR05 | If a complaint cannot be resolved within 56 days, the customer must receive a delay notice explaining why and giving OBSI contact information, before day 56. | BO1 | M | Regulatory | CCO |
| BR06 | Work handed to other teams must be tracked with an owner, due date and status, including when waiting on an external party. | BO1 | M | E03, E08 | Complaints Office Manager |
| BR07 | Fraud and dispute complaints must be routed to specialist handlers with higher priority. | BO1 | S | Data Q7, Q9 | Fraud and Disputes Lead |
| BR08 | Possible duplicate complaints must be identified at capture so they can be linked. | BO4 | S | Data Q12 | Complaints Office Manager |
| BR09 | A complaint cannot be closed without an outcome and a root cause from a controlled list. | BO4, BO5 | M | Data Q11 | CCO |
| BR10 | Product owners must receive monthly root cause reporting so they can fix problems at the source. | BO5 | S | Root cause analysis | VP Customer Experience |
| BR11 | All frontline staff must apply one clear definition of a complaint and a simple procedure. | BO3 | M | E05, E07 | CCO |
| BR12 | The bank must keep a complete, unalterable history of every complaint and produce regulatory and management reports from it. | BO1 to BO4 | M | E02, Internal Audit | CCO |

## 6. Business rules

| ID | Rule |
|---|---|
| RULE01 | A complaint is any expression of dissatisfaction, oral or written, about a product, service or the bank's conduct, whether or not it is resolved immediately. |
| RULE02 | The 56 day clock starts on the received date, including complaints first made on social media. |
| RULE03 | The received date cannot be later than the logged date. |
| RULE04 | Warnings are sent at day 30 and day 45 to the case owner, and at day 50 to the case owner and their manager. |
| RULE05 | Delay notices must be sent no later than day 56 if the complaint is still open. |
| RULE06 | Customer facing communication is available in English and French. |
| RULE07 | Only information needed to handle the complaint is collected (Privacy Office review). |

## 7. Stakeholders

See [stakeholder analysis](../01_initiation/stakeholder_analysis.md).

## 8. Assumptions, constraints and dependencies

| Type | Item |
|---|---|
| Assumption | CRM complaints module can be configured without custom code |
| Assumption | Teller workstations can access the CRM complaint screen |
| Constraint | Go live before the next FCAC reporting cycle |
| Dependency | Email and social media integration with the CRM (IT) |
| Dependency | Fraud and Disputes team agrees target timelines for linked tasks |

## 9. Success measures

The business objectives in section 3, measured in Q4 2025 against the 2024 baseline. See [benefits tracking](../05_validation/benefits_tracking.md).

## 10. Sign off

| Name | Role | Decision | Date |
|---|---|---|---|
| Rachel Dubois | VP Customer Experience, Sponsor | Approved | Mar 28, 2025 |
| Marie Tremblay | Chief Compliance Officer | Approved | Mar 28, 2025 |
| Complaints Office Manager | Business owner | Approved | Mar 28, 2025 |
| Head of CRM Platform | IT owner | Approved (feasible) | Mar 28, 2025 |
