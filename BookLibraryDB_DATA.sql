DROP TABLE IF EXISTS collection;
DROP TABLE IF EXISTS genre;
DROP TABLE IF EXISTS book_genre;
DROP TABLE IF EXISTS book;


CREATE TABLE book (
	book_id serial,
	title varchar(255) NOT NULL,
	author varchar(50) NOT NULL,
	publisher varchar(50) NOT NULL,
	year_published integer NOT NULL,
	have_read boolean NOT NULL,
	collection_id int NULL,
	donate boolean NOT NULL,
	CONSTRAINT pk_book_id PRIMARY KEY (book_id),
	CONSTRAINT fk_collection_collection_id FOREIGN KEY(collection_id) REFERENCES collection(collection_id)
);

CREATE TABLE genre (
    genre_id serial,
    genre_name varchar(50) NOT NULL,
	CONSTRAINT PK_genre_id PRIMARY KEY(genre_id)
);

CREATE TABLE book_genre (
	genre_id int NOT NULL,
	book_id int NOT NULL,
	CONSTRAINT pk_book_genre PRIMARY KEY (genre_id, book_id),
	CONSTRAINT fk_book_genre_genre FOREIGN KEY (genre_id) REFERENCES genre(genre_id),
	CONSTRAINT fk_book_genre_book FOREIGN KEY (book_id) REFERENCES book(book_id)
);

CREATE TABLE collection (
    collection_id serial,
    collection_name varchar(200) NOT NULL,
    CONSTRAINT pk_collection_id PRIMARY KEY(collection_id)
);




