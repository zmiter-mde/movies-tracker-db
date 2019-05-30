--liquibase formatted sql logicalFilePath:update.sql

--changeset zmiter:added-initial-movies-table-2019-MAY-27-13-18
--comment Creating initial movies table
CREATE TABLE movies (
  id serial PRIMARY KEY,
  title_ru varchar(512) DEFAULT NULL,
  title_en varchar(512) NOT NULL,
  kinopoisk_link varchar(2048) DEFAULT NULL,
  imdb_link varchar(2048) DEFAULT NULL,
  image_url varchar(2048) DEFAULT NULL,
  release_date date NOT NULL
);

--changeset zmiter:added-some-movies-2019-MAY-27-14-13
--comment Added some movies to the table
INSERT INTO movies (title_ru, title_en, kinopoisk_link, imdb_link, image_url, release_date)
VALUES ('Район №9', 'District 9', 'https://www.kinopoisk.ru/film/397494/', 'https://www.imdb.com/title/tt1136608/', 'https://www.kinopoisk.ru/images/film_big/397494.jpg', '2009-08-13');

INSERT INTO movies (title_ru, title_en, kinopoisk_link, imdb_link, image_url, release_date)
VALUES ('Терминатор: Темные судьбы', 'Terminator: Dark Fate', 'https://www.kinopoisk.ru/film/1025082/', 'https://www.imdb.com/title/tt6450804', 'https://www.kinopoisk.ru/images/film_big/1025082.jpg', '2019-10-23');

INSERT INTO movies (title_ru, title_en, kinopoisk_link, imdb_link, image_url, release_date)
VALUES ('Оно 2', 'It Chapter Two', 'https://www.kinopoisk.ru/film/686898/', 'https://www.imdb.com/title/tt7349950', 'https://www.kinopoisk.ru/images/film_big/686898.jpg', '2019-09-05');

INSERT INTO movies (title_ru, title_en, kinopoisk_link, imdb_link, image_url, release_date)
VALUES ('Дитя робота', 'I Am Mother', 'https://www.kinopoisk.ru/film/1067645/', 'https://www.imdb.com/title/tt6292852', 'https://m.media-amazon.com/images/M/MV5BMTkxMTczNTA4Nl5BMl5BanBnXkFtZTgwNDAyMzgwODM@._V1_SY1000_CR0,0,674,1000_AL_.jpg', '2019-07-07');


--changeset zmiter:added-more-movies-2019-MAY-27-15-43
--comment Added more movies to the table
INSERT INTO movies (title_ru, title_en, kinopoisk_link, imdb_link, image_url, release_date)
VALUES ('Детские игры', 'Child''s Play', 'https://www.kinopoisk.ru/film/1179256/', 'https://www.imdb.com/title/tt8663516', 'https://m.media-amazon.com/images/M/MV5BNTNlNjIxNjktOWUyMS00YWY5LWEwZGItMjZmODJlZWNiZGM2XkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SY1000_CR0,0,674,1000_AL_.jpg', '2019-06-21');

INSERT INTO movies (title_ru, title_en, kinopoisk_link, imdb_link, image_url, release_date)
VALUES ('Гемини', 'Gemini Man', 'https://www.kinopoisk.ru/film/462851/', 'https://www.imdb.com/title/tt1025100', 'https://m.media-amazon.com/images/M/MV5BNjI5OTNkMzUtZDYzYy00NWQ5LTg4YzYtZmZjZDI0MGQzNGY2XkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SY1000_CR0,0,674,1000_AL_.jpg', '2019-10-04');

INSERT INTO movies (title_ru, title_en, kinopoisk_link, imdb_link, image_url, release_date)
VALUES ('Люди Икс: Тёмный Феникс', 'Dark Phoenix', 'https://www.kinopoisk.ru/film/1012431/', 'https://www.imdb.com/title/tt6565702/', 'https://m.media-amazon.com/images/M/MV5BMjAwNDgxNTI0M15BMl5BanBnXkFtZTgwNTY4MDI1NzM@._V1_SY1000_CR0,0,631,1000_AL_.jpg', '2019-06-07');

INSERT INTO movies (title_ru, title_en, kinopoisk_link, imdb_link, image_url, release_date)
VALUES ('Мой шпион', 'My Spy', 'https://www.kinopoisk.ru/film/1179073/', 'https://www.imdb.com/title/tt8242084', 'https://m.media-amazon.com/images/M/MV5BNTEzNjY2ODMzN15BMl5BanBnXkFtZTgwMzUzMTA4NzM@._V1_SY1000_CR0,0,674,1000_AL_.jpg', '2019-08-23');

--changeset zmiter:added-users-table-2019-MAY-30-08-51
--comment Creating users table if not created by jpa
create table if not exists users (
 id bigserial not null constraint users_pkey primary key,
 email varchar(255) not null constraint unique_user_email unique,
 email_verified boolean not null,
 image_url varchar(255),
 name varchar(255) not null,
 password varchar(255),
 provider varchar(255) not null,
 provider_id varchar(255)
);