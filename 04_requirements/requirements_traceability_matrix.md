# Requirements Traceability Matrix (RTM)
## Complaint Management Process Redesign

Traces every requirement from business objective to test result. A requirement with no test, or a test with no requirement, is a gap.

| Objective | Business req | Functional req | User story | Use case | Test case | UAT result |
|---|---|---|---|---|---|---|
| BO3 | BR01 | FR01 | CM01 | UC1 | TC01 | Pass |
| BO3 | BR01 | FR02 | CM02 | UC1 | TC02 | Pass after fix (D01) |
| BO3 | BR01 | FR03 | CM03 | UC1 | TC03 | Pass |
| BO3 | BR01 | FR04 | CM04 | UC1 | TC04 | Pass |
| BO3 | BR01 | FR24 | CM24 | UC2 | TC24 | Pass |
| BO1, BO3 | BR02 | FR05 | CM05 | UC1 | TC05 | Pass |
| BO2 | BR03 | FR06 | CM06 | UC1 | TC06 | Pass |
| BO2 | BR03 | FR07 | CM07 | UC4 | TC07 | Pass |
| BO2 | BR03 | FR23 | CM23 | UC1 | TC23 | Pass |
| BO1 | BR04 | FR08 | CM08 | UC1 | TC08 | Pass |
| BO1 | BR04 | FR09 | CM09 | UC6 | TC09 | Pass after fix (D02) |
| BO1 | BR04 | FR10 | CM10 | UC6 | TC10 | Pass |
| BO1 | BR05 | FR11 | CM11 | UC5 | TC11 | Pass |
| BO1 | BR05 | FR12 | CM12 | UC5 | TC12 | Pass |
| BO1 | BR06 | FR13 | CM13 | UC4 | TC13 | Pass |
| BO1 | BR06 | FR14 | CM14 | UC4 | TC14 | Pass |
| BO1 | BR07 | FR15 | CM15 | UC3 | TC15 | Pass |
| BO4 | BR08 | FR16 | CM16 | UC1 | TC16 | Pass after fix (D03) |
| BO4, BO5 | BR09 | FR17 | CM17 | UC4 | TC17 | Pass |
| BO4, BO5 | BR09 | FR18 | CM18 | UC4 | TC18 | Pass |
| BO5 | BR10 | FR19 | CM19 | UC7 | TC19 | Pass |
| BO3 | BR11 | FR20 | CM20 | UC2 | TC20 | Pass |
| BO1 to BO4 | BR12 | FR21 | CM21 | UC4 | TC21 | Pass |
| BO1 to BO4 | BR12 | FR22 | CM22 | UC6 | TC22 | Pass |

## Coverage check

| Check | Result |
|---|---|
| Business requirements with at least one functional requirement | 12 of 12 |
| Functional requirements with a user story | 24 of 24 |
| Functional requirements with a test case | 24 of 24 |
| Test cases passed at UAT sign off | 24 of 24 |
