USE Filmy;

DROP TABLE IF EXISTS Obsada;
DROP TABLE IF EXISTS GatunkiFilmu;
DROP TABLE IF EXISTS NagrodyFilmu;
DROP TABLE IF EXISTS FilmyDoObejrzenia;
DROP TABLE IF EXISTS Opinie;
DROP TABLE IF EXISTS Nagrody;
DROP TABLE IF EXISTS Gatunki;
DROP TABLE IF EXISTS Filmy;
DROP TABLE IF EXISTS Rezyserowie;
DROP TABLE IF EXISTS Aktorzy;
DROP TABLE IF EXISTS Krytycy;
DROP TABLE IF EXISTS ZwykliUzytkownicy;
DROP TABLE IF EXISTS Osoby;


CREATE TABLE Osoby(
    ID INT PRIMARY KEY IDENTITY(1,1),
    Imie VARCHAR(100) NOT NULL CHECK(Imie LIKE '[A-ZŁ]%'
        AND Imie NOT LIKE '%[^A-Za-zŁąćęłńóśżź \.-]%'),
    Nazwisko VARCHAR(200) NOT NULL CHECK(Nazwisko NOT LIKE '%[^A-Za-zĄĆĘŁŃÓŚŻŹąćęłńóśżź ''\-]%' 
        AND Nazwisko LIKE '%[A-ZĄĆĘŁŃÓŚŻŹ]%' 
        AND Nazwisko NOT LIKE '%[ ''\-][ ''\-]%'
        AND Nazwisko NOT LIKE '[ ''\-]%' 
        AND Nazwisko NOT LIKE '%[ ''\-]'),
    Plec VARCHAR(10) NOT NULL CHECK(Plec IN ('mezczyzna', 'kobieta', 'inna'))
);

CREATE TABLE ZwykliUzytkownicy(
    ID INT PRIMARY KEY,
    FOREIGN KEY(ID) REFERENCES Osoby(ID),
    Email VARCHAR(400) NOT NULL UNIQUE CHECK (Email LIKE '%@%.%')
);

CREATE TABLE Krytycy(
    ID INT PRIMARY KEY,
    FOREIGN KEY(ID) REFERENCES Osoby(ID) ON DELETE CASCADE,
    Email VARCHAR(400) NOT NULL UNIQUE CHECK (Email LIKE '%@%.%'),
    Redakcja VARCHAR(100) NOT NULL
);

CREATE TABLE Aktorzy(
    ID INT PRIMARY KEY,
    FOREIGN KEY(ID) REFERENCES Osoby(ID),
    Zyciorys VARCHAR(1500)
);

CREATE TABLE Rezyserowie(
    ID INT PRIMARY KEY,
    FOREIGN KEY(ID) REFERENCES Osoby(ID),
    Zyciorys VARCHAR(1500)
);

CREATE TABLE Filmy(
    ID INT PRIMARY KEY IDENTITY(1,1),
    Tytul VARCHAR(300) NOT NULL,
    RokProdukcji INT NOT NULL CHECK(RokProdukcji >= 1895 and RokProdukcji <= YEAR(GETDATE())),
    Opis VARCHAR(2000) NOT NULL,
    SredniaOcena DECIMAL(2,1) NOT NULL CHECK(SredniaOcena >= 0.0 and SredniaOcena <= 10.0),
    Zwiastun VARCHAR(2000),
    IDRezysera INT NOT NULL FOREIGN KEY REFERENCES Rezyserowie(ID)
);

CREATE TABLE Opinie(
    ID INT PRIMARY KEY IDENTITY(1,1),
    IDZwyklegoUzytkownika INT FOREIGN KEY REFERENCES ZwykliUzytkownicy(ID),
    IDKrytyka INT FOREIGN KEY REFERENCES Krytycy(ID) ON DELETE CASCADE,
    IDFilmu INT NOT NULL FOREIGN KEY REFERENCES Filmy(ID),
    Ocena INT NOT NULL CHECK(Ocena >= 0 and Ocena <= 10),
    Tresc VARCHAR(1500) NOT NULL,
    DataWystawienia DATE NOT NULL CHECK(DataWystawienia <= GETDATE()),
    CONSTRAINT KtoDodal CHECK(IDZwyklegoUzytkownika IS NOT NULL OR IDKrytyka IS NOT NULL)
);

CREATE TABLE FilmyDoObejrzenia(
    IDUzytkownika INT NOT NULL FOREIGN KEY REFERENCES ZwykliUzytkownicy(ID),
    IDFilmu INT NOT NULL FOREIGN KEY REFERENCES Filmy(ID),
    PRIMARY KEY(IDUzytkownika, IDFilmu),
    Status VARCHAR(11) NOT NULL CHECK(Status IN ('watched', 'notWatched'))
);

CREATE TABLE Gatunki(
    Nazwa VARCHAR(100) PRIMARY KEY,
    Opis VARCHAR(1000) NOT NULL
);

CREATE TABLE GatunkiFilmu(
    NazwaGatunku VARCHAR(100) NOT NULL FOREIGN KEY REFERENCES Gatunki(Nazwa) ON UPDATE CASCADE,
    IDFilmu INT NOT NULL FOREIGN KEY REFERENCES Filmy(ID),
    PRIMARY KEY (NazwaGatunku, IDFilmu)
);

CREATE TABLE Nagrody(
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nazwa VARCHAR(100) NOT NULL,
    Kategoria VARCHAR(200) NOT NULL,
);

CREATE TABLE NagrodyFilmu(
    IDNagrody INT NOT NULL FOREIGN KEY REFERENCES Nagrody(ID),
    IDFilmu INT NOT NULL FOREIGN KEY REFERENCES Filmy(ID),
    PRIMARY KEY(IDNagrody, IDFilmu),
    Rok INT NOT NULL CHECK(Rok >= 1895 and Rok <= YEAR(GETDATE()))
);

CREATE TABLE Obsada(
    IDFilmu INT NOT NULL FOREIGN KEY REFERENCES Filmy(ID),
    IDAktora INT NOT NULL FOREIGN KEY REFERENCES Aktorzy(ID),
    PRIMARY KEY(IDFilmu, IDAktora),
    Rola VARCHAR(100) NOT NULL
);