 -- Q1. Which subjects have the highest certification rate?
 SELECT
    course_subject,
    ROUND(AVG(pct_certified),2) AS avg_certification
FROM courses
GROUP BY course_subject
ORDER BY avg_certification DESC;

-- Q2. Which subjects generate the highest learner participation?
SELECT
    course_subject,
    ROUND(AVG(participants_content_accessed)) AS avg_participants
FROM courses
GROUP BY course_subject
ORDER BY avg_participants DESC;

--  Q3. Does forum activity relate to certification?
SELECT
    course_subject,
    ROUND(AVG(pct_posted_in_forum),2) AS avg_forum,
    ROUND(AVG(pct_certified),2) AS avg_certified
FROM courses
GROUP BY course_subject
ORDER BY avg_forum DESC;

-- Q4. Which courses struggle (high users but low certification)? 
 SELECT
    course_title,
    participants_content_accessed,
    pct_certified
FROM courses
WHERE participants_content_accessed > 50000
  AND pct_certified < 5
ORDER BY participants_content_accessed DESC;

-- Q5. Does course duration affect certification?
SELECT
    CASE
        WHEN total_course_hours_thousands < 5 THEN 'Short'
        WHEN total_course_hours_thousands BETWEEN 5 AND 10 THEN 'Medium'
        ELSE 'Long'
    END AS course_length_group,
    ROUND(AVG(pct_certified),2) AS avg_certified
FROM courses
GROUP BY course_length_group;

-- q.6 Does watching videos increase certification? 
SELECT
    CASE
        WHEN pct_played_video >= 80 THEN 'High video engagement'
        WHEN pct_played_video >= 50 THEN 'Medium video engagement'
        ELSE 'Low video engagement'
    END AS video_group,
    ROUND(AVG(pct_certified),2) AS avg_certified
FROM courses
GROUP BY video_group;

-- Creating recomendation chart for thsi  datasets 
SELECT
    course_number,
    course_title,

    CASE
        WHEN pct_played_video > 80 AND pct_certified < 5
            THEN 'Improve assessment / grading strategy'

        WHEN pct_posted_in_forum < 3 AND pct_certified < 5
            THEN 'Introduce discussion based activities'

        WHEN median_hours_for_certification > 80 AND pct_certified < 5
            THEN 'Split course into smaller modules'

        WHEN pct_played_video < 40
            THEN 'Improve video quality and delivery'

        ELSE 'No major action required'
    END AS recommendation
FROM courses;
