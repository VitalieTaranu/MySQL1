CREATE DATABASE universitate;
​
CREATE TABLE universitate.studenti (
	id numeric PRIMARY KEY,
    nume text(30) NOT NULL,
    prenume text(30) NOT NULL,
    adresa text(50),
    telefon text(10),
    email text(30));
    
INSERT INTO universitate.studenti VALUES (
	1, 'Taranu', 'Vitalie', 'Chisinau', '01234567', 'vitalie@gmail.com');
    
INSERT INTO universitate.studenti VALUES (
	2, 'Balaian', 'Dumitru', '', '0123221', 'dima@gmail.com');
    
CREATE TABLE universitate.cursuri (
	id numeric PRIMARY KEY,
    nume text(40),
    credite numeric);
    
CREATE TABLE universitate.inscrieri (
	id numeric PRIMARY KEY,
    student_id numeric,
    curs_id numeric);
    
ALTER TABLE universitate.inscrieri
ADD CONSTRAINT FOREIGN KEY (student_id) 
REFERENCES universitate.studenti(id);
​
ALTER TABLE universitate.inscrieri
ADD CONSTRAINT FOREIGN KEY (curs_id) 
REFERENCES universitate.cursuri(id);
​
DESCRIBE universitate.inscrieri;
​
DROP TABLE universitate.cursuri;
​
SELECT nume, prenume, telefon FROM universitate.studenti
WHERE prenume = 'Dumitru';
​
SELECT COUNT(*) FROM universitate.studenti
WHERE prenume = 'Dumitru';
​
UPDATE universitate.studenti
SET prenume = 'Dima'
WHERE prenume = 'Dumitru';
​
DELETE FROM universitate.studenti
WHERE id = 3;
​
SELECT * FROM universitate.studenti;