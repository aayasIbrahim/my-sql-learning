-- =======================================================
-- Project: Student Database Practice & Query Filtering
-- Description: Creating table, altering, inserting data, 
--              and performing various SQL selections.
-- =======================================================

-- 1. Create Student Table
CREATE TABLE student(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  age INT,
  grade CHAR(20),
  course VARCHAR(50),
  email VARCHAR(50) UNIQUE,
  dob DATE,
  blood_group VARCHAR(5),
  country VARCHAR(50)
);

-- 2. Rename Table Name
ALTER TABLE student RENAME TO students;
  
-- 3. Modify Column Type (Increasing size of blood_group)
ALTER TABLE students ALTER COLUMN blood_group TYPE VARCHAR(50);
  
-- 4. Constraint Practice (Set and Drop NOT NULL)
ALTER TABLE students ALTER COLUMN age SET NOT NULL;
ALTER TABLE students ALTER COLUMN age DROP NOT NULL;
  
-- 5. Insert 30 Dummy Records
INSERT INTO students(first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
('Aarif', 'Anam', 20, 'A', 'Computer Science', 'aarif.anam@email.com', '2006-05-12', 'O+', 'Bangladesh'),
('Anika', 'Tabassum', 21, 'A+', 'Electrical Engineering', 'anika.t@email.com', '2005-09-23', 'A+', 'Bangladesh'),
('Sajid', 'Hasan', 19, 'B', 'Physics', 'sajid.hasan@email.com', '2007-01-15', 'B+', 'Bangladesh'),
('Mariam', 'Khatun', 22, 'A', 'Mathematics', 'mariam.k@email.com', '2004-11-02', 'AB+', 'Bangladesh'),
('Tanvir', 'Ahmed', 20, 'A-', 'Chemistry', 'tanvir.a@email.com', '2006-03-30', 'O-', 'Bangladesh'),
('Fariha', 'Zaman', 21, 'B+', 'BBA', 'fariha.zaman@email.com', '2005-07-19', 'A-', 'Bangladesh'),
('Asif', 'Iqbal', 23, 'A+', 'Computer Science', 'asif.iqbal@email.com', '2003-08-25', 'B-', 'Bangladesh'),
('Nusrat', 'Jahan', 20, 'A', 'Economics', 'nusrat.jahan@email.com', '2006-12-05', 'O+', 'Bangladesh'),
('Arif', 'Rahman', 22, 'B', 'English', 'arif.rahman@email.com', '2004-04-14', 'AB-', 'Bangladesh'),
('Tasnim', 'Sultana', 19, 'A+', 'Computer Science', 'tasnim.s@email.com', '2007-06-22', 'O+', 'Bangladesh'),
('John', 'Doe', 21, 'B-', 'Data Science', 'john.doe@email.com', '2005-02-28', 'A+', 'USA'),
('Jane', 'Smith', 20, 'A', 'Microbiology', 'jane.smith@email.com', '2006-10-10', 'O+', 'UK'),
('Rahul', 'Sharma', 22, 'B+', 'Mechanical Engineering', 'rahul.s@email.com', '2004-05-17', 'B+', 'India'),
('Priya', 'Patel', 20, 'A+', 'Biochemistry', 'priya.patel@email.com', '2006-01-29', 'A-', 'India'),
('Yuki', 'Tanaka', 21, 'A', 'Robotics', 'yuki.t@email.com', '2005-11-12', 'O+', 'Japan'),
('Ali', 'Khan', 23, 'B', 'Civil Engineering', 'ali.khan@email.com', '2003-03-08', 'AB+', 'Pakistan'),
('Fatima', 'Al-Sayed', 20, 'A-', 'Architecture', 'fatima.as@email.com', '2006-07-04', 'O-', 'UAE'),
('Michael', 'Brown', 22, 'B+', 'History', 'michael.b@email.com', '2004-09-14', 'A+', 'Canada'),
('Emma', 'Wilson', 19, 'A', 'Psychology', 'emma.wilson@email.com', '2007-04-18', 'O+', 'Australia'),
('David', 'Lee', 21, 'A+', 'Software Engineering', 'david.lee@email.com', '2005-08-30', 'B+', 'South Korea'),
('Suresh', 'Kumar', 22, 'B', 'Computer Science', 'suresh.k@email.com', '2004-12-12', 'O+', 'India'),
('Mehedi', 'Hasan', 20, 'A', 'Finance', 'mehedi.h@email.com', '2006-02-20', 'A+', 'Bangladesh'),
('Sadia', 'Afrin', 21, 'B+', 'Pharmacy', 'sadia.afrin@email.com', '2005-06-15', 'O+', 'Bangladesh'),
('Imran', 'Hossain', 23, 'A-', 'Political Science', 'imran.h@email.com', '2003-10-05', 'B+', 'Bangladesh'),
('Laila', 'Islam', 19, 'A+', 'Computer Science', 'laila.islam@email.com', '2007-08-11', 'AB+', 'Bangladesh'),
('Rifat', 'Chowdhury', 22, 'B-', 'Accounting', 'rifat.c@email.com', '2004-07-26', 'O-', 'Bangladesh'),
('Nabila', 'Rahman', 20, 'A', 'Botany', 'nabila.r@email.com', '2006-04-09', 'A-', 'Bangladesh'),
('Zayan', 'Ahmed', 21, 'B+', 'Marketing', 'zayan.ahmed@email.com', '2005-01-14', 'B+', 'Bangladesh'),
('Ishrat', 'Jahan', 22, 'A+', 'Law', 'ishrat.j@email.com', '2004-11-20', 'O+', 'Bangladesh'),
('Mustafa', 'Kamal', 20, 'B', 'Statistics', 'mustafa.k@email.com', '2006-09-03', 'AB-', 'Bangladesh');

-- =======================================================
-- 6. Data Selection & Queries
-- =======================================================

-- Simple Select
SELECT first_name, last_name, grade, course FROM students;

-- Column Alias
SELECT first_name AS "First Name", age AS user_age FROM students;

-- Sorting (ORDER BY)
SELECT first_name, last_name, grade, age FROM students ORDER BY age DESC;
SELECT first_name, last_name, grade, age FROM students ORDER BY age ASC;

-- Distinct (Unique Values)
SELECT DISTINCT age FROM students;
SELECT DISTINCT course FROM students;
SELECT DISTINCT country FROM students;

-- =======================================================
-- 7. Filtering (WHERE clause)
-- =======================================================

-- Select students from India
SELECT first_name, country FROM students WHERE country = 'India';

-- Select students with 'A' grade  
SELECT first_name, grade, course, blood_group FROM students WHERE grade = 'A'; 

-- Select students with blood group 'A+'
SELECT * FROM students WHERE blood_group = 'A+';

-- OR Operator (India or Canada)
SELECT first_name, country FROM students WHERE country = 'India' OR country = 'Canada';

-- Complex OR & AND Combo (Grade A/B in Physics/Math)
SELECT first_name, course, grade FROM students 
WHERE (grade = 'A' OR grade = 'B') AND (course = 'Physics' OR course = 'Mathematics');

-- AND Operator (From India and age is 22)
SELECT first_name, country, age FROM students WHERE country = 'India' AND age = 22;

-- Mixed Conditions (Age 22 and from BD or India)
SELECT * FROM students WHERE age = 22 AND (country = 'Bangladesh' OR country = 'India');