# Data Dictionary
## Complaint Management Process Redesign

Defines every field in the complaint record. Reviewed by the Privacy Office (RULE07: only data needed to handle the complaint is collected). Fields marked **New** do not exist in the 2024 data and were added by this project.

## Complaint record

| Field | Description | Type | Mandatory | Allowed values or format | Source | Status |
|---|---|---|---|---|---|---|
| complaint_id | Unique complaint reference | Text | Yes | C followed by 5 digits, system generated | System | Existing |
| customer_id | Customer's CRM identifier | Text | Yes, if customer identified | CRM customer ID | CRM | Existing |
| received_date | Date the bank first received the complaint | Date | Yes | YYYY-MM-DD; not in the future; not later than logged_date | Employee | Existing in 2024 data, now mandatory |
| logged_date | Date the record was created | Date | Yes | System set | System | Existing |
| acknowledged_date | Date the acknowledgement was sent | Date | Yes | System set when sent | System | Existing |
| due_date | Final response due date | Date | Yes | received_date + 56 days | System | **New** |
| channel | How the complaint arrived | List | Yes | Branch, Phone, Email, Web form, Social media, Letter | Employee or system | Existing |
| category | Type of complaint | List | Yes | Service fees, Customer service, Digital banking, Lending, Fraud and disputes, Account access | Employee | Existing |
| description | Customer's complaint in summary | Text, 2,000 characters | Yes | Free text | Employee | Existing |
| preferred_language | Language for communication | List | Yes | English, French | Customer | **New** |
| preferred_contact | How to contact the customer | List | Yes | Email, Text, Phone, Mail | Customer | **New** |
| region | Region of the branch or customer | List | Yes | Regina, Saskatoon, Moose Jaw, Prince Albert, Swift Current, Yorkton | System from customer profile | Existing, now mandatory |
| handling_level | Who is handling it | List | Yes | Level 1 Frontline, Level 2 Complaints Office, External (OBSI) | System | Existing |
| queue | Work queue | List | Yes | Complaints Office, Fraud and Disputes | System routing rule | **New** |
| owner | Employee responsible | User | Yes | CRM user | System or manager | **New** |
| status | Current state | List | Yes | Open, Waiting on external party, Closed | System | Existing, values extended |
| linked_complaint_id | Duplicate or related complaint | Text | No | Existing complaint_id | Employee | **New** |
| delay_notice_date | Date delay notice sent | Date | Yes, if open past day 56 | System set | System | **New** |
| delay_reason | Reason for delay | Text, 500 characters | Yes, if delay notice sent | Free text | Specialist | **New** |
| resolved_date | Date final response sent | Date | Yes, when closed | System set | System | Existing |
| outcome | Result of the complaint | List | Yes, when closed | Upheld, Partially upheld, Not upheld | Employee | Existing, now mandatory |
| root_cause | Underlying cause | List | Yes, when closed | Controlled list maintained by complaints manager | Employee | Existing, now mandatory and controlled |
| compensation_cad | Goodwill or refund paid | Currency | No | 0.00 or more | Specialist | Existing |

## Linked task

| Field | Description | Type | Mandatory | Allowed values |
|---|---|---|---|---|
| task_id | Unique task reference | Text | Yes | System generated |
| complaint_id | Parent complaint | Text | Yes | Existing complaint_id |
| assigned_team | Team doing the work | List | Yes | Fraud and Disputes, Lending, Digital Banking, Branch, Other |
| task_owner | Person responsible | User | Yes | CRM user |
| task_due_date | When the task must be done | Date | Yes | On or before complaint due_date |
| task_status | Task state | List | Yes | Open, Waiting on external party, Done |
| expected_external_date | When an external reply is expected | Date | Yes, if waiting on external party | Date |

## Data quality rules

| Rule | Check | Fixes 2024 issue |
|---|---|---|
| DQ1 | received_date not later than logged_date | Logging delays hidden |
| DQ2 | root_cause and outcome required to close | 5.8% missing root cause |
| DQ3 | region filled from customer profile | 3.3% missing region |
| DQ4 | Duplicate check on same customer and category within 14 days | 53 possible duplicate pairs |
