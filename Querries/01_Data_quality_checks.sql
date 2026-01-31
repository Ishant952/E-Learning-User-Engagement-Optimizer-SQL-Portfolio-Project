-- 1 Nulls
 SELECT
    SUM(launch_date IS NULL) AS null_launch_date,
    SUM(pct_certified IS NULL) AS null_pct_certified,
    SUM(participants_content_accessed IS NULL) AS null_participants
    
FROM courses;
 
-- 2 Check strange percentages
SELECT
  MIN(pct_certified) AS min_cert,
  MAX(pct_certified) AS max_cert
FROM courses;

-- 3. Year sanity check 
SELECT MIN(year) as min_year,
 MAX(year) as max_year
FROM courses;
