/*
    Zapytanie 01:    Pokaż wszystkie gry wraz z ich tagami, które otrzymały recenzje od krytyka o imieniu 'X'.
    
    Uzasadnienie:    Firma chce lepiej zrozumieć preferencje krytyka o imieniu 'X', aby dostosować
                     swoją ofertę gier wideo na stronie. Dzięki temu zapytaniu można identyfikować gry z
                     najbardziej pożądanymi tagami przez tego krytyka, co może przyczynić się do zwiększenia
                     przyciągania użytkowników.
*/

SELECT Gry.Tytul, Tagi.Nazwa
FROM Gry
INNER JOIN GryTagi ON Gry.Id = GryTagi.IdGry
INNER JOIN Tagi ON GryTagi.IdTagu = Tagi.Id
WHERE Gry.Id IN (
    SELECT DISTINCT IdGry
    FROM Recenzje
             INNER JOIN KrytycyRecenzje ON Recenzje.Id = KrytycyRecenzje.IdRecenzji
             INNER JOIN Krytycy ON KrytycyRecenzje.IdKrytyka = Krytycy.Id
    WHERE Krytycy.Imie LIKE 'Mike'
);

/*
    Zapytanie 02:    Pokaż ranking gier wideo według średniej oceny krytyków, uwzględniając tylko
                     gry, które otrzymały co najmniej X recenzji.
    
    Uzasadnienie:    Firma chce stworzyć ranking najlepszych gier, bazując na ocenach krytyków, ale
                     z wykluczeniem gier z niską liczbą recenzji, co zwiększa wiarygodność rankingu.
*/

WITH SrednieOceny AS (
    SELECT
        GN.IdGry,
        AVG(R.Ocena) AS SredniaOcena
    FROM
        GryNaPlatformach GN
            JOIN Recenzje R ON GN.IdGry = R.IdGry AND GN.IdPlatformy = R.IdPlatformy
    GROUP BY
        GN.IdGry
    HAVING
        COUNT(*) >= 2
)

SELECT
    G.Tytul AS TytulGry,
    SO.SredniaOcena
FROM
    Gry G
        JOIN SrednieOceny SO ON G.Id = SO.IdGry
ORDER BY
    SO.SredniaOcena DESC;


    
/*
    Zapytanie 03:    Pokaż wszystkie recenzje gry 'X', wraz z opiniami graczy i datami ich opublikowania.
    
    Uzasadnienie:    Firma chce skupić się na analizie recenzji jednej z najbardziej oczekiwanych gier.
                     To zapytanie pozwala na zebranie wszystkich recenzji dotyczących gry 'X', wraz z opiniami
                     graczy, co może pomóc w zrozumieniu recepcji gry przez społeczność.
*/

SELECT RECOPI.Tytul, RECOPI.Ocena, RECOPI.DataOpublikowania
FROM (
         SELECT Gry.Tytul, Recenzje.Ocena, Recenzje.DataOpublikowania
         FROM Recenzje
                  INNER JOIN dbo.GryNaPlatformach GNP on Recenzje.IdGry = GNP.IdGry and Recenzje.IdPlatformy = GNP.IdPlatformy
                  INNER JOIN Gry ON GNP.IdGry = Gry.Id
         UNION
         SELECT Gry.Tytul, Opinie.Ocena, Opinie.DataOpublikowania
         FROM Opinie
                  INNER JOIN dbo.OpinieGryNaPlatformach OGNP on Opinie.Id = OGNP.IdOpinii
                  INNER JOIN Gry ON OGNP.IdGry = Gry.Id
     ) RECOPI
WHERE RECOPI.Tytul LIKE 'Cyberpunk 2077';



/*
    Zapytanie 04:    Wśród użytkowników oceniających gry ukrywają się trolle. Wykonaj zestawienie
                     wszystkich użytkowników, u których stosunek wystawianych pozytywnych ocen (>75
                     pkt.) do negatywnych (<25 pkt.) jest mniejszy niż 10%, a jednocześnie nie mają na
                     swoim koncie żadnej listy ulubionych gier.
*/

WITH StatystykaOcen AS (
    SELECT
        G.Id,
        COUNT(CASE WHEN CAST(O.Ocena AS FLOAT) < 25 THEN 1 END) AS IloscOcenMniejNiz25,
        COUNT(CASE WHEN CAST(O.Ocena AS FLOAT) > 75 THEN 1 END) AS IloscOcenWiecejNiz75
    FROM
        Opinie O
            JOIN OpinieGracze OG ON O.Id = OG.IdOpinii
            JOIN Gracze G ON OG.IdGracza = G.Id
    GROUP BY
        G.Id
)

SELECT
    G.Pseudonim AS Gracz,
    ISNULL(SO.IloscOcenMniejNiz25, 0) AS IloscOcenMniejNiz25,
    ISNULL(SO.IloscOcenWiecejNiz75, 0) AS IloscOcenWiecejNiz75,
    (CAST(ISNULL(SO.IloscOcenWiecejNiz75, 0)+1 AS FLOAT) / CAST(ISNULL(SO.IloscOcenMniejNiz25, 0)+1 AS FLOAT)) AS StosunekPozytywnychDoNegatywnychOpinii
FROM
    Gracze G
        LEFT JOIN StatystykaOcen SO ON G.Id = SO.Id
WHERE (CAST(ISNULL(SO.IloscOcenWiecejNiz75, 0)+1 AS FLOAT) / CAST(ISNULL(SO.IloscOcenMniejNiz25, 0)+1 AS FLOAT)) < 0.1;

/*
    Zapytanie 05:    Sporządź ranking 10 wydawców, których wydane gry mają najwięcej pozytywnych
                     recenzji krytyków niewspółpracujących z nimi. Nie bierz pod uwagę wydawców,
                     którzy wydali mniej niż 2 gry.                   
*/

WITH RankingWydawcow AS (
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
      WHERE R.Ocena > 75 -- Pozytywna recenzja
      AND K.Id NOT IN (SELECT IdKrytyka FROM KrytycyWydawcy WHERE IdWydawcy LIKE W.Id)
    GROUP BY
        W.Id, W.Nazwa
    HAVING
        COUNT(DISTINCT G.Id) >= 2 -- Wydawcy z co najmniej 2 grami
)

SELECT TOP 10
    NazwaWydawcy,
    IloscGier,
    IloscPozytywnychRecenzji
FROM
    RankingWydawcow
ORDER BY
    IloscPozytywnychRecenzji DESC;


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
    Zapytanie 07:   Zrób sprawozdanie średniej oceny tagów wg. miesiąca publikacji recenzji do gry opisywanej tym tagiem.
*/

/*
    Zapytanie 08:   Zestawienie krytyków i jak wiele recenezji dotyczyło gier wydanych dla każdej z platform.
*/

/*
    Zapytanie 09:   Posortuj wydawców po ilości opinii i recenzji napisanych dla ich gier, które zostały wydane na platformę X. 
*/