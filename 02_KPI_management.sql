--  1. Average certification rate
SELECT
    ROUND(AVG(pct_certified),2) AS avg_certification_rate
FROM courses;

-- 2. Average forum activity
SELECT round(AVG(pct_posted_in_forum),2) AS avg_forum_activity
FROM courses;

-- 3. Average video usage
SELECT
    ROUND(AVG(pct_played_video),2) AS avg_video_usage
FROM courses;
