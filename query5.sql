USE Filmy;

/*
Scenariusz:
Redakcja chce wyszukać film wyprodukowany w tym roku, który dostał najwięcej Oscarów, żeby wyświetlić go jako tegoroczny zwycięzca na stronie głównej.
Zapytanie:
Wyświetl tytuł, reżysera i liczbę Oscarów dla filmu wyprodukowanego w tym roku, który zdobył najwięcej Oscarów.
*/

SELECT TOP 1
    F.Tytul,
    O.Imie + ' ' + O.Nazwisko AS DaneRezysera,
    COUNT(NF.IDNagrody) AS LiczbaOscarow
FROM Filmy F
JOIN NagrodyFilmu NF ON F.ID = NF.IDFilmu AND NF.IDNagrody IN (SELECT ID FROM Nagrody WHERE Nazwa = 'Oscar')
JOIN Osoby O ON F.IDRezysera = O.ID
WHERE F.RokProdukcji = /* YEAR(GETDATE()) */ 2010 -- data dodana na sztywno w celu prezentacji zapytania dla dodanych filmów
GROUP BY F.Tytul, O.Imie, O.Nazwisko
ORDER BY LiczbaOscarow DESC;