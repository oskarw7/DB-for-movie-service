USE Filmy;

/*
Scenariusz:
Dany użytkownik korzystając ze strony chce skorzystać z funkcjonalności "Podsumowanie roczne", które wyświetla jego średnią opinię na przestrzeni roku.
Zapytanie:
Oblicz i wyświetl średnią z ocen wystawionych przez użytkownika o adresie e-mail "marta.kaczmarek@example.com" na przestrzeni roku.
*/

SELECT
    CAST(AVG(CAST(O.Ocena AS DECIMAL(3,1))) AS DECIMAL(3,1)) AS SredniaOcena
FROM Opinie O
WHERE O.IDZwyklegoUzytkownika = (
        SELECT ID FROM ZwykliUzytkownicy 
        WHERE Email = 'marta.kaczmarek@example.com'
    ) 
    AND O.DataWystawienia >= DATEADD(YEAR, -1, GETDATE());