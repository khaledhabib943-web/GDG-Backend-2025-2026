-- ── Q1. Student ID, Student Name, City ───────────────────────
SELECT
    s.student_id,
    CONCAT(s.first_name, ' ', s.last_name)  AS student_name,
    s.city
FROM Student s
ORDER BY s.student_id;


-- ── Q2. Instructor Name, Department Name, Salary ─────────────
SELECT
    CONCAT(i.first_name, ' ', i.last_name)  AS instructor_name,
    d.dept_name,
    i.salary
FROM Instructor i
JOIN Department d ON i.dept_id = d.dept_id
ORDER BY d.dept_name, i.last_name;


-- ── Q3. Department Name, Course Code, Course Title ───────────
SELECT
    d.dept_name,
    c.course_code,
    c.title  AS course_title
FROM Course c
JOIN Department d ON c.dept_id = d.dept_id
ORDER BY d.dept_name, c.course_code;


-- ── Q4. Students enrolled in 'CS101' ─────────────────────────
SELECT
    CONCAT(s.first_name, ' ', s.last_name)  AS student_name,
    e.enroll_date,
    e.grade                                  AS final_grade
FROM Enrollment e
JOIN Student s ON e.student_id = s.student_id
JOIN Course  c ON e.course_id  = c.course_id
WHERE c.course_code = 'CS101'
ORDER BY e.enroll_date;


-- ── Q5. Course Code, Course Title, Total Students Enrolled ───
SELECT
    c.course_code,
    c.title                  AS course_title,
    COUNT(e.student_id)      AS total_enrolled
FROM Course c
LEFT JOIN Enrollment e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_code, c.title
ORDER BY total_enrolled DESC;


-- ── Q6. Instructor with the Highest Salary ───────────────────
SELECT
    CONCAT(i.first_name, ' ', i.last_name)  AS instructor_name,
    i.salary,
    d.dept_name
FROM Instructor i
JOIN Department d ON i.dept_id = d.dept_id
ORDER BY i.salary DESC
LIMIT 1;


-- ── Q7. Course Title & Its Prerequisite Course Title ─────────
SELECT
    c.title  AS course_title,
    p.title  AS prerequisite_title
FROM CoursePrerequisite cp
JOIN Course c ON cp.course_id = c.course_id   -- the main course
JOIN Course p ON cp.prereq_id = p.course_id   -- the prerequisite
ORDER BY c.title;


-- ── Q8. Students who have at least one Dependent ─────────────
SELECT
    CONCAT(s.first_name, ' ', s.last_name)  AS student_name,
    d.dep_name                               AS dependent_name,
    d.relationship
FROM Dependent d
JOIN Student s ON d.student_id = s.student_id
ORDER BY student_name, d.dep_name;


-- ── Q9. Department Name, Number of Instructors ───────────────
SELECT
    d.dept_name,
    COUNT(i.instructor_id)  AS instructor_count
FROM Department d
JOIN Instructor i ON d.dept_id = i.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING COUNT(i.instructor_id) > 5
ORDER BY instructor_count DESC;


-- ── Q10. Students enrolled in MORE than 3 courses ────────────
SELECT
    CONCAT(s.first_name, ' ', s.last_name)  AS student_name,
    COUNT(e.course_id)                       AS number_of_courses
FROM Enrollment e
JOIN Student s ON e.student_id = s.student_id
GROUP BY s.student_id, s.first_name, s.last_name
HAVING COUNT(e.course_id) > 3
ORDER BY number_of_courses DESC;


-- ── Q11. Courses with NO Students Enrolled ───────────────────
SELECT
    c.course_code,
    c.title  AS course_title
FROM Course c
LEFT JOIN Enrollment e ON c.course_id = e.course_id
WHERE e.enrollment_id IS NULL
ORDER BY c.course_code;
