create table orders(
  order_id serial primary key,
  customer_id int references customers(customer_id),
  book_id int references books(book_id),
  order_date date,
  quantity int,
  total_amount decimal(10,2)
)

INSERT INTO orders (order_id, customer_id, book_id, order_date, quantity, total_amount) VALUES
(1, 1, 1, '2023-05-10', 2, 25.98),
(2, 1, 6, '2023-05-15', 1, 19.99),
(3, 2, 3, '2023-05-12', 1, 13.99),
(4, 3, 2, '2023-05-11', 3, 44.97),
(5, 4, 7, '2023-05-13', 1, 15.99),
(6, 5, 9, '2023-05-14', 2, 59.98),
(7, 2, 4, '2023-05-16', 1, 11.99),
(8, 6, 6, '2023-05-17', 2, 39.98),
(9, 7, 1, '2023-05-18', 1, 12.99),
(10, 8, 8, '2023-05-19', 1, 13.99),
(11, 1, 10, '2023-06-01', 2, 21.98),
(12, 3, 5, '2023-06-02', 1, 12.99),
(13, 9, 11, '2023-06-03', 3, 38.97),
(14, 10, 12, '2023-06-04', 1, 16.99),
(15, 4, 13, '2023-06-05', 2, 29.98),
(16, 5, 14, '2023-06-06', 1, 13.99),
(17, 2, 6, '2023-06-07', 1, 19.99),
(18, 7, 3, '2023-06-08', 2, 27.98);

--Count the total number of orders in the database
select count(order_id) as "total_orders"  from orders


--Find the total revenue, average order amount, maximum order amount, and
--minimum order amount from all orders placed in June 2023.
SELECT
    sum(total_amount) AS "total_revenue",
    avg(total_amount) AS "total_average_order",
    max(total_amount) AS "max_order_amount",
    min(total_amount) AS "minimum_order_amount"
FROM
    orders
where order_date between '2023-06-01' AND '2023-06-30'
