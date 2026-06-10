create table enrollments (
  enrollment_id serial primary key,
  student_id int references students(student_id),
  course_id int references courses(course_id),
  enrollment_date date not null,
  progress_percentage int null,
  paid_amount decimal(10,2) not null
)



INSERT INTO enrollments (enrollment_id, student_id, course_id, enrollment_date, progress_percentage, paid_amount) VALUES
(1, 1, 1, '2023-05-01', 80, 49.99),
(2, 2, 2, '2023-05-03', NULL, 59.99),
(3, 3, 3, '2023-05-05', 60, 69.99),
(4, 4, 1, '2023-05-07', 100, 49.99),
(5, 5, 4, '2023-05-10', 40, 54.99),
(6, 6, 5, '2023-05-12', NULL, 79.99),
(7, 7, 2, '2023-06-01', 90, 59.99),
(8, 8, 6, '2023-06-02', 30, 64.99),
(9, 9, 3, '2023-06-03', 70, 69.99),
(10, 10, 7, '2023-06-04', NULL, 39.99),

(11, 1, 8, '2023-06-05', 20, 74.99),
(12, 2, 1, '2023-06-06', 50, 49.99),
(13, 3, 6, '2023-06-07', NULL, 64.99),
(14, 4, 4, '2023-06-08', 85, 54.99),
(15, 5, 5, '2023-06-09', 60, 79.99);


--Delete all enrollment records where progress_percentage is NULL.
delete from enrollments where progress_percentage is null


--Count how many students are enrolled in each course.
select course_title, COUNT(student_id) AS student_count from enrollments inner join courses using(course_id) group by course_title