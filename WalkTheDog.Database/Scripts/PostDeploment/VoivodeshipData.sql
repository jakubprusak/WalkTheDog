
SET IDENTITY_INSERT [dbo].[Voivodeship] ON;

MERGE INTO [dbo].[Voivodeship] AS Target
USING (VALUES
  (1, N'DS', N'DOLNOŚLĄSKIE'),
  (2, N'KP', N'KUJAWSKO-POMORSKIE'),
  (3, N'LU', N'LUBELSKIE'),
  (4, N'LB', N'LUBUSKIE'),
  (5, N'LD', N'ŁÓDZKIE'),
  (6, N'MA', N'MAŁOPOLSKIE'),
  (7, N'MZ', N'MAZOWIECKIE'),
  (8, N'OP', N'OPOLSKIE'),
  (9, N'PK', N'PODKARPACKIE'),
  (10, N'PD', N'PODLASKIE'),
  (11, N'PM', N'POMORSKIE'),
  (12, N'SL', N'ŚLĄSKIE'),
  (13, N'SK', N'ŚWIĘTOKRZYSKIE'),
  (14, N'WM', N'WARMIŃSKO-MAZURSKIE'),
  (15, N'WP', N'WIELKOPOLSKIE'),
  (16, N'ZP', N'ZACHODNIOPOMORSKIE')
)
AS Source ([VoivodeshipId], [Code], [Name])
ON Target.[VoivodeshipId] = Source.[VoivodeshipId]
-- update matched rows
WHEN MATCHED THEN
UPDATE
    SET [Name] = Source.[Name],
        [Code] = Source.[Code]
-- insert new rows
WHEN NOT MATCHED BY TARGET THEN
INSERT ([VoivodeshipId], [Code], [Name])
VALUES ([VoivodeshipId], [Code], [Name])
-- delete rows that are in the target but not the source
WHEN NOT MATCHED BY SOURCE THEN
DELETE;

go
SET IDENTITY_INSERT [dbo].[Voivodeship] OFF;
go