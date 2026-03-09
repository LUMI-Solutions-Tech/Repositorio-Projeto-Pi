-- GRUPO 1 --

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

create table empresas (
idEmpresa int primary key auto_increment,
nome_fantasia varchar (30),
tipo_sede varchar (20), check(tipo_sede in('escritorio', 'industria', 'loja')),
tamanho_m2 decimal(6,2)
);

alter table empresas add column andares int;

alter table empresas add column tipo_estabelecimento varchar (30) 
		check(tipo_estabelecimento in('predio', 'terreo', 'galpao', 'sobrado'));
    
alter table empresas modify column nome_fantasia varchar (50);

alter table empresas modify column tamanho_m2 decimal(10,2);

desc empresas;

insert into empresas (idEmpresa, nome_fantasia, tipo_sede, tamanho_m2, andares, tipo_estabelecimento) values
					 (default, 'banco safra', 'escritorio', 21600, 24, 'predio'),
                     (default, 'mercado municipal rudge ramos', 'loja', 9400, 0, 'galpao'),
                     (default, 'JOTA arquitetura', 'escritorio', 32, 0, 'predio');
					
insert into empresas values
					 (default, 'Ambev', 'industria', 1300000, 0, 'galpao');
                     
select * from empresas;
                     
create table lampadas (
idEmpresa int primary key auto_increment,
qtd_lamp_led int,
qtd_lamp_incandecente int,
potencia_lampadas_led int,
potencia_lampadas_incandecente int
);

insert into lampadas values
		(default, 2600, 0 , 7, 0 ),
        (default, 10, 90, 20, 100),
        (default, 15, 0, 7, 0),
        (default, 10000, 5000, 100, 400);
        
desc lampadas;

select * from lampadas;

create table gastos (
idEmpresa int primary key auto_increment,
horas_de_uso_diario int,
sem_lumi decimal (10,2),
com_lumi decimal (10,2)
); 

alter table gastos add column economia decimal(10,2);

desc gastos; 

insert into gastos values 
		(default, 16, 5168.80, 4522.70, 646.10),
        (default, 17, 2776.10, 2286.20, 489.90),
        (default, 18, 33.55, 26.09, 7.45),
        (default, 24, 1278000.00, 745500.00, 532500.00);
        
select * from gastos;



        

                     