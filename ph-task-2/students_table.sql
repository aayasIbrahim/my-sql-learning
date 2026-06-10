create table students(
  student_id serial primary key,
  first_name varchar(50) not null, 
  last_name varchar(50) not null,
  email varchar(100) not null unique,
  phone varchar(100) null,
  country varchar(50) not null,
  enrollment_date date not null
)
 INSERT INTO students (student_id, first_name, last_name, email, phone, country, enrollment_date) VALUES
(1, 'Rahim', 'Uddin', 'rahim@email.com', '01711111111', 'Bangladesh', '2023-01-10'),
(2, 'Karim', 'Ahmed', 'karim@email.com', NULL, 'Bangladesh', '2023-01-15'),
(3, 'Sara', 'Khan', 'sara@email.com', '01822222222', 'Pakistan', '2023-02-01'),
(4, 'John', 'Smith', 'john@email.com', NULL, 'USA', '2023-02-10'),
(5, 'Emma', 'Brown', 'emma@email.com', '01933333333', 'UK', '2023-02-20'),
(6, 'Ayaan', 'Ali', 'ayaan@email.com', NULL, 'India', '2023-03-05'),
(7, 'Lina', 'Rahman', 'lina@email.com', '01644444444', 'Bangladesh', '2023-03-12'),
(8, 'Mark', 'Taylor', 'mark@email.com', NULL, 'Australia', '2023-03-25'),
(9, 'Sophia', 'Lee', 'sophia@email.com', '01555555555', 'USA', '2023-04-01'),
(10, 'Daniel', 'Martinez', 'daniel@email.com', NULL, 'Spain', '2023-04-10');

--Display all students and their phone numbers.
--If the phone number is NULL, show 'Not Provided' using COALESCE.
select first_name,last_name,coalesce(phone,'Not Providen') as "phone_number" from students

Q9: Foreign Key Violation Explanation
Explanation: > If you try to insert an enrollment record with a non-existent student_id, the database engine will block the query and throw a Foreign Key Constraint Violation Error. This happens because the student_id in the enrollments table acts as a pointer to the students table, and SQL enforces referential integrity to prevent orphaned or invalid records.

--Find the average progress percentage per course, ignoring NULL values.
SELECT c.course_title, AVG(e.progress_percentage) AS average_progress
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
GROUP BY c.course_id, c.course_title;