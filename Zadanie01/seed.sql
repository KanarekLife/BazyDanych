INSERT INTO Wydawcy(Id, Nazwa)
VALUES ('e7f1ead7-0771-4300-8826-37ca7c1d3874', 'Sony Interactive Entertainment'),
       ('3f5c118f-301e-459e-99ac-c8d47170f176', 'Microsoft Gaming'),
       ('f22ee43c-3826-4edb-b0b9-428668d706a3', 'Tencent Games'),
       ('860ed763-978a-45fa-affa-d1b7fe8ae326', 'Apple'),
       ('d59ab6f6-994f-40e3-9c55-48f05d13c419', 'Nintendo'),
       ('05e2b844-a225-4e12-967a-593b9bb87da0', 'Electronic Arts'),
       ('af466158-f8fc-40b1-bea4-b521fc80993f', 'Ubisoft'),
       ('6abb677c-dce6-4957-8419-988a48b2958e', 'Square Enix'),
       ('47991ffc-4719-4f48-a6d8-f42ae5364dea', 'Sega'),
       ('c13868a1-a9db-4e18-9533-68614dab6e6c', 'Capcom');

INSERT INTO Producenci(Id, Nazwa)
VALUES ('121210ff-9395-46c8-a479-436f6678c92b', 'Nintendo'),
       ('e1916207-97f5-4a19-b1f3-6e159095f883', 'Ubisoft'),
       ('12ce3541-45c6-4fcc-b9e7-82eec0b4e9ab', 'Electronic Arts'),
       ('9d950c6c-f522-4461-80c5-a77b95040bfb', 'Microsoft'),
       ('67508c0f-6f15-49e1-b8d7-100550dd39cd', 'Sony Interactive Entertainment'),
       ('db80dbab-a325-41f2-95dd-6115109b3590', 'Epic Games'),
       ('98f24177-91de-4785-89a6-d164eb542733', 'Exploding Kittens'),
       ('c65418f0-7ce9-4434-8aee-17ae2d77d582', 'Activision Blizzard'),
       ('12acdf06-5f0b-44b2-ba6f-1f73b234ed08', 'Take-Two Interactive Software'),
       ('54df07bd-0416-41e5-9924-8ec5635ac013', 'Bungie');

INSERT INTO Gry(Id, Tytul, IdWydawcy, IdProducenta)
VALUES ('96c00b76-6675-4c47-8e77-33282ebe7180', 'Spider-Man', 'e7f1ead7-0771-4300-8826-37ca7c1d3874', '67508c0f-6f15-49e1-b8d7-100550dd39cd'),
       ('dd41ba5d-7a2b-44dc-af91-b00fb4ec05e3', 'Yakuza: Lika a Dragon', '6abb677c-dce6-4957-8419-988a48b2958e', '67508c0f-6f15-49e1-b8d7-100550dd39cd'),
       ('194f97a1-e418-4094-831f-91e0e50e00c3', 'Minecraft', 'd59ab6f6-994f-40e3-9c55-48f05d13c419', 'db80dbab-a325-41f2-95dd-6115109b3590'),
       ('289f8d64-7cd5-4175-bdf0-7fd279e3a5ad', 'Fallout 4', '6abb677c-dce6-4957-8419-988a48b2958e', '54df07bd-0416-41e5-9924-8ec5635ac013'),
       ('65dae096-21bd-4877-8c3c-a21b7bff027e', 'Call Of Duty: Modern Warfare', '3f5c118f-301e-459e-99ac-c8d47170f176', 'c65418f0-7ce9-4434-8aee-17ae2d77d582'),
       ('620f3ba1-c0d2-4165-b139-5ac2b7cf86a8', 'Inscription', 'e7f1ead7-0771-4300-8826-37ca7c1d3874', 'e1916207-97f5-4a19-b1f3-6e159095f883'),
       ('ec411049-8ca4-441d-8b3f-95dede77dbbc', 'Goat Simulator', 'f22ee43c-3826-4edb-b0b9-428668d706a3', 'c65418f0-7ce9-4434-8aee-17ae2d77d582'),
       ('6ae08e89-9e31-411e-8b5a-69c4ef5201ac', 'Yakuza: Day 9', 'af466158-f8fc-40b1-bea4-b521fc80993f', '121210ff-9395-46c8-a479-436f6678c92b'),
       ('b8bafbe5-8e94-464f-bc42-979f6edbc735', 'Payday 3', '860ed763-978a-45fa-affa-d1b7fe8ae326', '12acdf06-5f0b-44b2-ba6f-1f73b234ed08'),
       ('150a3a49-bc3a-4ad4-a4de-899fcfe0b046', 'Payday 2', '3f5c118f-301e-459e-99ac-c8d47170f176', '67508c0f-6f15-49e1-b8d7-100550dd39cd'),
       ('d0316dfa-86bb-4522-b4f3-7cd60b6fd72f', 'Assasins Creed 1', 'af466158-f8fc-40b1-bea4-b521fc80993f', 'e1916207-97f5-4a19-b1f3-6e159095f883'),
       ('747fbbb5-55d7-4c6a-9065-974f94fdcbda', 'Assasins Creed 2', 'af466158-f8fc-40b1-bea4-b521fc80993f', 'e1916207-97f5-4a19-b1f3-6e159095f883'),
       ('adb51f68-026c-471b-89c6-5e4ab16ff0dd', 'Assasins Creed 3', 'af466158-f8fc-40b1-bea4-b521fc80993f', 'e1916207-97f5-4a19-b1f3-6e159095f883'),
       ('c00bfaaf-867b-419f-8614-8c2ffd0b775b', 'Assasins Creed 4', 'af466158-f8fc-40b1-bea4-b521fc80993f', 'e1916207-97f5-4a19-b1f3-6e159095f883'),
       ('ed049fb9-34c2-41ac-a84c-253dd49202f5', 'GTA 4', 'c13868a1-a9db-4e18-9533-68614dab6e6c', '98f24177-91de-4785-89a6-d164eb542733'),
       ('95f40074-991c-41c8-8903-b309abe0ef09', 'GTA 5', 'c13868a1-a9db-4e18-9533-68614dab6e6c', '98f24177-91de-4785-89a6-d164eb542733'),
       ('e080bbce-f3e3-410f-a4e1-7d14ab0137a3', 'GTA 6', 'c13868a1-a9db-4e18-9533-68614dab6e6c', '98f24177-91de-4785-89a6-d164eb542733'),
       ('2c398c75-c966-4a8a-a984-1b4cfb4083de', 'Fallout 3', '3f5c118f-301e-459e-99ac-c8d47170f176', 'c65418f0-7ce9-4434-8aee-17ae2d77d582'),
       ('4574eb13-92f8-4bd2-870b-13cd1d4df6ea', 'Fallout New Vegas', '3f5c118f-301e-459e-99ac-c8d47170f176', 'c65418f0-7ce9-4434-8aee-17ae2d77d582'),
       ('eb00cc5e-d131-4ce4-8c10-15f35eb83447', 'Fallout New Boston', '3f5c118f-301e-459e-99ac-c8d47170f176', 'c65418f0-7ce9-4434-8aee-17ae2d77d582');

INSERT INTO Tagi(Id, Nazwa)
VALUES ('45a8c332-0472-4549-9553-e4be4760bae1', 'FPS'),
       ('7bab46de-5010-4dbf-8c1b-ef87e2496c36', 'RPG'),
       ('57b0c333-c34d-4492-9779-f29a1675360d', 'CO-OP'),
       ('cd2b621d-c638-47ac-9338-97b33e4ff020', 'Asymetric Multiplayer'),
       ('43edfdd5-6efc-4052-8aa5-2560f6046f6b', 'Great Story'),
       ('d7bb6a4f-b13b-46ce-97ed-5da5713af9b2', 'American City'),
       ('4ae0e9c9-b2e3-483c-98c5-51b581f1a009', 'Historic'),
       ('5295b038-ad09-4af8-8793-bfc0c0f2ec01', 'Fallout'),
       ('32593392-f932-4d06-85c5-96763504c0b1', 'GTA'),
       ('75ef035f-ad6f-41bf-9f77-de995651662c', 'Assasins Creed');

INSERT INTO GryTagi(IdGry, IdTagu)
VALUES ('d0316dfa-86bb-4522-b4f3-7cd60b6fd72f', '75ef035f-ad6f-41bf-9f77-de995651662c'),
       ('747fbbb5-55d7-4c6a-9065-974f94fdcbda', '75ef035f-ad6f-41bf-9f77-de995651662c'),
       ('adb51f68-026c-471b-89c6-5e4ab16ff0dd', '75ef035f-ad6f-41bf-9f77-de995651662c'),
       ('c00bfaaf-867b-419f-8614-8c2ffd0b775b', '75ef035f-ad6f-41bf-9f77-de995651662c'),
       ('ed049fb9-34c2-41ac-a84c-253dd49202f5', '32593392-f932-4d06-85c5-96763504c0b1'),
       ('95f40074-991c-41c8-8903-b309abe0ef09', '32593392-f932-4d06-85c5-96763504c0b1'),
       ('e080bbce-f3e3-410f-a4e1-7d14ab0137a3', '32593392-f932-4d06-85c5-96763504c0b1'),
       ('ed049fb9-34c2-41ac-a84c-253dd49202f5', 'd7bb6a4f-b13b-46ce-97ed-5da5713af9b2'),
       ('95f40074-991c-41c8-8903-b309abe0ef09', 'd7bb6a4f-b13b-46ce-97ed-5da5713af9b2'),
       ('e080bbce-f3e3-410f-a4e1-7d14ab0137a3', 'd7bb6a4f-b13b-46ce-97ed-5da5713af9b2'),
       ('b8bafbe5-8e94-464f-bc42-979f6edbc735', '57b0c333-c34d-4492-9779-f29a1675360d'),
       ('150a3a49-bc3a-4ad4-a4de-899fcfe0b046', '57b0c333-c34d-4492-9779-f29a1675360d'),
       ('b8bafbe5-8e94-464f-bc42-979f6edbc735', 'cd2b621d-c638-47ac-9338-97b33e4ff020'),
       ('150a3a49-bc3a-4ad4-a4de-899fcfe0b046', 'cd2b621d-c638-47ac-9338-97b33e4ff020'),
       ('2c398c75-c966-4a8a-a984-1b4cfb4083de', 'd7bb6a4f-b13b-46ce-97ed-5da5713af9b2'),
       ('4574eb13-92f8-4bd2-870b-13cd1d4df6ea', 'd7bb6a4f-b13b-46ce-97ed-5da5713af9b2'),
       ('eb00cc5e-d131-4ce4-8c10-15f35eb83447', 'd7bb6a4f-b13b-46ce-97ed-5da5713af9b2'),
       ('2c398c75-c966-4a8a-a984-1b4cfb4083de', '7bab46de-5010-4dbf-8c1b-ef87e2496c36'),
       ('4574eb13-92f8-4bd2-870b-13cd1d4df6ea', '7bab46de-5010-4dbf-8c1b-ef87e2496c36'),
       ('eb00cc5e-d131-4ce4-8c10-15f35eb83447', '7bab46de-5010-4dbf-8c1b-ef87e2496c36');

INSERT INTO Dodatki(Id, IdGry, Tytul)
VALUES ('1e29d512-7779-4d9c-ba67-750acb519efa', '150a3a49-bc3a-4ad4-a4de-899fcfe0b046', 'New Horizons'),
       ('0829acc7-dc08-4377-9482-dfb57bb8cc6b', '150a3a49-bc3a-4ad4-a4de-899fcfe0b046', 'Old Horizons'),
       ('68ce80f4-d98c-4fc1-a53d-66a0fc07a83f', '150a3a49-bc3a-4ad4-a4de-899fcfe0b046', 'Nice Place'),
       ('70920c35-9ba2-4ef9-80b9-a8acb46e0e49', 'c00bfaaf-867b-419f-8614-8c2ffd0b775b', 'The great voyage'),
       ('5f54d7e3-29b5-47e3-916b-70004452adbf', 'c00bfaaf-867b-419f-8614-8c2ffd0b775b', 'The big ship'),
       ('8efe3995-fe00-4c5a-8851-40d70d38ba5d', 'c00bfaaf-867b-419f-8614-8c2ffd0b775b', 'The red ship'),
       ('f13c2357-e06e-43c0-ac46-246872e8e3d5', '65dae096-21bd-4877-8c3c-a21b7bff027e', 'HD Textures'),
       ('a3a2194c-2b2a-4cbd-a7ec-0b890e15ba4a', '4574eb13-92f8-4bd2-870b-13cd1d4df6ea', 'HD Textures'),
       ('7a175164-ce8f-44ee-b268-ab0016bc160a', '2c398c75-c966-4a8a-a984-1b4cfb4083de', 'HD Textures'),
       ('575258f2-bebc-4400-bd40-ecd4e4169977', '6ae08e89-9e31-411e-8b5a-69c4ef5201ac', 'Toyko Drift'),
       ('909877b7-32a3-4a47-9be5-30c055aad261', 'dd41ba5d-7a2b-44dc-af91-b00fb4ec05e3', 'Kyoto Drift'),
       ('65151cda-f618-4db2-9234-d62bc3b243ed', '96c00b76-6675-4c47-8e77-33282ebe7180', 'The Big Apple'),
       ('60538fb1-de32-4d26-bcc1-c6bf59d9faea', '96c00b76-6675-4c47-8e77-33282ebe7180', 'The Green Jewel'),
       ('aa4e368f-a9f5-455f-8460-e45c7dba28fb', '96c00b76-6675-4c47-8e77-33282ebe7180', 'The Sunny Beach'),
       ('473b376c-93d0-417f-984e-f370da09c0b9', 'e080bbce-f3e3-410f-a4e1-7d14ab0137a3', 'Loan Shark: 900$'),
       ('9d4374e6-c3ab-47b0-a0e9-0eab9551ec1a', '95f40074-991c-41c8-8903-b309abe0ef09', 'Loan Shark: 900$'),
       ('63d76142-14a3-43a8-8263-3f4663f52637', 'ed049fb9-34c2-41ac-a84c-253dd49202f5', 'Loan Shark: 900$'),
       ('990e9785-eb5a-4e82-9158-fea6767a4145', 'e080bbce-f3e3-410f-a4e1-7d14ab0137a3', 'Loan Shark: 1800$'),
       ('5ba13b1a-a18e-40cd-92d9-1d9d2889a1b8', '95f40074-991c-41c8-8903-b309abe0ef09', 'Loan Shark: 1800$'),
       ('76e2cd11-a557-4bc4-b1c4-6bf04b26503e', 'ed049fb9-34c2-41ac-a84c-253dd49202f5', 'Loan Shark: 1800$');

INSERT INTO Platformy(Id, Nazwa, Producent)
VALUES ('388238f1-5099-4943-b3a9-51a9451cb527', 'PC', NULL),
       ('23b145ab-c28a-4e28-a11c-66921c52efb8', 'PlayStation 1', 'Sony'),
       ('54a4eab7-8ffc-4094-aaa8-72d8b63588b5', 'PlayStation 2', 'Sony'),
       ('6125728d-5d5b-4371-9c04-0d864e78c6e3', 'PlayStation 3', 'Sony'),
       ('20b3626d-cf32-4b30-893e-00f78ee47b2a', 'PlayStation 4', 'Sony'),
       ('d41e8800-23c7-4e84-8963-55ece2da672d', 'PlayStation 5', 'Sony'),
       ('496c0cf7-f429-4c1b-997c-da9d31591b25', 'Xbox 1', 'Microsoft'),
       ('1fe1a356-36f8-4a16-9d65-d8a186ec83a3', 'Xbox 2', 'Microsoft'),
       ('f4f5951d-02da-4241-9000-5613bc702f64', 'Xbox 3', 'Microsoft'),
       ('42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', 'Xbox 4', 'Microsoft');

INSERT INTO GryNaPlatformach(IdGry, IdPlatformy, DataWydania)
VALUES ('ed049fb9-34c2-41ac-a84c-253dd49202f5', '388238f1-5099-4943-b3a9-51a9451cb527', '2018-06-23 07:30:20'),
       ('ed049fb9-34c2-41ac-a84c-253dd49202f5', 'd41e8800-23c7-4e84-8963-55ece2da672d', '2018-03-23 07:30:20'),
       ('ed049fb9-34c2-41ac-a84c-253dd49202f5', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', '2018-01-23 07:30:20'),
       ('95f40074-991c-41c8-8903-b309abe0ef09', '388238f1-5099-4943-b3a9-51a9451cb527', '2018-02-23 07:30:20'),
       ('95f40074-991c-41c8-8903-b309abe0ef09', 'd41e8800-23c7-4e84-8963-55ece2da672d', '2018-06-23 07:30:20'),
       ('95f40074-991c-41c8-8903-b309abe0ef09', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', '2019-07-23 07:30:20'),
       ('e080bbce-f3e3-410f-a4e1-7d14ab0137a3', '388238f1-5099-4943-b3a9-51a9451cb527', '2018-06-23 07:30:20'),
       ('e080bbce-f3e3-410f-a4e1-7d14ab0137a3', 'd41e8800-23c7-4e84-8963-55ece2da672d', '2018-12-23 07:30:20'),
       ('e080bbce-f3e3-410f-a4e1-7d14ab0137a3', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', '2022-02-23 07:30:20'),
       ('b8bafbe5-8e94-464f-bc42-979f6edbc735', '388238f1-5099-4943-b3a9-51a9451cb527', '2021-11-23 07:30:20'),
       ('b8bafbe5-8e94-464f-bc42-979f6edbc735', 'd41e8800-23c7-4e84-8963-55ece2da672d', '2020-06-23 07:30:20'),
       ('b8bafbe5-8e94-464f-bc42-979f6edbc735', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', '2018-08-23 07:30:20'),
       ('150a3a49-bc3a-4ad4-a4de-899fcfe0b046', '388238f1-5099-4943-b3a9-51a9451cb527', '2016-09-23 07:30:20'),
       ('150a3a49-bc3a-4ad4-a4de-899fcfe0b046', 'd41e8800-23c7-4e84-8963-55ece2da672d', '2015-10-23 07:30:20'),
       ('150a3a49-bc3a-4ad4-a4de-899fcfe0b046', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', '2018-02-23 07:30:20'),
       ('65dae096-21bd-4877-8c3c-a21b7bff027e', '388238f1-5099-4943-b3a9-51a9451cb527', '2019-01-23 07:30:20'),
       ('65dae096-21bd-4877-8c3c-a21b7bff027e', 'd41e8800-23c7-4e84-8963-55ece2da672d', '2019-02-23 07:30:20'),
       ('65dae096-21bd-4877-8c3c-a21b7bff027e', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', '2019-05-23 07:30:20'),
       ('194f97a1-e418-4094-831f-91e0e50e00c3', 'd41e8800-23c7-4e84-8963-55ece2da672d', '2018-10-23 07:30:20'),
       ('194f97a1-e418-4094-831f-91e0e50e00c3', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', '2021-12-23 07:30:20');

INSERT INTO DodatkiNaPlatformach(IdDodatku, IdGry, IdPlatformy, DataWydania)
VALUES ('63d76142-14a3-43a8-8263-3f4663f52637', 'ed049fb9-34c2-41ac-a84c-253dd49202f5', '388238f1-5099-4943-b3a9-51a9451cb527', '2018-06-23 07:30:20'),
       ('63d76142-14a3-43a8-8263-3f4663f52637', 'ed049fb9-34c2-41ac-a84c-253dd49202f5', 'd41e8800-23c7-4e84-8963-55ece2da672d', '2018-03-23 07:30:20'),
       ('63d76142-14a3-43a8-8263-3f4663f52637', 'ed049fb9-34c2-41ac-a84c-253dd49202f5', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', '2018-01-23 07:30:20'),
       ('9d4374e6-c3ab-47b0-a0e9-0eab9551ec1a', '95f40074-991c-41c8-8903-b309abe0ef09', '388238f1-5099-4943-b3a9-51a9451cb527', '2018-02-23 07:30:20'),
       ('9d4374e6-c3ab-47b0-a0e9-0eab9551ec1a', '95f40074-991c-41c8-8903-b309abe0ef09', 'd41e8800-23c7-4e84-8963-55ece2da672d', '2018-06-23 07:30:20'),
       ('9d4374e6-c3ab-47b0-a0e9-0eab9551ec1a', '95f40074-991c-41c8-8903-b309abe0ef09', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', '2019-07-23 07:30:20'),
       ('473b376c-93d0-417f-984e-f370da09c0b9', 'e080bbce-f3e3-410f-a4e1-7d14ab0137a3', '388238f1-5099-4943-b3a9-51a9451cb527', '2018-06-23 07:30:20'),
       ('473b376c-93d0-417f-984e-f370da09c0b9', 'e080bbce-f3e3-410f-a4e1-7d14ab0137a3', 'd41e8800-23c7-4e84-8963-55ece2da672d', '2018-12-23 07:30:20'),
       ('473b376c-93d0-417f-984e-f370da09c0b9', 'e080bbce-f3e3-410f-a4e1-7d14ab0137a3', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', '2022-02-23 07:30:20'),
       ('5ba13b1a-a18e-40cd-92d9-1d9d2889a1b8', '95f40074-991c-41c8-8903-b309abe0ef09', '388238f1-5099-4943-b3a9-51a9451cb527', '2021-11-23 07:30:20'),
       ('5ba13b1a-a18e-40cd-92d9-1d9d2889a1b8', '95f40074-991c-41c8-8903-b309abe0ef09', 'd41e8800-23c7-4e84-8963-55ece2da672d', '2020-06-23 07:30:20'),
       ('5ba13b1a-a18e-40cd-92d9-1d9d2889a1b8', '95f40074-991c-41c8-8903-b309abe0ef09', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', '2018-08-23 07:30:20'),
       ('1e29d512-7779-4d9c-ba67-750acb519efa', '150a3a49-bc3a-4ad4-a4de-899fcfe0b046', '388238f1-5099-4943-b3a9-51a9451cb527', '2016-09-23 07:30:20'),
       ('0829acc7-dc08-4377-9482-dfb57bb8cc6b', '150a3a49-bc3a-4ad4-a4de-899fcfe0b046', '388238f1-5099-4943-b3a9-51a9451cb527', '2015-10-23 07:30:20'),
       ('68ce80f4-d98c-4fc1-a53d-66a0fc07a83f', '150a3a49-bc3a-4ad4-a4de-899fcfe0b046', '388238f1-5099-4943-b3a9-51a9451cb527', '2018-02-23 07:30:20'),
       ('f13c2357-e06e-43c0-ac46-246872e8e3d5', '65dae096-21bd-4877-8c3c-a21b7bff027e', '388238f1-5099-4943-b3a9-51a9451cb527', '2019-01-23 07:30:20'),
       ('f13c2357-e06e-43c0-ac46-246872e8e3d5', '65dae096-21bd-4877-8c3c-a21b7bff027e', 'd41e8800-23c7-4e84-8963-55ece2da672d', '2019-02-23 07:30:20'),
       ('990e9785-eb5a-4e82-9158-fea6767a4145', 'e080bbce-f3e3-410f-a4e1-7d14ab0137a3', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', '2019-05-23 07:30:20'),
       ('990e9785-eb5a-4e82-9158-fea6767a4145', 'e080bbce-f3e3-410f-a4e1-7d14ab0137a3', 'd41e8800-23c7-4e84-8963-55ece2da672d', '2018-10-23 07:30:20'),
       ('990e9785-eb5a-4e82-9158-fea6767a4145', 'e080bbce-f3e3-410f-a4e1-7d14ab0137a3', '388238f1-5099-4943-b3a9-51a9451cb527', '2021-12-23 07:30:20');

INSERT INTO Recenzje(Id, Tytul, Zawartosc, DataOpublikowania, IdPlatformy, IdGry, IdDodatku, Ocena)
VALUES ('a9e80f70-6712-4a26-9d1d-2e37d1dfc6f7', 'GTA 4 PC Review', 'Test', '2018-06-24 00:00:00', '388238f1-5099-4943-b3a9-51a9451cb527', 'ed049fb9-34c2-41ac-a84c-253dd49202f5', NULL, 70),
       ('bd43793f-4829-471a-989b-efa3561e9b5c', 'GTA 4 PS5 Review', 'Hello', '2018-03-24 00:00:00', 'd41e8800-23c7-4e84-8963-55ece2da672d', 'ed049fb9-34c2-41ac-a84c-253dd49202f5', NULL, 70),
       ('e7024984-b7db-4ad7-9790-3f5232b6bf24', 'GTA 4 XBOX4 Review', 'Nice', '2018-01-24 00:00:00', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', 'ed049fb9-34c2-41ac-a84c-253dd49202f5', NULL, 70),
       ('2cec18bc-0dfb-4e6f-994e-39940b7c3963', 'GTA 5 PC REVIEW', 'Good', '2018-02-24 07:30:20', '388238f1-5099-4943-b3a9-51a9451cb527', '95f40074-991c-41c8-8903-b309abe0ef09', NULL, 60),
       ('9803917e-9d96-4ffb-8055-cd942614cad1', 'GTA 5 PS5 REVIEW', 'Excellent', '2018-06-24 07:30:20', 'd41e8800-23c7-4e84-8963-55ece2da672d', '95f40074-991c-41c8-8903-b309abe0ef09', NULL, 60),
       ('090c3ea1-7ffc-4e81-ac56-1fdeeb677ddb', 'GTA 5 XBOX4 REVIEW', 'GTA', '2019-07-24 07:30:20', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', '95f40074-991c-41c8-8903-b309abe0ef09', NULL, 65),
       ('5e8a814a-f3f0-49ea-8066-936566661a6c', 'GTA 6 PC REVIEW', 'As', '2018-06-24 07:30:20', '388238f1-5099-4943-b3a9-51a9451cb527', 'e080bbce-f3e3-410f-a4e1-7d14ab0137a3', NULL, 90),
       ('bd450477-0fba-4d9b-8b07-122efc9b1b25', 'GTA 6 PS5 REVIEW', 'always', '2018-12-24 07:30:20', 'd41e8800-23c7-4e84-8963-55ece2da672d', 'e080bbce-f3e3-410f-a4e1-7d14ab0137a3', NULL, 90),
       ('befa650b-1832-466d-948f-97a8e3dfcd6c', 'GTA 6 XBOX4 REVIEW', 'great', '2022-02-24 07:30:20', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', 'e080bbce-f3e3-410f-a4e1-7d14ab0137a3', NULL, 90),
       ('33652b17-44b1-490a-a11f-8b1cf9e4dc5d', 'New DLC Review 1', 'bad', '2018-06-24 07:30:20', '388238f1-5099-4943-b3a9-51a9451cb527', NULL, '63d76142-14a3-43a8-8263-3f4663f52637', 10),
       ('ef41e2bf-06b7-4580-b72f-e550b9111331', 'New DLC Review 2', 'better', '2018-03-24 07:30:20', 'd41e8800-23c7-4e84-8963-55ece2da672d', NULL, '63d76142-14a3-43a8-8263-3f4663f52637', 20),
       ('2f64126c-f800-48a4-bd47-dd1c6d0185ab', 'New DLC Review 3', 'ok', '2018-01-24 07:30:20', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', NULL, '63d76142-14a3-43a8-8263-3f4663f52637', 30),
       ('b3a177dc-c1d1-4f68-a4ce-ee57316e1c5f', 'New DLC Review 4', 'not bad', '2018-02-24 07:30:20', '388238f1-5099-4943-b3a9-51a9451cb527', NULL, '9d4374e6-c3ab-47b0-a0e9-0eab9551ec1a', 40),
       ('effa6942-914d-46b6-b7f2-adec2929f89a', 'New DLC Review 5', 'nice', '2018-06-24 07:30:20', 'd41e8800-23c7-4e84-8963-55ece2da672d', NULL, '9d4374e6-c3ab-47b0-a0e9-0eab9551ec1a', 50),
       ('75485517-0c1c-4bcd-8132-4906baa5b0ae', 'New DLC Review 6', 'good', '2019-07-24 07:30:20', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', NULL, '9d4374e6-c3ab-47b0-a0e9-0eab9551ec1a', 60),
       ('8e1da2cc-6adc-48be-b0e5-63a570582434', 'New DLC Review 7', 'great', '2018-06-24 07:30:20', '388238f1-5099-4943-b3a9-51a9451cb527', NULL, '473b376c-93d0-417f-984e-f370da09c0b9', 70),
       ('3064e01b-f158-491f-abb1-afb030499c96', 'New DLC Review 8', 'excellent', '2018-12-24 07:30:20', 'd41e8800-23c7-4e84-8963-55ece2da672d', NULL, '473b376c-93d0-417f-984e-f370da09c0b9', 80),
       ('b35a30df-60ab-4cfe-bbb7-614c3972e9d8', 'New DLC Review 9', 'magnificent', '2022-02-24 07:30:20', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', NULL, '473b376c-93d0-417f-984e-f370da09c0b9', 90),
       ('139b18f4-9c98-41c4-9d16-7162d149ead3', 'New Review 1', 'weird', '2022-09-10 14:00:00', 'd41e8800-23c7-4e84-8963-55ece2da672d', '194f97a1-e418-4094-831f-91e0e50e00c3', NULL, 0),
       ('fbb52279-b7b6-450d-8d55-7cf2732edf72', 'New Review 2', 'text', '2022-09-10 14:00:00', '42f370a8-b556-4fc2-bce4-6d9c5fcbcf16', '194f97a1-e418-4094-831f-91e0e50e00c3', NULL, 100);

insert into Krytycy (Id, Imie, Nazwisko) values ('2b6a17bc-5ca1-40eb-aaed-de188fc7ed9e', 'Dallis', 'Jurca');
insert into Krytycy (Id, Imie, Nazwisko) values ('5b388053-d505-4dc6-bc72-c2990b5c9cab', 'Pearla', 'Allday');
insert into Krytycy (Id, Imie, Nazwisko) values ('56d7dad2-e290-438b-96fd-a17cad7a909c', 'Wandis', 'Ionnisian');
insert into Krytycy (Id, Imie, Nazwisko) values ('579f9c5d-3197-4f8e-a47f-428c1f146e43', 'Caroljean', 'Roughan');
insert into Krytycy (Id, Imie, Nazwisko) values ('8d860107-720c-4380-bb76-daaa2801bef7', 'Art', 'Veschi');
insert into Krytycy (Id, Imie, Nazwisko) values ('68c3a019-e577-4f92-bc90-aea31a76e34d', 'Cindee', 'Roussell');
insert into Krytycy (Id, Imie, Nazwisko) values ('9b277444-5692-4b3b-a30d-911ad75d9273', 'Salomo', 'Luff');
insert into Krytycy (Id, Imie, Nazwisko) values ('a5b5fcf3-2052-48ee-9a0a-54556807212b', 'Gearard', 'Cristofor');
insert into Krytycy (Id, Imie, Nazwisko) values ('d94300cc-c425-4da4-9789-6a52d399f0a4', 'Meggy', 'Leneve');
insert into Krytycy (Id, Imie, Nazwisko) values ('94fa0108-b03e-44a7-8b11-be2763f93094', 'Holden', 'Baert');
insert into Krytycy (Id, Imie, Nazwisko) values ('ab97260a-e152-4e31-87e4-7641271a82b8', 'Noach', 'Soule');
insert into Krytycy (Id, Imie, Nazwisko) values ('7a3010b2-4dda-4a04-b300-f6b4abbaa384', 'Alva', 'Phillippo');
insert into Krytycy (Id, Imie, Nazwisko) values ('89b06799-9ba8-42b8-ab79-2ca0545c2ada', 'Kalil', 'Boyda');
insert into Krytycy (Id, Imie, Nazwisko) values ('8b65c81f-7ddd-480e-bb25-d3382e46fcee', 'Monty', 'Donnell');
insert into Krytycy (Id, Imie, Nazwisko) values ('b4939be8-ef4c-4697-b675-d07f83152187', 'Amabelle', 'Spurryer');
insert into Krytycy (Id, Imie, Nazwisko) values ('8e08b8fa-25f3-4376-ab1c-080446ea6db8', 'Cristina', 'Wyldish');
insert into Krytycy (Id, Imie, Nazwisko) values ('836d9e56-1d29-45ab-9861-d621e2d7217f', 'Augustina', 'Bernardon');
insert into Krytycy (Id, Imie, Nazwisko) values ('d70ce124-69b2-41d7-9b5b-c4534029687d', 'Howard', 'Klauer');
insert into Krytycy (Id, Imie, Nazwisko) values ('02e5c690-71dd-4076-af53-38fe84787cb8', 'Caryn', 'Slimme');
insert into Krytycy (Id, Imie, Nazwisko) values ('7448d269-3611-4db9-b027-3264d721cafc', 'Lonny', 'Morris');

INSERT INTO KrytycyRecenzje (IdRecenzji, IdKrytyka)
SELECT TOP 20 R.Id, K.Id
FROM Recenzje R, Krytycy K
ORDER BY NEWID();

INSERT INTO KrytycyWydawcy (IdWydawcy, IdKrytyka)
SELECT TOP 20 R.Id, K.Id
FROM Wydawcy R, Krytycy K
ORDER BY NEWID();

INSERT INTO ProducenciWydawcy (IdWydawcy, IdProducenta)
SELECT TOP 20 R.Id, K.Id
FROM Wydawcy R, Producenci K
ORDER BY NEWID();

insert into Reporterzy (Id, Imie, Nazwisko) values ('de33f607-c2be-4b2c-ac85-c8b08f17d10c', 'Christi', 'Hardwick');
insert into Reporterzy (Id, Imie, Nazwisko) values ('d335770e-60e9-4b90-9c77-40dfd9b7270e', 'Ephrayim', 'Clitheroe');
insert into Reporterzy (Id, Imie, Nazwisko) values ('52f11a93-ff00-4b7a-a141-d825772d9b78', 'Tymothy', 'Borwick');
insert into Reporterzy (Id, Imie, Nazwisko) values ('905ebf78-3bc2-4118-8093-4d9a7190801d', 'Leopold', 'Spittles');
insert into Reporterzy (Id, Imie, Nazwisko) values ('485c72f8-1f13-49a0-adea-a568623973a6', 'Bentlee', 'McGeraghty');
insert into Reporterzy (Id, Imie, Nazwisko) values ('617aac87-21ce-46a5-a95b-2607cc8528b8', 'Llewellyn', 'Tweedlie');
insert into Reporterzy (Id, Imie, Nazwisko) values ('eab1fab2-a2b8-4ef8-80ed-b9de965ad446', 'Sibel', 'Matessian');
insert into Reporterzy (Id, Imie, Nazwisko) values ('64aa4f12-2a82-4d18-8961-ca82a7cf9553', 'Maud', 'Nickerson');
insert into Reporterzy (Id, Imie, Nazwisko) values ('ccffa3ce-a5a0-4e5e-8de2-787570d9244c', 'Raynard', 'Jager');
insert into Reporterzy (Id, Imie, Nazwisko) values ('35be1828-68be-4dbc-91b6-fb04c8a9ba7d', 'Alanna', 'Potten');
insert into Reporterzy (Id, Imie, Nazwisko) values ('ca56b702-c78e-4237-8930-7fb2bbe0834b', 'Marsha', 'Barendtsen');
insert into Reporterzy (Id, Imie, Nazwisko) values ('e7cc017f-2fc5-46e6-90e6-2a431208cd79', 'Wendall', 'Minthorpe');
insert into Reporterzy (Id, Imie, Nazwisko) values ('0d13af60-2a0a-4816-acea-e56261098350', 'Gisela', 'Giurio');
insert into Reporterzy (Id, Imie, Nazwisko) values ('386117e8-aa82-4e2a-989a-dd443537fbf5', 'Aloisia', 'Jirousek');
insert into Reporterzy (Id, Imie, Nazwisko) values ('62f9fdc1-b63c-4cfe-acdf-9901552b46fc', 'Clemence', 'Criple');
insert into Reporterzy (Id, Imie, Nazwisko) values ('4578e1a0-381f-40f8-bf12-01278bb6e44c', 'Lonnard', 'Wonfar');
insert into Reporterzy (Id, Imie, Nazwisko) values ('eb24898c-7748-4046-99f7-d7afa2a0e8d0', 'Sydney', 'Brumfield');
insert into Reporterzy (Id, Imie, Nazwisko) values ('d292e299-57fd-447b-8781-1b1aec46c4d6', 'Ancell', 'Harlock');
insert into Reporterzy (Id, Imie, Nazwisko) values ('98901556-a597-414b-9d67-26fdd684423b', 'Blanche', 'Benedidick');
insert into Reporterzy (Id, Imie, Nazwisko) values ('e20b1f0c-2dd0-4446-83cf-f43eff11160f', 'Kelci', 'Wallice');

insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('30f2a7f7-8c55-47de-b7d2-c9d9b1fdcea8', 'Game character profiles', 'Game soundtrack review: [Game Title]', '2023-06-09 10:03:46');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('d2b718a2-c6f8-4e7b-9001-6470c05881bc', 'Game character profiles', 'Game localization challenges', '2022-12-17 15:53:47');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('8517a633-c469-4e49-8681-8557417de943', 'Upcoming game releases', 'Game of the Year predictions', '2022-01-05 04:21:26');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('2f586966-3699-4348-b2dc-49fccaa73718', 'Game character profiles', 'Interview with game developer', '2023-09-10 22:42:39');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('e0ba8b4e-e543-4ecc-895d-24f061c275a5', 'Game genre spotlights', 'Game localization challenges', '2023-09-22 23:06:40');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('2f8060c2-2d5d-4659-ad51-b36c5756fa1e', 'Game rumors and speculations', 'Gaming hardware review: [Product Name]', '2021-10-25 20:43:57');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('9025b2dc-6eb6-4274-b8a7-1cf635c842d6', 'Game character profiles', 'Game industry controversies', '2022-02-17 06:31:59');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('82ffd1b0-8ca1-421a-8b05-b0fc3800289b', 'Industry trends', 'Game industry news roundup', '2023-02-23 02:10:50');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('61ecdad3-a23e-415a-a389-e3b8ca6a1159', 'Game streaming news', 'Game review: [Game Title]', '2021-08-29 21:54:11');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('eabe9914-f65a-4b48-8168-79a31a423151', 'Game sales and revenue', 'Game review: [Game Title]', '2022-06-09 08:15:02');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('710b4484-da0d-42d8-a589-777935d13197', 'Game console news', 'Game streaming platform comparison', '2022-11-07 05:39:44');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('fd2b7190-e7c9-4e6c-bde0-6e1ad0e4ab65', 'Game updates and patches', 'Game industry awards recap', '2022-05-04 19:33:13');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('8a3d4ae3-51f9-443f-9381-089050a568f4', 'Game genre spotlights', 'Interview with game developer', '2023-08-25 20:05:35');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('d125cda5-815f-469f-8b2a-3fdc24720d53', 'Game streaming news', 'Exclusive interview with [Famous Gamer]', '2023-07-03 00:53:21');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('bef57056-2243-4984-82ff-fe4f5daea3c0', 'Game merchandise and collectibles', 'Game industry predictions for the future', '2021-12-08 04:33:03');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('8155aa57-7909-42c8-b404-d0dc48ff0ec1', 'Game genre spotlights', 'Game industry news roundup', '2023-11-29 05:17:41');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('c9223268-9fe4-49fe-9686-9b39c3768772', 'Game rumors and speculations', 'Game developer spotlight: [Developer Name]', '2023-05-23 16:23:27');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('ce79f7cc-42bd-4269-a991-e6473539a7dc', 'Game modding and customization', 'Interview with game developer', '2023-05-27 02:51:34');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('9facccfb-23bf-45a8-9a7d-b8179547a642', 'Upcoming game releases', 'Upcoming gaming events', '2023-10-11 12:00:05');
insert into Wiadomosci (Id, Tytul, Zawartosc, DataOpublikowania) values ('3a921364-6d95-4c96-8e19-aaad4b450163', 'Game development updates', 'Game of the Year predictions', '2022-05-17 22:08:48');

INSERT INTO ReporterzyWiadomosci (IdReportera, IdWiadomosci)
SELECT TOP 20 R.Id, K.Id
FROM Reporterzy R, Wiadomosci K
ORDER BY NEWID();

INSERT INTO WiadomosciRecenzje (IdWiadomosci, IdRecenzji)
SELECT TOP 20 R.Id, K.Id
FROM Wiadomosci R, Recenzje K
ORDER BY NEWID();

INSERT INTO WiadomosciGry (IdWiadomosci, IdGry)
SELECT TOP 20 R.Id, K.Id
FROM Wiadomosci R, Gry K
ORDER BY NEWID();

INSERT INTO WiadomosciDodatki (IdWiadomosci, IdDodatku)
SELECT TOP 20 R.Id, K.Id
FROM Wiadomosci R, Dodatki K
ORDER BY NEWID();

insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('faf6a96d-cdd1-4c9e-b9a7-514f81abf179', 'Innovative mechanics', 'This game is amazing! The graphics are stunning and the gameplay is addictive.', '2023-03-23 23:07:12', 1);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('77ac9f3a-8976-4dd0-96e0-976c1f235a24', 'Amazing graphics', 'The storyline of this game is captivating. I couldn''t put it down.', '2022-02-15 00:45:27', 52);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('72111189-f42a-4899-b627-74f8030e7e3e', 'Engaging storyline', 'This game is amazing! The graphics are stunning and the gameplay is addictive.', '2022-05-11 13:54:23', 18);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('d0edf579-e025-4834-a22e-fcd381c496f5', 'Challenging puzzles', 'The game is a masterpiece. The attention to detail is incredible.', '2021-08-26 18:24:48', 36);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('ad577dbc-b7ac-441a-a18c-f34e94964d35', 'Amazing graphics', 'I can''t stop playing this game! The multiplayer mode is so much fun.', '2022-11-13 02:41:45', 41);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('660cf071-7082-49b7-a42d-53e7a741e7e2', 'Epic boss battles', 'The storyline of this game is captivating. I couldn''t put it down.', '2022-06-27 11:50:59', 40);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('f8e56251-79d0-4af4-aaa3-5737bcaf4b36', 'Epic boss battles', 'The game is too short. I finished it in just a few hours.', '2022-03-16 20:33:40', 35);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('78b045e5-4030-453a-840a-642e8268380c', 'Amazing graphics', 'I can''t stop playing this game! The multiplayer mode is so much fun.', '2023-02-11 08:17:59', 72);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('7f5ba86a-2dd1-4d0b-99ad-48bfd1e09a22', 'Amazing graphics', 'I was disappointed with this game. The controls were clunky and the story was weak.', '2023-01-24 14:42:00', 51);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('8633da87-6763-428d-a69b-5f78c18c3931', 'Flawless multiplayer', 'The game is too short. I finished it in just a few hours.', '2023-09-27 21:24:26', 74);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('006c1674-b73f-4f70-bac0-0b298adfa7c7', 'Immersive gameplay', 'The storyline of this game is captivating. I couldn''t put it down.', '2021-09-05 21:31:51', 8);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('c2c9ec70-8a1b-4450-a667-3b88c183a23a', 'Immersive gameplay', 'The game is filled with bugs and glitches. It needs a lot of improvement.', '2022-12-13 20:56:26', 60);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('cb931260-5132-4c54-8dc2-3f1c9938dea9', 'Innovative mechanics', 'The game is too short. I finished it in just a few hours.', '2023-10-10 14:00:21', 99);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('f37dd729-0e98-410e-9825-06b9e30f3206', 'Amazing graphics', 'The storyline of this game is captivating. I couldn''t put it down.', '2023-03-12 16:24:12', 15);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('d8ab1871-01e5-4c5d-81b2-382133eea627', 'Immersive gameplay', 'The game offers a wide variety of customization options. It''s great for personalizing your experience.', '2023-11-06 20:03:45', 55);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('895a175b-0d35-4317-a6b7-8097940870dc', 'Immersive gameplay', 'I can''t stop playing this game! The multiplayer mode is so much fun.', '2022-12-12 13:23:52', 79);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('6a2e6970-20f3-4452-9df0-7fba09b7380f', 'Amazing graphics', 'I love the soundtrack of this game. It adds so much to the overall experience.', '2022-06-07 12:33:22', 24);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('d79caf51-3306-4589-adb7-b3f912d50a6f', 'Stunning visuals', 'The storyline of this game is captivating. I couldn''t put it down.', '2022-04-09 22:29:18', 2);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('308c139e-57e7-4eab-9416-51b828166e17', 'Engaging storyline', 'The game offers a wide variety of customization options. It''s great for personalizing your experience.', '2023-02-14 04:37:07', 62);
insert into Opinie (Id, Tytul, Zawartosc, DataOpublikowania, Ocena) values ('bab0fa03-56ae-4858-b867-e79deea6ca93', 'Epic boss battles', 'This game is amazing! The graphics are stunning and the gameplay is addictive.', '2023-01-12 12:36:24', 60);

INSERT INTO OpinieGryNaPlatformach (IdOpinii, IdGry, IdPlatformy)
SELECT TOP 20 R.Id, K.IdGry, K.IdPlatformy
FROM Opinie R, GryNaPlatformach K
ORDER BY NEWID();

INSERT INTO OpinieDodatkiNaPlatformach (IdOpinii, IdDodatku, IdGry, IdPlatformy)
SELECT TOP 20 R.Id, K.IdDodatku, K.IdGry, K.IdPlatformy
FROM Opinie R, DodatkiNaPlatformach K
ORDER BY NEWID();

insert into Gracze (Id, Pseudonim) values ('46f6ffce-7824-4b50-806f-281195f66983', 'RapidFire');
insert into Gracze (Id, Pseudonim) values ('5dabac66-9aaa-42fc-b3a4-6009805f9f27', 'ShadowSlayer');
insert into Gracze (Id, Pseudonim) values ('9c0fc0a7-a7ea-4838-bb4e-21e3a96c0b49', 'CyberHero');
insert into Gracze (Id, Pseudonim) values ('d632110d-7bc5-4da4-be12-635e22c510ca', 'CyberHero1');
insert into Gracze (Id, Pseudonim) values ('bb21685b-62bf-486c-823f-dacdfb850664', 'CyberHero2');
insert into Gracze (Id, Pseudonim) values ('da922022-227d-472d-b0e7-4193dab9b7c0', 'StealthGamer');
insert into Gracze (Id, Pseudonim) values ('886e9061-6119-4ee6-a05c-5f2708e5f60d', 'GameChanger');
insert into Gracze (Id, Pseudonim) values ('81aa37ee-0063-41b4-ab9d-5908b649ebc5', 'LegendHunter');
insert into Gracze (Id, Pseudonim) values ('3d77657e-8be2-43a3-aa25-29f91d9f9d6b', 'ShadowSlayer1');
insert into Gracze (Id, Pseudonim) values ('7161a8a1-b6f2-4d18-b831-0837bc6db557', 'GameChanger345234');
insert into Gracze (Id, Pseudonim) values ('afd4db59-ee70-406e-8b49-33563b1cd0e5', 'LegendHunter654');
insert into Gracze (Id, Pseudonim) values ('9e218de9-a8bd-43cf-b7ee-0e3ab930d8d5', 'CyberHero3');
insert into Gracze (Id, Pseudonim) values ('022446e8-dcaa-40ab-923a-21a1a029bd2a', 'ShadowSlayer2');
insert into Gracze (Id, Pseudonim) values ('8a8c8a27-6faa-4451-9b45-67c80a2fd68e', 'GameChanger234');
insert into Gracze (Id, Pseudonim) values ('d094d8c8-91b6-45c4-8764-64737a1589b0', 'StealthGamer324');
insert into Gracze (Id, Pseudonim) values ('38e23922-41b6-45b1-9907-f079d8bdc212', 'PixelWizard');
insert into Gracze (Id, Pseudonim) values ('306f911f-8d0f-4c6a-a8bb-85c3902e00ea', 'NinjaWarrior');
insert into Gracze (Id, Pseudonim) values ('16385eaa-11fa-4b72-92a4-e60ed0b981e5', 'NinjaWarrior1');
insert into Gracze (Id, Pseudonim) values ('b6351dd8-15ad-4c89-ab50-6473d926b80e', 'NinjaWarrior2');
insert into Gracze (Id, Pseudonim) values ('cc54f217-852d-4174-8d0d-64f0388ceb86', 'LegendHunter5');

INSERT INTO OpinieGracze (IdOpinii, IdGracza)
SELECT TOP 20 R.Id, K.Id
FROM Opinie R, Gracze K
ORDER BY NEWID();

INSERT INTO ListyUlubionychGier(Id, Tytul, Opis, IdGracza)
VALUES ('5bd57239-c772-482d-a306-550c973b651a', 'Best games', 'sdfs', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('a3fc2914-16c2-47de-b419-80a24a3defbe', 'My fav games', 'dsfsdf', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('4c2d08b7-1dae-4f07-93c7-7afafd495270', 'Super games list', 'fsddsf', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('a45e8147-51de-4e40-8f6c-196b2242c0e4', 'nice games', 'sdfsdf', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('85a3853b-3102-49e8-897a-0b7ce2896711', 'gg', 'sdfsdf', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('08661be0-dc40-48dd-ab92-47ed2250ae86', 'playing now', '', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('bec9c9f1-392a-427c-afac-5aeb16e6bf7b', 'wow games', '', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('2f76eed7-66af-4a6d-ab94-f4d1fa5e7af6', 'too good', 'sdfsdf', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('12e5da98-63ba-4a3d-99c2-3cb2e0f1f7a5', 'great', '', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('a4c1fb21-d6fd-4dc4-a3c5-61da5132fff2', 'innovative', '', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('296a963a-7ffc-4b04-a2ed-33e32a1fe797', 'surprising', 'sdfsdf', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('d9dc302f-13fb-4c50-919d-70a576760b8a', 'wonderful', '', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('d18bc01c-0333-416a-93fb-0fb17712e899', 'hacky', '', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('83e607b9-71dd-4a86-973d-da3536d61ec4', 'must play', 'sdfsdf', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('71277fcb-6b46-4ed9-9bab-f6c58ca2dbc0', 'top 110', '', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('9f7959c5-cdd9-4a68-95fd-b3003816de5b', 'fav', '', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('9ab05482-f777-4a4f-842c-dee424537503', 'top', 'sdfsdf', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('e5c064e2-36da-4bdd-8b63-c7882e0a324e', 'great', '', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('087064bb-1f8f-4fd8-96ec-56ef779b07a5', 'games', '', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID())),
       ('65c99f78-fa7f-4e9e-a2c8-4fc3553d275c', 'my', '', (SELECT TOP 1 Id FROM Gracze ORDER BY NEWID()));

INSERT INTO ListyUlubionychGierGry (IdListy, IdGry)
SELECT TOP 20 R.Id, K.Id
FROM ListyUlubionychGier R, Gry K
ORDER BY NEWID();