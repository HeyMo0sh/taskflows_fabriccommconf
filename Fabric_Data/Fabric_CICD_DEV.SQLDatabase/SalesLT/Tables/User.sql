CREATE TABLE [SalesLT].[User] (
    [UserID]        INT              IDENTITY (1, 1) NOT NULL,
    [UserName]      NVARCHAR (50)    NOT NULL,
    [Email]         NVARCHAR (100)   NOT NULL,
    [PasswordHash]  NVARCHAR (256)   NOT NULL,
    [IsActive]      BIT              NOT NULL CONSTRAINT [DF_User_IsActive] DEFAULT (1),
    [CreatedDate]   DATETIME         NOT NULL CONSTRAINT [DF_User_CreatedDate] DEFAULT (getdate()),
    [ModifiedDate]  DATETIME         NOT NULL CONSTRAINT [DF_User_ModifiedDate] DEFAULT (getdate()),
    CONSTRAINT [PK_User_UserID] PRIMARY KEY CLUSTERED ([UserID] ASC),
    CONSTRAINT [AK_User_UserName] UNIQUE NONCLUSTERED ([UserName] ASC),
    CONSTRAINT [AK_User_Email] UNIQUE NONCLUSTERED ([Email] ASC)
);