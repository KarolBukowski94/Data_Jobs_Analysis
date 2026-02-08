COPY company_dim
FROM 'E:\Projects\Data_Jobs_Analysis\03_sql_data_engineer\data\company_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_dim
FROM 'E:\Projects\Data_Jobs_Analysis\03_sql_data_engineer\data\skills_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY job_postings_fact
FROM 'E:\Projects\Data_Jobs_Analysis\03_sql_data_engineer\data\job_postings_fact.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_job_dim
FROM 'E:\Projects\Data_Jobs_Analysis\03_sql_data_engineer\data\skills_job_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');