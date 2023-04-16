-- Inicjalizacja bazy danych
drop database myDatabase;
create database myDatabase;
use myDatabase;

-- Stworzenie tabeli 'myTable'
create table myTable(
  id int primary key auto_increment,
  title varchar(30),
  price float,
  isFavorite char(1) default 'N'
);

-- Dodanie danych do tabeli
insert into myTable (
  id,
  title,
  price,
  isFavorite
)
values 
(
  null,
  'Moje Zakupy 1',
  300,
  'N'
),
(
  null,
  'Moje Zakupy 2',
  150,
  'Y'
),
(
  null,
  'Moje Zakupy 3',
  20,
  'N'
);

-- Wyrozniamy operatory:
-- - wiekszy od (>)
-- - mniejszy od (<)
-- - rowny (=)
-- - between (between)
-- Przyklady użycia:

select * from myTable where isFavorite = 'Y';

select * from myTable where price between 10 and 160;

select * from myTable where price > 20;

select * from myTable where price < 250;

select * from myTable where price = 20;


