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


RENAME table impiegato to impiegati;

ALTER TABLE impiegati DROP column stipendio_in_lire,
								ADD cognome VARCHAR(100),
								MODIFY COLUMN livello VARCHAR(10),
								CHANGE COLUMN stiendio_in_euro stipendio;
								
-- CONSTRAINT -> sono dei vincoli sui valori che io posso insenrire nelle colonne
-- NOT NULL -> obbliga a inserire qualcosa nella colonna, la colonna onon può essere NULL

CREATE TABLE tizio (id INT NOT NULL,
							nome VARCHAR(100) NOT NULL,
							cognome VARCHAR(100),
							email VARCHAR(100));

-- rendo la colonna NOT NULL successivamente alla creazione
ALTER table tizio MODIFY cognome VARCHAR(100) NOT NULL;

-- unique -> rende i valori tutti diversi / non ammetet dupplicati
ALTER TABLE tizio ADD constraint email_uq UNIQUE (email);

ALTER TABLE tizio ADD COLUMN telefono VARCHAR(100),
										ADD CONSTRAINT telefono_uq UNIQUE(telefono);
										
ALTER TABLE tizio DROP CONSTRAINT telefono_uq;

ALTER table tizio MODIFY cognome VARCHAR(100) NULL;

ALTER TABLE tizio ADD COLUMN ETA INT;

-- check -> obbliga ad inserire solo alcuni valori
ALTER TABLE tizio ADD CONSTRAINT eta_ck CHECK(eta>18);

ALTER table tizio ADD constraint nome_ck CHECK(length(nome)>3);

CREATE TABLE tizio2(Id INT, email VARCHAR(50) NOT NULL UNIQUE CHECK(email LIKE '%@%'));