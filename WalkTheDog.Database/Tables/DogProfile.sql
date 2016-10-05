CREATE TABLE [dbo].[DogProfile]
(
	[DogProfileId] INT NOT NULL PRIMARY KEY, 
    [DogSize] INT NOT NULL, 
    [Weight] INT NOT NULL, 
    [Height] INT NOT NULL, 
    [Description] NVARCHAR(1000) NOT NULL
)
