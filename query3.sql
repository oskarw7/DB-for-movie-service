USE Filmy;

/*
Scenariusz:
Użytkownik chce wyszukaj filmy należące do gatunku "Drama" posortowane według średniej oceny malejąco, 
żeby wybrać najlepszy film do obejrzenia.
Zapytanie:
Wyświetl tytuł, reżysera i średnią ocenę filmów należących do gatunku "Drama" posortowanych według średniej oceny malejąco.
*/

SELECT
    F.Tytul,
    O.Imie + ' ' + O.Nazwisko AS DaneRezysera,
    F.SredniaOcena
FROM Filmy F
JOIN Osoby O ON F.IDRezysera = O.ID
JOIN GatunkiFilmu GF ON F.ID = GF.IDFilmu AND GF.NazwaGatunku = 'Drama'
ORDER BY F.SredniaOcena DESC;