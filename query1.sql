USE Filmy;

/* 
Scenariusz:
Zwykły użytkownik chce zobaczyć opinie i recenzje o filmie "Incepcja", żeby dowiedzieć się, czy warto go obejrzeć.
Zapytanie:
Wyświetl wszystkie opinie i recenzje o filmie "Incepcja" posortowane datą wystawienia malejąco wraz z imieniem i nazwiskiem wystawiającego, 
jego typem oraz datą wystawienia oraz treścią opinii.
*/
DROP VIEW IF EXISTS OpinieZAutorami;
GO
CREATE VIEW OpinieZAutorami AS
SELECT 
    O.ID AS IDOpinii,
    O.IDFilmu,
    COALESCE(O.IDZwyklegoUzytkownika, O.IDKrytyka) AS IDAutora,
    CASE
        WHEN O.IDZwyklegoUzytkownika IS NOT NULL THEN 'Zwykły użytkownik'
        ELSE 'Krytyk'
    END AS TypAutora,
    Os.Imie + ' ' + Os.Nazwisko AS DaneAutora,
    O.Ocena,
    O.Tresc,
    O.DataWystawienia
FROM Opinie O   
JOIN Osoby Os ON COALESCE(O.IDZwyklegoUzytkownika, O.IDKrytyka) = Os.ID;
GO

SELECT
    OA.TypAutora,
    OA.DaneAutora,
    OA.Ocena,
    OA.Tresc,
    OA.DataWystawienia
FROM OpinieZAutorami OA
WHERE EXISTS (
    SELECT 1 
    FROM Filmy F
    JOIN Osoby O ON F.IDRezysera = O.ID
    WHERE F.ID = OA.IDFilmu
        AND F.Tytul = 'Incepcja' 
        AND O.Imie = 'Christopher' 
        AND O.Nazwisko = 'Nolan'
)
ORDER BY OA.DataWystawienia DESC;