CREATE OR REPLACE VIEW v06_degree_requirements AS -- view for Power BI visualizations
SELECT
    ROUND(
        COUNT(CASE WHEN jp.job_no_degree_mention = FALSE THEN 1 END) * 100.0 / COUNT(*),
        0
    ) AS degree_possibly_required,
    ROUND(
        COUNT(CASE WHEN jp.job_no_degree_mention = TRUE THEN 1 END) * 100.0 / COUNT(*),
        0
    ) AS no_degree_required
FROM job_postings_fact jp
WHERE jp.job_title_short = 'Data Engineer';