CREATE DATABASE HOSPITAL;
USE HOSPITAL;

CREATE TABLE PACIENTE(
PACCODIGO INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
PACNOME VARCHAR(30) NOT NULL,
PACIDADE INT NOT NULL,
PACSEXO CHAR);

CREATE TABLE DOENCA(
DOECODIGO INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
DOENOME VARCHAR(30) NOT NULL,
DOEGRAU INT NOT NULL);


CREATE TABLE MEDICO(
MEDCODIGO INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
MEDNOME VARCHAR(30) NOT NULL,
MEDAREA VARCHAR(20) NOT NULL);


CREATE TABLE SOFRE(
PACCODIGO INT NOT NULL,
DOECODIGO INT NOT NULL,
FOREIGN KEY (PACCODIGO) REFERENCES PACIENTE(PACCODIGO),
FOREIGN KEY (DOECODIGO) REFERENCES DOENCA(DOECODIGO));


CREATE TABLE CUIDA(
MEDCODIGO  INT NOT NULL,
PACCODIGO  INT NOT NULL,
FOREIGN KEY (MEDCODIGO) REFERENCES MEDICO(MEDCODIGO),
FOREIGN KEY (PACCODIGO) REFERENCES PACIENTE(PACCODIGO));

INSERT INTO
Paciente(paccodigo,pacnome,pacidade,pacsexo) values(1,"Eva",40,"F");
INSERT INTO
paciente(paccodigo,pacnome,pacidade,pacsexo) values(2,"Adão",30,"");
INSERT INTO
paciente(paccodigo,pacnome,pacidade,pacsexo) values (3,"Noé",20,"M");
INSERT INTO
paciente(paccodigo,pacnome,pacidade,pacsexo) values(4,"Moises",10,"M");
INSERT INTO
paciente(paccodigo,pacnome,pacidade,pacsexo) values(5,"João",12,"M");

select *from Paciente;

INSERT INTO
Doenca(doenome,doegrau) values("Catapora",1);
INSERT INTO
Doenca(doenome,doegrau) values("Sarampo",2);
INSERT INTO
Doenca(doenome,doegrau) values("Rubéola",3);
-- Exercicio 3B da lista
INSERT INTO
Doenca(doenome,doegrau) values("Gripe",2);

select*from Doenca;

INSERT INTO
Medico(mednome,medarea) values("Delfin","Urologia");
INSERT INTO
Medico(mednome,medarea) values("Maluf","Geriatria");
INSERT INTO
Medico(mednome,medarea) values("Collor","Pediatria");
-- Exercicio 3A da lista
INSERT INTO
Medico(mednome,medarea) value("Fernando Henrique","Cardiologia");
select * from Medico;

INSERT INTO
Sofre(Paccodigo,Doecodigo) values(1,1);
INSERT INTO
Sofre(Paccodigo,Doecodigo) values (2,1);
INSERT INTO
Sofre(Paccodigo,Doecodigo) values (3,2);
INSERT INTO
Sofre(Paccodigo,Doecodigo) values(4,3);
select*from Sofre;

INSERT INTO
Cuida(Medcodigo,Paccodigo) values(1,1);
INSERT INTO
Cuida(Medcodigo,Paccodigo) values(1,2);
INSERT INTO
Cuida(Medcodigo,Paccodigo) values(3,3);
INSERT INTO
Cuida(Medcodigo,Paccodigo) values(2,4);
select*from Cuida;

-- tipos de select 
select pacnome, pacidade from Paciente;
select pacnome, pacidade from Paciente where pacidade<=18;
select pacnome, pacsexo from Paciente where pacsexo="f";
select pacnome, pacidade from Paciente where pacsexo="m" and pacidade>=18;
select pacnome from Pacientes order by pacnome desc;
select pacnome, pacidade from Paciente where pacidade between 18 and 30;
select pacnome from Paciente where paccodigo=1;
select * from Paciente where pacnome like "%o%";
select * from Paciente where paccodigo in (1,3);
select Avg(pacidade) from Paciente; -- Calcula a média
select Count(pacnome) from Paciente; -- Conta o número de pessoas
select Sum(pacidade) from Paciente;	-- 
select Max(pacidade) from Paciente; -- Valor máximo de algum campo 
select Min(pacidade) from Paciente; -- Valor minimo de algum valor

-- Exercicio 3C da lista
select pacnome, pacidade from Paciente where pacidade>=30;

-- Exercicio 3D da lista
select mednome,medarea from Medico;

-- Exercicio 3E da lista
select * from Doenca;

-- Exercio 3F da lista
select * from Doenca where doegrau>=3;

-- Exercicio 3G da lista
select Count(mednome) from Medico;

-- Exercicio 3H da lista
select AVG(pacidade) from  Paciente;

-- Exercicio 3I da lista
select pacnome, pacidade from Paciente where pacidade between 20 and 40;


ALTER TABLE medico ADD medcrm int not null -- Adiciona Coluna a Tabela --
ALTER TABLE medico MODIFY medcrm  -- Modifica a estrutua da coluna -- 
ALTER TABLE medico DROP COLUMN medcrm  -- Exclui COluna --
ALTER TABLE medico Rename To novo nome da tabela -- Altera o nome da tabela --
DROP TABLE nome da tabela; 
