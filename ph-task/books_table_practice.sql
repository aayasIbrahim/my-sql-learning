CREATE TABLE books (
  book_id SERIAL PRIMARY KEY,      -- Integer এবং অটো-ইনক্রিমেন্ট প্রাইমারি কি
  title VARCHAR(200) NOT NULL,     -- সর্বোচ্চ ২০০ ক্যারেক্টার (বইয়ের নাম থাকা বাধ্যতামূলক)
  author VARCHAR(100) NOT NULL,    -- সর্বোচ্চ ১০০ ক্যারেক্টার
  genre VARCHAR(50),               -- সর্বোচ্চ ৫০ ক্যারেক্টার
  price DECIMAL(10, 2),            -- মোট ১০টি ডিজিট, দশমিকের পরে ২টি ডিজিট
  publication_year INT,            -- Integer ফিল্ড বছর জমার জন্য
  stock_quantity INT               -- স্টকের সংখ্যা রাখার জন্য Integer ফিল্ড
);

INSERT INTO books (book_id, title, author, genre, price, publication_year, stock_quantity)
VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 12.99, 1925, 45),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 14.99, 1960, 32),
(3, '1984', 'George Orwell', 'Science Fiction', 13.99, 1949, 28),
(4, 'Pride and Prejudice', 'Jane Austen', 'Romance', 11.99, 1813, 50),
(5, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 12.99, 1951, 22),
(6, 'Harry Potter and the Sorcerer Stone', 'J.K. Rowling', 'Fantasy', 19.99, 1997, 60),
(7, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 15.99, 1937, 38),
(8, 'Brave New World', 'Aldous Huxley', 'Science Fiction', 13.99, 1932, 25),
(9, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 29.99, 1954, 41),
(10, 'Animal Farm', 'George Orwell', 'Fiction', 10.99, 1945, 55),
(11, 'Fahrenheit 451', 'Ray Bradbury', 'Science Fiction', 12.99, 1953, 30),
(12, 'The Great Adventure', 'John Anderson', 'Fiction', 16.99, 2020, 18),
(13, 'Mystery in Paris', 'Marie Dubois', 'Mystery', 14.99, 2019, 27),
(14, 'Romance in Rome', 'Isabella Rossi', 'Romance', 13.99, 2021, 35);