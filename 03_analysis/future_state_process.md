# Future State Process (To Be)
## Complaint Management Process Redesign

Agreed with the Complaints Office, frontline leads, Compliance and IT, March 2025. Editable version: [diagrams/future_state_complaints.drawio](diagrams/future_state_complaints.drawio) (open at app.diagrams.net).

```mermaid
flowchart TD
    A([Customer complains in any channel]) --> B[Complaint record created in CRM at point of contact<br/>received date captured]
    B --> C{Possible duplicate?}
    C -- Yes --> C1[Link to existing complaint] --> D
    C -- No --> D[Automatic acknowledgement in English or French]
    D --> E[Day 56 due date calculated from received date]
    E --> F{Resolved at Level 1?}
    F -- Yes --> G[Record outcome and root cause, mandatory]
    G --> Z([Closed, full audit trail])
    F -- No --> H{Fraud or dispute?}
    H -- Yes --> I[Routed to Fraud and Disputes specialist queue]
    H -- No --> J[Routed to Complaints Office queue]
    I --> K[Investigation with linked tasks and owners]
    J --> K
    K --> L{Alert at day 30, 45, 50}
    L --> M{Resolved before day 56?}
    M -- Yes --> N[Final response sent] --> G
    M -- No --> O[Delay notice with reasons and OBSI information sent] --> K
    G --> R[(Root cause dashboard for product owners)]
```

## What changed and why

| Step | Change | Pain point solved |
|---|---|---|
| Capture | Every channel creates a CRM record at the point of contact | PP1, PP2 |
| Received date | Separate from logged date; drives the clock | PP1 |
| Duplicate check | Flags likely duplicates | PP7 |
| Acknowledgement | Automatic in all channels | PP3, PP8 |
| Due date and alerts | System calculated, with warnings | PP4 |
| Routing | Fraud and disputes to a specialist queue | PP5 |
| Linked tasks | Hand offs tracked with owners | PP5 |
| Delay notice | Generated before day 56 | PP4 |
| Closure | Root cause mandatory | PP6 |
| Dashboard | Insight to product owners | Problem 2 root cause |

## Controls in the new process

| Control | Type | Prevents |
|---|---|---|
| Received date mandatory and cannot be later than logged date | Preventive | Clock manipulation or errors |
| Automatic acknowledgement | Preventive | Customers left without contact |
| Day 30, 45, 50 alerts | Detective | Missed deadlines |
| Root cause mandatory on closure | Preventive | Gaps in trend data |
| Every status change logged | Detective | Undocumented decisions |
