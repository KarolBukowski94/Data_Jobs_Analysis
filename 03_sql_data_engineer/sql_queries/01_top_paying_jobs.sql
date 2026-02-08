CREATE OR REPLACE VIEW v01_top_paying_jobs AS -- view for Power BI visualizations
SELECT
    c.name AS company_name,
    jp.job_id,
    jp.job_title,
    jp.salary_year_avg,
    jp.job_schedule_type,
    jp.job_posted_date::date AS job_posted_date
FROM job_postings_fact jp
LEFT JOIN company_dim c
    ON jp.company_id = c.company_id
WHERE
    jp.job_title_short = 'Data Engineer'
    AND jp.salary_year_avg IS NOT NULL
ORDER BY
    jp.salary_year_avg DESC
LIMIT 6;