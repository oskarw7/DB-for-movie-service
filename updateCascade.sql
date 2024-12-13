USE Filmy;

/* 
Znaczna większość tabeli ma klucze sztuczne generowane przez DBMSa, zatem uaktualnianie wartości ID dla nich nie jest konieczne/wskazane.
Inaczej jest w przypadku tabeli Gatunki, gdzie kluczem głównym jest nazwa gatunku.
Przypuśćmy, że nazwa "dreszczowiec" przyjęła się w kinematografii i zastępuje "thriller".
Trzeba to uaktualnić dla samego rekordu, jak i dla wszystkich filmów, które przynależą do tego gatunku.
*/

SELECT * FROM Gatunki WHERE Nazwa = 'Thriller';
SELECT * FROM GatunkiFilmu WHERE NazwaGatunku = 'Thriller';
SELECT * FROM Gatunki WHERE Nazwa = 'Dreszczowiec';
SELECT * FROM GatunkiFilmu WHERE NazwaGatunku = 'Dreszczowiec';

UPDATE Gatunki SET Nazwa = 'Dreszczowiec' WHERE Nazwa = 'Thriller';

SELECT * FROM Gatunki WHERE Nazwa = 'Thriller';
SELECT * FROM GatunkiFilmu WHERE NazwaGatunku = 'Thriller';
SELECT * FROM Gatunki WHERE Nazwa = 'Dreszczowiec';
SELECT * FROM GatunkiFilmu WHERE NazwaGatunku = 'Dreszczowiec';