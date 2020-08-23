Create Table klienci
( klientid int unsigned not null auto_increment primary key,
nazwisko char (40) not null),
adres char(100) not null,
miejscowosc char(30) not null);

Create table zamowienia
( zamowienieid int unsigned not null auto_increment primary key,
klientid int unsigned not null,
wartosc float(6,2),
data date not null);

Create table ksiazki
( isbn char(13) not null primary key,
autor char(50),
tytul char(100),
cena float(4,2)
);

Create Table Pozycje_Zamowione
( zamowienieid int unsigned not null,
isbn char(13) not null,
ilosc tinyint unsigned,

primary key (zamowienieid, isbn)
);

Create Table recenzje_ksiazek
( isbn char(13) not null primary key,
recenzja text
);