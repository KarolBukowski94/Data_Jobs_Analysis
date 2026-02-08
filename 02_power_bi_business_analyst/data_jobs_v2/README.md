# Data Jobs Dashboard 2.0 (V2) — Power BI

Version 2.0 refines the original **multi-page dashboard** into a **single, focused analytical view**. Instead of broad exploration, this iteration prioritizes **efficiency** by consolidating the most relevant job market metrics into one page.

The dashboard presents key indicators such as **Job Count**, **Median Yearly Salary**, **Median Hourly Salary**, and **Skills per Job** within a single analytical view. Users can compare salary levels across job titles and explore skill popularity metrics using dynamic filters and parameter-driven visuals, including switching between absolute job counts and percentage-based skill popularity.

Note: With the larger dataset used in V2, the **Skill Percent** DAX can exceed Power BI resource limits in some visuals when multiple years are included. For this reason, the report **requires** filtering by a single year via a **Year slicer** (from `job_posted_date`) — select **2023**, **2024**, or **2025**.

For dataset scope, shared definitions, and course resources, see the [main README](../../README.md).

<img src="../images/project_v2_dashboard_overview.png" width="800" alt="Data Jobs Dashboard 2.0">

[**Interactive report (Power BI Service)**](https://app.powerbi.com/view?r=eyJrIjoiMDlhZGM4YzEtZjM0Yi00YjYzLWE5YjYtZjMwNDMxODBmYmE3IiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9)

---

## Tools & skills demonstrated

This project builds on V1 and emphasizes more advanced Power BI concepts and deliberate design decisions:

- **Single-page dashboard design:** Consolidating all key metrics into one focused analytical view to support fast insight generation.
- **Data transformation with Power Query (ETL):** Cleaning and preparing raw job posting data for analytical use.
- **Explicit DAX measures:** Creating calculated metrics to support KPIs, comparisons, and parameter-driven visuals.
- **Analytical data modeling:** Defining table relationships and a simplified analytical model to support scalable analysis.
- **KPI cards and summary metrics:** Displaying headline indicators such as job count, median salaries, and skills per job.
- **Skill popularity analysis:** Using parameter switching to toggle between job count and job percentage views.
- **Salary comparison across roles:** Enabling metric toggles between median yearly and median hourly salary.
- **Interactive filtering:** Slicers for job title and country, including a reset option to clear all selections.

## What this version deliberately omits

- No drill-through pages
- No geographic visualizations
- No multi-page navigation

These choices were intentional to reduce complexity and keep the analysis focused on the most actionable metrics.

---

## Example filters: Business Analyst (year-by-year snapshot)

This is a short example of what the V2 dashboard enables when filtering by **Year** + **Job Title** (here: *Business Analyst*).

- **Posting volume (within this dataset):** **49K (2023)** → **29K (2024)** → **35K (2025)**  
  → a visible dip in 2024 followed by a partial rebound in 2025. Because V2 is built on a large, multi-year dataset, year-to-year shifts can reflect both real market changes and changes in posting mix/coverage.

- **Median yearly pay trends upward, but remains lower than many technical data roles:** **$85K (2023)** → **$90K (2024)** → **$105K (2025)**  
  → the pay signal strengthens over time for this slice, but Business Analyst compensation typically sits below roles like Data Engineer / Data Scientist in most markets. This fits the broader pattern that BA work is more decision-support/reporting-oriented, while more technical roles often capture a higher “engineering/ML premium.”

- **Skills per job drops in 2025:** **2.7 (2023)** → **2.9 (2024)** → **2.1 (2025)**  
  → suggests 2025 postings in this slice list fewer skills (or skills are captured less consistently). That means skill percentages/rankings in 2025 may be more sensitive to missingness than in 2023–2024.

- **Skill stack is stable and strongly “BI/reporting”:**  
  - **SQL** and **Excel** lead every year → consistent with Business Analyst roles being stakeholder-facing, where querying and spreadsheet fluency remain core expectations.  
  - **Tableau / Power BI** stay consistently present → visualization is a standard BA requirement, not a niche add-on.  
  - **Python** appears as mid-tier → often requested as a “nice-to-have” for automation/analysis, but not as dominant as in more technical roles.

- **Context vs the broader data-job market:**  
  - Compared with more technical roles (e.g., Data Engineer / Data Scientist), the BA slice shows a clearer concentration around **productivity + BI tooling** rather than cloud/ML infrastructure skills.  
  - The persistence of **Excel + BI tools** as top skills matches a role profile that prioritizes business reporting and analysis over platform building.

- **Notable 2025 shift:** **Power BI** ranks ahead of **Tableau** in this slice  
  → a potential signal that Power BI demand is strengthening relative to Tableau for BA roles (in this dataset), possibly reflecting enterprise stack standardization (Microsoft ecosystem) or regional/platform mix in 2025.

- **How to interpret this slice safely:**  
  → salary trends are generally more robust than skill-density changes; when “skills per job” drops sharply (as in 2025), skill likelihood/percent rankings can shift partly due to how postings list/capture skills, not only true demand shifts.

---

## Conclusion

This second iteration demonstrates a shift from broad exploration toward focused analytical design. By combining a streamlined single-page layout with explicit DAX measures and parameter-driven visuals, the dashboard enables faster, more deliberate analysis of the data job market.