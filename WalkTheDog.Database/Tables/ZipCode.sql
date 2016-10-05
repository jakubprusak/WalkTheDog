CREATE TABLE [dbo].[ZipCode]
(
	[ZipCodeId] INT NOT NULL IDENTITY, 
    [Code] NVARCHAR(6) NOT NULL, 
    [City] NVARCHAR(225) NOT NULL, 
    [VoivodeshipId] INT NOT NULL, 
    CONSTRAINT [PK_ZipCode] PRIMARY KEY ([ZipCodeId]),
	CONSTRAINT [FK_ZipCode_VoivodeshipId] FOREIGN KEY ([VoivodeshipId]) REFERENCES [dbo].[Voivodeship] ([VoivodeshipId]),
)
