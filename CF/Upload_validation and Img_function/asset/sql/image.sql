USE [trainingdb]
GO

/****** Object:  Table [dbo].[uploadImage]    Script Date: 05-09-2023 16:26:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[uploadImage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Imagename] [varchar](50) NULL,
	[ImageDescription] [varchar](50) NULL,
	[Img] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

