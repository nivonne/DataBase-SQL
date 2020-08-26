USE database_university;

//The average grade that is given by each professor
SELECT 
p.professors_name AS 'Professors',
AVG (grades_grades) AS 'Average'
FROM professors p
JOIN grades g
ON p.professors_courses_id = g.grades_courses_id
GROUP BY p.professors_name; 



//The top grades for each student
SELECT  
s.students_name AS 'Students Name',
MAX(grades_grades) AS 'Best grades'
FROM grades g
JOIN students s
ON s.students_id = g.grades_students_id
GROUP BY  g.grades_students_id; 



//Group students by the courses that they are enrolled in
SELECT COUNT(grades_courses_id) as 'Enrolled',
c.courses_name as 'Grades'
FROM grades g
JOIN courses c
ON g.grades_courses_id = c.courses_id
GROUP BY  c.courses_id;  



//Create a summary report of courses and their average grades, 
sorted by the most challenging course (course with the lowest average grade) to the easiest course
SELECT
courses_name AS 'Courses',
AVG (grades_grades) AS 'Grades Average'
FROM courses c
JOIN grades g
ON c.courses_id = g.grades_courses_id
GROUP BY courses_name 
ORDER BY AVG (grades_grades) ASC;



//Finding which student and professor have the most courses in common
SELECT professors_name AS 'Professors', COUNT(professors_name) AS 'Common courses',
grades_students_id AS 'ID Students'
FROM professors p
JOIN grades g
ON p.professors_courses_id = g.grades_courses_id
WHERE professors_name= 'Alicia'                                          
GROUP BY grades_students_id
ORDER BY COUNT(professors_name) DESC;


SELECT professors_name AS 'Professors', COUNT(professors_name) AS 'Common courses',
grades_students_id AS 'ID Students'
FROM professors p
JOIN grades g
ON p.professors_courses_id = g.grades_courses_id
WHERE professors_name= 'Armando'                                          
GROUP BY grades_students_id
ORDER BY COUNT(professors_name) DESC;


SELECT professors_name AS 'Professors', COUNT(professors_name) AS 'Common courses',
grades_students_id AS 'ID Students'
FROM professors p
JOIN grades g
ON p.professors_courses_id = g.grades_courses_id
WHERE professors_name= 'Miguel Ángel'                                          
GROUP BY grades_students_id
ORDER BY COUNT(professors_name) DESC;


SELECT professors_name AS 'Professors', COUNT(professors_name) AS 'Common courses',
grades_students_id AS 'ID Students'
FROM professors p
JOIN grades g
ON p.professors_courses_id = g.grades_courses_id
WHERE professors_name= 'Miriam'                                          
GROUP BY grades_students_id
ORDER BY COUNT(professors_name) DESC;


SELECT professors_name AS 'Professors', COUNT(professors_name) AS 'Common courses',
grades_students_id AS 'ID Students'
FROM professors p
JOIN grades g
ON p.professors_courses_id = g.grades_courses_id
WHERE professors_name= 'Javier'                                          
GROUP BY grades_students_id
ORDER BY COUNT(professors_name) DESC;


SELECT professors_name AS 'Professors', COUNT(professors_name) AS 'Common courses',
grades_students_id AS 'ID Students'
FROM professors p
JOIN grades g
ON p.professors_courses_id = g.grades_courses_id
WHERE professors_name= 'Roberto'                                          
GROUP BY grades_students_id
ORDER BY COUNT(professors_name) DESC;