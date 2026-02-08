CREATE OR REPLACE VIEW v05_optimal_skills AS  -- view for Power BI visualizations
WITH skill_metrics AS (
    SELECT
        sd.skill_id,
        sd.skills,
        COUNT(*) AS demand_count,
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
    demand_count,
    median_salary_year
FROM skill_metrics
WHERE
    demand_count > 1000
ORDER BY
    median_salary_year DESC,
    demand_count DESC,
    skill_id ASC
LIMIT 25;