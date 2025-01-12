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

IF EXISTS (SELECT * FROM sys.identity_columns WHERE OBJECT_NAME(OBJECT_ID) = 'Opinie' AND last_value IS NOT NULL) DBCC CHECKIDENT ('Opinie', RESEED, 0);
IF EXISTS (SELECT * FROM sys.identity_columns WHERE OBJECT_NAME(OBJECT_ID) = 'Filmy' AND last_value IS NOT NULL) DBCC CHECKIDENT ('Filmy', RESEED, 0);
IF EXISTS (SELECT * FROM sys.identity_columns WHERE OBJECT_NAME(OBJECT_ID) = 'Osoby' AND last_value IS NOT NULL) DBCC CHECKIDENT ('Osoby', RESEED, 0);
IF EXISTS (SELECT * FROM sys.identity_columns WHERE OBJECT_NAME(OBJECT_ID) = 'Nagrody' AND last_value IS NOT NULL) DBCC CHECKIDENT ('Nagrody', RESEED, 0);


-- Zwykli użytkownicy
INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Marta', 'Kaczmarek', 'kobieta');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'marta.kaczmarek@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Tomasz', 'Szymański', 'mezczyzna');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'tomasz.szymanski@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Paweł', 'Kwiatkowski', 'mezczyzna');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'pawel.kwiatkowski@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Joanna', 'Pawlak', 'kobieta');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'joanna.pawlak@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Magdalena', 'Krawczyk', 'kobieta');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'magdalena.krawczyk@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Piotr', 'Sikora', 'mezczyzna');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'piotr.sikora@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Mariusz', 'Kucharski', 'mezczyzna');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'mariusz.kucharski@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Agnieszka', 'Mazur', 'kobieta');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'agnieszka.mazur@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Monika', 'Górska', 'kobieta');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'monika.gorska@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Michał', 'Wysocki', 'mezczyzna');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'michal.wysocki@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Zofia', 'Mazur', 'kobieta');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'zofia.mazur@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Lena', 'Nowak', 'kobieta');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'lena.nowak@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Karol', 'Duda', 'mezczyzna');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'karol.duda@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Dorota', 'Kwiatkowska', 'kobieta');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'dorota.kwiatkowska@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Szymon', 'Woźniak', 'mezczyzna');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'szymon.wozniak@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Weronika', 'Rybak', 'kobieta');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'weronika.rybak@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Rafał', 'Jabłoński', 'mezczyzna');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'rafal.jablonski@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Kamil', 'Mazur', 'mezczyzna');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'kamil.mazur@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Izabela', 'Piotrowska', 'kobieta');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'izabela.piotrowska@example.com');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Marcin', 'Kaczmarek', 'mezczyzna');
INSERT INTO ZwykliUzytkownicy (ID, Email) 
VALUES (IDENT_CURRENT('Osoby'), 'marcin.kaczmarek@example.com');


-- Krytycy
INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Piotr', 'Nowak', 'mezczyzna');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'piotr.nowak@example.com', 'FilmReview');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Marek', 'Wójcik', 'mezczyzna');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'marek.wojcik@example.com', 'FilmExpert');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Katarzyna', 'Kowalska', 'kobieta');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'katarzyna.kowalska@example.com', 'CinemaReview');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Ewa', 'Zielińska', 'kobieta');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'ewa.zielinska@example.com', 'MovieInsight');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Andrzej', 'Wiśniewski', 'mezczyzna');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'andrzej.wisniewski@example.com', 'CineCritics');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Aleksandra', 'Jankowska', 'kobieta');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'aleksandra.jankowska@example.com', 'FilmAnalysis');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Artur', 'Lis', 'mezczyzna');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'artur.lis@example.com', 'FilmCritique');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Krzysztof', 'Czajka', 'mezczyzna');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'krzysztof.czajka@example.com', 'MovieReview');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Julian', 'Nowicki', 'mezczyzna');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'julian.nowicki@example.com', 'CinemaExperts');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Katarzyna', 'Kwiatkowska', 'kobieta');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'katarzyna.kwiatkowska@example.com', 'CinemaReview');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Bartosz', 'Zieliński', 'mezczyzna');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'bartosz.zielinski@example.com', 'FilmReview');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Jolanta', 'Kozłowska', 'kobieta');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'jolanta.kozlowska@example.com', 'MovieTalk');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Tomasz', 'Wojciechowski', 'mezczyzna');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'tomasz.wojcichowski@example.com', 'CineCritics');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Paweł', 'Miller', 'mezczyzna');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'pawel.miller@example.com', 'FilmReview');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Julia', 'Nowak', 'kobieta');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'julia.nowak@example.com', 'FilmExpert');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Sebastian', 'Krawczyk', 'mezczyzna');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'sebastian.krawczyk@example.com', 'CineReview');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Elżbieta', 'Bąk', 'kobieta');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'elzbieta.bak@example.com', 'FilmCommentary');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Patryk', 'Lipiński', 'mezczyzna');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'patryk.lipinski@example.com', 'FilmReview');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Łukasz', 'Marcinowski', 'mezczyzna');
INSERT INTO Krytycy (ID, Email, Redakcja) 
VALUES (IDENT_CURRENT('Osoby'), 'lukasz.marcinowski@example.com', 'KinoFilm');

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Agnieszka', 'Szymańska', 'kobieta');
INSERT INTO Krytycy (ID, Email, Redakcja)
VALUES (IDENT_CURRENT('Osoby'), 'agnieszka.szymanska@example.com', 'FilmWorld');

-- Reżyserowie, ich filmy oraz obsada
INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Christopher', 'Nolan', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Christopher Nolan to brytyjsko-amerykański reżyser, producent i scenarzysta filmowy, znany z pracy nad thrillerami, które zmieniają postrzeganie rzeczywistości.');
DECLARE @RezyserID INT;
SET @RezyserID = IDENT_CURRENT('Osoby');
---
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera) 
VALUES ('Incepcja', 2010, 'Zdolny złodziej dostaje szansę na odkupienie, jeśli uda mu się przeprowadzić incepcję - zaszczepić pomysł w podświadomości celu.', 'link_do_zwiastuna_incepcja', @RezyserID);
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Leonardo', 'DiCaprio', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Leonardo DiCaprio to amerykański aktor i producent filmowy, znany z ról w filmach dramatycznych i thrillerach.');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Dom Cobb');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Joseph', 'Gordon-Levitt', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Joseph Gordon-Levitt to amerykański aktor, producent i reżyser, znany z ról w filmach i serialach o szerokim wachlarzu tematycznym.');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES ((SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), IDENT_CURRENT('Osoby'), 'Arthur');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Ellen', 'Page', 'kobieta');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Ellen Page to kanadyjska aktorka i producentka, znana z ról w filmach takich jak Incepcja i Juno.');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES ((SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), IDENT_CURRENT('Osoby'), 'Ariadne');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Tom', 'Hardy', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Tom Hardy to brytyjski aktor, znany z ról w filmach takich jak Mad Max: Na drodze gniewu i Incepcja.');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES ((SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), IDENT_CURRENT('Osoby'), 'Eames');
---
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera)
VALUES ('Interstellar', 2014, 'Grupa astronautów wyrusza w podróż kosmiczną, by znaleźć nowy dom dla ludzkości, gdy Ziemia przestaje być przyjazna.', 'link_do_zwiastuna_interstellar', @RezyserID);
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Matthew', 'McConaughey', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Matthew McConaughey to amerykański aktor, znany z ról w filmach takich jak Interstellar i Dallas Buyers Club.');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES ((SELECT ID FROM Filmy WHERE Tytul = 'Interstellar'), IDENT_CURRENT('Osoby'), 'Joseph Cooper');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Anne', 'Hathaway', 'kobieta');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Anne Hathaway to amerykańska aktorka, znana z ról w filmach takich jak Interstellar i Diabeł ubiera się u Prady.');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES ((SELECT ID FROM Filmy WHERE Tytul = 'Interstellar'), IDENT_CURRENT('Osoby'), 'Dr. Amelia Brand');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Jessica', 'Chastain', 'kobieta');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Jessica Chastain to amerykańska aktorka, znana z ról w filmach takich jak Interstellar i Zero Dark Thirty.');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES ((SELECT ID FROM Filmy WHERE Tytul = 'Interstellar'), IDENT_CURRENT('Osoby'), 'Murph Cooper');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Martin', 'Scorsese', 'mezczyzna');
SET @RezyserID = IDENT_CURRENT('Osoby');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Martin Scorsese to amerykański reżyser i producent, znany z filmów takich jak Wściekły Byk, Casino i Ostatni Władca Wietrzu.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera) 
VALUES ('Wściekły Byk', 1980, 'Historia boksera Jake’a LaMotta, który zmaga się z własnymi demonami w trakcie kariery zawodowej.', 'link_do_zwiastuna_wsciekly_byk', @RezyserID);
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Robert', 'De Niro', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Robert De Niro to amerykański aktor, znany z ról w filmach takich jak "Wściekły Byk", "Casino", "Raging Bull".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Jake LaMotta');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Joe', 'Pesci', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Joe Pesci to amerykański aktor, znany z ról w filmach "Wściekły Byk" i "Goodfellas".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Tommy');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Cathy', 'Moriarty', 'kobieta');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Cathy Moriarty to amerykańska aktorka, znana z roli w "Wściekłym Byku".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Vickie LaMotta');
---
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera) 
VALUES ('Wilk z Wall Street', 2013, 'Historia Jordana Belforta, maklera giełdowego prowadzącego życie pełne luksusu i oszustw.', 'link_do_zwiastuna_wilk_z_wall_street', @RezyserID);
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Jonah', 'Hill', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Jonah Hill to amerykański aktor i komik, znany z roli w "Wilku z Wall Street".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Donnie Azoff');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Margot', 'Robbie', 'kobieta');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Margot Robbie to australijska aktorka, znana z ról w filmach "Wilk z Wall Street" i "Barbie".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Naomi Lapaglia');
    ---
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola)
    VALUES (IDENT_CURRENT('Filmy'), (SELECT ID FROM Osoby WHERE Imie = 'Leonardo' AND Nazwisko = 'DiCaprio'), 'Jordan Belfort');
    ---
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola)
    VALUES (IDENT_CURRENT('Filmy'), (SELECT ID FROM Osoby WHERE Imie = 'Matthew' AND Nazwisko = 'McConaughey'), 'Mark Hanna');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Quentin', 'Tarantino', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Quentin Tarantino to amerykański reżyser, scenarzysta i producent, znany z filmów takich jak Pulp Fiction i Django.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera) 
VALUES ('Pulp Fiction', 1994, 'Trzy połączone historie kryminalne z życia ludzi, którzy spotykają się w Los Angeles.', 'link_do_zwiastuna_pulp_fiction', IDENT_CURRENT('Osoby'));
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('John', 'Travolta', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'John Travolta to amerykański aktor, który zyskał popularność rolą w "Pulp Fiction" i "Grease".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Vincent Vega');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Uma', 'Thurman', 'kobieta');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Uma Thurman to amerykańska aktorka, znana z "Pulp Fiction" i "Kill Bill".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Mia Wallace');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Bruce', 'Willis', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Bruce Willis to amerykański aktor, znany z ról w "Pulp Fiction" i "Die Hard".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Butch Coolidge');


INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Steven', 'Spielberg', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Steven Spielberg to amerykański reżyser, znany z filmów takich jak E.T., Jurassic Park i Lista Schindlera.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera) 
VALUES ('E.T.', 1982, 'Grupa dzieci pomaga obcemu wrócić na swoją planetę, tworząc nieoczekiwaną przyjaźń z istotą z innego świata.', 'link_do_zwiastuna_et', IDENT_CURRENT('Osoby'));
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Henry', 'Thomas', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Henry Thomas to amerykański aktor, który zagrał w filmie "E.T.".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Elliott');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Drew', 'Barrymore', 'kobieta');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Drew Barrymore to amerykańska aktorka, znana z filmów "E.T." i "50 First Dates".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Gertie');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Ridley', 'Scott', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Ridley Scott to brytyjski reżyser i producent, znany z takich filmów jak Alien, Gladiator i The Martian.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera) 
VALUES ('Gladiator', 2000, 'Rzym, 180 n.e. General Maximus zostaje zdradzony przez cesarza i staje się gladiatorem walczącym o zemstę.', 'link_do_zwiastuna_gladiator', IDENT_CURRENT('Osoby'));
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Russell', 'Crowe', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Russell Crowe to nowozelandzki aktor, znany z roli w "Gladiatorze" oraz "A Beautiful Mind".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Maximus');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Joaquin', 'Phoenix', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Joaquin Phoenix to amerykański aktor, znany z ról w filmach "Gladiator" i "Joker".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Commodus');

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Lana', 'Wachowski', 'kobieta');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Lana Wachowski to amerykańska reżyserka, scenarzystka i producentka, znana z reżyserowania serii filmów "The Matrix".');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera)
VALUES ('The Matrix', 1999, 'Film science fiction opowiadający historię hakera, który odkrywa, że rzeczywistość, w której żyje, jest symulacją stworzoną przez maszyny.', 'link_do_zwiastuna_the_matrix', IDENT_CURRENT('Osoby'));
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Keanu', 'Reeves', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Keanu Reeves to kanadyjski aktor, znany z roli w "The Matrix" oraz "John Wick".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Neo');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Laurence', 'Fishburne', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Laurence Fishburne to amerykański aktor, znany z roli Morpheusa w "The Matrix".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Morpheus');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Carrie-Anne', 'Moss', 'kobieta');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Carrie-Anne Moss to kanadyjska aktorka, znana z roli Trinity w "The Matrix".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Trinity');

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Robert', 'Zemeckis', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Robert Zemeckis to amerykański reżyser i producent, znany z takich filmów jak "Forrest Gump", "Back to the Future" oraz "Cast Away".');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera)
VALUES ('Forrest Gump', 1994, 'Film opowiadający historię mężczyzny o niskim IQ, który przypadkowo staje się świadkiem i uczestnikiem najważniejszych wydarzeń w historii Stanów Zjednoczonych.', 'link_do_zwiastuna_forrest_gump', IDENT_CURRENT('Osoby'));
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Tom', 'Hanks', 'mezczyzna');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Tom Hanks to amerykański aktor, znany z roli w "Forrest Gump" oraz "Cast Away".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Forrest Gump');
    ---
    INSERT INTO Osoby (Imie, Nazwisko, Plec) 
    VALUES ('Robin', 'Wright', 'kobieta');
    INSERT INTO Aktorzy (ID, Zyciorys) 
    VALUES (IDENT_CURRENT('Osoby'), 'Robin Wright to amerykańska aktorka, znana z roli Jenny w "Forrest Gump".');
    INSERT INTO Obsada (IDFilmu, IDAktora, Rola) 
    VALUES (IDENT_CURRENT('Filmy'), IDENT_CURRENT('Osoby'), 'Jenny Curran');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Alastair', 'Fothergill', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Alastair Fothergill to brytyjski reżyser, specjalizujący się w produkcjach dokumentalnych, szczególnie przyrodniczych.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera) 
VALUES ('Planeta Ziemia', 2006, 'Dokument przyrodniczy ukazujący najwspanialsze miejsca na naszej planecie i życie w nich.', 'link_do_zwiastuna_planeta_ziemia', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('John', 'Smith', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'John Smith to reżyser filmów dokumentalnych, który zyskał popularność dzięki swojej pracy nad dokumentami o historii świata.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera) 
VALUES ('Wielki Mur Chiński', 2017, 'Dokument ukazujący historię i budowę Wielkiego Muru Chińskiego oraz jego wpływ na kulturę.', 'link_do_zwiastuna_wielki_mur_chinski', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Jacques', 'Cousteau', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Jacques Cousteau to francuski reżyser, odkrywca i badacz oceanów, znany ze swoich filmów dokumentalnych.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera) 
VALUES ('Ocean', 2009, 'Film dokumentalny o życiu oceanicznym, który przedstawia niezwykłą florę i faunę mórz i oceanów.', 'link_do_zwiastuna_ocean', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Carl', 'Sagan', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Carl Sagan był amerykańskim astronomem, astrofizykiem i reżyserem, który zyskał sławę dzięki swojej pracy nad popularyzacją nauki.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera) 
VALUES ('Kosmos', 1980, 'Dokument opowiadający o historii wszechświata, jego początkach oraz ewolucji planet.', 'link_do_zwiastuna_kosmos', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('David', 'Attenborough', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'David Attenborough to brytyjski reżyser i prezenter telewizyjny, znany z programów przyrodniczych i dokumentalnych.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera)
VALUES ('Życie na Ziemi', 2009, 'Dokumentalny serial przyrodniczy ukazujący różnorodność życia na naszej planecie i jego niesamowite formy.', 'link_do_zwiastuna_zycie_na_ziemi', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Neil', 'deGrasse Tyson', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Neil deGrasse Tyson to amerykański astrofizyk, autor książek naukowych oraz prowadzący popularne programy telewizyjne.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera)
VALUES ('Cosmos: A Spacetime Odyssey', 2014, 'Serial dokumentalny eksplorujący wszechświat i historię nauki w kontekście kosmologii, astrofizyki i astronomii.', 'link_do_zwiastuna_cosmos', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Jason', 'Hehir', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Jason Hehir to amerykański reżyser i producent filmowy, znany z dokumentów sportowych.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera)
VALUES ('The Last Dance', 2020, 'Dokument opowiadający o ostatnim sezonie Michaela Jordana w Chicago Bulls oraz jego wpływie na koszykówkę i kulturę sportową.', 'link_do_zwiastuna_the_last_dance', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Emer', 'Reid', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Emer Reid to irlandzki reżyser i producent, znany z dokumentów naukowych o przestrzeni kosmicznej.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera)
VALUES ('The Farthest: Voyager in Space', 2017, 'Dokument o sondzie Voyager 1, która stała się najdalszym obiektem stworzonym przez człowieka, wysłanym w przestrzeń kosmiczną.', 'link_do_zwiastuna_the_farthest', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Errol', 'Morris', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Errol Morris to amerykański reżyser dokumentalny, znany z tworzenia filmów o tematyce wojennej i politycznej.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera)
VALUES ('The Fog of War', 2003, 'Dokumentalny film, który bada życie Roberta S. McNamary, amerykańskiego sekretarza obrony, oraz jego decyzje w czasie wojny w Wietnamie.', 'link_do_zwiastuna_the_fog_of_war', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Ava', 'DuVernay', 'kobieta');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Ava DuVernay to amerykańska reżyserka, scenarzystka i producentka, znana z filmów poruszających kwestie rasowe, społeczne i polityczne.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, IDRezysera)
VALUES ('13th', 2016, 'Film dokumentalny, który bada nierówności rasowe w Stanach Zjednoczonych, koncentrując się na więziennictwie i systemie sprawiedliwości.', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Morgan', 'Neville', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Morgan Neville to amerykański reżyser dokumentalny, który zdobył uznanie za swoje produkcje o postaciach kulturowych i ważnych osobach.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera)
VALUES ('Wont You Be My Neighbor?', 2018, 'Dokument opowiadający historię Freda Rogersa, prowadzącego popularny program telewizyjny dla dzieci, który promował miłość, empatię i pozytywne wartości.', 'link_do_zwiastuna_wont_you_be_my_neighbor', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Jan', 'Kowalski', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Jan Kowalski to polski reżyser filmów dokumentalnych, specjalizujący się w tematach związanych z historią i kulturą.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, Zwiastun, IDRezysera)
VALUES ('The Great Escape: Zatrzymać Czas', 2019, 'Film dokumentalny o wybitnym polskim fotografiku i filmowcu, ukazujący jego proces twórczy oraz uchwycone w czasie momenty historyczne.', 'link_do_zwiastuna_great_escape', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Andrzej', 'Mazurek', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Andrzej Mazurek to reżyser dokumentalny, znany z tworzenia filmów opartych na archiwalnych materiałach z II wojny światowej.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, IDRezysera)
VALUES ('Powstanie Warszawskie', 2014, 'Film dokumentalny, który w całości bazuje na archiwalnych materiałach wideo i zdjęciach z okresu Powstania Warszawskiego, ukazując rzeczywiste wydarzenia.', IDENT_CURRENT('Osoby'));


-- Gatunki - tabela słownikowa
INSERT INTO Gatunki (Nazwa, Opis)
VALUES
    ('Thriller', 'Film, który wzbudza napięcie i emocje związane z zagrożeniem lub tajemnicą.'),
    ('Sci-Fi', 'Filmy opowiadające o przyszłości, technologii, obcych cywilizacjach lub podróżach kosmicznych.'),
    ('Drama', 'Filmy, które koncentrują się na rozwoju postaci i emocjonalnych doświadczeniach.'),
    ('Dokumentalny', 'Filmy przedstawiające rzeczywiste wydarzenia, postacie lub zjawiska w celu edukacyjnym lub informacyjnym.'),
    ('Akcja', 'Filmy o szybkim tempie, pełne scen walki, pościgów, wybuchów i napięcia.'),
    ('Biograficzny', 'Filmy oparte na prawdziwych wydarzeniach z życia postaci historycznych.'),
    ('Historyczny', 'Filmy ukazujące wydarzenia z przeszłości, zazwyczaj z dbałością o historyczną wierność.'),
    ('Fantasy', 'Filmy, które przedstawiają nierealistyczne, magiczne lub fantastyczne światy.'),
    ('Sport', 'Filmy związane z wydarzeniami sportowymi, sportowcami i rywalizacją.'),
    ('Przyrodniczy', 'Filmy ukazujące życie zwierząt, roślin i naturalne środowisko w sposób edukacyjny.'),
    ('Komedia', 'Filmy, które mają na celu rozśmieszyć widza i wywołać u niego pozytywne emocje.'),
    ('Horror', 'Filmy, które mają na celu wzbudzić strach i przerażenie u widza.'),
    ('Romans', 'Filmy, które koncentrują się na relacjach miłosnych i emocjach związanych z miłością.'),
    ('Muzyczny', 'Filmy, które zawierają elementy muzyczne, takie jak piosenki, tańce i koncerty.'),
    ('Western', 'Filmy osadzone w dzikim zachodzie, z charakterystycznymi motywami i konwencjami gatunku.'),
    ('Kryminał', 'Filmy, które koncentrują się na zagadkach kryminalnych, śledztwach i zbrodniach.');


-- Gatunki filmów
INSERT INTO GatunkiFilmu (NazwaGatunku, IDFilmu)
VALUES
    ('Thriller', (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja')),
    ('Sci-Fi',  (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja')),
    ('Sci-Fi',  (SELECT ID FROM Filmy WHERE Tytul = 'Interstellar')),
    ('Drama',  (SELECT ID FROM Filmy WHERE Tytul = 'Interstellar')),
    ('Drama',  (SELECT ID FROM Filmy WHERE Tytul = 'Wściekły byk')),
    ('Biograficzny',  (SELECT ID FROM Filmy WHERE Tytul = 'Wściekły byk')),
    ('Akcja',  (SELECT ID FROM Filmy WHERE Tytul = 'Pulp Fiction')),
    ('Drama', (SELECT ID FROM Filmy WHERE Tytul = 'Pulp Fiction')),
    ('Sci-Fi', (SELECT ID FROM Filmy WHERE Tytul = 'E.T.')),
    ('Drama', (SELECT ID FROM Filmy WHERE Tytul = 'E.T.')),
    ('Akcja', (SELECT ID FROM Filmy WHERE Tytul = 'Gladiator')),
    ('Historyczny', (SELECT ID FROM Filmy WHERE Tytul = 'Gladiator')),
    ('Sci-Fi', (SELECT ID FROM Filmy WHERE Tytul = 'The Matrix')),
    ('Akcja', (SELECT ID FROM Filmy WHERE Tytul = 'The Matrix')),
    ('Drama', (SELECT ID FROM Filmy WHERE Tytul = 'Forrest Gump')),
    ('Komedia', (SELECT ID FROM Filmy WHERE Tytul = 'Forrest Gump')),
    ('Dokumentalny', (SELECT ID FROM Filmy WHERE Tytul = 'Planeta Ziemia')),
    ('Przyrodniczy', (SELECT ID FROM Filmy WHERE Tytul = 'Planeta Ziemia')),
    ('Dokumentalny', (SELECT ID FROM Filmy WHERE Tytul = 'Wielki Mur Chiński')),
    ('Dokumentalny', (SELECT ID FROM Filmy WHERE Tytul = 'Ocean')),
    ('Przyrodniczy', (SELECT ID FROM Filmy WHERE Tytul = 'Ocean')),
    ('Dokumentalny', (SELECT ID FROM Filmy WHERE Tytul = 'Kosmos')),
    ('Dokumentalny', (SELECT ID FROM Filmy WHERE Tytul = 'Życie na Ziemi')),
    ('Przyrodniczy', (SELECT ID FROM Filmy WHERE Tytul = 'Życie na Ziemi')),
    ('Dokumentalny', (SELECT ID FROM Filmy WHERE Tytul = 'Cosmos: A Spacetime Odyssey')),
    ('Dokumentalny', (SELECT ID FROM Filmy WHERE Tytul = 'The Last Dance')),
    ('Sport', (SELECT ID FROM Filmy WHERE Tytul = 'The Last Dance')),
    ('Dokumentalny', (SELECT ID FROM Filmy WHERE Tytul = 'The Farthest: Voyager in Space')),
    ('Dokumentalny', (SELECT ID FROM Filmy WHERE Tytul = 'The Fog of War')),
    ('Dokumentalny', (SELECT ID FROM Filmy WHERE Tytul = '13th')),
    ('Dokumentalny', (SELECT ID FROM Filmy WHERE Tytul = 'Wont You Be My Neighbor?')),
    ('Dokumentalny', (SELECT ID FROM Filmy WHERE Tytul = 'The Great Escape: Zatrzymać Czas')),
    ('Dokumentalny', (SELECT ID FROM Filmy WHERE Tytul = 'Powstanie Warszawskie')),
    ('Historyczny', (SELECT ID FROM Filmy WHERE Tytul = 'Powstanie Warszawskie'));


-- Nagrody - tabela słownikowa
INSERT INTO Nagrody (Nazwa, Kategoria) 
VALUES 
    ('Oscar', 'Najlepszy Film'),
    ('Oscar', 'Najlepsza Reżyseria'),
    ('Oscar', 'Najlepszy Aktor'),
    ('Złoty Glob', 'Najlepszy Film - Dramat'),
    ('Oscar', 'Najlepszy Film - Dramat'),
    ('Złoty Glob', 'Najlepsza Reżyseria'),
    ('Emmy', 'Najlepszy Film Dokumentalny'),
    ('Złoty Glob', 'Najlepszy Film Dokumentalny'),
    ('BAFTA', 'Najlepsza Reżyseria'),
    ('Złoty Lew', 'Najlepszy Film');


-- Nagrody filmów
INSERT INTO NagrodyFilmu (IDNagrody, IDFilmu, Rok) 
VALUES 
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Oscar' AND Kategoria = 'Najlepszy Film'), (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), 2011),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'BAFTA' AND Kategoria = 'Najlepsza Reżyseria'), (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), 2011),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Złoty Lew' AND Kategoria = 'Najlepszy Film'), (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), 2011),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Oscar' AND Kategoria = 'Najlepszy Film - Dramat'), (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), 2011),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Złoty Glob' AND Kategoria = 'Najlepsza Reżyseria'), (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), 2011),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Oscar' AND Kategoria = 'Najlepsza Reżyseria'), (SELECT ID FROM Filmy WHERE Tytul = 'Interstellar'), 2014),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Oscar' AND Kategoria = 'Najlepszy Aktor'), (SELECT ID FROM Filmy WHERE Tytul = 'Wściekły byk'), 1980),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Złoty Glob' AND Kategoria = 'Najlepszy Film - Dramat'), (SELECT ID FROM Filmy WHERE Tytul = 'Pulp Fiction'), 1994),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Oscar' AND Kategoria = 'Najlepszy Film'), (SELECT ID FROM Filmy WHERE Tytul = 'E.T.'), 1982),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Oscar' AND Kategoria = 'Najlepszy Film'), (SELECT ID FROM Filmy WHERE Tytul = 'Gladiator'), 2000),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Emmy' AND Kategoria = 'Najlepszy Film Dokumentalny'), (SELECT ID FROM Filmy WHERE Tytul = 'The Matrix'), 1999),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Oscar' AND Kategoria = 'Najlepszy Film'), (SELECT ID FROM Filmy WHERE Tytul = 'Forrest Gump'), 1994),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Złoty Glob' AND Kategoria = 'Najlepszy Film Dokumentalny'), (SELECT ID FROM Filmy WHERE Tytul = 'Planeta Ziemia'), 2006),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'BAFTA' AND Kategoria = 'Najlepsza Reżyseria'), (SELECT ID FROM Filmy WHERE Tytul = 'Wielki Mur Chiński'), 2014),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'BAFTA' AND Kategoria = 'Najlepsza Reżyseria'), (SELECT ID FROM Filmy WHERE Tytul = 'Ocean'), 2017),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Złoty Glob' AND Kategoria = 'Najlepszy Film Dokumentalny'), (SELECT ID FROM Filmy WHERE Tytul = 'Kosmos'), 2003),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Złoty Glob' AND Kategoria = 'Najlepszy Film Dokumentalny'), (SELECT ID FROM Filmy WHERE Tytul = 'Życie na Ziemi'), 2016),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Złoty Glob' AND Kategoria = 'Najlepszy Film Dokumentalny'), (SELECT ID FROM Filmy WHERE Tytul = 'Cosmos: A Spacetime Odyssey'), 2018),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Złoty Glob' AND Kategoria = 'Najlepszy Film Dokumentalny'), (SELECT ID FROM Filmy WHERE Tytul = 'The Last Dance'), 2014),
    ((SELECT ID FROM Nagrody WHERE Nazwa = 'Złoty Glob' AND Kategoria = 'Najlepszy Film Dokumentalny'), (SELECT ID FROM Filmy WHERE Tytul = 'The Farthest: Voyager in Space'), 2014);


-- Opinie użytkowników
GO
INSERT INTO Opinie (IDZwyklegoUzytkownika, IDFilmu, Ocena, Tresc, DataWystawienia)
VALUES
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'marta.kaczmarek@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), 8, 'Film był naprawdę interesujący.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'marta.kaczmarek@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'The Great Escape: Zatrzymać Czas'), 9, 'Arcydzieło, naprawdę warto zobaczyć.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'marta.kaczmarek@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Forrest Gump'), 9, 'Warto zobaczyć.', '2023-12-10'),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'tomasz.szymanski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), 9, 'Naprawdę dobra produkcja.', '2024-12-12'),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'pawel.kwiatkowski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Wściekły byk'), 7, 'Dobry, ale czegoś mi brakowało.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'joanna.pawlak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Pulp Fiction'), 6, 'Były lepsze filmy w tym gatunku.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'magdalena.krawczyk@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'E.T.'), 10, 'Fantastyczny, polecam każdemu!', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'piotr.sikora@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Gladiator'), 5, 'Nie mój styl, ale może się podobać.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'mariusz.kucharski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'The Matrix'), 8, 'Bardzo dobrze zrealizowany film.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'agnieszka.mazur@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Forrest Gump'), 9, 'Rewelacyjna obsada i scenariusz.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'monika.gorska@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Planeta Ziemia'), 7, 'Ciekawy, ale bez większych emocji.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'michal.wysocki@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Wielki Mur Chiński'), 6, 'Średni film, ale nie był zły.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'zofia.mazur@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Ocean'), 9, 'Bardzo mi się podobał.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'lena.nowak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Kosmos'), 7, 'Zaskakująca końcówka.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'karol.duda@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Życie na Ziemi'), 8, 'Film z dużym potencjałem.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'dorota.kwiatkowska@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Cosmos: A Spacetime Odyssey'), 6, 'Był w porządku, ale bez szału.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'szymon.wozniak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'The Last Dance'), 10, 'Jeden z najlepszych, jakie widziałem!', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'weronika.rybak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'The Farthest: Voyager in Space'), 9, 'Poruszający i dobrze zrealizowany.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'rafal.jablonski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), 5, 'Nie polecam, zbyt chaotyczny.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'kamil.mazur@example.com'), (SELECT ID FROM Filmy WHERE Tytul = '13th'), 7, 'Dobry, ale brakowało emocji.', GETDATE()),
    ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'izabela.piotrowska@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Wont You Be My Neighbor?'), 8, 'Podobał mi się klimat filmu.', GETDATE());
GO


-- Recenzje krytyków
INSERT INTO Opinie (IDKrytyka, IDFilmu, Ocena, Tresc, DataWystawienia)
VALUES
    ((SELECT ID FROM Krytycy WHERE Email = 'piotr.nowak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), 9, '"Incepcja" to film pełen warstw - zarówno dosłownie, jak i metaforycznie. Zanurzając się w wielopoziomowy świat snów, Nolan rzuca wyzwanie percepcji widza, kwestionując granice między rzeczywistością a fikcją. Film zachwyca nie tylko swoją innowacyjną fabułą, ale także doskonałą grą aktorską, w tym występami Leonarda DiCaprio i Josepha Gordona-Levitta.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'piotr.nowak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Interstellar'), 7, 'Film dobry, ale przewidywalny w niektórych momentach.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'katarzyna.kowalska@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), 8, 'Świetna gra aktorska i wspaniałe zdjęcia.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'piotr.nowak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Pulp Fiction'), 9, '"Pulp Fiction" to film, który zrewolucjonizował gatunek kryminalny, łącząc brutalność z humorem i inteligentnym komentarzem społecznym. Każda ze splątanych historii – od rozterek płatnych zabójców, przez upadek boksera, po problemy z nieoczekiwanym "sprzątaniem" – jest niezależnym arcydziełem, które harmonijnie współgra z resztą fabuły.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'piotr.nowak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'E.T.'), 7, 'Ten film to klasyk, który niesamowicie wpłynął na gatunek Sci-Fi', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'andrzej.wisniewski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'E.T.'), 10, 'Arcydzieło filmowe, które porusza ważne tematy.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'aleksandra.jankowska@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Gladiator'), 8, '"Gladiator" to nie tylko spektakularne widowisko, ale również emocjonalna podróż, która angażuje widza na wielu poziomach. Russell Crowe, w swojej oscarowej roli Maximus Decimus Meridius, wciela się w postać niezłomnego bohatera, który staje się symbolem walki o sprawiedliwość.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'artur.lis@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'The Matrix'), 8, 'Świetne tempo akcji i zaskakujące zwroty fabuły.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'krzysztof.czajka@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Planeta Ziemia'), 7, 'Dobra produkcja, chociaż miejscami zbyt wolna.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'julian.nowicki@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Planeta Ziemia'), 9, 'Niezwykłe efekty specjalne i wciągająca narracja.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'katarzyna.kwiatkowska@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Wielki Mur Chiński'), 8, 'Zaskakująco świeże spojrzenie na znany temat.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'bartosz.zielinski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Ocean'), 6, 'Brakuje głębi, ale przyjemny do obejrzenia.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'jolanta.kozlowska@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Kosmos'), 9, 'Wspaniała ścieżka dźwiękowa i emocjonujące zakończenie.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'tomasz.wojcichowski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Życie na Ziemi'), 7, 'Solidna produkcja, choć brakuje większego zaskoczenia.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'pawel.miller@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Cosmos: A Spacetime Odyssey'), 5, 'Film z dużym potencjałem, ale realizacja zawiodła.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'pawel.miller@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'The Last Dance'), 7, 'Wciągający dokument o życiu Michaela Jordana.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'julia.nowak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'The Last Dance'), 10, 'Pełne emocji arcydzieło, które na długo zapada w pamięć.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'sebastian.krawczyk@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'The Farthest: Voyager in Space'), 6, 'Niektóre wątki nie zostały w pełni rozwinięte.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'elzbieta.bak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'The Fog of War'), 7, 'Świetna narracja.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'patryk.lipinski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'E.T.'), 6, 'Przełomowy jak na swój czas, obecnie karykaturalny.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'patryk.lipinski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = '13th'), 7, 'Dobrze zrealizowany film, ale bez większego zachwytu.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'patryk.lipinski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), 8, 'Dobry film.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'lukasz.marcinowski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), 7, 'Wciągający film, który można analizować dniami.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'lukasz.marcinowski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Interstellar'), 9, 'Zaskakujące i pełne emocji zakończenie.', GETDATE()),
    ((SELECT ID FROM Krytycy WHERE Email = 'agnieszka.szymanska@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Interstellar'), 10, 'Perfekcyjna realizacja i niesamowita fabuła.', GETDATE());
GO


-- Filmy na liście do obejrzenia
INSERT INTO FilmyDoObejrzenia (IDUzytkownika, IDFilmu, Status)
VALUES
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'marta.kaczmarek@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), 'Watched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'marta.kaczmarek@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Interstellar'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'marta.kaczmarek@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Wściekły byk'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'joanna.pawlak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Incepcja'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'magdalena.krawczyk@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Wściekły byk'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'marta.kaczmarek@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Gladiator'), 'watched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'mariusz.kucharski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'The Matrix'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'agnieszka.mazur@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Forrest Gump'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'monika.gorska@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Planeta Ziemia'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'michal.wysocki@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Wielki Mur Chiński'), 'watched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'zofia.mazur@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Ocean'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'lena.nowak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Kosmos'), 'watched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'lena.nowak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Życie na Ziemi'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'karol.duda@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Cosmos: A Spacetime Odyssey'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'szymon.wozniak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'The Last Dance'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'weronika.rybak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'The Farthest: Voyager in Space'), 'watched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'rafal.jablonski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'The Fog of War'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'kamil.mazur@example.com'), (SELECT ID FROM Filmy WHERE Tytul = '13th'), 'watched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'izabela.piotrowska@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Wont You Be My Neighbor?'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'joanna.pawlak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Interstellar'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'joanna.pawlak@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'Wściekły byk'), 'notWatched'),
  ((SELECT ID FROM ZwykliUzytkownicy WHERE Email = 'rafal.jablonski@example.com'), (SELECT ID FROM Filmy WHERE Tytul = 'The Great Escape: Zatrzymać Czas'), 'notWatched');
