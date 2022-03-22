--вывести названия книги
select name_book from books;

--вывести ФИО авторов авторов
select lastname_author || ' ' || name_author || ' ' || patronymic_author as FIO from authors;

--вывести названия издательств
select name_publish from publisherhouses;

--Вывести названия книг без авторов
select name_book 
from books 
where author is null;