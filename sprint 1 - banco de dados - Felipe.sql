
create database lumi;

use lumi;

create table empresas (
idEmpresa int primary key auto_increment,
nome varchar (40) unique,
tipo_sede varchar (20) not null,
tamanho_por_m² decimal(10,2) not null,
tipo_estabelecimento varchar (30) not null,
ano_de_fundação int not null
) auto_increment = 0;

insert into empresas values
(default, 'Sptech', 'faculdade', 500, 'predio', 2021),
(default, 'Mercado Bem Barato', 'loja', 2000, 'galpao', 1992),
(default, 'Colegio Albert Einstein', 'escola', 1000, 'predio', 1971),
(default, 'Mercado Atacadao', 'loja', 3000, 'galpao', 1962),
(default, 'Museu do ipiranga', 'ponto turistico', 5000, 'museu', 1895);
              
select * from empresas;
select case
when ano_de_fundação <=1976
then 'muitos anos sem economizar com a Lumi'
else 'poucos anos sem economizar com a Lumi'
end as ano_de_fundação from empresas;
select * from empresas where tamanho_por_m² >= 5000;
select * from empresas where tipo_estabelecimento = 'galpao';
select * from empresas where tipo_estabelecimento = 'predio';
select * from empresas where tipo_estabelecimento = 'museu';
select * from empresas where tipo_sede = 'loja';
select * from empresas where tipo_sede = 'ponto turistico';
select * from empresas where tipo_sede = 'faculdade';
select * from empresas where tipo_sede = 'escola';

                
                
create table lampadas (
idEmpresa int primary key auto_increment,
quantidade_lampadas_led int default 0,
quantidade_lampadas_incandecente int default 0,
potencia_lampadas_led int default 0,
potencia_lampadas_incandecente int default 0
) auto_increment = 0;
 
 -- a potência das lampadas está sentido medida em Watts
insert into lampadas values
		(default, 600, 500 , 8, 60 ),
        (default, 75, 90, 10, 60),
        (default, 400, 300, 8, 60),
        (default, 3000, 1000, 10, 60);
    
select * from lampadas;
select case
when quantidade_lampadas_incandecente > quantidade_lampadas_led
then 'há mais lampadas incadecente nesta empresa'
else 'há mais lampadas led nesta empresa'
end as quantidade_de_lampadas from lampadas;
select * from lampadas where quantidade_lampadas_led >= 2000;
select * from lampadas where quantidade_lampadas_incandecente >= 1000;



create table economia (
idEmpresa int primary key auto_increment,
sem_lumi decimal (10,2),
com_lumi decimal (10,2),
valor_economizado decimal(10,2)
) auto_increment = 0; 

-- tabela feita para calcularo quanto a empresas está gastando com e sem a Lumi, mostrando o valor economizado adquirindo nossos serviços
insert into economia values 
		(default, 4000, 3000, 1000),
        (default, 8000, 6000, 2000),
        (default, 2000, 1500, 500),
        (default, 1000, 750, 250);
        
select * from economia;
select * from economia where sem_lumi >= com_lumi;
select * from economia where com_lumi >= sem_lumi;
select * from economia where valor_economizado >= 500;
select * from economia where valor_economizado >= 1000;
select case
when valor_economizado >= 0
then 'Economize com Lumi!'
end as economia from economia;




        

                     