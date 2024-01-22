-- Dodaj przykładowe wydawcy
INSERT INTO Wydawcy (Nazwa) VALUES
                                ('EA'),
                                ('Ubisoft'),
                                ('Activision'),
                                ('CD Projekt RED');
GO;
-- Dodaj przykładowych producentów
INSERT INTO Producenci (Nazwa) VALUES
                                   ('Rockstar Games'),
                                   ('CD Projekt Red'),
                                   ('Naughty Dog'),
                                   ('EA Sports'),
                                   ('Ubisoft Montreal');
GO;
-- Dodaj przykładowe gry
INSERT INTO Gry (Tytul, IdWydawcy, IdProducenta) VALUES
                                                     ('FIFA 22', (SELECT Id FROM Wydawcy WHERE Nazwa = 'EA'), (SELECT Id FROM Producenci WHERE Nazwa = 'EA Sports')),
                                                     ('Assassin''s Creed Valhalla', (SELECT Id FROM Wydawcy WHERE Nazwa = 'Ubisoft'), (SELECT Id FROM Producenci WHERE Nazwa = 'Ubisoft Montreal')),
                                                     ('Cyberpunk 2077', (SELECT Id FROM Wydawcy WHERE Nazwa = 'CD Projekt Red'), (SELECT Id FROM Producenci WHERE Nazwa = 'CD Projekt Red')),
                                                     ('The Witcher 3: Wild Hunt', (SELECT Id FROM Wydawcy WHERE Nazwa = 'CD Projekt Red'), (SELECT Id FROM Producenci WHERE Nazwa = 'CD Projekt Red'));
GO;
-- Dodaj przykładowe tagi
INSERT INTO Tagi (Nazwa) VALUES
                             ('RPG'),
                             ('Sport'),
                             ('Akcja'),
                             ('Przygodowa');
GO;
-- Dodaj tagi do gier
INSERT INTO GryTagi (IdGry, IdTagu) VALUES
                                        ((SELECT Id FROM Gry WHERE Tytul = 'FIFA 22'), (SELECT Id FROM Tagi WHERE Nazwa = 'Sport')),
                                        ((SELECT Id FROM Gry WHERE Tytul = 'Assassin''s Creed Valhalla'), (SELECT Id FROM Tagi WHERE Nazwa = 'Akcja')),
                                        ((SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2077'), (SELECT Id FROM Tagi WHERE Nazwa = 'RPG')),
                                        ((SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2077'), (SELECT Id FROM Tagi WHERE Nazwa = 'Akcja')),
                                        ((SELECT Id FROM Gry WHERE Tytul = 'The Witcher 3: Wild Hunt'), (SELECT Id FROM Tagi WHERE Nazwa = 'RPG')),
                                        ((SELECT Id FROM Gry WHERE Tytul = 'The Witcher 3: Wild Hunt'), (SELECT Id FROM Tagi WHERE Nazwa = 'Akcja'));
GO;
-- Dodaj przykładowego krytyka
INSERT INTO Krytycy (Imie, Nazwisko) VALUES
    ('John', 'Doe'),
    ('Mike', 'Oxlong');
GO;
INSERT INTO Platformy(Nazwa, Producent) VALUES
                                            ('PlayStation 5', 'Sony'),
                                            ('Xbox Series X', 'Microsoft'),
                                            ('PC', 'N/A');
GO;
-- Dodaj przykładowe GryNaPlatformach
INSERT INTO GryNaPlatformach (IdGry, IdPlatformy, DataWydania)
VALUES
    ((SELECT Id FROM Gry WHERE Tytul = 'FIFA 22'), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5'), '2021-10-01'),
    ((SELECT Id FROM Gry WHERE Tytul = 'FIFA 22'), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'), '2021-10-01'),
    ((SELECT Id FROM Gry WHERE Tytul = 'FIFA 22'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), '2021-10-01'),

    ((SELECT Id FROM Gry WHERE Tytul = 'Assassin''s Creed Valhalla'), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5'), '2020-11-10'),
    ((SELECT Id FROM Gry WHERE Tytul = 'Assassin''s Creed Valhalla'), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'), '2020-11-10'),
    ((SELECT Id FROM Gry WHERE Tytul = 'Assassin''s Creed Valhalla'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), '2020-11-10'),

    ((SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2077'), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5'), '2020-12-10'),
    ((SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2077'), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'), '2020-12-10'),
    ((SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2077'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), '2020-12-10'),

    ((SELECT Id FROM Gry WHERE Tytul = 'The Witcher 3: Wild Hunt'), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5'), '2020-04-10'),
    ((SELECT Id FROM Gry WHERE Tytul = 'The Witcher 3: Wild Hunt'), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'), '2020-05-10'),
    ((SELECT Id FROM Gry WHERE Tytul = 'The Witcher 3: Wild Hunt'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), '2020-06-10');

GO;


-- Dodaj recenzje od krytyka do gier
INSERT INTO Recenzje (Tytul, Zawartosc, DataOpublikowania, IdPlatformy, IdGry, Ocena) VALUES
                                                                                          ('Recenzja FIFA 22', 'Najnowsza odsłona serii FIFA, pełna emocji i dynamiki.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5'), (SELECT Id FROM Gry WHERE Tytul = 'FIFA 22'), 85),
                                                                                          ('Recenzja Assassin''s Creed Valhalla', 'Wciągająca historia w pięknym świecie Wikingów.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'), (SELECT Id FROM Gry WHERE Tytul = 'Assassin''s Creed Valhalla'), 90),
                                                                                          ('Recenzja Cyberpunk 2077', 'Przemyślana fabuła, ale liczne błędy techniczne.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), (SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2077'), 78),
                                                                                          ('Recenzja Cyberpunk 2077 XBOX', 'Mogła by być lepsza', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'), (SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2077'), 60),
                                                                                          ('Recenzja Wiedźmin 3', 'Super', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), (SELECT Id FROM Gry WHERE Tytul = 'The Witcher 3: Wild Hunt'), 99);
GO;
-- Przypisz recenzje do krytyka
INSERT INTO KrytycyRecenzje (IdRecenzji, IdKrytyka) VALUES
                                                        ((SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja FIFA 22'), (SELECT Id FROM Krytycy WHERE Imie = 'John')),
                                                        ((SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Assassin''s Creed Valhalla'), (SELECT Id FROM Krytycy WHERE Imie = 'John')),
                                                        ((SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Cyberpunk 2077'), (SELECT Id FROM Krytycy WHERE Imie = 'John')),
                                                        ((SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Cyberpunk 2077 XBOX'), (SELECT Id FROM Krytycy WHERE Imie = 'Mike')),
                                                        ((SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Wiedzmin 3'), (SELECT Id FROM Krytycy WHERE Imie = 'Mike'));


GO;

-- Dodaj przykładowych graczy
INSERT INTO Gracze (Pseudonim) VALUES
                                   ('Gracz1'),
                                   ('Gracz2'),
                                   ('Gracz3'),
                                   ('Gracz4'),
                                   ('Gracz5');
GO;

-- Dodaj przykładowe opinie
INSERT INTO Opinie (Tytul, Zawartosc, DataOpublikowania, Ocena) VALUES
                                                                    ('Opinia o grze 1', 'Bardzo dobra gra, polecam!', GETDATE(), 90),
                                                                    ('Opinia o grze 2', 'Nie przypadła mi do gustu.', GETDATE(), 60),
                                                                    ('Opinia o grze 3', 'Świetna rozgrywka i grafika.', GETDATE(), 95),
                                                                    ('Opinia o grze 4', 'Tylko dla fanów tego gatunku.', GETDATE(), 75),
                                                                    ('Opinia o grze 5', 'Nie mogę się oderwać, genialna!', GETDATE(), 98);

-- Dodaj przykładowe opinie graczy
INSERT INTO OpinieGracze (IdOpinii, IdGracza) VALUES
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 1'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz1')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 2'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz2')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 3'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz3')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 4'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz4')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 5'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz5'));
GO;

-- Dodaj przykładowe OpinieGryNaPlatformach
INSERT INTO OpinieGryNaPlatformach (IdOpinii, IdGry, IdPlatformy) VALUES
                                                                      ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 1'), (SELECT Id FROM Gry WHERE Tytul = 'FIFA 22'), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5')),
                                                                      ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 2'), (SELECT Id FROM Gry WHERE Tytul = 'Assassin''s Creed Valhalla'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC')),
                                                                      ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 3'), (SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2077'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC')),
                                                                      ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 4'), (SELECT Id FROM Gry WHERE Tytul = 'The Witcher 3: Wild Hunt'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC')),
                                                                      ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 5'), (SELECT Id FROM Gry WHERE Tytul = 'FIFA 22'), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'));
GO;                      