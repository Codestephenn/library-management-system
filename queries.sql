SELECT books.title, authors.name AS author
FROM books
JOIN authors ON books.author_id = authors.id;


SELECT members.name AS member, books.title AS book, loans.loan_date
FROM loans
JOIN members ON loans.member_id = members.id
JOIN books ON loans.book_id = books.id;

SELECT members.name AS member, books.title AS book, loans.loan_date
FROM loans
JOIN members ON loans.member_id = members.id
JOIN books ON loans.book_id = books.id
WHERE loans.return_date IS NULL;


SELECT members.name, COUNT(loans.id) AS books_borrowed
FROM members
LEFT JOIN loans ON members.id = loans.member_id
GROUP BY members.name;


SELECT authors.name, COUNT(books.id) AS total_books
FROM authors
LEFT JOIN books ON authors.id = books.author_id
GROUP BY authors.name;


