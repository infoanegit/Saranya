USE [trainingdb]
GO

/****** Object:  Table [dbo].[formcrudvalues]    Script Date: 05-09-2023 16:25:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[formcrudvalues](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Firsrtname] [varchar](50) NULL,
	[Lastname] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Age] [int] NULL,
	[Location_name] [varchar](50) NULL
) ON [PRIMARY]
GO

