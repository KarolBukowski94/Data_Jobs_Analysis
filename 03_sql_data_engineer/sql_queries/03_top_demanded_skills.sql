CREATE OR REPLACE VIEW v03_top_demanded_skills AS -- view for Power BI visualizations
SELECT
    sd.skills,
    COUNT(sjd.job_id) AS demand_count
FROM job_postings_fact jp
INNER JOIN skills_job_dim sjd
    ON jp.job_id = sjd.job_id
INNER JOIN skills_dim sd
    ON sjd.skill_id = sd.skill_id
WHERE
    jp.job_title_short = 'Data Engineer'
GROUP BY
    sd.skills
ORDER BY
    demand_count DESC
LIMIT 5;