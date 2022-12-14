-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS books CASCADE;
DROP TABLE IF EXISTS authors CASCADE;
DROP TABLE IF EXISTS books_authors CASCADE;

CREATE TABLE books (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title VARCHAR(280) NOT NULL,
    released INT NOT NULL
);

INSERT INTO books (
    title,
    released
)
VALUES
    ('Lord of the Things', 1922),
    ('Of Mice and Men', 1999),
    ('Harry Potter', 2000);

CREATE TABLE authors (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(280) NOT NULL,
    dob INT NOT NULL,
    pob VARCHAR(280) NOT NULL
);

INSERT INTO authors (
    name,
    dob,
    pob
)
VALUES
    ('Arthur McArthur', 1959, 'Orange County'),
    ('Test McTest', 1960, 'New York'),
    ('Another McTest', 1890, 'Miami');

CREATE TABLE books_authors(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    books_id BIGINT,
    authors_id BIGINT
);

INSERT INTO books_authors (books_id, authors_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3);