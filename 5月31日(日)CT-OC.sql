CREATE TABLE OpenCourses (
    open_month INT,
    course_id  INT,
    PRIMARY KEY (open_month, course_id),
    FOREIGN KEY (course_id)
        REFERENCES CourseMaster(course_id)
);

INSERT INTO OpenCourses (open_month, course_id) VALUES
(1, 1),
(1, 3),

(2, 2),
(2, 5),

(3, 1),
(3, 4),

(4, 6),

(5, 2),
(5, 3),

(6, 1),
(6, 5),

(7, 4),

(8, 2),
(8, 6),

(9, 3),

(10, 1),
(10, 5),

(11, 2),
(11, 4),

(12, 3),
(12, 6);