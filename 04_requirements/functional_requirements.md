# Functional Requirements
## Complaint Management Process Redesign

Each functional requirement describes **what the system shall do**. All trace to a business requirement in the [BRD](../03_analysis/business_requirements_document.md). Priority: **M** Must, **S** Should.

| ID | Functional requirement | BR | Use case | Priority |
|---|---|---|---|---|
| FR01 | The system shall provide a New complaint screen, opened from the customer profile on teller and contact centre workstations. | BR01 | UC1 | M |
| FR02 | The system shall create a complaint record from an email in the complaints mailbox, attaching the original email. | BR01 | UC1 | M |
| FR03 | The system shall let the digital team create a complaint record from a social media message, storing the post link. | BR01 | UC1 | M |
| FR04 | The system shall let staff create a complaint record from a scanned letter, attaching the scan. | BR01 | UC1 | M |
| FR05 | The system shall capture a mandatory received date, defaulting to today, that cannot be in the future or later than the logged date. | BR02 | UC1 | M |
| FR06 | The system shall send an automatic acknowledgement within 1 business day by email or text, in the customer's preferred official language. | BR03 | UC1 | M |
| FR07 | The system shall send the customer an update when the complaint is escalated and when the final response is sent. | BR03 | UC4 | S |
| FR08 | The system shall calculate the final response due date as the received date plus 56 calendar days. | BR04 | UC1 | M |
| FR09 | The system shall alert the case owner at day 30 and day 45, and the case owner and their manager at day 50, for open complaints. | BR04 | UC6 | M |
| FR10 | The system shall provide a deadline dashboard showing open complaints by age band, owner and category. | BR04 | UC6 | M |
| FR11 | The system shall generate a delay notice with the reason for delay and OBSI contact information, and log the date sent. | BR05 | UC5 | M |
| FR12 | The system shall escalate to the complaints manager at day 55 if neither a final response nor a delay notice has been sent. | BR05 | UC5 | M |
| FR13 | The system shall allow linked tasks to be assigned to other teams with an owner, due date and status. | BR06 | UC4 | M |
| FR14 | The system shall provide a Waiting on external party task status with an expected response date. | BR06 | UC4 | S |
| FR15 | The system shall route escalated fraud and dispute complaints to the Fraud and Disputes queue with high priority. | BR07 | UC3 | S |
| FR16 | The system shall flag possible duplicates (same customer and category within 14 days) at capture and allow linking. | BR08 | UC1 | S |
| FR17 | The system shall block closure unless an outcome and a root cause from the controlled list are recorded. | BR09 | UC4 | M |
| FR18 | The system shall restrict maintenance of the root cause list to the complaints manager role. | BR09 | UC4 | S |
| FR19 | The system shall provide a monthly root cause dashboard by category, root cause, product and region, exportable to Excel. | BR10 | UC7 | S |
| FR20 | The system shall display the bank's complaint definition and help text on the capture screen. | BR11 | UC2 | M |
| FR21 | The system shall keep a read only audit trail of every change to a complaint, retained under the bank's records retention policy. | BR12 | UC4 | M |
| FR22 | The system shall produce a regulatory complaint report of volumes, categories, timelines and outcomes for any date range. | BR12 | UC6 | M |
| FR23 | The system shall hold all customer communication templates in English and French. | BR03 | UC1 | M |
| FR24 | The system shall let frontline employees record a complaint as resolved at first contact and close it with outcome and root cause. | BR01 | UC2 | M |

## Non functional requirements

| ID | Requirement |
|---|---|
| NFR01 | Capture screen opens in under 3 seconds at 95% of branch workstations |
| NFR02 | Available 7:00 a.m. to 10:00 p.m. local time, 99.5% of the time |
| NFR03 | All screens and templates meet WCAG 2.1 AA |
| NFR04 | Role based access: frontline, specialist, manager, product owner (read only dashboards), auditor (read only) |
| NFR05 | Customer data stored in Canada and encrypted at rest and in transit |
| NFR06 | Complaint records retained under the bank's records retention policy |
