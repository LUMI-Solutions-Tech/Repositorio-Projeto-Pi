create database lumi;
use lumi;
create table empresas (
idEmpresa int primary key auto_increment,
nome_fantasia varchar(50) unique,
tipo_sede varchar(20) not null check(tipo_sede in ('escritorio','industria','loja')),
tamanho_m2 decimal(10,2) not null,
andares int not null,
tipo_estabelecimento varchar(30) not null check(tipo_estabelecimento in ('predio','terreo','galpao','sobrado'))
);
insert into empresas values
(default,'TechVision Tecnologia','escritorio',15000,18,'predio'),
(default,'Shopping Luz do Sul','loja',12000,3,'predio'),
(default,'Clinica Vida Saudavel','escritorio',450,2,'sobrado'),
(default,'Metalurgica Atlas','industria',850000,1,'galpao'),
(default,'Escola Futuro Brilhante','escritorio',3200,3,'predio'),
(default,'SPTech','escritorio',8000,10,'predio');
select * from empresas;
select nome_fantasia, tamanho_m2
from empresas
order by tamanho_m2 desc;
select nome_fantasia, tipo_sede
from empresas
where tipo_sede = 'escritorio';
select nome_fantasia, andares
from empresas
where andares > 5;
create table lampadas (
idLampada int primary key auto_increment,
fkEmpresa int,
qtd_lamp_led int default 0,
qtd_lamp_incandescente int default 0,
potencia_led int default 9,
potencia_incandescente int default 60
);
insert into lampadas values
(default,1,2500,0,9,60),
(default,2,300,120,9,60),
(default,3,25,10,9,60),
(default,4,15000,8000,12,60),
(default,5,400,50,9,60),
(default,6,1200,100,9,60);
select * from lampadas;
select fkEmpresa,
(qtd_lamp_led + qtd_lamp_incandescente) as total_lampadas
from lampadas;
select *
from lampadas
where qtd_lamp_incandescente > 0;
select *
from lampadas
where qtd_lamp_led >= 2000;
create table gastos (
idGasto int primary key auto_increment,
fkEmpresa int,
horas_de_uso_diario int,
sem_lumi decimal(10,2),
com_lumi decimal(10,2),
economia decimal(10,2)
);
insert into gastos values
(default,1,14,4800.00,3500.00,1300.00),
(default,2,16,2100.00,1600.00,500.00),
(default,3,10,90.00,55.00,35.00),
(default,4,24,980000.00,610000.00,370000.00),
(default,5,12,980.00,640.00,340.00),
(default,6,18,3500.00,2100.00,1400.00);
select * from gastos;
select fkEmpresa, economia
from gastos
order by economia desc;
select *
from gastos
where economia > 500;