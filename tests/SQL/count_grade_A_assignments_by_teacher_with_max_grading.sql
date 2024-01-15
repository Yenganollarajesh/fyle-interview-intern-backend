-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
WITH GradeCount AS (
    SELECT
        teacher_id,
        COUNT(*) AS grade_A_count
    FROM assignments
    WHERE grade = 'A'
    GROUP BY teacher_id
)
SELECT
    teacher_id,
    grade_A_count
FROM GradeCount
ORDER BY grade_A_count DESC
LIMIT 1;
