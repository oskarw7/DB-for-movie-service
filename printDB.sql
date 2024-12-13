USE Filmy;

SELECT 'Użytkownik' AS 'Typ', * FROM ZwykliUzytkownicy ORDER BY ID;
SELECT 'Krytyk' AS 'Typ', * FROM Krytycy ORDER BY ID;
SELECT 'Aktor' AS 'Typ', * FROM Aktorzy ORDER BY ID;
SELECT 'Reżyser' AS 'Typ', * FROM Rezyserowie ORDER BY ID;
SELECT * FROM Filmy ORDER BY ID;
SELECT * FROM Gatunki ORDER BY Nazwa;
SELECT * FROM GatunkiFilmu ORDER BY IDFilmu;
SELECT * FROM Nagrody ORDER BY ID;
SELECT * FROM NagrodyFilmu ORDER BY IDFilmu;
SELECT * FROM Obsada ORDER BY IDFilmu;
SELECT * FROM Opinie ORDER BY ID;
SELECT * FROM FilmyDoObejrzenia ORDER BY IDUzytkownika;