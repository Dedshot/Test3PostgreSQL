--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-03-22 18:06:42

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 212 (class 1259 OID 16738)
-- Name: authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authors (
    id_author integer NOT NULL,
    publisherhouse integer,
    name_author character varying(50) NOT NULL,
    lastname_author character varying(50) NOT NULL,
    patronymic_author character varying(50)
);


ALTER TABLE public.authors OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16737)
-- Name: authors_id_author_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authors_id_author_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_author_seq OWNER TO postgres;

--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 211
-- Name: authors_id_author_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authors_id_author_seq OWNED BY public.authors.id_author;


--
-- TOC entry 214 (class 1259 OID 16750)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    id_book integer NOT NULL,
    name_book character varying(200) NOT NULL,
    author integer
);


ALTER TABLE public.books OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16749)
-- Name: books_id_book_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_id_book_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_book_seq OWNER TO postgres;

--
-- TOC entry 3336 (class 0 OID 0)
-- Dependencies: 213
-- Name: books_id_book_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_id_book_seq OWNED BY public.books.id_book;


--
-- TOC entry 210 (class 1259 OID 16729)
-- Name: publisherhouses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publisherhouses (
    id_publish integer NOT NULL,
    name_publish character varying(100) NOT NULL,
    info_publish character varying(1000)
);


ALTER TABLE public.publisherhouses OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16728)
-- Name: publisherhouses_id_publish_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.publisherhouses_id_publish_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publisherhouses_id_publish_seq OWNER TO postgres;

--
-- TOC entry 3337 (class 0 OID 0)
-- Dependencies: 209
-- Name: publisherhouses_id_publish_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.publisherhouses_id_publish_seq OWNED BY public.publisherhouses.id_publish;


--
-- TOC entry 3175 (class 2604 OID 16741)
-- Name: authors id_author; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors ALTER COLUMN id_author SET DEFAULT nextval('public.authors_id_author_seq'::regclass);


--
-- TOC entry 3176 (class 2604 OID 16753)
-- Name: books id_book; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books ALTER COLUMN id_book SET DEFAULT nextval('public.books_id_book_seq'::regclass);


--
-- TOC entry 3174 (class 2604 OID 16732)
-- Name: publisherhouses id_publish; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publisherhouses ALTER COLUMN id_publish SET DEFAULT nextval('public.publisherhouses_id_publish_seq'::regclass);


--
-- TOC entry 3327 (class 0 OID 16738)
-- Dependencies: 212
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.authors (id_author, publisherhouse, name_author, lastname_author, patronymic_author) VALUES (1, 2, 'Александр', 'Пушкин', 'Сергеевич');
INSERT INTO public.authors (id_author, publisherhouse, name_author, lastname_author, patronymic_author) VALUES (3, 3, 'Лев', 'Толстой', 'Николаевич');
INSERT INTO public.authors (id_author, publisherhouse, name_author, lastname_author, patronymic_author) VALUES (4, 3, 'Федор', 'Достоевский', 'Михайлович');
INSERT INTO public.authors (id_author, publisherhouse, name_author, lastname_author, patronymic_author) VALUES (6, 2, 'Иван', 'Тургенев', 'Сергеевич');
INSERT INTO public.authors (id_author, publisherhouse, name_author, lastname_author, patronymic_author) VALUES (8, 3, 'Михаил', 'Ломоносов', 'Васильевич');
INSERT INTO public.authors (id_author, publisherhouse, name_author, lastname_author, patronymic_author) VALUES (9, 2, 'Владимир', 'Маяковский', 'Владимирович');


--
-- TOC entry 3329 (class 0 OID 16750)
-- Dependencies: 214
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.books (id_book, name_book, author) VALUES (1, 'Евгений Онегин', 1);
INSERT INTO public.books (id_book, name_book, author) VALUES (2, 'Руслан и Людмила', 1);
INSERT INTO public.books (id_book, name_book, author) VALUES (3, 'Война и мир', 3);
INSERT INTO public.books (id_book, name_book, author) VALUES (4, 'Анна Каренина', 3);
INSERT INTO public.books (id_book, name_book, author) VALUES (5, 'Идиот', 4);
INSERT INTO public.books (id_book, name_book, author) VALUES (6, 'Преступление и наказание', 4);
INSERT INTO public.books (id_book, name_book, author) VALUES (7, 'Муму', 6);
INSERT INTO public.books (id_book, name_book, author) VALUES (8, 'Отцы и дети', 6);
INSERT INTO public.books (id_book, name_book, author) VALUES (9, 'Древняя Российская история', 8);
INSERT INTO public.books (id_book, name_book, author) VALUES (10, 'Стихи о Москве', 8);
INSERT INTO public.books (id_book, name_book, author) VALUES (11, 'Облако в штанах', 9);
INSERT INTO public.books (id_book, name_book, author) VALUES (12, 'Ночь', 9);
INSERT INTO public.books (id_book, name_book, author) VALUES (13, 'Колобок', NULL);
INSERT INTO public.books (id_book, name_book, author) VALUES (14, 'Снегурочка', NULL);
INSERT INTO public.books (id_book, name_book, author) VALUES (15, 'Маша и медведь', NULL);
INSERT INTO public.books (id_book, name_book, author) VALUES (16, '12 месяцев', NULL);
INSERT INTO public.books (id_book, name_book, author) VALUES (17, 'Курс общей физики', NULL);
INSERT INTO public.books (id_book, name_book, author) VALUES (18, 'Программирование на С++ глазами хакера', NULL);


--
-- TOC entry 3325 (class 0 OID 16729)
-- Dependencies: 210
-- Data for Name: publisherhouses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.publisherhouses (id_publish, name_publish, info_publish) VALUES (2, 'ЛитРес', 'Крупнейший представитель электронных и аудиокниг');
INSERT INTO public.publisherhouses (id_publish, name_publish, info_publish) VALUES (3, 'Правда', 'Крупнейшее газетно-журнальное партийное издательство СССР, основанное в Москве в 1929 году');


--
-- TOC entry 3338 (class 0 OID 0)
-- Dependencies: 211
-- Name: authors_id_author_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authors_id_author_seq', 1, false);


--
-- TOC entry 3339 (class 0 OID 0)
-- Dependencies: 213
-- Name: books_id_book_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_id_book_seq', 18, true);


--
-- TOC entry 3340 (class 0 OID 0)
-- Dependencies: 209
-- Name: publisherhouses_id_publish_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.publisherhouses_id_publish_seq', 1, false);


--
-- TOC entry 3180 (class 2606 OID 16743)
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id_author);


--
-- TOC entry 3182 (class 2606 OID 16755)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id_book);


--
-- TOC entry 3178 (class 2606 OID 16736)
-- Name: publisherhouses publisherhouses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publisherhouses
    ADD CONSTRAINT publisherhouses_pkey PRIMARY KEY (id_publish);


--
-- TOC entry 3184 (class 2606 OID 16756)
-- Name: books fk_authors_books; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT fk_authors_books FOREIGN KEY (author) REFERENCES public.authors(id_author);


--
-- TOC entry 3183 (class 2606 OID 16744)
-- Name: authors fk_publisherhouses_authors; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT fk_publisherhouses_authors FOREIGN KEY (publisherhouse) REFERENCES public.publisherhouses(id_publish);


-- Completed on 2022-03-22 18:06:42

--
-- PostgreSQL database dump complete
--

