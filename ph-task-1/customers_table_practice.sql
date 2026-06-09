CREATE TABLE customers(
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100) UNIQUE,
  city VARCHAR(50),          
  country VARCHAR(50),       
  registration_date DATE
)

INSERT INTO customers (customer_id, first_name, last_name, email, city, country, registration_date)
VALUES
(1, 'John', 'Smith', 'john.smith@email.com', 'New York', 'USA', '2023-01-15'),
(2, 'Emma', 'Johnson', 'emma.j@email.com', 'London', 'UK', '2023-02-20'),
(3, 'Michael', 'Brown', 'mbrown@email.com', 'Toronto', 'Canada', '2023-01-10'),
(4, 'Sophia', 'Davis', 'sophia.d@email.com', 'Sydney', 'Australia', '2023-03-05'),
(5, 'James', 'Wilson', 'jwilson@email.com', 'New York', 'USA', '2023-02-28'),
(6, 'Oliver', 'Taylor', 'oliver.t@email.com', 'London', 'UK', '2023-04-12'),
(7, 'Ava', 'Anderson', 'ava.anderson@email.com', 'Los Angeles', 'USA', '2023-03-18'),
(8, 'William', 'Martinez', 'w.martinez@email.com', 'Madrid', 'Spain', '2023-01-25'),
(9, 'Isabella', 'Garcia', 'isabella.g@email.com', 'Mexico City', 'Mexico', '2023-02-14'),
(10, 'Lucas', 'Rodriguez', 'lucas.r@email.com', 'Buenos Aires', 'Argentina', '2023-03-30');

--Find all distinct countries where customers are from
SELECT DISTINCT country FROM customers;

--Change the column name first_name to customer_first_name in the customers table
alter table customers 
rename column first_name to "customer_first_name"

--Find all customers whose email addresses end with .com and are from either USA or UK
select * from customers where country IN ('USA','UK') AND email like  '%.com' 

--Display all customers with their full name in uppercase (concatenated first and last name),
--original email, and city in lowercase.
--Only show customers from USA or UK.
SELECT 
    UPPER(CONCAT(customer_first_name, ' ', last_name)) AS full_name,
    email, 
    LOWER(city) AS city_lower_case 
FROM customers 
WHERE  country IN ('USA', 'UK');