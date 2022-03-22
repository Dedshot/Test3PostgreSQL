--удаление таблиц если есть
DROP TABLE IF EXISTS publisherHouses,authors,books;
-- Создание таблицы издательств
CREATE TABLE publisherHouses (
	id_publish SERIAL PRIMARY KEY,
	name_publish VARCHAR(100) not null,
	info_publish VARCHAR(1000) null 
);

--создание таблицы авторов
CREATE TABLE authors (
	id_author SERIAL PRIMARY KEY,
	publisherHouse INT null default null,
	name_author VARCHAR(50) not null,
	lastName_author VARCHAR(50) not null,
	patronymic_author VARCHAR(50) null,
	CONSTRAINT fk_publisherHouses_authors FOREIGN KEY (publisherHouse) references publisherHouses(id_publish)
);

--создание таблицы книг
CREATE TABLE books(
	id_book SERIAL primary key,
	name_book VARCHAR(200) not null,
	author INT null default null,
	CONSTRAINT fk_authors_books FOREIGN KEY (author) references authors(id_author)
);


