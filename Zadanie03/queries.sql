/*
    Zapytanie 01:    Pokaż wszystkie gry wraz z ich tagami, które otrzymały recenzje od krytyka o imieniu 'X'.
    
    Uzasadnienie:    Firma chce lepiej zrozumieć preferencje krytyka o imieniu 'X', aby dostosować
                     swoją ofertę gier wideo na stronie. Dzięki temu zapytaniu można identyfikować gry z
                     najbardziej pożądanymi tagami przez tego krytyka, co może przyczynić się do zwiększenia
                     przyciągania użytkowników.
*/

CREATE VIEW RecenzjeKrytyka AS
SELECT DISTINCT R.IdGry
FROM Recenzje R
INNER JOIN KrytycyRecenzje KR ON R.Id = KR.IdRecenzji
INNER JOIN Krytycy K ON KR.IdKrytyka = K.Id
WHERE K.Imie LIKE 'Mike';
GO;

SELECT G.Tytul, T.Nazwa
FROM Gry G
INNER JOIN GryTagi GT ON G.Id = GT.IdGry
INNER JOIN Tagi T ON GT.IdTagu = T.Id
WHERE G.Id IN (SELECT IdGry FROM RecenzjeKrytyka)
GROUP BY G.Tytul, T.Nazwa
ORDER BY G.Tytul;

DROP VIEW RecenzjeKrytyka;
GO;


/*
    Zapytanie 02:    Pokaż ranking gier wideo według średniej oceny krytyków, uwzględniając tylko
                     gry, które otrzymały co najmniej 2 recenzje.
    
    Uzasadnienie:    Firma chce stworzyć ranking najlepszych gier, bazując na ocenach krytyków, ale
                     z wykluczeniem gier z niską liczbą recenzji, co zwiększa wiarygodność rankingu.
*/

CREATE VIEW SrednieOceny AS
SELECT
    GN.IdGry,
    AVG(R.Ocena) AS SredniaOcena
FROM
    GryNaPlatformach GN
        JOIN Recenzje R ON GN.IdGry = R.IdGry AND GN.IdPlatformy = R.IdPlatformy
GROUP BY
    GN.IdGry
HAVING
    COUNT(*) >= 2;
GO;

SELECT
    G.Tytul AS TytulGry,
    SO.SredniaOcena
FROM
    Gry G
        JOIN SrednieOceny SO ON G.Id = SO.IdGry
ORDER BY
    SO.SredniaOcena DESC;

DROP VIEW SrednieOceny;
GO;

    
/*
    Zapytanie 03:    Pokaż wszystkie recenzje gry 'X', wraz z opiniami graczy i datami ich opublikowania.
    
    Uzasadnienie:    Firma chce skupić się na analizie recenzji jednej z najbardziej oczekiwanych gier.
                     To zapytanie pozwala na zebranie wszystkich recenzji dotyczących gry 'X', wraz z opiniami
                     graczy, co może pomóc w zrozumieniu recepcji gry przez społeczność.
*/

CREATE VIEW RecenzjeIOpinie
AS
    SELECT DataOpublikowania, Gry.Tytul AS TytulGry, Ocena
    FROM Recenzje
             INNER JOIN GryNaPlatformach ON Recenzje.IdGry = GryNaPlatformach.IdGry and Recenzje.IdPlatformy = GryNaPlatformach.IdPlatformy
             INNER JOIN Gry ON GryNaPlatformach.IdGry = Gry.Id
    UNION
    SELECT DataOpublikowania,  Gry.Tytul AS TytulGry, Ocena
    FROM Opinie
             INNER JOIN dbo.OpinieGryNaPlatformach OGNP on Opinie.Id = OGNP.IdOpinii
             INNER JOIN dbo.GryNaPlatformach GNP on OGNP.IdGry = GNP.IdGry and OGNP.IdPlatformy = GNP.IdPlatformy
             INNER JOIN Gry ON GNP.IdGry = Gry.Id
GO;

DECLARE @TytulGry nvarchar(max) = 'Cyberpunk 2077';
SELECT TytulGry, Ocena, DataOpublikowania
FROM RecenzjeIOpinie
WHERE TytulGry LIKE @TytulGry
ORDER BY Ocena DESC;

DROP VIEW RecenzjeIOpinie;
GO;

/*
    Zapytanie 04:    Wśród użytkowników oceniających gry ukrywają się trolle. Wykonaj zestawienie
                     wszystkich użytkowników, u których stosunek wystawianych pozytywnych ocen (>75
                     pkt.) do negatywnych (<25 pkt.) jest mniejszy niż 10%, a jednocześnie nie mają na
                     swoim koncie żadnej listy ulubionych gier.
*/

CREATE VIEW StatystykaOcen AS
SELECT
    G.Id,
    COUNT(CASE WHEN CAST(O.Ocena AS FLOAT) < 25 THEN 1 END) AS IloscOcenMniejNiz25,
    COUNT(CASE WHEN CAST(O.Ocena AS FLOAT) > 75 THEN 1 END) AS IloscOcenWiecejNiz75
FROM
    Opinie O
        JOIN OpinieGracze OG ON O.Id = OG.IdOpinii
        JOIN Gracze G ON OG.IdGracza = G.Id
GROUP BY
    G.Id;
GO;

SELECT
    G.Pseudonim AS Gracz,
    ISNULL(SO.IloscOcenMniejNiz25, 0) AS IloscOcenMniejNiz25,
    ISNULL(SO.IloscOcenWiecejNiz75, 0) AS IloscOcenWiecejNiz75,
    (CAST(ISNULL(SO.IloscOcenWiecejNiz75, 0) + 1 AS FLOAT) / CAST(ISNULL(SO.IloscOcenMniejNiz25, 0) + 1 AS FLOAT)) AS StosunekPozytywnychDoNegatywnychOpinii
FROM
    Gracze G
        LEFT JOIN StatystykaOcen SO ON G.Id = SO.Id
WHERE (CAST(ISNULL(SO.IloscOcenWiecejNiz75, 0) + 1 AS FLOAT) / CAST(ISNULL(SO.IloscOcenMniejNiz25, 0) + 1 AS FLOAT)) < 0.1
ORDER BY Gracz;

DROP VIEW IF EXISTS StatystykaOcen;
GO;

/*
    Zapytanie 05:    Sporządź ranking 10 wydawców, których wydane gry mają najwięcej pozytywnych
                     recenzji krytyków niewspółpracujących z nimi. Nie bierz pod uwagę wydawców,
                     którzy wydali mniej niż 2 gry.                   
*/

CREATE VIEW RankingWydawcowView AS
SELECT
    W.Id AS IdWydawcy,
    W.Nazwa AS NazwaWydawcy,
    COUNT(DISTINCT G.Id) AS IloscGier,
    COUNT(DISTINCT R.Id) AS IloscPozytywnychRecenzji
FROM
    Wydawcy W
        JOIN Gry G ON W.Id = G.IdWydawcy
        LEFT JOIN Recenzje R ON G.Id = R.IdGry
        LEFT JOIN KrytycyRecenzje KR ON R.Id = KR.IdRecenzji
        LEFT JOIN Krytycy K ON KR.IdKrytyka = K.Id
WHERE
    R.Ocena > 75
  AND K.Id NOT IN (SELECT IdKrytyka FROM KrytycyWydawcy WHERE IdWydawcy = W.Id)
GROUP BY
    W.Id, W.Nazwa
HAVING
    COUNT(DISTINCT G.Id) >= 2
GO;

SELECT TOP 10
    NazwaWydawcy,
    IloscGier,
    IloscPozytywnychRecenzji
FROM
    RankingWydawcowView
ORDER BY
    IloscPozytywnychRecenzji DESC;

DROP VIEW IF EXISTS RankingWydawcowView;
GO;


/*
    Zapytanie 06:    Znajdź trzech najmniej uczciwych producentów, tj. takich, których gry otrzymały
                     najwięcej pozytywnych (>75 pkt.) recenzji od krytyków współpracujących z ich
                     wydawcami.
*/

CREATE VIEW WysokieOcenyPochodzaceZeSponsorowanychRecenzji
AS
SELECT Krytycy.Id AS IdKrytyka, Wydawcy.Id AS IdWydawnictwa, Gry.Tytul AS TytulRecenzowanejGry, Recenzje.Ocena AS Ocena
FROM Recenzje
INNER JOIN KrytycyRecenzje ON Recenzje.Id = KrytycyRecenzje.IdRecenzji
INNER JOIN Krytycy ON KrytycyRecenzje.IdKrytyka = Krytycy.Id
INNER JOIN GryNaPlatformach ON Recenzje.IdGry = GryNaPlatformach.IdGry and Recenzje.IdPlatformy = GryNaPlatformach.IdPlatformy
INNER JOIN Gry ON GryNaPlatformach.IdGry = Gry.Id
JOIN KrytycyWydawcy ON Krytycy.Id = KrytycyWydawcy.IdKrytyka
INNER JOIN Wydawcy ON Gry.IdWydawcy = Wydawcy.Id
WHERE Gry.IdWydawcy = KrytycyWydawcy.IdWydawcy
AND Ocena > 75;
GO;

SELECT TOP (3) Wydawcy.Nazwa, COUNT(*) AS LiczbaBardzoPozytywnychOcenOdWspolpracujacychRecenzentow
FROM WysokieOcenyPochodzaceZeSponsorowanychRecenzji
INNER JOIN Wydawcy ON Wydawcy.Id = IdWydawnictwa
GROUP BY Wydawcy.Nazwa
ORDER BY COUNT(*) DESC;

DROP VIEW WysokieOcenyPochodzaceZeSponsorowanychRecenzji;
GO;

/*
    Zapytanie 07:   Firma tworząca gry wideo ma zamiar zaplanować wydanie nowej gry, aczkolwiek nie wiedzą jakiego typu grę chcą zrobić. Proszą admina strony o stworzenie sprawozdania wyznaczającego jakie tagi uzyskały najwysze oceny w danych miesiącach na podstawie recenzji gier. 
                    Wynikiem powinna być lista najlepiej ocenianych tagów wraz z miesiącem oraz uzyskaną średnią.
*/

CREATE VIEW ZbiorTagowMiesiacaPublikacjiIOceny AS    
SELECT Tagi.Nazwa, MONTH(Recenzje.DataOpublikowania) AS Miesiac, Ocena
FROM Recenzje
INNER JOIN dbo.GryNaPlatformach GNP on Recenzje.IdGry = GNP.IdGry and Recenzje.IdPlatformy = GNP.IdPlatformy
INNER JOIN Gry ON GNP.IdGry = Gry.Id
INNER JOIN GryTagi ON Gry.Id = GryTagi.IdGry
INNER JOIN Tagi ON GryTagi.IdTagu = Tagi.Id;
GO;

WITH Ranking AS (
    SELECT
        Nazwa,
        Miesiac,
        AVG(Ocena) AS SredniaOcenaTaguWMiesiacu,
        DENSE_RANK() OVER (PARTITION BY Miesiac ORDER BY AVG(Ocena)) AS Rank
    FROM
        ZbiorTagowMiesiacaPublikacjiIOceny
    GROUP BY
        Nazwa,
        Miesiac
)
SELECT
    Nazwa,
    Miesiac,
    SredniaOcenaTaguWMiesiacu
FROM Ranking
WHERE Rank = 1;

DROP VIEW ZbiorTagowMiesiacaPublikacjiIOceny;
GO;

/*
    Zapytanie 08:   Dział marketingowy platformy X jest zainteresowany statystykami dotyczącymi ilości krytyków korzystających z ich platformy. Utwórz zestawienie krytyków i jak wiele recenzji dotyczyło gier wydanych dla każdej z platform.
*/

CREATE VIEW PelneRecenzjeKrytykow
AS
    SELECT Imie, Nazwisko, Nazwa AS Platforma, Recenzje.Tytul AS Tytul, Ocena, Zawartosc, DataOpublikowania, Gry.Tytul AS Gra 
    FROM Krytycy
    INNER JOIN KrytycyRecenzje ON Krytycy.Id = KrytycyRecenzje.IdKrytyka
    INNER JOIN Recenzje ON KrytycyRecenzje.IdRecenzji = Recenzje.Id
    INNER JOIN GryNaPlatformach ON Recenzje.IdGry = GryNaPlatformach.IdGry and Recenzje.IdPlatformy = GryNaPlatformach.IdPlatformy
    INNER JOIN Gry ON GryNaPlatformach.IdGry = Gry.Id
    INNER JOIN Platformy ON GryNaPlatformach.IdPlatformy = Platformy.Id;
GO;
    
SELECT Imie + ' ' + Nazwisko AS Krytyk, Platforma, COUNT(*) AS LiczbaOcenionychGierNaPlatformie
FROM PelneRecenzjeKrytykow
GROUP BY Imie, Nazwisko, Platforma
ORDER BY COUNT(*) DESC;

DROP VIEW PelneRecenzjeKrytykow;
GO;

/*
    
    Zapytanie 09:   Dziennikarz zajmujący się grami wideo, chciałby przygotować zestawienie zaweirające informację o tym jakie wydawnictwo było najbardziej popularne wśród krytyków i użytkowników używających danej platformy.
                    Wskaż którzy wydawcy byli najbardziej popularni pod względem ilości opinii i recenzji dla każdej platformy.
*/

CREATE VIEW OpinieIRecenzjeGier
AS
    SELECT Wydawca, Platforma, COUNT(*) AS Liczba
    FROM (
             SELECT Recenzje.Tytul AS Tytul, Zawartosc, DataOpublikowania, Platformy.Nazwa AS Platforma, Gry.Tytul AS TytulGry, Ocena, Wydawcy.Nazwa AS Wydawca
             FROM Recenzje
                      INNER JOIN GryNaPlatformach ON Recenzje.IdGry = GryNaPlatformach.IdGry and Recenzje.IdPlatformy = GryNaPlatformach.IdPlatformy
                      INNER JOIN Platformy ON Recenzje.IdPlatformy = Platformy.Id
                      INNER JOIN Gry ON GryNaPlatformach.IdGry = Gry.Id
                      INNER JOIN Wydawcy ON Gry.IdWydawcy = Wydawcy.Id
             UNION
             SELECT Opinie.Tytul AS Tytul, Zawartosc, DataOpublikowania, Platformy.Nazwa AS Platforma, Gry.Tytul AS TytulGry, Ocena, Wydawcy.Nazwa AS Wydawca
             FROM Opinie
                      INNER JOIN dbo.OpinieGryNaPlatformach OGNP on Opinie.Id = OGNP.IdOpinii
                      INNER JOIN dbo.GryNaPlatformach GNP on OGNP.IdGry = GNP.IdGry and OGNP.IdPlatformy = GNP.IdPlatformy
                      INNER JOIN Platformy ON GNP.IdPlatformy = Platformy.Id
                      INNER JOIN Gry ON GNP.IdGry = Gry.Id
                      INNER JOIN Wydawcy ON Gry.IdWydawcy = Wydawcy.Id
         ) as TEMP
    GROUP BY Wydawca, Platforma
GO;

SELECT Wydawca, OpinieIRecenzjeGier.Platforma
FROM OpinieIRecenzjeGier
INNER JOIN (
    SELECT Platforma, MAX(Liczba) AS MaxLiczba, MIN(Liczba) AS MinLiczba
    FROM OpinieIRecenzjeGier
    GROUP BY Platforma
) L ON OpinieIRecenzjeGier.Platforma = L.Platforma
WHERE Liczba = MaxLiczba;

DROP VIEW OpinieIRecenzjeGier;
GO;