USE [trainingdb]
GO

/****** Object:  Table [dbo].[formvalues]    Script Date: 05-09-2023 17:08:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[formvalues](
	[Userid] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Pwd] [varchar](50) NULL,
	[user_role] [varchar](30) NULL
) ON [PRIMARY]
GO

