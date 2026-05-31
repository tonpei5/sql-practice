CREATE TABLE CourseMaster (
    course_id   INT PRIMARY KEY,
    course_name VARCHAR(50)
);
INSERT INTO CourseMaster (course_id, course_name) VALUES
(1, 'SQL基礎'),
(2, 'SQL応用'),
(3, 'Python入門'),
(4, 'Python実践'),
(5, 'Django開発'),
(6, 'データ分析');