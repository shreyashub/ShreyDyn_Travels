CREATE TABLE [dbo].[Users] (
    [Username] VARCHAR (50) NOT NULL,
    [Password] VARCHAR (50) NOT NULL,
    [Name]     VARCHAR (50) NOT NULL,
    [Email]    VARCHAR (50) NOT NULL,
    [Authority] VARCHAR(50) NOT NULL, 
    PRIMARY KEY CLUSTERED ([Username] ASC)
);

