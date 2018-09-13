CREATE TABLE [dbo].[BookInventory]
(
[TitleID] [int] NOT NULL,
[Title] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Quantity] [int] NOT NULL CONSTRAINT [Quantity_Default_1] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BookInventory] ADD CONSTRAINT [PK__BookInve__757589E68086C9B4] PRIMARY KEY CLUSTERED  ([TitleID]) ON [PRIMARY]
GO
