USE Filmy;

/*
Scenariusz:
Pracownik redakcji chce wyświetlić adres e-mail trzech najbardziej aktywnych krytyków (jeśli wystąpi remis to wszystkich o tej samej liczbie wystawionych opinii)
w celu skontaktowania się z nimi w sprawie współpracy.
Zapytanie:
Wyświetl e-mail i liczbę opinii wystawionych przez krytyków dla trzech największych wartości liczby opinii posortowanych według liczby opinii malejąco.
*/

SELECT
    K.Email,
    LiczbaOpinii
FROM Krytycy K
JOIN (
    SELECT
        O.IDKrytyka,
        COUNT(*) AS LiczbaOpinii,
        DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) AS Ranga
    FROM Opinie O
    WHERE O.IDKrytyka IS NOT NULL
    GROUP BY O.IDKrytyka
) AS LiczenieOpinii ON K.ID = LiczenieOpinii.IDKrytyka
WHERE Ranga <= 3
ORDER BY LiczbaOpinii DESC;