# Current State Process (As Is)
## Complaint Management Process Redesign

Agreed at the current state workshop (E11), February 24, 2025.

```mermaid
flowchart TD
    A([Customer complains]) --> B{Channel}
    B -- Phone --> C[Agent logs in CRM during call]
    B -- Web form --> D[Logged automatically]
    B -- Branch --> E[Paper form filled in]
    E --> E1[Typed into CRM later, often batched weekly]
    B -- Email or letter --> F[Sits in shared inbox or mail tray]
    F --> F1[Specialist re keys into CRM]
    B -- Social media --> G[Digital team replies publicly]
    G --> G1[Forwarded by email to Complaints]
    G1 --> F1
    C --> H{Resolved at Level 1?}
    D --> H
    E1 --> H
    F1 --> H
    H -- Yes --> I[Close in CRM, root cause optional]
    H -- No --> J[Escalate to Complaints Office]
    J --> K[Deadline added to shared spreadsheet]
    K --> L{Needs Fraud or another team?}
    L -- Yes --> M[Emailed to other team, no tracking]
    M --> N[Specialist chases by email]
    N --> O
    L -- No --> O[Specialist investigates]
    O --> P[Final response letter]
    P --> Q{Customer satisfied?}
    Q -- Yes --> R([Closed])
    Q -- No --> S([Customer referred to OBSI])
```

## Pain points

| # | Pain point | Step | Evidence |
|---|---|---|---|
| PP1 | Branch, email and letter complaints logged days late | E1, F1 | Q3: 3.3 to 6.4 days average |
| PP2 | Some branch complaints resolved on the spot are never logged | E | E02, E06 interviews |
| PP3 | Acknowledgement depends on manual effort | All manual channels | Q4: letters 0%, email 11.6% within 2 days |
| PP4 | Deadlines tracked in a spreadsheet with no warnings | K | E03, E04 |
| PP5 | Hand offs to Fraud and other teams have no tracking | M, N | Fraud: 18.8% over 56 days |
| PP6 | Root cause optional on closure | I | Q11: 5.8% missing |
| PP7 | Social media and email complaints duplicated | G1, F1 | Q12: 53 possible pairs |
| PP8 | Customer not updated during investigation | O | E13 customer review |

## Measures at baseline (2024)

| Measure | Value |
|---|---|
| Logged within 1 day | 63.5% |
| Acknowledged within 2 days | 62.8% |
| Closed within 56 days | 92.0% |
| Records with root cause | 94.2% |
| Specialist time re keying per case | about 25 minutes |
