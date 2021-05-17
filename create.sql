USE [Inventory]
GO
/****** Object:  Table [dbo].[complectDetails]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[complectDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[devID] [int] NULL,
	[comment] [nchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[complects]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[complects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](100) NOT NULL,
	[complectDate] [datetime] NOT NULL,
	[owner] [int] NOT NULL,
	[model_id] [int] NOT NULL,
	[comment] [nchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[contractors]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contractors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](255) NOT NULL,
	[inn] [nchar](50) NULL,
	[kpp] [nchar](50) NULL,
	[link] [nchar](100) NULL,
	[comment] [nchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[devices]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[devices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [int] NOT NULL,
	[place] [int] NOT NULL,
	[owner] [int] NOT NULL,
	[model] [int] NOT NULL,
	[serial] [nchar](30) NOT NULL,
	[invNum] [nchar](30) NOT NULL,
	[invBuh] [nchar](30) NULL,
	[cost] [numeric](10, 2) NULL,
	[mac] [nchar](30) NULL,
	[ip] [nchar](16) NULL,
	[orderNum] [int] NULL,
	[createDate] [datetime] NOT NULL,
	[editDate] [datetime] NULL,
	[editOwner] [int] NULL,
	[comment] [ntext] NULL,
	[creator] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[deviceStatuses]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deviceStatuses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](20) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[models]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[models](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[modelType] [int] NOT NULL,
	[name] [nchar](255) NOT NULL,
	[creator] [int] NULL,
	[comment] [nchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[moveDetails]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[moveDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[moveID] [int] NOT NULL,
	[devID] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[moves]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[moves](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fromUser] [int] NOT NULL,
	[fromPlace] [int] NOT NULL,
	[toUser] [int] NOT NULL,
	[toPlace] [int] NOT NULL,
	[moveDate] [datetime] NOT NULL,
	[owner] [int] NOT NULL,
	[name] [nchar](100) NOT NULL,
	[comment] [nchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[objTypes]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[objTypes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vid] [int] NOT NULL,
	[name] [nchar](100) NOT NULL,
	[net] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[objVids]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[objVids](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](255) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orderDetails]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderNum] [int] NOT NULL,
	[model] [int] NOT NULL,
	[cnt] [int] NOT NULL,
	[cntGetted] [int] NOT NULL,
	[cost] [numeric](10, 2) NULL,
	[summa] [numeric](10, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orders]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [int] NOT NULL,
	[schetNum] [nchar](20) NULL,
	[schetDate] [datetime] NULL,
	[link] [nchar](255) NULL,
	[name] [nchar](255) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[owner] [int] NOT NULL,
	[contractor] [int] NOT NULL,
	[cost] [decimal](10, 2) NULL,
	[comment] [nchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orderStatuses]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderStatuses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](20) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[places]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[places](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[settings]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[settings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[value] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[spisaniya]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spisaniya](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](255) NOT NULL,
	[spisDate] [datetime] NOT NULL,
	[comment] [nchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[spisDetails]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spisDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[spisID] [int] NOT NULL,
	[devID] [int] NOT NULL,
	[comment] [nchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 17.05.2021 8:25:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](50) NOT NULL,
	[email] [nchar](50) NULL,
	[sid] [nchar](50) NULL,
	[login] [nchar](50) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[objTypes] ADD  CONSTRAINT [DF_objTypes_net]  DEFAULT ((0)) FOR [net]
GO
ALTER TABLE [dbo].[orderDetails] ADD  CONSTRAINT [DF_orderDetails_cnt]  DEFAULT ((1)) FOR [cnt]
GO
