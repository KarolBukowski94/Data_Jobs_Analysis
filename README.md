# Data Job Postings Analysis (2023–2025) — Multi-tool Portfolio

A single dataset, four analysis tracks (SQL, Power BI, Python, Excel) focused on understanding the data job market: **demand**, **skills**, and **salary signals**.

## Quick navigation

### [Excel dashboards (Data Analyst focus)](01_excel_data_analyst/README.md)
- Salary dashboard (formulas + data validation): [Excel Dashboard 1](01_excel_data_analyst/01_salary_dashboard/README.md)
- Skill analysis (Power Query + Power Pivot + DAX): [Excel Dashboard 2](01_excel_data_analyst/02_skill_analysis/README.md)

### [Power BI dashboards (Business Analyst focus)](02_power_bi_business_analyst/README.md)
- V1: Multi-page exploration + drill-through: [Power BI Dashboard 1](02_power_bi_business_analyst/data_jobs_v1/README.md)
- V2: Single-page, DAX-driven, parameter-based analysis: [Power BI Dashboard 2](02_power_bi_business_analyst/data_jobs_v2/README.md)

### [SQL + Power BI (Data Engineer focus)](03_sql_data_engineer/README.md)

### [Python notebooks (Data Scientist focus)](04_python_data_scientist/README.md)

---

## Dataset & scope (shared across all modules)

- **Source:** dataset curated for [Luke Barousse](https://github.com/lukebarousse) and [Kelly Adams](https://github.com/kellyjadams) courses (SQL / Python / Excel / Power BI tracks).
- **Time coverage:** 2023–2025
- **Availability:** the full dataset is provided as part of the course materials and is **not included** in this repo.

### Course resources

- **All courses:** [Luke Barousse — Courses](https://www.lukebarousse.com/courses)

- **Full course videos (YouTube):**
  - [Excel](https://www.youtube.com/watch?v=pCJ15nGFgVg)
  - [Power BI](https://www.youtube.com/watch?v=FwjaHCVNBWA)
  - [SQL](https://www.youtube.com/watch?v=7mz73uXD9DA)
  - [Python](https://www.youtube.com/watch?v=wUSDVGivd-8)

### Dataset overview (2023–2025)

Job postings dataset curated as part of the course materials, including:

- **Role & employer:** `job_title_short`, `job_title`, `company_name`
- **Location:** `job_location`, `job_country`, `search_location`
- **Posting metadata:** `job_posted_date`, `job_via`, `job_schedule_type`
- **Opportunity flags:** `job_work_from_home`, `job_no_degree_mention`, `job_health_insurance`
- **Compensation:** `salary_year_avg`, `salary_hour_avg`, `salary_rate`
- **Skills:** `job_skills`

---

## Shared definitions & interpretation rules

- Salary insights are based on postings where salary is present (e.g., `salary_year_avg` available).
- Medians are preferred where possible to reduce the impact of outliers.
- Fields like `job_no_degree_mention`, `job_work_from_home`, `job_health_insurance` reflect **explicit mentions** in postings.
- `False` often means **not stated**, not necessarily “not required / not offered”.
- Counts by platform (`job_via`) reflect dataset coverage/sourcing, not true market share.

---

## What this repo demonstrates

- **Excel:** formulas + data validation (V1) and Power Query/Power Pivot/DAX (V2-style modeling in Excel).
- **Power BI:** interactive reporting (V1 drill-through; V2 focused single-page + DAX + parameters).
- **SQL (PostgreSQL):** joins, CTEs, medians, thresholds, time series, analysis-ready views.
- **Python (Pandas + notebooks):** analysis pipeline + visualization.

---

## Acknowledgements & credits

This repository builds on a curated dataset and project ideas from the Excel / Power BI / SQL / Python learning tracks by [Luke Barousse](https://github.com/lukebarousse) and [Kelly Adams](https://github.com/kellyjadams).

Beyond following the course path, I expanded the work in a portfolio-oriented way:
- consolidated four tool-specific tracks into one coherent repo structure,
- added clearer navigation and documentation across modules,
- extended analyses and interpretations to make outputs more “report-ready”,
- focused on reproducibility (notebooks/SQL scripts) and presentation (dashboard screenshots).

These courses were a major part of my upskilling journey and helped me build a complete end-to-end analytics workflow:
**raw data → cleaning & standardization → data modeling → analysis → insights → communication & documentation → reproducible deliverables**.