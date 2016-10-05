CREATE TABLE [dbo].[Voivodeship]
(
	[VoivodeshipId] INT NOT NULL IDENTITY , 
    [Code] NVARCHAR(2) NULL, 
    [Name] NVARCHAR(50) NULL, 
    CONSTRAINT [PK_Voivodeship] PRIMARY KEY ([VoivodeshipId])
)
