USE Filmy;

/*
Scenariusz:
Użytkownik chce wyszukaj filmy należące do gatunku "Drama" posortowane według średniej oceny malejąco, 
żeby wybrać najlepszy film interesującego go gatunku do obejrzenia.
Zapytanie:
Wyświetl tytuł, reżysera i średnią ocenę filmów należących do gatunku "Drama" posortowanych według średniej oceny malejąco.
*/

SELECT
    F.Tytul,
    O.Imie + ' ' + O.Nazwisko AS DaneRezysera,
    F.SredniaOcena
FROM Filmy F
JOIN Osoby O ON F.IDRezysera = O.ID
WHERE EXISTS (
    SELECT 1
    FROM GatunkiFilmu GF
    WHERE GF.IDFilmu = F.ID
    AND GF.NazwaGatunku = 'Drama'
)
ORDER BY F.SredniaOcena DESC;