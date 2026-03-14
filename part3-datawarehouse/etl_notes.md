## ETL Decisions

### Decision 1 — Standardizing Date Format
Problem: The raw dataset contained inconsistent date formats.
Resolution: All dates were converted into YYYY-MM-DD format to maintain consistency.

### Decision 2 — Handling Missing Values
Problem: Some records had missing category or product information.
Resolution: Missing values were replaced with 'Unknown' to maintain data completeness.

### Decision 3 — Cleaning Category Names
Problem: Category names had inconsistent casing such as Electronics, electronics, ELECTRONICS.
Resolution: All category names were converted to lowercase to maintain consistency.
