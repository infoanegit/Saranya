USE [trainingdb]
GO

/****** Object:  Table [dbo].[login]    Script Date: 05-09-2023 16:22:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO

