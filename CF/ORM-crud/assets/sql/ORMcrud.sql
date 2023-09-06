USE [trainingdb]
GO

/****** Object:  Table [dbo].[crud]    Script Date: 05-09-2023 16:58:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[crud](
	[Id] [int] NOT NULL,
	[Firstname] [varchar](255) NULL,
	[Lastname] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Gender] [varchar](255) NULL,
	[Age] [float] NULL,
	[Location] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

