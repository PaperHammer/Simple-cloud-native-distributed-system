USE [AspireOrleansDb]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2024/6/24 星期一 11:00:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Uid] [bigint] NOT NULL,
	[CustomerUid] [bigint] NOT NULL,
	[StoreUid] [bigint] NOT NULL,
	[RiderUid] [bigint] NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[FinishTime] [datetime2](7) NULL,
	[StartPrice] [float] NOT NULL,
	[DeliveryPrice] [float] NOT NULL,
	[Statu] [int] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2024/6/24 星期一 11:00:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Uid] [bigint] NOT NULL,
	[CategoryUid] [bigint] NOT NULL,
	[StoreUid] [bigint] NOT NULL,
	[ProductImage] [varbinary](max) NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductDesc] [nvarchar](256) NULL,
	[ProductPrice] [float] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stores]    Script Date: 2024/6/24 星期一 11:00:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stores](
	[Uid] [bigint] NOT NULL,
	[OwnerId] [bigint] NOT NULL,
	[StoreImage] [varbinary](max) NULL,
	[StoreName] [nvarchar](50) NOT NULL,
	[Position] [nvarchar](256) NOT NULL,
	[Score] [float] NOT NULL,
	[StoreDesc] [nvarchar](256) NULL,
	[OpeningTime] [datetime2](7) NOT NULL,
	[ClosingTime] [datetime2](7) NOT NULL,
	[StartPrice] [float] NOT NULL,
	[DeliveryPrice] [float] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Stores] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2024/6/24 星期一 11:00:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Uid] [bigint] NOT NULL,
	[Email] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](128) NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[Status] [int] NOT NULL,
	[IsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreateTime]
GO
ALTER TABLE [dbo].[Stores] ADD  CONSTRAINT [DF__Stores__OwnerId__01142BA1]  DEFAULT (CONVERT([bigint],(0))) FOR [OwnerId]
GO
