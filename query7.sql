USE Filmy;

/*
Scenariusz:
Dany użytkownik chce wyświetlić listę filmów do obejrzenia, których jeszcze nie zobaczył i które zostały wyreżyserowane przez jego ulubionego reżysera - 
Christophera Nolana.
Zapytanie:
Wyświetl tytuł, imię i nazwisko reżysera oraz średnią ocenę filmów wyreżyserowanych przez Christophera Nolana, które zostały dodane do listy do obejrzenia 
przez użytkownika o adresie e-mail "marta.kaczmarek@example.com", ale nie zostały jeszcze ocenione, posortowane według średniej oceny malejąco.
*/

SELECT
    F.Tytul,
    O.Imie + ' ' + O.Nazwisko AS DaneRezysera,
    F.SredniaOcena
FROM Filmy F
JOIN Osoby O ON F.IDRezysera = O.ID
WHERE EXISTS (
    SELECT 1
    FROM FilmyDoObejrzenia LDO
    WHERE LDO.IDFilmu = F.ID
    AND LDO.IDUzytkownika = (
            SELECT ID FROM ZwykliUzytkownicy 
            WHERE Email = 'marta.kaczmarek@example.com'
        )
    AND LDO.Status = 'notWatched'
)
AND O.Imie = 'Christopher'
AND O.Nazwisko = 'Nolan'
ORDER BY F.SredniaOcena DESC;