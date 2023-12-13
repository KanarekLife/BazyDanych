UPDATE Opinie
SET Ocena = Ocena + 25
WHERE Ocena < 10;

DELETE Gracze
WHERE Pseudonim LIKE 'GameChanger%';