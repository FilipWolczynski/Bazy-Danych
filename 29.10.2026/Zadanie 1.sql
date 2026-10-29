create table pracownik(
id_pracownika INT auto_increment primary key,
imie varchar(40),
nazwisko varchar (60),
data_urodzenia date
);


insert into pracownik (id_pracownika, imie, nazwisko, data_urodzenia)
values 
	(1,'Jan', 'Kowalski', '2007-07-09'),
	(2,'Stanislaw', 'Kowal', '1990-02-03'),
    (3, 'Kuba', 'Szymalak', '2006-09-03')
    
    