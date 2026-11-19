
ZADANIE 1
alter table projekt
drop foreign key menedzer_projektu;

alter table zadania
drop foreign key pracownik;

alter table pracownik
drop primary key;

alter table pracownik
add column id_pracownika int auto_increment primary key;

alter table projekt
add column menedzer_projektu
foreign key (menedzer projektu) 
references pracownik (id_pracownika)
on delete set null;

alter table zadania
add column pracownik 
foreign key (pracownik) 
references pracownik(id_pracownika)
on delete set null;




ZADANIE 2

alter table zadania
add column godziny_szacowane int default 8;

update zadania
set godziny_szacowane = 4
where id_zadania = 1;

update zadania
set godziny_szacowane = 12
where id_zadania = 2;

update zadania
set godziny_szacowane = 14
where id_zadania = 3;

alter table zadania 
modify godziny_szacowane int default 6;

insert into zadania (nazwa_zadania)
values ('przygotowanie dokumnetacji')

delete from zadania
where id_zadania = 1;


ZADANIE 3
alter table projekt 
add column opis_kratki varchar(50)

alter table projekt
modify opis_kratki varchar(200)

insert into projekt (opis_kratki)
values
('mvp'),
('pilne wdrozenie');

alter table projekt
drop column opis_kratki;

ZADANIE 4

alter table zadania
drop foreign key id_projektu;

alter table zadania
add constraint id_projektu 
foreign key (id_projektu) references projekt (id_projektu)
on delete set null;


