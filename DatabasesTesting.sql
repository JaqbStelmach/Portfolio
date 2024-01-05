CREATE DATABASE test; 

CREATE TABLE pracownik(
pracownik_id INT PRIMARY KEY,
imie VARCHAR(30) NOT NULL,
nazwisko VARCHAR(80) NOT NULL,
stanowisko VARCHAR(20),
data_zatrudnienia DATE NOT NULL,
wynagrodzenie NUMERIC(10,2)
);
INSERT INTO pracownik VALUES (1, ‘Adam’, ‘Nowak’,‘Prezes’,’20.06.1997’, 25000.37);
INSERT INTO pracownik VALUES (2, ‘Jan’, ‘Kowalski’,‘Programista’,’05.06.2016’, 7500.21);
INSERT INTO pracownik VALUES (3, ‘Dominika’, ‘Kot’,‘Sekretarka’,’01.12.2008’, 4327.99);
INSERT INTO pracownik VALUES (4, ‘Klaudia’, ‘Lato’,‘Tester’,’12.10.2019’, 7800.23);
INSERT INTO pracownik VALUES (5, ‘Jakub’, ‘Zima’,‘DevOps’,’13.04.2022’, 6572.77);

UPDATE pracownik SET wynagrodzenie=5760.67 WHERE pracownik_id IN (3,1,5,6);
SELECT * FROM pracownik ORDER BY wynagrodzenie DESC;
ALTER TABLE pracownik RENAME wynagrodzenie TO „wynagrodzenie [PLN]”;
ALTER TABLE pracownik ADD „wynagrodzenie dolary” NUMERIC(10,2);
SELECT * FROM pracownik WHERE stanowisko=’Sprzedawca’
OR wynagrodzenie>5000;


CREATE TABLE
CREATE TABLE klient(
klient_id INT PRIMARY KEY,
imie VARCHAR(30) NOT NULL,
nazwisko VARCHAR(80) NOT NULL,
adres VARCHAR(20) NOT NULL,
czy_firma BOOLEAN NOT NULL,
pracownik_id VARCHAR(10) NOT NULL
);
INSERT INTO klient VALUES (1, ‘Marcin’, ‘Kaczka’,‘Wodna 17’,true, 3);
INSERT INTO klient VALUES (2, ‘Tomasz’, ‘Nowak’,‘Mickiewicza 13’,false, 2);
INSERT INTO klient VALUES (3, ‘Justyna’, ‘Listopad’,‘Stroma 7’,false, 2);
INSERT INTO klient VALUES (4, ‘Agata, ‘Karolak’,‘Lwowska 56’,true, 3);
INSERT INTO klient VALUES (5, ‘Maciej’, ‘Stec’,‘Sportowa 66’,true, 1);

SELECT nazwisko AS surname from klient;
SELECT FROM klient WHERE czy_firma=true;
SELECT FROM * klient WHERE imie != ‘Maciej’;

SELECT pracownik.imie AS "imie pracownika", pracownik.nazwisko AS "nazwisko pracownika", klient.imie AS "imie klienta", klient.nazwisko AS "nazwisko klienta"
FROM pracownik INNER JOIN klient
ON pracownik.pracownik_id=klient.pracownik_id;
