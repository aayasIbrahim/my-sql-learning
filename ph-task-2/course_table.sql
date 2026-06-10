create table courses(
  course_id serial primary key,
  course_title varchar(150) not null,
  category varchar(50) not null,
  price decimal(10,2) not null,
  instructor varchar(100) not null,
  published_year int not null
)
  INSERT INTO courses (course_id, course_title, category, price, instructor, published_year) VALUES
(1, 'Complete SQL Bootcamp', 'Database', 49.99, 'John Carter', 2021),
(2, 'Advanced JavaScript', 'Programming', 59.99, 'Sarah Miller', 2020),
(3, 'Python for Data Science', 'Data Science', 69.99, 'David Kim', 2022),
(4, 'Web Development with React', 'Programming', 54.99, 'Emily Stone', 2021),
(5, 'Machine Learning Basics', 'AI', 79.99, 'Andrew Ng', 2019),
(6, 'Cloud Computing Fundamentals', 'Cloud', 64.99, 'James Allen', 2020),
(7, 'UI/UX Design Essentials', 'Design', 39.99, 'Laura Scott', 2022),
(8, 'DevOps for Beginners', 'DevOps', 74.99, 'Michael Brown', 2023);

--Show all courses ordered by price (highest to lowest) and limit the result to 5 courses.
select course_title,price from courses 
order by price desc limit 5

--Display courses for page 2, assuming 3 courses per page, using LIMIT and OFFSET.  
select * from courses limit 3 offset 3*1

--Update the price of all courses in the Programming category by increasing it 10% or 1.01
update courses set price=price*1.10 where category ='Programming'

--Find the total paid amount per course category using GROUP BY
select category ,sum(price) as "paid_amount" from courses group by category

--Show course categories where the average course price is greater than 60 using HAVING.
select category,avg(price) from courses group by category having avg(price)>60

--Display student full name, course title, and paid amount using an INNER JOIN.  
select concat("first_name",' ',"last_name") as "fullName", course_title,paid_amount from enrollments inner join courses using(course_id) inner join students using(student_id)



--Display all students and their enrolled courses.
--Include students who have not enrolled in any course using a LEFT JOIN.
select CONCAT(first_name, ' ',last_name) AS student_name, course_title from students left join enrollments using(student_id) left join courses using(course_id)

--Display all courses and their enrolled students.
--Include courses that have no enrollments using a RIGHT JOIN.

SELECT *
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
RIGHT JOIN courses c ON e.course_id = c.course_id;