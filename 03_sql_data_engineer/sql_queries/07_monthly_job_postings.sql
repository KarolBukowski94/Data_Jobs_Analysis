CREATE OR REPLACE VIEW v07_monthly_job_postings AS
SELECT
    EXTRACT(YEAR  FROM jp.job_posted_date)::int  AS year,
    EXTRACT(MONTH FROM jp.job_posted_date)::int  AS month,
    TO_CHAR(DATE_TRUNC('month', jp.job_posted_date), 'Mon') AS month_label,
    COUNT(jp.job_id) AS number_of_postings
FROM job_postings_fact jp
WHERE
    jp.job_title_short = 'Data Engineer'
GROUP BY
    EXTRACT(YEAR  FROM jp.job_posted_date),
    EXTRACT(MONTH FROM jp.job_posted_date),
    DATE_TRUNC('month', jp.job_posted_date)
ORDER BY
    year,
    month;