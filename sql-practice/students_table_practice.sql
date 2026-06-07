-- ====================================================================
-- Project    : Student Database Management System (Practice Script)
-- Description: Table creation, modifications, data insertion, 
--              and advanced query filtering using various operators.
-- ====================================================================

-- ====================================================================
-- 1. DATABASE SCHEMA CREATION & MODIFICATIONS
-- ====================================================================

-- Create the initial student table
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

-- Rename table to plural form for standard convention
ALTER TABLE student RENAME TO students;
  
-- Modify blood_group column type to support longer character strings
ALTER TABLE students ALTER COLUMN blood_group TYPE VARCHAR(50);
  
-- Practice setting and dropping constraints (NOT NULL)
ALTER TABLE students ALTER COLUMN age SET NOT NULL;
ALTER TABLE students ALTER COLUMN age DROP NOT NULL;


-- ====================================================================
-- 2. DATA INSERTION (30 Dummy Records)
-- ====================================================================

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


-- ====================================================================
-- 3. BASIC SELECTION & ALIASING
-- ====================================================================

-- Fetch specific columns for all students
SELECT first_name, last_name, grade, course FROM students;

-- Retrieve records using column aliases for readable output
SELECT first_name AS "First Name", age AS user_age FROM students;


-- ====================================================================
-- 4. SORTING & DISTINCT VALUES
-- ====================================================================

-- Sort students by age in descending order (oldest first)
SELECT first_name, last_name, grade, age FROM students ORDER BY age DESC;

-- Sort students by age in ascending order (youngest first)
SELECT first_name, last_name, grade, age FROM students ORDER BY age ASC;

-- Get all unique age groups present in the table
SELECT DISTINCT age FROM students;

-- Get a list of all unique courses offered
SELECT DISTINCT course FROM students;

-- Get a list of all unique countries represented by students
SELECT DISTINCT country FROM students;


-- ====================================================================
-- 5. FILTERING DATA WITH COMPARISON & LOGICAL OPERATORS
-- ====================================================================

-- Select students who are older than 20
SELECT * FROM students WHERE age > 20;

-- Select all student records
SELECT * FROM students;

-- Retrieve all students excluding those from Bangladesh
SELECT * FROM students WHERE country != 'Bangladesh';

-- Select students whose age is NOT between 20 and 22
SELECT country, age FROM students WHERE age NOT BETWEEN 20 AND 22;

-- Select students from India
SELECT first_name, country FROM students WHERE country = 'India';

-- Select students who achieved an 'A' grade  
SELECT first_name, grade, course, blood_group FROM students WHERE grade = 'A'; 

-- Select students with a specific blood group ('A+')
SELECT * FROM students WHERE blood_group = 'A+';


-- ====================================================================
-- 6. MULTI-CONDITION FILTERING (AND / OR / IN OPERATORS)
-- ====================================================================

-- Select students from India or Canada using the OR operator
SELECT first_name, country FROM students WHERE country = 'India' OR country = 'Canada';

-- Select students with grade 'A' or 'B' who are enrolled in Physics or Mathematics
SELECT first_name, course, grade FROM students 
WHERE (grade = 'A' OR grade = 'B') AND (course = 'Physics' OR course = 'Mathematics');

-- Select students from India who are exactly 22 years old
SELECT first_name, country, age FROM students WHERE country = 'India' AND age = 22;

-- Select 22-year-old students who are either from Bangladesh or India
SELECT * FROM students WHERE age = 22 AND (country = 'Bangladesh' OR country = 'India');

-- Select students from Bangladesh, India, or Japan using the IN operator
SELECT * FROM students WHERE country IN ('Bangladesh', 'India', 'Japan');

-- Select students enrolled in specific target courses
SELECT * FROM students WHERE course IN ('Computer Science', 'Physics', 'BBA');