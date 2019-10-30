CREATE TABLE [dbo].[Bus]
(
	[BusID] INT NOT NULL PRIMARY KEY, 
    [StartLoc] VARCHAR(50) NOT NULL, 
    [EndLoc] VARCHAR(50) NOT NULL, 
    [StopOver] VARCHAR(50) NULL, 
    [Owner] VARCHAR(50) NOT NULL, 
    [Capacity] INT NOT NULL, 
    [StartTime] TIME NOT NULL, 
    [EndTime] TIME NOT NULL, 
    [Cost] INT NOT NULL, 
    [DoJ] DATE NOT NULL
)