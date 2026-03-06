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

create table shopping_clientes (
    id int primary key auto_increment,
    nome varchar(50),
    idade int,
    loja varchar(50),
    valor_gasto decimal(8,2) 
);

insert into shopping_clientes (nome, idade, loja, valor_gasto) values
('Carlos Silva', 28, 'Renner', 350.90),
('Mariana Souza', 22, 'C&A', 189.50),
('Rafael Lima', 35, 'Centauro', 720.00),
('Juliana Alves', 19, 'Riachuelo', 95.75),
('Fernando Costa', 40, 'Kalunga', 1200.30);
alter table shopping_clientes add constraint chk_val_shopping check (valor_gasto >= 0);
create table sensores_luminosidade (
    id int primary key auto_increment,
    local_instalado varchar(100) not null,
    modelo_sensor varchar(50) not null,
    valor_lux decimal(8,2) not null,
    status_luz varchar(20) check (status_luz in ('Ligada','Desligada')),
    data_leitura datetime default current_timestamp
);

insert into sensores_luminosidade (local_instalado, modelo_sensor, valor_lux, status_luz) values
('Sala 101 - Escritório', 'LDR', 120.50, 'Ligada'),
('Sala 102 - Escritório', 'LDR', 350.80, 'Desligada'),
('Corredor Principal', 'LDR', 80.20, 'Ligada'),
('Sala de Reunião', 'LDR', 500.00, 'Desligada'),
('Recepção', 'LDR', 200.45, 'Ligada');
alter table shopping_clientes add constraint chk_vl_lux check (valor_lux >= 0);

create table lumi_sensores (
    id int primary key auto_increment,
    nome_empresa varchar(50) default 'Lumi',
    local_instalado varchar(100) not null,
    tipo_sensor varchar(30) default 'LDR',
    valor_lux decimal(8,2) not null,
    intensidade_luz int check (intensidade_luz >= 0),
    status_lampada varchar(15) check (status_lampada in ('Ligada','Desligada')),
    economia_energia decimal(6,2),
    data_leitura datetime default current_timestamp
);

insert into lumi_sensores (local_instalado, valor_lux, intensidade_luz, status_lampada, economia_energia) values
('Sala Administrativa', 120.50, 80, 'Ligada', 12.50),
('Corredor Principal', 350.00, 20, 'Desligada', 25.30),
('Sala de Reunião', 90.00, 95, 'Ligada', 10.10),
('Recepção', 500.00, 10, 'Desligada', 30.00),
('Escritório Financeiro', 200.00, 60, 'Ligada', 18.75);

select * from shopping_clientes;
select nome, loja from shopping_clientes;
select * from shopping_clientes where idade > 30;
select nome, valor_gasto from shopping_clientes where valor_gasto > 300;
select * from shopping_clientes where loja = 'Renner';
select nome, valor_gasto from shopping_clientes order by valor_gasto desc;

select * from sensores_luminosidade;
select local_instalado, valor_lux from sensores_luminosidade where status_luz = 'Ligada';
select * from sensores_luminosidade where valor_lux > 200;
select local_instalado, data_leitura from sensores_luminosidade;
select local_instalado, valor_lux from sensores_luminosidade order by valor_lux desc;

select * from lumi_sensores;
select local_instalado, intensidade_luz from lumi_sensores;
select * from lumi_sensores where status_lampada = 'Ligada';
select local_instalado, economia_energia from lumi_sensores where economia_energia > 20;
select * from lumi_sensores where intensidade_luz > 70;
select local_instalado, economia_energia from lumi_sensores order by economia_energia desc;
select avg(economia_energia) as media_economia from lumi_sensores;