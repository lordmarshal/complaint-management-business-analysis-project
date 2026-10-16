-- ============================================================
-- Complaint Data Analysis, Maple Prairie Bank (fictional), 2024
-- Author: Blessing Adeniyi
-- Engine: SQLite (also runs in most SQL databases with small
-- changes to the date functions)
-- Table: complaints (loaded from complaints_2024.csv)
-- ============================================================

-- @Q1 Complaint volume by channel
SELECT channel,
       COUNT(*) AS complaints,
       ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM complaints), 1) AS pct_of_total
FROM complaints
GROUP BY channel
ORDER BY complaints DESC;

-- @Q2 Complaint volume by category
SELECT category,
       COUNT(*) AS complaints,
       ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM complaints), 1) AS pct_of_total
FROM complaints
GROUP BY category
ORDER BY complaints DESC;

-- @Q3 Logging delay: days from received to logged, by channel
SELECT channel,
       ROUND(AVG(julianday(logged_date) - julianday(received_date)), 1) AS avg_days_to_log,
       MAX(julianday(logged_date) - julianday(received_date)) AS max_days_to_log,
       ROUND(100.0 * SUM(CASE WHEN julianday(logged_date) - julianday(received_date) > 2 THEN 1 ELSE 0 END) / COUNT(*), 1) AS pct_logged_after_2_days
FROM complaints
GROUP BY channel
ORDER BY avg_days_to_log DESC;

-- @Q4 Acknowledgement within 2 days of receipt, by channel
SELECT channel,
       ROUND(100.0 * SUM(CASE WHEN julianday(acknowledged_date) - julianday(received_date) <= 2 THEN 1 ELSE 0 END) / COUNT(*), 1) AS pct_ack_within_2_days,
       ROUND(AVG(julianday(acknowledged_date) - julianday(received_date)), 1) AS avg_days_to_ack
FROM complaints
GROUP BY channel
ORDER BY pct_ack_within_2_days;

-- @Q5 Resolution time and 56 day breaches by handling level (closed complaints)
SELECT handling_level,
       COUNT(*) AS closed_complaints,
       ROUND(AVG(julianday(resolved_date) - julianday(received_date)), 1) AS avg_days_to_resolve,
       SUM(CASE WHEN julianday(resolved_date) - julianday(received_date) > 56 THEN 1 ELSE 0 END) AS over_56_days,
       ROUND(100.0 * SUM(CASE WHEN julianday(resolved_date) - julianday(received_date) > 56 THEN 1 ELSE 0 END) / COUNT(*), 1) AS pct_over_56_days
FROM complaints
WHERE status = 'Closed'
GROUP BY handling_level
ORDER BY avg_days_to_resolve;

-- @Q6 Overall 56 day compliance (closed complaints)
SELECT COUNT(*) AS closed_complaints,
       SUM(CASE WHEN julianday(resolved_date) - julianday(received_date) > 56 THEN 1 ELSE 0 END) AS over_56_days,
       ROUND(100.0 * SUM(CASE WHEN julianday(resolved_date) - julianday(received_date) <= 56 THEN 1 ELSE 0 END) / COUNT(*), 1) AS pct_within_56_days
FROM complaints
WHERE status = 'Closed';

-- @Q7 56 day breaches by category (closed complaints)
SELECT category,
       COUNT(*) AS closed_complaints,
       SUM(CASE WHEN julianday(resolved_date) - julianday(received_date) > 56 THEN 1 ELSE 0 END) AS over_56_days,
       ROUND(100.0 * SUM(CASE WHEN julianday(resolved_date) - julianday(received_date) > 56 THEN 1 ELSE 0 END) / COUNT(*), 1) AS pct_over_56_days
FROM complaints
WHERE status = 'Closed'
GROUP BY category
ORDER BY pct_over_56_days DESC;

-- @Q8 Open complaints at year end already older than 56 days
SELECT COUNT(*) AS open_complaints,
       SUM(CASE WHEN julianday('2024-12-31') - julianday(received_date) > 56 THEN 1 ELSE 0 END) AS open_over_56_days
FROM complaints
WHERE status = 'Open';

-- @Q9 Escalation rate by category
SELECT category,
       COUNT(*) AS complaints,
       ROUND(100.0 * SUM(CASE WHEN handling_level <> 'Level 1 Frontline' THEN 1 ELSE 0 END) / COUNT(*), 1) AS pct_escalated,
       SUM(CASE WHEN handling_level = 'External (OBSI)' THEN 1 ELSE 0 END) AS to_obsi
FROM complaints
GROUP BY category
ORDER BY pct_escalated DESC;

-- @Q10 Top 10 root causes
SELECT root_cause, category, COUNT(*) AS complaints
FROM complaints
WHERE root_cause <> ''
GROUP BY root_cause, category
ORDER BY complaints DESC
LIMIT 10;

-- @Q11 Data quality: missing fields
SELECT SUM(CASE WHEN root_cause = '' THEN 1 ELSE 0 END) AS missing_root_cause,
       ROUND(100.0 * SUM(CASE WHEN root_cause = '' THEN 1 ELSE 0 END) / COUNT(*), 1) AS pct_missing_root_cause,
       SUM(CASE WHEN region = '' THEN 1 ELSE 0 END) AS missing_region,
       ROUND(100.0 * SUM(CASE WHEN region = '' THEN 1 ELSE 0 END) / COUNT(*), 1) AS pct_missing_region
FROM complaints;

-- @Q12 Possible duplicate complaints (same day, category, root cause and region, different record)
SELECT COUNT(*) AS duplicate_pairs
FROM complaints a
JOIN complaints b
  ON a.received_date = b.received_date
 AND a.category = b.category
 AND a.root_cause = b.root_cause
 AND a.region = b.region
 AND a.complaint_id < b.complaint_id
 AND a.channel <> b.channel
 AND a.handling_level = b.handling_level
 AND a.outcome = b.outcome;

-- @Q13 Monthly complaint trend
SELECT strftime('%Y-%m', received_date) AS month, COUNT(*) AS complaints
FROM complaints
GROUP BY month
ORDER BY month;

-- @Q14 Compensation paid by category (closed complaints)
SELECT category,
       ROUND(SUM(CAST(compensation_cad AS REAL)), 2) AS total_compensation_cad,
       SUM(CASE WHEN CAST(compensation_cad AS REAL) > 0 THEN 1 ELSE 0 END) AS complaints_compensated
FROM complaints
WHERE status = 'Closed'
GROUP BY category
ORDER BY total_compensation_cad DESC;

-- @Q15 Outcome mix (closed complaints)
SELECT outcome, COUNT(*) AS complaints,
       ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM complaints WHERE status = 'Closed'), 1) AS pct
FROM complaints
WHERE status = 'Closed'
GROUP BY outcome
ORDER BY complaints DESC;
