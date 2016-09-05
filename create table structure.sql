USE [TESTDB]
GO
/****** Object:  Table [dbo].[Holding]    Script Date: 12/16/2015 6:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Holding](
	[Holdingid] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Amount] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Holding] PRIMARY KEY CLUSTERED 
(
	[Holdingid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Model]    Script Date: 12/16/2015 6:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[ModelID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Percentage] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[ModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/16/2015 6:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[OperationType] [varchar](20) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL CONSTRAINT [DF_Order_Amount]  DEFAULT ((0)),
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Holding] ([Holdingid], [Name], [Amount]) VALUES (1, N'GOOG', CAST(100 AS Decimal(18, 0)))
INSERT [dbo].[Holding] ([Holdingid], [Name], [Amount]) VALUES (2, N'MDRX', CAST(300 AS Decimal(18, 0)))
INSERT [dbo].[Holding] ([Holdingid], [Name], [Amount]) VALUES (3, N'BOOK', CAST(100 AS Decimal(18, 0)))
INSERT [dbo].[Holding] ([Holdingid], [Name], [Amount]) VALUES (4, N'Hello', CAST(500 AS Decimal(18, 0)))
INSERT [dbo].[Model] ([ModelID], [Name], [Percentage]) VALUES (1, N'GOOG', CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[Model] ([ModelID], [Name], [Percentage]) VALUES (2, N'MDRX', CAST(50 AS Decimal(18, 0)))
INSERT [dbo].[Model] ([ModelID], [Name], [Percentage]) VALUES (3, N'BOOK', CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[Model] ([ModelID], [Name], [Percentage]) VALUES (4, N'AMZN', CAST(10 AS Decimal(18, 0)))
