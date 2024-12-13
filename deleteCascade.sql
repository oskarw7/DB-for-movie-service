USE Filmy;

/*
W projekcie nie zakładałem usuwania rekordów w żadnej tabeli, zatem zgodnie z ustaleniem dodaję przykładowe usunięcie.
Załóżmy, że redakcja nie jest zadowolona z recenzji jednego z krytyków i postanawia go usunąć z bazy danych.
Usuwając krytyka, usuwamy również jego opinie (powiedzmy, że nie chcemy, żeby został po nim ślad).
*/

DECLARE @Email VARCHAR(400);
SET @Email = 'piotr.nowak@example.com';

SELECT * FROM Osoby WHERE ID = (SELECT ID FROM Krytycy WHERE Email = @Email);
SELECT * FROM Krytycy WHERE Email = @Email;
SELECT * FROM Opinie WHERE IDKrytyka = (SELECT ID FROM Krytycy WHERE Email = @Email);

DELETE FROM Osoby WHERE ID = (SELECT ID FROM Krytycy WHERE Email = @Email);

SELECT * FROM Osoby WHERE ID = (SELECT ID FROM Krytycy WHERE Email = @Email);
SELECT * FROM Krytycy WHERE Email = @Email;
SELECT * FROM Opinie WHERE IDKrytyka = (SELECT ID FROM Krytycy WHERE Email = @Email);