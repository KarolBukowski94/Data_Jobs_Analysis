CREATE OR REPLACE VIEW v04_top_paying_skills AS  -- view for Power BI visualizations
WITH skill_salary AS (
    SELECT
        sd.skill_id,
        sd.skills,
        COUNT(*) AS posting_count,
        percentile_cont(0.5) WITHIN GROUP (ORDER BY jp.salary_year_avg) AS median_salary_year
    FROM job_postings_fact jp
    INNER JOIN skills_job_dim sjd
        ON jp.job_id = sjd.job_id
    INNER JOIN skills_dim sd
        ON sjd.skill_id = sd.skill_id
    WHERE
        jp.job_title_short = 'Data Engineer'
        AND jp.salary_year_avg IS NOT NULL
    GROUP BY
        sd.skill_id,
        sd.skills
)
SELECT
    skill_id,
    skills,
    posting_count,
    median_salary_year
FROM skill_salary
WHERE
    posting_count >= 100
ORDER BY
    median_salary_year DESC,
    posting_count DESC,
    skill_id ASC
LIMIT 10;