USE [trainingdb]
GO

/****** Object:  Table [dbo].[data]    Script Date: 05-09-2023 16:20:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[data](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[age] [int] NULL
) ON [PRIMARY]
GO

