CREATE TABLE [dbo].[Booking]
(
	[BkID] INT NOT NULL PRIMARY KEY, 
    [IDBus] INT NOT NULL, 
    [Nameuser] VARCHAR(50) NOT NULL, 
    CONSTRAINT [Bus_ID] FOREIGN KEY ([IDBus]) REFERENCES [Bus]([BusID]), 
    CONSTRAINT [User_name] FOREIGN KEY ([Nameuser]) REFERENCES [User]([Username]) 
)
