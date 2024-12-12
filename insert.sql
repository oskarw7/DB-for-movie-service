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

INSERT INTO Osoby (Imie, Nazwisko, Plec) VALUES ('Łukasz', 'Marcinowski', 'mezczyzna');
INSERT INTO Krytycy (ID, Email, Redakcja) VALUES (IDENT_CURRENT('Osoby'), 'lukasz.marcinowski@example.com', 'KinoFilm');

INSERT INTO Osoby (Imie, Nazwisko, Plec) VALUES ('Agnieszka', 'Szymańska', 'kobieta');
INSERT INTO Krytycy (ID, Email, Redakcja) VALUES (IDENT_CURRENT('Osoby'), 'agnieszka.szymanska@example.com', 'FilmWorld');


-- Aktorzy
INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Leonardo', 'DiCaprio', 'mezczyzna');
INSERT INTO Aktorzy (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Leonardo DiCaprio to amerykański aktor i producent filmowy, znany z ról w filmach dramatycznych i thrillerach.');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Joseph', 'Gordon-Levitt', 'mezczyzna');
INSERT INTO Aktorzy (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Joseph Gordon-Levitt to amerykański aktor, producent i reżyser, znany z ról w filmach i serialach o szerokim wachlarzu tematycznym.');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Ellen', 'Page', 'kobieta');
INSERT INTO Aktorzy (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Ellen Page to kanadyjska aktorka i producentka, znana z ról w filmach takich jak Incepcja i Juno.');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Matthew', 'McConaughey', 'mezczyzna');
INSERT INTO Aktorzy (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Matthew McConaughey to amerykański aktor, znany z ról w filmach takich jak Interstellar i Dallas Buyers Club.');

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Anne', 'Hathaway', 'kobieta');
INSERT INTO Aktorzy (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Anne Hathaway to amerykańska aktorka, znana z ról w filmach takich jak Interstellar i Diabeł ubiera się u Prady.');

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Tom', 'Hardy', 'mezczyzna');
INSERT INTO Aktorzy (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Tom Hardy to brytyjski aktor, znany z ról w filmach takich jak Mad Max: Na drodze gniewu i Incepcja.');

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Jessica', 'Chastain', 'kobieta');
INSERT INTO Aktorzy (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Jessica Chastain to amerykańska aktorka, znana z ról w filmach takich jak Interstellar i Zero Dark Thirty.');


-- Reżyserowie i ich filmy
INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Christopher', 'Nolan', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Christopher Nolan to brytyjsko-amerykański reżyser, producent i scenarzysta filmowy, znany z pracy nad thrillerami, które zmieniają postrzeganie rzeczywistości.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera) 
VALUES ('Incepcja', 2010, 'Zdolny złodziej dostaje szansę na odkupienie, jeśli uda mu się przeprowadzić incepcję – zaszczepić pomysł w podświadomości celu.', 8.8, 'link_do_zwiastuna_incepcja', IDENT_CURRENT('Osoby'));
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera)
VALUES ('Interstellar', 2014, 'Grupa astronautów wyrusza w podróż kosmiczną, by znaleźć nowy dom dla ludzkości, gdy Ziemia przestaje być przyjazna.', 8.6, 'link_do_zwiastuna_interstellar', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Martin', 'Scorsese', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Martin Scorsese to amerykański reżyser i producent, znany z filmów takich jak Wściekły Byk, Casino i Ostatni Władca Wietrzu.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera) 
VALUES ('Wściekły Byk', 1980, 'Historia boksera Jake’a LaMotta, który zmaga się z własnymi demonami w trakcie kariery zawodowej.', 8.2, 'link_do_zwiastuna_wsciekly_byk', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Quentin', 'Tarantino', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Quentin Tarantino to amerykański reżyser, scenarzysta i producent, znany z filmów takich jak Pulp Fiction i Django.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera) 
VALUES ('Pulp Fiction', 1994, 'Trzy połączone historie kryminalne z życia ludzi, którzy spotykają się w Los Angeles.', 8.9, 'link_do_zwiastuna_pulp_fiction', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Steven', 'Spielberg', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Steven Spielberg to amerykański reżyser, znany z filmów takich jak E.T., Jurassic Park i Lista Schindlera.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera) 
VALUES ('E.T.', 1982, 'Grupa dzieci pomaga obcemu wrócić na swoją planetę, tworząc nieoczekiwaną przyjaźń z istotą z innego świata.', 7.8, 'link_do_zwiastuna_et', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Ridley', 'Scott', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Ridley Scott to brytyjski reżyser i producent, znany z takich filmów jak Alien, Gladiator i The Martian.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera) 
VALUES ('Gladiator', 2000, 'Rzym, 180 n.e. General Maximus zostaje zdradzony przez cesarza i staje się gladiatorem walczącym o zemstę.', 8.5, 'link_do_zwiastuna_gladiator', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Lana', 'Wachowski', 'kobieta');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Lana Wachowski to amerykańska reżyserka, scenarzystka i producentka, znana z reżyserowania serii filmów "The Matrix".');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera)
VALUES ('The Matrix', 1999, 'Film science fiction opowiadający historię hakera, który odkrywa, że rzeczywistość, w której żyje, jest symulacją stworzoną przez maszyny.', 8.7, 'link_do_zwiastuna_the_matrix', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Robert', 'Zemeckis', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Robert Zemeckis to amerykański reżyser i producent, znany z takich filmów jak "Forrest Gump", "Back to the Future" oraz "Cast Away".');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera)
VALUES ('Forrest Gump', 1994, 'Film opowiadający historię mężczyzny o niskim IQ, który przypadkowo staje się świadkiem i uczestnikiem najważniejszych wydarzeń w historii Stanów Zjednoczonych.', 8.8, 'link_do_zwiastuna_forrest_gump', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Alastair', 'Fothergill', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Alastair Fothergill to brytyjski reżyser, specjalizujący się w produkcjach dokumentalnych, szczególnie przyrodniczych.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera) 
VALUES ('Planeta Ziemia', 2006, 'Dokumentalny serial przyrodniczy ukazujący najwspanialsze miejsca na naszej planecie i życie w nich.', 9.0, 'link_do_zwiastuna_planeta_ziemia', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('John', 'Smith', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'John Smith to reżyser filmów dokumentalnych, który zyskał popularność dzięki swojej pracy nad dokumentami o historii świata.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera) 
VALUES ('Wielki Mur Chiński', 2017, 'Dokument ukazujący historię i budowę Wielkiego Muru Chińskiego oraz jego wpływ na kulturę.', 7.5, 'link_do_zwiastuna_wielki_mur_chinski', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Jacques', 'Cousteau', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Jacques Cousteau to francuski reżyser, odkrywca i badacz oceanów, znany ze swoich filmów dokumentalnych.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera) 
VALUES ('Ocean', 2009, 'Film dokumentalny o życiu oceanicznym, który przedstawia niezwykłą florę i faunę mórz i oceanów.', 8.0, 'link_do_zwiastuna_ocean', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec) 
VALUES ('Carl', 'Sagan', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys) 
VALUES (IDENT_CURRENT('Osoby'), 'Carl Sagan był amerykańskim astronomem, astrofizykiem i reżyserem, który zyskał sławę dzięki swojej pracy nad popularyzacją nauki.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera) 
VALUES ('Kosmos', 1980, 'Dokument opowiadający o historii wszechświata, jego początkach oraz ewolucji planet.', 9.2, 'link_do_zwiastuna_kosmos', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('David', 'Attenborough', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'David Attenborough to brytyjski reżyser i prezenter telewizyjny, znany z programów przyrodniczych i dokumentalnych.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera)
VALUES ('Życie na Ziemi', 2009, 'Dokumentalny serial przyrodniczy ukazujący różnorodność życia na naszej planecie i jego niesamowite formy.', 8.7, 'link_do_zwiastuna_zycie_na_ziemi', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Neil', 'deGrasse Tyson', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Neil deGrasse Tyson to amerykański astrofizyk, autor książek naukowych oraz prowadzący popularne programy telewizyjne.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera)
VALUES ('Cosmos: A Spacetime Odyssey', 2014, 'Serial dokumentalny eksplorujący wszechświat i historię nauki w kontekście kosmologii, astrofizyki i astronomii.', 9.3, 'link_do_zwiastuna_cosmos', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Jason', 'Hehir', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Jason Hehir to amerykański reżyser i producent filmowy, znany z dokumentów sportowych.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera)
VALUES ('The Last Dance', 2020, 'Dokument opowiadający o ostatnim sezonie Michaela Jordana w Chicago Bulls oraz jego wpływie na koszykówkę i kulturę sportową.', 9.1, 'link_do_zwiastuna_the_last_dance', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Emer', 'Reid', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Emer Reid to irlandzki reżyser i producent, znany z dokumentów naukowych o przestrzeni kosmicznej.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera)
VALUES ('The Farthest: Voyager in Space', 2017, 'Dokument o sondzie Voyager 1, która stała się najdalszym obiektem stworzonym przez człowieka, wysłanym w przestrzeń kosmiczną.', 8.3, 'link_do_zwiastuna_the_farthest', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Errol', 'Morris', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Errol Morris to amerykański reżyser dokumentalny, znany z tworzenia filmów o tematyce wojennej i politycznej.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera)
VALUES ('The Fog of War', 2003, 'Dokumentalny film, który bada życie Roberta S. McNamary, amerykańskiego sekretarza obrony, oraz jego decyzje w czasie wojny w Wietnamie.', 8.1, 'link_do_zwiastuna_the_fog_of_war', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Ava', 'DuVernay', 'kobieta');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Ava DuVernay to amerykańska reżyserka, scenarzystka i producentka, znana z filmów poruszających kwestie rasowe, społeczne i polityczne.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera)
VALUES ('13th', 2016, 'Film dokumentalny, który bada nierówności rasowe w Stanach Zjednoczonych, koncentrując się na więziennictwie i systemie sprawiedliwości.', 8.2, 'link_do_zwiastuna_13th', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Morgan', 'Neville', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Morgan Neville to amerykański reżyser dokumentalny, który zdobył uznanie za swoje produkcje o postaciach kulturowych i ważnych osobach.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera)
VALUES ('Wont You Be My Neighbor?', 2018, 'Dokument opowiadający historię Freda Rogersa, prowadzącego popularny program telewizyjny dla dzieci, który promował miłość, empatię i pozytywne wartości.', 8.4, 'link_do_zwiastuna_wont_you_be_my_neighbor', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Jan', 'Kowalski', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Jan Kowalski to polski reżyser filmów dokumentalnych, specjalizujący się w tematach związanych z historią i kulturą.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera)
VALUES ('The Great Escape: Zatrzymać Czas', 2019, 'Film dokumentalny o wybitnym polskim fotografiku i filmowcu, ukazujący jego proces twórczy oraz uchwycone w czasie momenty historyczne.', 7.4, 'link_do_zwiastuna_great_escape', IDENT_CURRENT('Osoby'));

INSERT INTO Osoby (Imie, Nazwisko, Plec)
VALUES ('Andrzej', 'Mazurek', 'mezczyzna');
INSERT INTO Rezyserowie (ID, Zyciorys)
VALUES (IDENT_CURRENT('Osoby'), 'Andrzej Mazurek to reżyser dokumentalny, znany z tworzenia filmów opartych na archiwalnych materiałach z II wojny światowej.');
INSERT INTO Filmy (Tytul, RokProdukcji, Opis, SredniaOcena, Zwiastun, IDRezysera)
VALUES ('Powstanie Warszawskie', 2014, 'Film dokumentalny, który w całości bazuje na archiwalnych materiałach wideo i zdjęciach z okresu Powstania Warszawskiego, ukazując rzeczywiste wydarzenia.', 8.2, 'link_do_zwiastuna_powstanie_warszawskie', IDENT_CURRENT('Osoby'));
