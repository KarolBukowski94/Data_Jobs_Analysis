CREATE OR REPLACE VIEW v02_top_paying_jobs_skills AS -- view for Power BI visualizations
WITH top_paying_jobs AS (
    SELECT
        c.name AS company_name,
        jp.job_id,
        jp.job_title,
        jp.salary_year_avg
    FROM job_postings_fact jp
    LEFT JOIN company_dim c
        ON jp.company_id = c.company_id
    WHERE
        jp.job_title_short = 'Data Engineer'
        AND jp.salary_year_avg IS NOT NULL
    ORDER BY
        jp.salary_year_avg DESC
    LIMIT 100
)
SELECT
    tpj.company_name,
    tpj.job_id,
    tpj.job_title,
    tpj.salary_year_avg,
    sd.skill_id,
    sd.skills AS skill
FROM top_paying_jobs tpj
INNER JOIN skills_job_dim sjd
    ON tpj.job_id = sjd.job_id
INNER JOIN skills_dim sd
    ON sjd.skill_id = sd.skill_id
ORDER BY
    tpj.salary_year_avg DESC;