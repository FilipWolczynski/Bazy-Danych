create table zadania (
id_zadania int auto_increment key,
nazwa_zadania varchar(150),
priorytet enum('wysoki','sredni','niski')  not null default 'sredni',
opis text null,
pracownik  int null
);

