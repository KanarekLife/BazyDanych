UPDATE Opinie
SET Ocena = Ocena + 25
WHERE Ocena < 10;

DELETE Gracze
WHERE Pseudonim LIKE 'GameChanger%';

UPDATE Reporterzy
SET Imie = 'John',
    Nazwisko = 'Smith'
WHERE Id = '617aac87-21ce-46a5-a95b-2607cc8528b8';

UPDATE Reporterzy
SET Id = 'fe69cf83-1d45-46af-93d1-4389af6df2e1'
WHERE Id = '617aac87-21ce-46a5-a95b-2607cc8528b8';