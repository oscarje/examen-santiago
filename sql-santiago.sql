CREATE SCHEMA IF NOT EXISTS examen_santiago;
USE examen_santiago;

CREATE TABLE region
 (codigo                         INT  NOT NULL PRIMARY KEY ,
  nombre                     VARCHAR(10) NOT NULL
 );

CREATE TABLE distrito
 (codigo                         INT  NOT NULL PRIMARY KEY ,
  nombre                     VARCHAR(100),
  region_codigo        INT,
 FOREIGN KEY  (region_codigo) REFERENCES region(codigo) 
 );

CREATE TABLE alumno
 (codigo  INT  NOT NULL PRIMARY KEY ,
 dni   CHAR(8),
apellido_paterno VARCHAR(50),
apellido_materno VARCHAR(50),
nombres VARCHAR(100),
direccion VARCHAR(150),
lugar INT,
 FOREIGN KEY  (lugar ) REFERENCES distrito(codigo) 
 );


INSERT INTO region VALUES(1, 'Lima');
INSERT INTO region VALUES(2, 'Arequipa');
INSERT INTO region VALUES(3, 'Cusco');
INSERT INTO region VALUES(4, 'Libertad');
INSERT INTO region  VALUES(5, 'Piura');
INSERT INTO region VALUES(6, 'Tacna');
INSERT INTO region VALUES(7, 'Junin');
INSERT INTO region VALUES(8, 'Loreto');
INSERT INTO region VALUES(9, 'Puno');
INSERT INTO region VALUES(10, 'Ica');


INSERT INTO distrito VALUES(101, 'Miraflores',1);
INSERT INTO distrito VALUES(102, 'San Isidro',1);
INSERT INTO distrito VALUES(103, 'Santiago',3);
INSERT INTO distrito VALUES(104, 'Trujillo',4);
INSERT INTO distrito VALUES(105, 'Sullana',5);
INSERT INTO distrito VALUES(106, 'Tacna Centro',6);
INSERT INTO distrito VALUES(107, 'Huancayo',7);
INSERT INTO distrito VALUES(108, 'Iquitos',8);
INSERT INTO distrito VALUES(109, 'Puno Centro',9);
INSERT INTO distrito VALUES(110, 'Chincha Alta',10);


INSERT INTO alumno VALUES(1001, 12345678,'Perez','Rojas','Luis','Av Primavera 123', 101);
INSERT INTO alumno VALUES(1002, 23456789,'Gonzales','Lopez','Ana','Calle Lima 456', 102);
INSERT INTO alumno VALUES(1003, 34567890,'Ramirez','Salazar','Carlos','Jr. Cursco', 103);
INSERT INTO alumno VALUES(1004, 45678901,'Sanchez','Castro','Maria','Av. Larco', 104);
INSERT INTO alumno VALUES(1005, 56789012,'Torres','Nuñez','Jorge','Jr.. Grau 654', 105);
INSERT INTO alumno VALUES(1006, 67890123,'Fernadez','Ortiz','Carmen','Av. Bolognesi 987', 106);
INSERT INTO alumno VALUES(1007, 78901234,'Martiz','Morales','Fernando','Calle Real 246', 107);
INSERT INTO alumno VALUES(1008, 89012345,'Chavez','Gomez','Elena','Av. Amazonas 753', 108);
INSERT INTO alumno VALUES(1009, 90123456,'Medoza','Herrera','Jose','Jr. Arequipa 159', 109);
INSERT INTO alumno VALUES(1010, 01234567,'Vega','Ramos','Claudia','Calle Progreso 951', 110);



