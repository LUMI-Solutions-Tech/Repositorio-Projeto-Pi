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
nome_fantasia varchar (50) unique,
tipo_sede varchar (20) not null,
tamanho_m2 decimal(10,2) not null,
andares int not null,
tipo_estabelecimento varchar (30) not null 
) auto_increment = 0;

insert into empresas values
					 (default, 'banco safra', 'escritorio', 21600, 24, 'predio'),
                     (default, 'mercado municipal rudge ramos', 'loja', 9400, 0, 'galpao'),
                     (default, 'JOTA arquitetura', 'escritorio', 32, 0, 'predio'),
					 (default, 'Ambev', 'industria', 1300000, 0, 'galpao'),
                     (default, 'Sptech', 'faculdade', 500, 11, 'predio'),
                     (default, 'Colegio Albert Einstein', 'escola', 1000, 5, 'predio');
                     
select * from empresas;
select case
when andares = 0
then 'terreo'
end as andares from empresas;
select * from empresas where tamanho_m2 >= 10000;
select * from empresas where tipo_estabelecimento = 'galpao';
select * from empresas where tipo_estabelecimento = 'predio';
select * from empresas where tipo_sede = 'escritorio';
select * from empresas where tipo_sede = 'loja';
select * from empresas where tipo_sede = 'industria';
select * from empresas where tipo_sede = 'faculdade';
select * from empresas where tipo_sede = 'escola';

                
                
create table lampadas (
idEmpresa int primary key auto_increment,
qtd_lamp_led int default 0,
qtd_lamp_incandecente int default 0,
potencia_lampadas_led int default 0,
potencia_lampadas_incandecente int default 0
) auto_increment = 0;

insert into lampadas values
		(default, 2600, 0 , 7, 0 ),
        (default, 10, 90, 20, 100),
        (default, 15, 0, 7, 0),
        (default, 10000, 5000, 100, 400);
        
select * from lampadas;
select * from lampadas where qtd_lamp_incandecente = 0;
select case
when qtd_lamp_incandecente = 0 and potencia_lampadas_incandecente = 0
then 'sem lampada incandecente'
end as qtd_lamp_incandecente from lampadas;
select * from lampadas where qtd_lamp_led >= 2000;
select * from lampadas where qtd_lamp_incandecente >= 2000;



create table gastos (
idEmpresa int primary key auto_increment,
horas_de_uso_diario int,
sem_lumi decimal (10,2),
com_lumi decimal (10,2),
economia decimal(10,2)
) auto_increment = 0; 

insert into gastos values 
		(default, 16, 5168.80, 4522.70, 646.10),
        (default, 17, 2776.10, 2286.20, 489.90),
        (default, 18, 33.55, 26.09, 7.45),
        (default, 24, 1278000.00, 745500.00, 532500.00);
        
select * from gastos;
select * from gastos where horas_de_uso_diario >= 18;
select * from gastos where sem_lumi >= com_lumi;
select * from gastos where com_lumi >= sem_lumi;
select * from gastos where economia >= 500;
select case
when economia >= 0
then 'Lumi, a melhor solução para sua empresa'
end as resultado from gastos;
select * from gastos where sem_lumi >= 2500;
select * from gastos where com_lumi >= 2500;





        

                     