Create database lumi;
use lumi;

Create table Predio(
idLuz INT PRIMARY KEY,
localizacao VARCHAR(50),
qtdlampadas VARCHAR(40),
Potencialampadas varchar(30)
);

Insert INTO Predio VALUES
(1, 'recepcao', '5', '10w'),
(2, 'sala de reuniao', '10', '10w'),
(3, 'escritorio', '20', '10w'),
(4, 'corredores', '6', '10w'),
(5, 'banheiro', '4', '10w');

Select * from Predio;
select localizacao FROM Predio WHERE idLuz = 3;
select * FROM Predio Order by qtdlampadas DESC;
SELECT * FROM Predio WHERE qtdlampadas > 5;
SELECT * FROM Predio WHERE localizacao LIKE '%a_';
SELECT * FROM Predio ORDER BY localizacao ASC;

Create table lampadas(
idLampadas INT PRIMARY KEY,
lampada VARCHAR(50),
potencia VARCHAR(40),
temperatura varchar(30)
);

Insert INTO lampadas VALUES
(1, 'LED', '6W', '5000K'),
(2, 'Fluorescente', '32W', '4000K'),
(3, 'LED', '6W', '4000K'),
(4, 'LED', '6W', '5000K'),
(5, 'Fluorescente', '6W', '4000K');

SELECT * FROM lampadas;
SELECT lampada FROM lampadas;
SELECT * FROM lampadas WHERE potencia = '20W';
SELECT * FROM lampadas ORDER BY potencia ASC;
SELECT * FROM lampadas WHERE lampada = 'fluorescente';
SELECT * FROM lampadas WHERE lampada LIKE '_L%';

Create table gasto(
idGasto INT PRIMARY KEY,
potencia VARCHAR(50),
consumo_mensal VARCHAR(40),
tipo_lampada varchar(30)
);

INSERT INTO gasto VALUES
(1, '6W', '2.4 kWh', 'LED'),
(2, '32W', '7.6 kWh', 'Fluorescente'),
(3, '6W', '2.4 kWh', 'LED'),
(4, '6W', '2.4 kWh', 'LED'),
(5, '20W', '4.8 kWh', 'Fluorescente');

SELECT * FROM gasto;
SELECT tipo_lampada FROM gasto;
SELECT potencia, tipo_lampada FROM gasto;
SELECT * FROM gasto WHERE idGasto = 5;
SELECT * FROM gasto ORDER BY consumo_mensal DESC;
SELECT * FROM gasto WHERE potencia > '20W';
