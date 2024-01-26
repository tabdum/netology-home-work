CREATE TABLE genre
(
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(30) NOT NULL
	
);

CREATE TABLE executor
(
	executor_id SERIAL PRIMARY KEY,
	executor_name VARCHAR(40) NOT NULL
);

CREATE TABLE albom
(
	albom_id SERIAL PRIMARY KEY,
	albom_name VARCHAR(30) NOT NULL,
	year_of_issue date NOT NULL	
);

CREATE TABLE trake
(
	trake_id SERIAL PRIMARY KEY,
	trake_name VARCHAR(30) NOT NULL,
	duration integer NOT NULL,
	fk_albom_id int REFERENCES albom(albom_id)
);

CREATE TABLE collection
(
	collection_id SERIAL PRIMARY KEY,
	collection_name VARCHAR(30) NOT NULL,
	year_of_issue date NOT NULL	
);


CREATE TABLE genre_executor
(
	genre_id int REFERENCES genre(genre_id),
	executor_id int REFERENCES executor(executor_id),
	CONSTRAINT genre_executor_pkey PRIMARY KEY(genre_id, executor_id)
CREATE TABLE genre
(
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(30) NOT NULL
	
);

CREATE TABLE executor
(
	executor_id SERIAL PRIMARY KEY,
	executor_name VARCHAR(40) NOT NULL
);

CREATE TABLE albom
(
	albom_id SERIAL PRIMARY KEY,
	albom_name VARCHAR(30) NOT NULL,
	year_of_issue date NOT NULL	
);

CREATE TABLE trake
(
	trake_id SERIAL PRIMARY KEY,
	trake_name VARCHAR(30) NOT NULL,
	duration integer NOT NULL,
	fk_albom_id integer REFERENCES albom(albom_id) NOT NULL
);

CREATE TABLE collection
(
	collection_id SERIAL PRIMARY KEY,
	collection_name VARCHAR(30) NOT NULL,
	year_of_issue date NOT NULL	
);


CREATE TABLE genre_executor
(
	genre_id int REFERENCES genre(genre_id),
	executor_id int REFERENCES executor(executor_id),
	CONSTRAINT genre_executor_pkey PRIMARY KEY(genre_id, executor_id)
	
);

CREATE TABLE albom_executor
(
	albom_id int REFERENCES albom(albom_id),
	executor_id int REFERENCES executor(executor_id),
	CONSTRAINT albom_executor_pkey PRIMARY KEY(albom_id, executor_id)
	
);

CREATE TABLE collection_trake
(
	collection_id int REFERENCES collection(collection_id),
	trake_id int REFERENCES trake(trake_id),
	CONSTRAINT collection_trake_pkey PRIMARY KEY(collection_id, trake_id)
	
);

INSERT INTO genre
VALUES
(1, 'genre 1'),
(2, 'genre 2'),
(3, 'genre 3');

INSERT INTO executor
VALUES
(1, 'executor 1'),
(2, 'executor 2');


INSERT INTO albom
VALUES
(1, 'albom1', '2001-01-01'),
(2, 'albom2', '2002-02-02'),
(3, 'albom3', '2003-03-03');

INSERT INTO trake
VALUES
(1, 'trake1', '2323', 1),
(2, 'trake2', '421424', 2);

INSERT INTO collection
VALUES
(1, 'collection1', '2002-02-02'),
(2, 'collection2', '2003-03-03'),
(3, 'collection3', '2004-04-04');

INSERT INTO genre_executor
VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2);

INSERT INTO albom_executor
VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2);

INSERT INTO collection_trake
VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2);


