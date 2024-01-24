INSERT INTO Wydawcy (Nazwa) VALUES
                                ('EA'),
                                ('Ubisoft'),
                                ('Activision'),
                                ('CD Projekt RED'),
                                ('Rockstar Games'),
                                ('Capcom'),
                                ('Bethesda Softworks'),
                                ('Square Enix');
INSERT INTO Producenci (Nazwa) VALUES
                                   ('Rockstar Games'),
                                   ('CD Projekt Red'),
                                   ('Naughty Dog'),
                                   ('EA Sports'),
                                   ('Ubisoft Montreal'),
                                   ('BioWare'),
                                   ('FromSoftware'),
                                   ('Valve'),
                                   ('Blizzard Entertainment'),
                                   ('Ubisoft Quebec'),
                                   ('EA DICE'),
                                   ('Rockstar Studios'),
                                   ('Infinity Ward');
INSERT INTO Tagi (Nazwa) VALUES
                             ('RPG'),
                             ('Sport'),
                             ('Akcja'),
                             ('Przygodowa');
INSERT INTO Krytycy (Imie, Nazwisko) VALUES
                                         ('John', 'Doe'),
                                         ('Mike', 'Oxlong'),
                                         ('Krytyk1', 'Bezstronny'),
                                         ('Krytyk2', 'Niepowiązany'),
                                         ('Krytyk3', 'Obiektywny');
INSERT INTO Platformy(Nazwa, Producent) VALUES
                                            ('PlayStation 5', 'Sony'),
                                            ('Xbox Series X', 'Microsoft'),
                                            ('PC', 'N/A');
INSERT INTO Gracze (Pseudonim) VALUES
                                   ('Gracz1'),
                                   ('Gracz2'),
                                   ('Gracz3'),
                                   ('Gracz4'),
                                   ('Gracz5'),
                                   ('Gracz6'),
                                   ('Gracz7'),
                                   ('Gracz8'),
                                   ('Gracz9'),
                                   ('Gracz10'),
                                   ('Gracz11');
INSERT INTO Opinie (Tytul, Zawartosc, DataOpublikowania, Ocena) VALUES
                                                                    ('Opinia o grze 1', 'Bardzo dobra gra, polecam!', GETDATE(), 90),
                                                                    ('Opinia o grze 2', 'Nie przypadła mi do gustu.', GETDATE(), 60),
                                                                    ('Opinia o grze 3', 'Świetna rozgrywka i grafika.', GETDATE(), 95),
                                                                    ('Opinia o grze 4', 'Tylko dla fanów tego gatunku.', GETDATE(), 75),
                                                                    ('Opinia o grze 5', 'Nie mogę się oderwać, genialna!', GETDATE(), 98),
                                                                    ('Opinia o grze 6', 'Gra słaba, brak innowacji.', GETDATE(), 40),
                                                                    ('Opinia o grze 7', 'Nie warto, stracony czas.', GETDATE(), 20),
                                                                    ('Opinia o grze 8', 'OK, ale spodziewałem się więcej.', GETDATE(), 60),
                                                                    ('Opinia o grze 9', 'Średnia, ale ma kilka fajnych momentów.', GETDATE(), 50),
                                                                    ('Opinia o grze 10', 'Fajna gierka, polecam!', GETDATE(), 80),
                                                                    ('Opinia Trolla o grze 11', 'Gra beznadziejna, stracony czas.', GETDATE(), 10),
                                                                    ('Opinia Trolla o grze 12', 'Najgorsza gra w historii, nie polecam.', GETDATE(), 5),
                                                                    ('Opinia Trolla o grze 13', 'Totalna klapa, lepiej grać w coś innego.', GETDATE(), 15),
                                                                    ('Opinia Trolla o grze 14', 'Nuda totalna, nie warto tracić czasu.', GETDATE(), 20),
                                                                    ('Opinia Trolla o grze 15', 'Gra tragiczna, nie polecam nikomu.', GETDATE(), 5),
                                                                    ('Opinia Trolla o grze 16', 'Zupełnie niezrozumiała, lepiej grać w coś innego.', GETDATE(), 10),
                                                                    ('Opinia Trolla o grze 17', 'Gra jest kompletnym fiaskiem, nie zasługuje na uwagę.', GETDATE(), 10),
                                                                    ('Opinia Trolla o grze 18', 'Beznadziejna rozgrywka, strata czasu.', GETDATE(), 5),
                                                                    ('Opinia Trolla o grze 19', 'Ocena powinna być ujemna, taka jest beznadziejna.', GETDATE(), 1),
                                                                    ('Opinia Trolla o grze 20', 'Niech nikt nie kupuje tej gry, to jest totalny bubel.', GETDATE(), 5)
GO;

INSERT INTO Gry (Tytul, IdWydawcy, IdProducenta) VALUES
                                                     ('FIFA 22', (SELECT Id FROM Wydawcy WHERE Nazwa = 'EA'), (SELECT Id FROM Producenci WHERE Nazwa = 'EA Sports')),
                                                     ('Assassin''s Creed Valhalla', (SELECT Id FROM Wydawcy WHERE Nazwa = 'Ubisoft'), (SELECT Id FROM Producenci WHERE Nazwa = 'Ubisoft Montreal')),
                                                     ('Cyberpunk 2077', (SELECT Id FROM Wydawcy WHERE Nazwa = 'CD Projekt Red'), (SELECT Id FROM Producenci WHERE Nazwa = 'CD Projekt Red')),
                                                     ('The Witcher 3: Wild Hunt', (SELECT Id FROM Wydawcy WHERE Nazwa = 'CD Projekt Red'), (SELECT Id FROM Producenci WHERE Nazwa = 'CD Projekt Red')),
                                                     ('Battlefield V', (SELECT Id FROM Wydawcy WHERE Nazwa = 'EA'), (SELECT Id FROM Producenci WHERE Nazwa = 'EA DICE')),
                                                     ('Call of Duty: Warzone', (SELECT Id FROM Wydawcy WHERE Nazwa = 'Activision'), (SELECT Id FROM Producenci WHERE Nazwa = 'Infinity Ward')),
                                                     ('Assassin''s Creed Odyssey', (SELECT Id FROM Wydawcy WHERE Nazwa = 'Ubisoft'), (SELECT Id FROM Producenci WHERE Nazwa = 'Ubisoft Quebec')),
                                                     ('Red Dead Redemption 2', (SELECT Id FROM Wydawcy WHERE Nazwa = 'Rockstar Games'), (SELECT Id FROM Producenci WHERE Nazwa = 'Rockstar Studios')),
                                                     ('FIFA 23', (SELECT Id FROM Wydawcy WHERE Nazwa = 'EA'), (SELECT Id FROM Producenci WHERE Nazwa = 'EA Sports')),
                                                     ('Cyberpunk 2088', (SELECT Id FROM Wydawcy WHERE Nazwa = 'CD Projekt RED'), (SELECT Id FROM Producenci WHERE Nazwa = 'CD Projekt RED'));
GO;

INSERT INTO GryTagi (IdGry, IdTagu) VALUES
                                        ((SELECT Id FROM Gry WHERE Tytul = 'FIFA 22'), (SELECT Id FROM Tagi WHERE Nazwa = 'Sport')),
                                        ((SELECT Id FROM Gry WHERE Tytul = 'Assassin''s Creed Valhalla'), (SELECT Id FROM Tagi WHERE Nazwa = 'Akcja')),
                                        ((SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2077'), (SELECT Id FROM Tagi WHERE Nazwa = 'RPG')),
                                        ((SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2077'), (SELECT Id FROM Tagi WHERE Nazwa = 'Akcja')),
                                        ((SELECT Id FROM Gry WHERE Tytul = 'The Witcher 3: Wild Hunt'), (SELECT Id FROM Tagi WHERE Nazwa = 'RPG')),
                                        ((SELECT Id FROM Gry WHERE Tytul = 'The Witcher 3: Wild Hunt'), (SELECT Id FROM Tagi WHERE Nazwa = 'Akcja'));
GO;

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
    ((SELECT Id FROM Gry WHERE Tytul = 'The Witcher 3: Wild Hunt'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), '2020-06-10'),

    ((SELECT Id FROM Gry WHERE Tytul = 'Battlefield V'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), '2021-08-15'),
    ((SELECT Id FROM Gry WHERE Tytul = 'Call of Duty: Warzone'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), '2021-07-20'),
    ((SELECT Id FROM Gry WHERE Tytul = 'Assassin''s Creed Odyssey'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), '2021-05-05'),
    ((SELECT Id FROM Gry WHERE Tytul = 'Red Dead Redemption 2'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), '2021-04-02'),
    ((SELECT Id FROM Gry WHERE Tytul = 'FIFA 23'), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5'), '2022-09-30'),
    ((SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2088'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), '2023-01-10'),

    ((SELECT Id FROM Gry WHERE Tytul = 'Battlefield V'), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'), '2021-08-20'),
    ((SELECT Id FROM Gry WHERE Tytul = 'Call of Duty: Warzone'), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5'), '2021-08-21'),
    ((SELECT Id FROM Gry WHERE Tytul = 'Assassin''s Creed Odyssey'), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'), '2021-08-22'),
    ((SELECT Id FROM Gry WHERE Tytul = 'Red Dead Redemption 2'), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5'), '2021-08-23'),
    ((SELECT Id FROM Gry WHERE Tytul = 'FIFA 23'), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'), '2021-08-24'),
    ((SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2088'), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5'), '2021-08-25');
GO;

INSERT INTO Recenzje (Tytul, Zawartosc, DataOpublikowania, IdPlatformy, IdGry, Ocena) VALUES
                                                                                          ('Recenzja FIFA 22', 'Najnowsza odsłona serii FIFA, pełna emocji i dynamiki.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5'), (SELECT Id FROM Gry WHERE Tytul = 'FIFA 22'), 85),
                                                                                          ('Recenzja Assassin''s Creed Valhalla', 'Wciągająca historia w pięknym świecie Wikingów.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'), (SELECT Id FROM Gry WHERE Tytul = 'Assassin''s Creed Valhalla'), 90),
                                                                                          ('Recenzja Cyberpunk 2077', 'Przemyślana fabuła, ale liczne błędy techniczne.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), (SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2077'), 78),
                                                                                          ('Recenzja Cyberpunk 2077 XBOX', 'Mogła by być lepsza', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'), (SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2077'), 60),
                                                                                          ('Recenzja Wiedźmin 3', 'Super', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), (SELECT Id FROM Gry WHERE Tytul = 'The Witcher 3: Wild Hunt'), 99),
                                                                                          ('Recenzja Battlefield V', 'Wspaniała gra wojenna, rewelacyjna kampania.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), (SELECT Id FROM Gry WHERE Tytul = 'Battlefield V'), 90),
                                                                                          ('Recenzja Call of Duty: Warzone', 'Najlepszy tryb battle royale na rynku.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), (SELECT Id FROM Gry WHERE Tytul = 'Call of Duty: Warzone'), 85),
                                                                                          ('Recenzja Assassin''s Creed Odyssey', 'Epickie przygody w starożytnej Grecji.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), (SELECT Id FROM Gry WHERE Tytul = 'Assassin''s Creed Odyssey'), 88),
                                                                                          ('Recenzja Red Dead Redemption 2', 'Arcydzieło wśród gier otwartego świata.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), (SELECT Id FROM Gry WHERE Tytul = 'Red Dead Redemption 2'), 95),
                                                                                          ('Recenzja FIFA 23', 'Najnowsza odsłona serii, jeszcze lepsza niż poprzednia.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5'), (SELECT Id FROM Gry WHERE Tytul = 'FIFA 23'), 88),
                                                                                          ('Recenzja Cyberpunk 2088', 'Kontynuacja Cyberpunk 2077, pełna niespodzianek.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PC'), (SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2088'), 82),
                                                                                          ('Recenzja Battlefield V!', 'Doskonała gra wojenna, bez zbędnych błędów.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'), (SELECT Id FROM Gry WHERE Tytul = 'Battlefield V'), 92),
                                                                                          ('Recenzja Call of Duty: Warzone!', 'Znakomity tryb battle royale, świetna zabawa.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5'), (SELECT Id FROM Gry WHERE Tytul = 'Call of Duty: Warzone'), 88),
                                                                                          ('Recenzja Assassin''s Creed Odyssey!', 'Przygoda na najwyższym poziomie, pełna emocji.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'), (SELECT Id FROM Gry WHERE Tytul = 'Assassin''s Creed Odyssey'), 90),
                                                                                          ('Recenzja Red Dead Redemption 2!', 'Kowbojski epik, którego nie można przegapić.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5'), (SELECT Id FROM Gry WHERE Tytul = 'Red Dead Redemption 2'), 94),
                                                                                          ('Recenzja FIFA 23!', 'Najlepsza gra piłkarska na rynku, doskonała rozrywka.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'), (SELECT Id FROM Gry WHERE Tytul = 'FIFA 23'), 90),
                                                                                          ('Recenzja Cyberpunk 2088!', 'Nowe spojrzenie na świat cyberpunku, pełne innowacji.', GETDATE(), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5'), (SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2088'), 86);
GO;

INSERT INTO KrytycyRecenzje (IdKrytyka, IdRecenzji) VALUES
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'John'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja FIFA 22')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'John'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Assassin''s Creed Valhalla')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'John'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Cyberpunk 2077')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'Mike'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Cyberpunk 2077 XBOX')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'Mike'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Wiedzmin 3')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'Krytyk1' AND Nazwisko = 'Bezstronny'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Battlefield V')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'Krytyk2' AND Nazwisko = 'Niepowiązany'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Call of Duty: Warzone')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'Krytyk3' AND Nazwisko = 'Obiektywny'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Assassin''s Creed Odyssey')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'Krytyk1' AND Nazwisko = 'Bezstronny'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Red Dead Redemption 2')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'Krytyk2' AND Nazwisko = 'Niepowiązany'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja FIFA 23')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'Krytyk3' AND Nazwisko = 'Obiektywny'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Cyberpunk 2088')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'Krytyk1' AND Nazwisko = 'Bezstronny'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Battlefield V!')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'Krytyk2' AND Nazwisko = 'Niepowiązany'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Call of Duty: Warzone!')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'Krytyk3' AND Nazwisko = 'Obiektywny'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Assassin''s Creed Odyssey!')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'Krytyk1' AND Nazwisko = 'Bezstronny'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Red Dead Redemption 2!')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'Krytyk2' AND Nazwisko = 'Niepowiązany'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja FIFA 23!')),
                                                        ((SELECT Id FROM Krytycy WHERE Imie = 'Krytyk3' AND Nazwisko = 'Obiektywny'), (SELECT Id FROM Recenzje WHERE Tytul = 'Recenzja Cyberpunk 2088!'));
GO;

INSERT INTO OpinieGracze (IdOpinii, IdGracza) VALUES
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 1'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz1')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 2'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz2')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 3'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz3')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 4'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz4')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 5'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz5')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 6'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz6')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 7'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz7')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 8'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz8')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 9'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz9')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 10'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz10')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia Trolla o grze 11'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz11')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia Trolla o grze 12'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz11')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia Trolla o grze 13'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz11')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia Trolla o grze 14'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz11')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia Trolla o grze 15'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz11')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia Trolla o grze 16'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz11')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia Trolla o grze 17'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz11')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia Trolla o grze 18'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz11')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia Trolla o grze 19'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz11')),
                                                  ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia Trolla o grze 20'), (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz11'));
GO;

INSERT INTO OpinieGryNaPlatformach (IdOpinii, IdGry, IdPlatformy) VALUES
                                                                      ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 1'), (SELECT Id FROM Gry WHERE Tytul = 'FIFA 22'), (SELECT Id FROM Platformy WHERE Nazwa = 'PlayStation 5')),
                                                                      ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 2'), (SELECT Id FROM Gry WHERE Tytul = 'Assassin''s Creed Valhalla'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC')),
                                                                      ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 3'), (SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2077'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC')),
                                                                      ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 4'), (SELECT Id FROM Gry WHERE Tytul = 'The Witcher 3: Wild Hunt'), (SELECT Id FROM Platformy WHERE Nazwa = 'PC')),
                                                                      ((SELECT Id FROM Opinie WHERE Tytul = 'Opinia o grze 5'), (SELECT Id FROM Gry WHERE Tytul = 'FIFA 22'), (SELECT Id FROM Platformy WHERE Nazwa = 'Xbox Series X'));
GO;

INSERT INTO ListyUlubionychGier (Tytul, Opis, IdGracza) VALUES
                                                            ('Ulubione Gry Gracza6', 'Moje ulubione gry.', (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz6')),
                                                            ('Ulubione Gry Gracza8', 'Najlepsze tytuły.', (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz8')),
                                                            ('Ulubione Gry Gracza10', 'Gry, które uwielbiam.', (SELECT Id FROM Gracze WHERE Pseudonim = 'Gracz10'));
GO;

INSERT INTO ListyUlubionychGierGry (IdListy, IdGry) VALUES
                                                        ((SELECT Id FROM ListyUlubionychGier WHERE Tytul = 'Ulubione Gry Gracza6'), (SELECT Id FROM Gry WHERE Tytul = 'FIFA 22')),
                                                        ((SELECT Id FROM ListyUlubionychGier WHERE Tytul = 'Ulubione Gry Gracza8'), (SELECT Id FROM Gry WHERE Tytul = 'Assassin''s Creed Valhalla')),
                                                        ((SELECT Id FROM ListyUlubionychGier WHERE Tytul = 'Ulubione Gry Gracza10'), (SELECT Id FROM Gry WHERE Tytul = 'Cyberpunk 2077'));
GO;

INSERT INTO KrytycyWydawcy (IdKrytyka, IdWydawcy) VALUES
                                                      ((SELECT Id FROM Krytycy WHERE Nazwisko LIKE 'Bezstronny'), (SELECT Id FROM Wydawcy WHERE Nazwa LIKE 'EA'));
GO;
