CREATE TABLE [dbo].[Meeting]
(
	[MeetingId] INT NOT NULL PRIMARY KEY, 
    [Date] DATETIME NOT NULL, 
    [ZipCodeId] INT NULL, 
	[City] NVARCHAR(225) NULL, 
    [Description] NVARCHAR(1000) NULL,
    CONSTRAINT [FK_Meeting_VoivodeshipId] FOREIGN KEY ([ZipCodeId]) REFERENCES [dbo].[ZipCode] ([ZipCodeId]),
)
