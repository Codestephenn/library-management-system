-- insert_sample_data.sql

INSERT INTO authors (name) VALUES 
('Chinua Achebe'), 
('J.K. Rowling'), 
('George Orwell');

INSERT INTO books (title, author_id) VALUES
('Things Fall Apart', 1),
('Harry Potter and the Sorcerer\'s Stone', 2),
('1984', 3),
('Animal Farm', 3);

INSERT INTO members (name) VALUES
('Stephen Toomey'),
('Grace Johnson'),
('Michael Smith');

INSERT INTO loans (book_id, member_id, loan_date, return_date) VALUES
(1, 1, '2024-04-15', NULL),
(2, 2, '2024-04-14', '2024-04-18'),
(4, 1, '2024-04-12', NULL),
(3, 3, '2024-04-10', '2024-04-13');