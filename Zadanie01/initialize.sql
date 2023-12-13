CREATE TABLE Wydawcy(
    Id          uniqueidentifier NOT NULL PRIMARY KEY DEFAULT NEWID(),
    Nazwa       nvarchar(255) NOT NULL
);

CREATE TABLE Producenci(
    Id          uniqueidentifier NOT NULL PRIMARY KEY DEFAULT NEWID(),
    Nazwa       nvarchar(255) NOT NULL
);

CREATE TABLE Gry(
    Id              uniqueidentifier NOT NULL PRIMARY KEY DEFAULT NEWID(),
    Tytul           nvarchar(255) NOT NULL,
    IdWydawcy       uniqueidentifier NOT NULL REFERENCES Wydawcy(Id),
    IdProducenta    uniqueidentifier NOT NULL REFERENCES Producenci(Id)
);

CREATE TABLE Tagi(
    Id      uniqueidentifier NOT NULL PRIMARY KEY DEFAULT NEWID(),
    Nazwa   nvarchar(255) NOT NULL
);

CREATE TABLE GryTagi(
    IdGry   uniqueidentifier NOT NULL REFERENCES Gry(Id),
    IdTagu  uniqueidentifier NOT NULL REFERENCES Tagi(Id),
    CONSTRAINT PK_GryTagi PRIMARY KEY (IdGry, IdTagu)
);

CREATE TABLE Dodatki(
    Id      uniqueidentifier NOT NULL PRIMARY KEY DEFAULT NEWID(),
    IdGry   uniqueidentifier NOT NULL REFERENCES Gry(Id),
    Tytul   nvarchar(255) NOT NULL,
);

CREATE TABLE Platformy(
    Id          uniqueidentifier NOT NULL PRIMARY KEY DEFAULT NEWID(),
    Nazwa       nvarchar(255) NOT NULL,
    Producent   nvarchar(255)
);

CREATE TABLE GryNaPlatformach(
    IdGry       uniqueidentifier NOT NULL REFERENCES Gry(Id),
    IdPlatformy uniqueidentifier NOT NULL REFERENCES Platformy(Id),
    DataWydania datetime2 NOT NULL,
    CONSTRAINT PK_GryNaPlatformach PRIMARY KEY (IdGry, IdPlatformy)
);

CREATE TABLE DodatkiNaPlatformach(
    IdDodatku           uniqueidentifier NOT NULL REFERENCES Dodatki(Id),
    IdGry               uniqueidentifier NOT NULL,
    IdPlatformy         uniqueidentifier NOT NULL,
    DataWydania         datetime2 NOT NULL,
    CONSTRAINT PK_DodatkiNaPlatformach PRIMARY KEY (IdDodatku, IdGry, IdPlatformy),
    CONSTRAINT FK_DodatkiNaPlatformach_GryNaPlatformach FOREIGN KEY (IdGry, IdPlatformy) REFERENCES GryNaPlatformach(IdGry, IdPlatformy)
);

CREATE TABLE Recenzje(
    Id                      uniqueidentifier NOT NULL PRIMARY KEY DEFAULT NEWID(),
    Tytul                   nvarchar(255) NOT NULL,
    Zawartosc               nvarchar(max) NOT NULL,
    DataOpublikowania       datetime2 NOT NULL,
    IdPlatformy             uniqueidentifier NOT NULL REFERENCES Platformy(Id),
    IdGry                   uniqueidentifier,
    IdDodatku               uniqueidentifier,
    Ocena                   int NOT NULL CHECK (Ocena >= 0 AND Ocena <= 100),
    FOREIGN KEY (IdGry, IdPlatformy) REFERENCES GryNaPlatformach(IdGry, IdPlatformy),
    FOREIGN KEY (IdDodatku, IdGry, IdPlatformy) REFERENCES DodatkiNaPlatformach(IdDodatku, IdGry, IdPlatformy) 
);

CREATE TABLE Krytycy(
    Id          uniqueidentifier NOT NULL PRIMARY KEY DEFAULT NEWID(),
    Imie        nvarchar(255) NOT NULL,
    Nazwisko    nvarchar(255) NOT NULL
);

CREATE TABLE KrytycyRecenzje(
    IdRecenzji  uniqueidentifier NOT NULL REFERENCES Recenzje(Id),
    IdKrytyka   uniqueidentifier NOT NULL REFERENCES Krytycy(Id),
    CONSTRAINT PK_KrytycyRecenzje PRIMARY KEY (IdRecenzji, IdKrytyka)
);

CREATE TABLE KrytycyWydawcy(
    IdKrytyka   uniqueidentifier NOT NULL REFERENCES Krytycy(Id),
    IdWydawcy   uniqueidentifier NOT NULL REFERENCES Wydawcy(Id),
    CONSTRAINT PK_KrytycyWydawcy PRIMARY KEY (IdKrytyka, IdWydawcy)
);

CREATE TABLE ProducenciWydawcy(
    IdProducenta    uniqueidentifier NOT NULL REFERENCES Producenci(Id),
    IdWydawcy       uniqueidentifier NOT NULL REFERENCES Wydawcy(Id),
    CONSTRAINT PK_ProducenciWydawcy PRIMARY KEY (IdProducenta, IdWydawcy)
);

CREATE TABLE Reporterzy(
    Id          uniqueidentifier NOT NULL PRIMARY KEY DEFAULT NEWID(),
    Imie        nvarchar(255) NOT NULL,
    Nazwisko    nvarchar(255) NOT NULL
);

CREATE TABLE Wiadomosci(
    Id                  uniqueidentifier NOT NULL PRIMARY KEY DEFAULT NEWID(),
    Tytul               nvarchar(255) NOT NULL,
    Zawartosc           nvarchar(max) NOT NULL,
    DataOpublikowania   datetime2 NOT NULL
);

CREATE TABLE ReporterzyWiadomosci(
    IdReportera         uniqueidentifier NOT NULL REFERENCES Reporterzy(Id),
    IdWiadomosci        uniqueidentifier NOT NULL REFERENCES Wiadomosci(Id),
    CONSTRAINT PK_ReporterzyWiadomosci PRIMARY KEY (IdReportera, IdWiadomosci)
);

CREATE TABLE WiadomosciRecenzje(
    IdWiadomosci        uniqueidentifier NOT NULL REFERENCES Wiadomosci(Id),
    IdRecenzji          uniqueidentifier NOT NULL REFERENCES Recenzje(Id),
    CONSTRAINT PK_WiadomosciRecenzje PRIMARY KEY (IdWiadomosci, IdRecenzji)
);

CREATE TABLE WiadomosciGry(
    IdWiadomosci        uniqueidentifier NOT NULL REFERENCES Wiadomosci(Id),
    IdGry               uniqueidentifier NOT NULL REFERENCES Gry(Id),
    CONSTRAINT PK_WiadomosciGry PRIMARY KEY (IdWiadomosci, IdGry)
);

CREATE TABLE WiadomosciDodatki(
    IdWiadomosci        uniqueidentifier NOT NULL REFERENCES Wiadomosci(Id),
    IdDodatku           uniqueidentifier NOT NULL REFERENCES Dodatki(Id),
    CONSTRAINT PK_WiadomosciDodatki PRIMARY KEY (IdWiadomosci, IdDodatku)
);

CREATE TABLE Opinie(
    Id                  uniqueidentifier NOT NULL PRIMARY KEY DEFAULT NEWID(),
    Tytul               nvarchar(255) NOT NULL,
    Zawartosc           nvarchar(max) NOT NULL,
    DataOpublikowania   datetime2 NOT NULL,
    Ocena               int NOT NULL CHECK (Ocena >= 0 AND Ocena <= 100)
);

CREATE TABLE OpinieGryNaPlatformach(
    IdOpinii            uniqueidentifier NOT NULL REFERENCES Opinie(Id),
    IdGry               uniqueidentifier NOT NULL,
    IdPlatformy         uniqueidentifier NOT NULL,
    CONSTRAINT PK_OpinieGryNaPlatformach PRIMARY KEY (IdOpinii, IdGry, IdPlatformy),
    FOREIGN KEY (IdGry, IdPlatformy) REFERENCES GryNaPlatformach(IdGry, IdPlatformy) 
);

CREATE TABLE OpinieDodatkiNaPlatformach(
    IdOpinii                uniqueidentifier NOT NULL REFERENCES Opinie(Id),
    IdDodatku               uniqueidentifier NOT NULL,
    IdGry                   uniqueidentifier NOT NULL,
    IdPlatformy             uniqueidentifier NOT NULL,
    CONSTRAINT PK_OpinieDodatkiNaPlatformach PRIMARY KEY (IdOpinii, IdGry, IdDodatku, IdPlatformy),
    FOREIGN KEY (IdDodatku, IdGry, IdPlatformy) REFERENCES DodatkiNaPlatformach(IdDodatku, IdGry, IdPlatformy) 
);

CREATE TABLE Gracze(
    Id                  uniqueidentifier NOT NULL PRIMARY KEY DEFAULT NEWID(),
    Pseudonim           nvarchar(255) NOT NULL UNIQUE
);

CREATE TABLE OpinieGracze(
    IdOpinii            uniqueidentifier NOT NULL REFERENCES Opinie(Id),
    IdGracza            uniqueidentifier NOT NULL REFERENCES Gracze(Id),
    CONSTRAINT PK_OpinieGracze PRIMARY KEY (IdOpinii, IdGracza)
);

CREATE TABLE ListyUlubionychGier(
    Id                  uniqueidentifier NOT NULL PRIMARY KEY DEFAULT NEWID(),
    Tytul               nvarchar(255) NOT NULL,
    Opis                nvarchar(max),
    IdGracza            uniqueidentifier NOT NULL REFERENCES Gracze(Id)
);

CREATE TABLE ListyUlubionychGierGry(
    IdListy             uniqueidentifier NOT NULL REFERENCES ListyUlubionychGier(Id),
    IdGry               uniqueidentifier NOT NULL REFERENCES Gry(Id),
    CONSTRAINT PK_ListyUlubionychGierGry PRIMARY KEY (IdListy, IdGry)
);
