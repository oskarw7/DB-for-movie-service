USE Filmy;

DELETE FROM Obsada;
DELETE FROM NagrodyFilmu;
DELETE FROM GatunkiFilmu;
DELETE FROM FilmyDoObejrzenia;
DELETE FROM Opinie;
DELETE FROM Nagrody;
DELETE FROM Gatunki;
DELETE FROM Filmy;
DELETE FROM Rezyserowie;
DELETE FROM Aktorzy;
DELETE FROM Krytycy;
DELETE FROM ZwykliUzytkownicy;
DELETE FROM Osoby;

-- Problem związany z resetowaniem wartości IDENTITY rozwiązany dzięki: https://stackoverflow.com/questions/472578/dbcc-checkident-sets-identity-to-0
IF EXISTS (SELECT * FROM sys.identity_columns WHERE OBJECT_NAME(OBJECT_ID) = 'Opinie' AND last_value IS NOT NULL) DBCC CHECKIDENT ('Opinie', RESEED, 0);
IF EXISTS (SELECT * FROM sys.identity_columns WHERE OBJECT_NAME(OBJECT_ID) = 'Filmy' AND last_value IS NOT NULL) DBCC CHECKIDENT ('Filmy', RESEED, 0);
IF EXISTS (SELECT * FROM sys.identity_columns WHERE OBJECT_NAME(OBJECT_ID) = 'Osoby' AND last_value IS NOT NULL) DBCC CHECKIDENT ('Osoby', RESEED, 0);
IF EXISTS (SELECT * FROM sys.identity_columns WHERE OBJECT_NAME(OBJECT_ID) = 'Nagrody' AND last_value IS NOT NULL) DBCC CHECKIDENT ('Nagrody', RESEED, 0);