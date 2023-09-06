USE [trainingdb]
GO

/****** Object:  Table [dbo].[pageval]    Script Date: 05-09-2023 16:23:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[pageval](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Page] [varchar](50) NULL,
	[Description] [varchar](60) NULL
) ON [PRIMARY]
GO

