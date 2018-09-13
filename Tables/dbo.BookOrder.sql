CREATE TABLE [dbo].[BookOrder]
(
[TitleID] [int] NOT NULL,
[Title] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Quantity] [int] NOT NULL CONSTRAINT [Quantity_Default_2] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BookOrder] ADD CONSTRAINT [PK__BookOrde__757589E6E9D77BD3] PRIMARY KEY CLUSTERED  ([TitleID]) ON [PRIMARY]
GO
