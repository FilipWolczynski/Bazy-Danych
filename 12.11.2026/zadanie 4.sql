create table sprint (
id_sprintu int auto_increment primary key,
numer_sprintu  int unsigned,
data_rozpoczecia date,
data_zakonczenia date
);

alter table zadanie 
add column sprint int null,
add constraint fk_zadanie_sprint
	foreign key (spirnt)
    references sprint (id_sprintu)
    on delete set null;

