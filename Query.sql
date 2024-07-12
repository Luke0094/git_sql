-- CREATE DATABASE corsoSqcorsosqll;
-- DDl
-- CREATE
-- DROP
-- ALTER
-- RENAME
-- TRUNCATE

CREATE TABLE if NOT exists libro (id INT,
									titolo VARCHAR(100),
									prezzo DECIMAL,
									data_pub DATE);
							
							
drop TABLE if exists libro;

CREATE TABLE copia_libro LIKE libro;

DROP TABLE if EXISTS libro, copia_libro;

CREATE TABLE persona(id INT,
							nome VARCHAR(100));
							
-- ADD aggiunge 1 o PIù colonne							
ALTER TABLE persona ADD indirizzo CHAR(100),
							ADD eta INT;
							
-- modify modifica il tipo							
ALTER TABLE persona MODIFY COLUMN indirizzo VARCHAR(100)

-- change modifica il nome e il tipo della colonna
ALTER TABLE persona CHANGE COLUMN eta anni INT;

ALTER TABLE persona DROP COLUMN indirizo,
							DROP COLUMN anni;
-- rinomina della tabella							
RENAME TABLE persona TO persona_2;

-- comandi multipli					
ALTER TABLE persona_2
				CHANGE COLUMN nome nominativo VARCHAR(100),
				ADD eta INT;
				
CREATE TABLE maglia(id INT,
							tipo VARCHAR(100),
							taglia ENUM('xs','s','m','l','xl'));
							
CREATE TABLE utente(id INT,
							nome VARCHAR(100),
							sesso ENUM('m','f','x'),
							patentato ENUM('s','no'));
							
CREATE TABLE impiegato(id_impiegato INT(255),				
									nome VARCHAR(50),
									data_asssunzione DATETIME,
									stipendio_in_lire INT(255),
									stiendio_in_euro INT(255),
									num_reparto INT(150),
									livello INT(100),
									sesso ENUM('m','f'));

