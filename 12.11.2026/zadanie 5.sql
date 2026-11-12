create table status (
id_statusu int auto_increment primary key,
nazwa_statusu varchar (20) not null
);

insert into status (nazwa_statusu)
values 
	('do zrobienia'),
    ('w trakcie'),
    ('zakonczone');
    
 create table zadanie_has_status (
 id_zdarzenia int auto_increment primary key,
 id_zadania int not null,
 id_statusu int not null,
 data_zdarzenia date,
 constraint fk_zhs_zadanie 
	foreign key(id_zadania) references zadanie (id_zadania) on delete cascade,
constraint fk_zhs_status 
	foreign key (id_statusu) references status(id_statusu)
);

insert into zadanie_has_status (id_zadania, id_statusu)
values
    (1,1),
	(1,2),
    (2,1);

delete from projekt 
where id_projektu = 1;

select * from zadanie;

alter table zadanie
drop foreign key fk_zadanie_sprint;
drop table sprint;
 

    