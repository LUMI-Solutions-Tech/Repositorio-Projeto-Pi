CREATE DATABASE projetoPI;
USE projetoPI;

CREATE TABLE empresas (
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nome_fantasia VARCHAR (50) UNIQUE,
tipo_sede VARCHAR (20) NOT NULL CHECK(tipo_sede IN('escritorio', 'industria', 'loja')),
tamanho_m2 DECIMAL(10,2) NOT NULL,
andares INT NOT NULL,
tipo_estabelecimento VARCHAR (30) NOT NULL CHECK(tipo_estabelecimento IN('predio', 'terreo', 'galpao', 'sobrado'))
) AUTO_INCREMENT = 0;


INSERT INTO empresas VALUES
(DEFAULT, 'Casas Bahia', 'loja', 15000, 2, 'predio'),
(DEFAULT, 'Fabrica Coca Cola', 'industria', 950000, 0, 'galpao'),
(DEFAULT, 'Alpha Engenharia', 'escritorio', 220, 3, 'sobrado'),
(DEFAULT, 'Supermercado Bom Preço', 'loja', 5200, 1, 'predio');

SELECT * FROM empresas;

SELECT * FROM empresas WHERE andares = 0;
SELECT * FROM empresas WHERE tamanho_m2 >= 10000;
SELECT * FROM empresas WHERE tipo_estabelecimento = 'galpao';
SELECT * FROM empresas WHERE tipo_estabelecimento = 'predio';
SELECT * FROM empresas WHERE tipo_sede = 'escritorio';
SELECT * FROM empresas WHERE tipo_sede = 'loja';
SELECT * FROM empresas WHERE tipo_sede = 'industria';



CREATE TABLE lampadas (
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
qtd_lamp_led INT DEFAULT 0,
qtd_lamp_incandecente INT DEFAULT 0,
potencia_lampadas_led INT DEFAULT 0,
potencia_lampadas_incandecente INT DEFAULT 0
) AUTO_INCREMENT = 0;

INSERT INTO lampadas VALUES
(DEFAULT, 1800, 0, 9, 0),
(DEFAULT, 250, 120, 18, 90),
(DEFAULT, 30, 0, 7, 0),
(DEFAULT, 9000, 4000, 110, 300);

SELECT * FROM lampadas;
SELECT * FROM lampadas WHERE qtd_lamp_incandecente = 0;
SELECT * FROM lampadas WHERE qtd_lamp_led >= 2000;
SELECT * FROM lampadas WHERE qtd_lamp_incandecente >= 2000;


CREATE TABLE gastos (
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
horas_de_uso_diario INT,
sem_lumi DECIMAL (10,2),
com_lumi DECIMAL (10,2),
economia DECIMAL(10,2)
) AUTO_INCREMENT = 0; 

INSERT INTO gastos VALUES
(DEFAULT, 14, 3800.50, 3100.30, 700.20),
(DEFAULT, 16, 2600.00, 2100.00, 500.00),
(DEFAULT, 9, 95.40, 70.10, 25.30),
(DEFAULT, 20, 850000.00, 600000.00, 250000.00);

SELECT * FROM gastos;
SELECT * FROM gastos WHERE horas_de_uso_diario >= 18;
SELECT * FROM gastos WHERE sem_lumi >= com_lumi;
SELECT * FROM gastos WHERE com_lumi >= sem_lumi;
SELECT * FROM gastos WHERE economia >= 500;
SELECT * FROM gastos WHERE sem_lumi >= 2500;
SELECT * FROM gastos WHERE com_lumi >= 2500;