/*Danilo David Vrena - RA: 03261042
 Enzo Valim De Oliveira Pereira- RA: 03261002 
 Felipe Dias Maia- RA: 03261037 
 Gustavo Henrique Bertelle Borges - RA: 03261067 
 Helena Caporicci - RA: 03261022
 Leonardo Marquese Galfaro - RA: 03261012 
 Raphael De Oliveira - RA: 03261057 
*/

create database lumi;
use lumi;

create table empresa( 
idEmpresa int primary key auto_increment,
nomeEmpresa varchar(45),
dataCadastro date
) auto_increment=1;

insert into empresa values
(default, 'Mackenzie', '2026-01-20'),
(default, 'Objetivo', '2026-02-14'),
(default, 'Anglo', '2026-01-16'),
(default, 'PUC', '2026-03-01');

select * from empresa;
select * from empresa where nomeEmpresa like '%o';
select * from empresa where nomeEmpresa like '%k%';
select idEmpresa from empresa where dataCadastro < '2026-02-17';
select nomeEmpresa from empresa where idEmpresa = 2;
select dataCadastro from empresa where nomeEmpresa = 'Mackenzie';

alter table empresa add column qtdLampada int;
update empresa set qtdLampada = 500 where idEmpresa= 1;
update empresa set qtdLampada = 350 where idEmpresa= 2;
update empresa set qtdLampada = 439 where idEmpresa= 3;
update empresa set qtdLampada = 780 where idEmpresa= 4;

create table sensor(
idSensor int primary key auto_increment,
tipo varchar (40),
status_ varchar(40), constraint chkstatus check( status_ = 'ativo' or status_ = 'inativo'),
leitura int
);

insert into sensor values
(default, 'LDR', 'ativo', 600),
(default, 'LDR', 'ativo', 500),
(default, 'LDR', 'ativo', 650),
(default, 'LDR', 'ativo', 300);

select * from sensor;
select leitura from sensor where idSensor = 1;
select * from sensor where leitura > 500;
select status_ from sensor where idSensor = 4;
select idSensor from sensor where leitura < 600;
select * from sensor where tipo != 'LDR';

update sensor set status_= 'inativo' where idSensor = 4;

create table calculoConsumo(
idCalculo int primary key auto_increment,
horasLigadas int,
potencia int,
qtdLampada int,
precoTarifa decimal(3,2)
);

insert into calculoConsumo values
(default, 10, 60, 300, 0.80),
(default, 14, 90, 500, 0.90),
(default, 12, 60, 340, 0.85),
(default, 20, 20, 768, 0.80);

select * from calculoConsumo;
select precoTarifa from calculoConsumo where qtdLampada > 350;
select potencia from calculoConsumo where horasLigadas < 20;
select * from calculoConsumo where horasLigadas = 10 and precoTarifa = 0.80;
select qtdLampada, potencia from calculoConsumo;
select * from calculoConsumo order by qtdLampada desc;





