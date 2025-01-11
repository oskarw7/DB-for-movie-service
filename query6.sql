USE Filmy;

/*
Scenariusz:
Pracownik redakcji chce, żeby na podstronie filmu "Incepcja" została wyświetlona lista aktorów, którzy w nim zagrali i ich ról.
Zapytanie:
Wyświetl imiona i nazwiska oraz role aktorów/aktorek, którzy grali w filmie "Incepcja" posortowane alfabetycznie według nazwiska->imienia->roli.
*/

SELECT
    Os.Imie + ' ' + Os.Nazwisko AS DaneAktora,
    O.Rola
FROM Obsada O
JOIN Osoby Os ON O.IDAktora = Os.ID
WHERE EXISTS (
    SELECT 1 
    FROM Filmy F
    JOIN Osoby R ON F.IDRezysera = R.ID
    WHERE F.ID = O.IDFilmu
        AND F.Tytul = 'Incepcja' 
        AND R.Imie = 'Christopher' 
        AND R.Nazwisko = 'Nolan'
)
ORDER BY Os.Nazwisko, Os.Imie, O.Rola;