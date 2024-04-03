USE [MIP]
GO

/****** Object:  Table [dbo].[MIPLog]    Script Date: 4/3/2024 7:12:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MIPLog](
	[MIPId] [bigint] IDENTITY(1,1) NOT NULL,
	[Premium] [decimal](10, 2) NULL,
	[PolicyNumber] [varchar](50) NULL,
	[Response] [varchar](max) NULL,
	[Status] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[IdNumber] [varchar](50) NULL,
	[MedStat] [varchar](50) NULL,
 CONSTRAINT [PK_OwlsLog] PRIMARY KEY CLUSTERED 
(
	[MIPId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


