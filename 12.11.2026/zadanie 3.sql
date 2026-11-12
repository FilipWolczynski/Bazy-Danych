create table projekt (
id_projektu int auto_increment primary key,
nazwa_projektu varchar (150),
data_rozpoczecia date,
data_zakonczenia  date null
);

alter table projekt
add column menedzer_projektu int ,
add constraint fk_projekt_menedzer 
	foreign key (menedzer_projektu)
    references pracownik (id_pracownika);

insert into projekt (nazwa_projektu, data_rozpoczecia, data_zakonczenia, menedzer_projektu)
values 
    ('System rezerwacji online', '2026-01-10', '2026-05-20', 1),
    ('Aplikacja mobilna dla klientów', '2026-06-01', null, 2);

alter table zadanie
add column projekt int,
add constraint fk_zadanie_projekt
    foreign key (projekt) 
    references projekt(id_projektu)
    on delete cascade;