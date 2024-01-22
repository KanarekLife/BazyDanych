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
        COUNT(*) >= 2 -- Zmienna X oznacza minimalną liczbę recenzji
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


/*
    Zapytanie 04:    Wśród użytkowników oceniających gry ukrywają się trolle. Wykonaj zestawienie
                     wszystkich użytkowników, u których stosunek wystawianych pozytywnych ocen (>75
                     pkt.) do negatywnych (<25 pkt.) jest mniejszy niż 10%, a jednocześnie nie mają na
                     swoim koncie żadnej listy ulubionych gier.
*/

/*
    Zapytanie 05:    Sporządź ranking 10 wydawców, których wydane gry mają najwięcej pozytywnych
                     recenzji krytyków niewspółpracujących z nimi. Nie bierz pod uwagę wydawców,
                     którzy wydali mniej niż 3 gry.                   
*/

/*
    Zapytanie 06:    Znajdź trzech najmniej uczciwych producentów, tj. takich, których gry otrzymały
                     najwięcej pozytywnych (>75 pkt.) recenzji od krytyków współpracujących z ich
                     wydawcami.
*/

/*
    Zapytanie 07: 
*/