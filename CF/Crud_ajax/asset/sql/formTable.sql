USE [trainingdb]
GO

/****** Object:  Table [dbo].[form]    Script Date: 04-09-2023 11:05:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[form](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[age] [int] NULL,
	[location_name] [varchar](50) NULL
) ON [PRIMARY]
GO

