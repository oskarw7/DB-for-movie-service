USE Filmy;

/*
W projekcie nie zakładałem usuwania rekordów w żadnej tabeli, zatem zgodnie z ustaleniem dodaję przykładowe usunięcie.
Załóżmy, że administracja/redakcja chce usunąć "zwykłego" użytkownika, gdy ten złamie regulamin, np. wystawi opinię, która jest obraźliwa.
Ponadto nie chce, by został po nim jakikolwiek ślad w bazie danych.
Zatem musi usunąć użytkownika, wszystkie jego opinie oraz filmy, które dodał do listy do obejrzenia.
Celem jest zrealizowanie tej operacji w jednym zapytaniu SQL (jednym DELETE).
*/

DECLARE @Email VARCHAR(400);
SET @Email = 'marta.kaczmarek@example.com';

SELECT * FROM Osoby WHERE ID = (SELECT ID FROM ZwykliUzytkownicy WHERE Email = @Email);
SELECT * FROM ZwykliUzytkownicy WHERE Email = @Email;
SELECT * FROM Opinie WHERE IDZwyklegoUzytkownika = (SELECT ID FROM ZwykliUzytkownicy WHERE Email = @Email);
SELECT * FROM FilmyDoObejrzenia WHERE IDUzytkownika = (SELECT ID FROM ZwykliUzytkownicy WHERE Email = @Email);

DELETE FROM Osoby WHERE ID = (SELECT ID FROM ZwykliUzytkownicy WHERE Email = @Email);

SELECT * FROM Osoby WHERE ID = (SELECT ID FROM ZwykliUzytkownicy WHERE Email = @Email);
SELECT * FROM ZwykliUzytkownicy WHERE Email = @Email;
SELECT * FROM Opinie WHERE IDZwyklegoUzytkownika = (SELECT ID FROM ZwykliUzytkownicy WHERE Email = @Email);
SELECT * FROM FilmyDoObejrzenia WHERE IDUzytkownika = (SELECT ID FROM ZwykliUzytkownicy WHERE Email = @Email);
