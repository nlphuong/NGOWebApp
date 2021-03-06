Create database [NGOWebsite]
go
USE [NGOWebsite]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/29/2021 6:19:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/29/2021 6:19:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Birthday] [datetime2](7) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[RoleId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[GetRoleId] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 12/29/2021 6:19:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_ContactUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donate]    Script Date: 12/29/2021 6:19:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NULL,
	[CategoryId] [int] NULL,
	[PartnerId] [int] NULL,
	[Amount] [float] NOT NULL,
	[ProgramId] [int] NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Donate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonateCategory]    Script Date: 12/29/2021 6:19:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonateCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_DonateCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fund]    Script Date: 12/29/2021 6:19:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fund](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Total] [float] NULL,
	[CurrentFund] [float] NULL,
	[DonateId] [int] NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Fund] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interested]    Script Date: 12/29/2021 6:19:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interested](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NULL,
	[ProgramId] [int] NULL,
	[PartnerId] [int] NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Interested] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 12/29/2021 6:19:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrgName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NULL,
	[Logo] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 12/29/2021 6:19:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[ProgramId] [int] NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[GetProgramsId] [int] NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programs]    Script Date: 12/29/2021 6:19:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShortContent] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[ExpectedAmount] [float] NULL,
	[PartnerId] [int] NULL,
	[Duration] [datetime2](7) NOT NULL,
	[Status] [int] NULL,
	[Photo] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[DeleteAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Programs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Query]    Script Date: 12/29/2021 6:19:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Query](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[AccountId] [int] NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Query] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reply]    Script Date: 12/29/2021 6:19:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reply](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NULL,
	[Content] [nvarchar](max) NOT NULL,
	[QueryId] [int] NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Reply] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/29/2021 6:19:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211229111122_Test1', N'5.0.12')
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [FullName], [Email], [Password], [Phone], [Address], [Birthday], [Avatar], [RoleId], [Status], [CreatedAt], [GetRoleId]) VALUES (1, N'Nguyen Linh Phuong', N'phuongnl@gmail.com', N'25d55ad283aa400af464c76d713c07ad', N'0941132369', N'Laos', CAST(N'1995-01-01T00:00:00.0000000' AS DateTime2), N'images/avatar.jpg', 1, 1, CAST(N'2021-12-29T18:11:44.5133333' AS DateTime2), NULL)
INSERT [dbo].[Account] ([Id], [FullName], [Email], [Password], [Phone], [Address], [Birthday], [Avatar], [RoleId], [Status], [CreatedAt], [GetRoleId]) VALUES (2, N'Tran Cong Sang', N'sangtrancong171196@gmail.com', N'25d55ad283aa400af464c76d713c07ad', N'0946963045', N'TPHCM', CAST(N'1996-01-01T00:00:00.0000000' AS DateTime2), N'images/avatar.jpg', 1, 1, CAST(N'2021-12-29T18:11:44.5133333' AS DateTime2), NULL)
INSERT [dbo].[Account] ([Id], [FullName], [Email], [Password], [Phone], [Address], [Birthday], [Avatar], [RoleId], [Status], [CreatedAt], [GetRoleId]) VALUES (3, N'Lai Ngoc Thuy Tien', N'tien@gmail.com', N'25d55ad283aa400af464c76d713c07ad', N'0125963999', N'TPHCM', CAST(N'1996-01-01T00:00:00.0000000' AS DateTime2), N'images/avatar.jpg', 1, 1, CAST(N'2021-12-29T18:11:44.5133333' AS DateTime2), NULL)
INSERT [dbo].[Account] ([Id], [FullName], [Email], [Password], [Phone], [Address], [Birthday], [Avatar], [RoleId], [Status], [CreatedAt], [GetRoleId]) VALUES (4, N'Phung Van Phuc', N'phuc@gmail.com', N'25d55ad283aa400af464c76d713c07ad', N'0125963999', N'TPHCM', CAST(N'1996-01-01T00:00:00.0000000' AS DateTime2), N'images/avatar.jpg', 1, 1, CAST(N'2021-12-29T18:11:44.5133333' AS DateTime2), NULL)
INSERT [dbo].[Account] ([Id], [FullName], [Email], [Password], [Phone], [Address], [Birthday], [Avatar], [RoleId], [Status], [CreatedAt], [GetRoleId]) VALUES (5, N'Vu Bui Minh Hieu', N'hieu1@gmail.com', N'25d55ad283aa400af464c76d713c07ad', N'0125963999', N'TPHCM', CAST(N'1996-01-01T00:00:00.0000000' AS DateTime2), N'images/avatar.jpg', 1, 1, CAST(N'2021-12-29T18:11:44.5133333' AS DateTime2), NULL)
INSERT [dbo].[Account] ([Id], [FullName], [Email], [Password], [Phone], [Address], [Birthday], [Avatar], [RoleId], [Status], [CreatedAt], [GetRoleId]) VALUES (6, N'Sang user', N'trancongsang.a1.vd.2014@gmail.com', N'25d55ad283aa400af464c76d713c07ad', N'0125963999', N'TPHCM', CAST(N'1996-01-01T00:00:00.0000000' AS DateTime2), N'images/avatar.jpg', 2, 1, CAST(N'2021-12-29T18:11:44.5133333' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[ContactUs] ON 

INSERT [dbo].[ContactUs] ([Id], [Name], [Phone], [Email], [Content], [Status], [CreatedAt]) VALUES (1, N'sang', N'0946963045', N'trancongsang.a1.vd.2014@gmail.com', N'good website', 1, CAST(N'2021-12-29T18:11:44.5433333' AS DateTime2))
INSERT [dbo].[ContactUs] ([Id], [Name], [Phone], [Email], [Content], [Status], [CreatedAt]) VALUES (2, N'nam', N'0946963335', N'nam@gmail.com', N'good job', 1, CAST(N'2021-12-29T18:11:44.5433333' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ContactUs] OFF
GO
SET IDENTITY_INSERT [dbo].[Donate] ON 

INSERT [dbo].[Donate] ([Id], [AccountId], [CategoryId], [PartnerId], [Amount], [ProgramId], [Status], [CreatedAt]) VALUES (1, 6, 2, 2, 1000, 1, 1, CAST(N'2021-12-23T18:11:22.3083175' AS DateTime2))
INSERT [dbo].[Donate] ([Id], [AccountId], [CategoryId], [PartnerId], [Amount], [ProgramId], [Status], [CreatedAt]) VALUES (2, 6, 3, 3, 2000, NULL, 1, CAST(N'2021-12-24T18:11:22.3087039' AS DateTime2))
INSERT [dbo].[Donate] ([Id], [AccountId], [CategoryId], [PartnerId], [Amount], [ProgramId], [Status], [CreatedAt]) VALUES (3, 6, 2, 2, 20000, 2, 1, CAST(N'2021-12-26T18:11:22.3087054' AS DateTime2))
INSERT [dbo].[Donate] ([Id], [AccountId], [CategoryId], [PartnerId], [Amount], [ProgramId], [Status], [CreatedAt]) VALUES (5, 6, 4, 4, 7000, 4, 1, CAST(N'2021-12-29T18:11:22.3087057' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Donate] OFF
GO
SET IDENTITY_INSERT [dbo].[DonateCategory] ON 

INSERT [dbo].[DonateCategory] ([Id], [Name], [Photo], [Status]) VALUES (1, N'Care for elderly people', N'care-elderly.jpg', 1)
INSERT [dbo].[DonateCategory] ([Id], [Name], [Photo], [Status]) VALUES (2, N'Children Welfare Activity', N'ChildrenWelfare.jpg', 1)
INSERT [dbo].[DonateCategory] ([Id], [Name], [Photo], [Status]) VALUES (3, N'Disabled Person', N'DisabledPerson.jpg', 1)
INSERT [dbo].[DonateCategory] ([Id], [Name], [Photo], [Status]) VALUES (4, N'People affected by natural disasters', N'disaster.jpg', 1)
SET IDENTITY_INSERT [dbo].[DonateCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Fund] ON 

INSERT [dbo].[Fund] ([Id], [Total], [CurrentFund], [DonateId], [Status], [CreatedAt]) VALUES (1, 100000, 5000, 1, 1, CAST(N'2021-12-29T18:11:46.1633333' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Fund] OFF
GO
SET IDENTITY_INSERT [dbo].[Interested] ON 

INSERT [dbo].[Interested] ([Id], [AccountId], [ProgramId], [PartnerId], [Status], [CreatedAt]) VALUES (1, 6, 1, 1, 1, CAST(N'2021-12-29T18:11:46.1500000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Interested] OFF
GO
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([Id], [OrgName], [Email], [Phone], [Address], [CategoryId], [Logo], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, N'Crescent Moon Charity Fund', N'Charity@gmail.com', N'0925695555', N'Viet Nam', 1, N'4d4ce557-f420-46a6-b7bd-abe59a229bf4.png', 1, CAST(N'2021-12-29T18:11:44.5833333' AS DateTime2), CAST(N'2021-12-29T18:11:44.5833333' AS DateTime2))
INSERT [dbo].[Partner] ([Id], [OrgName], [Email], [Phone], [Address], [CategoryId], [Logo], [Status], [CreatedAt], [UpdatedAt]) VALUES (2, N'MSD . organization', N'msd@email.com', N'8494633356', N'Viet Nam', 2, N'2275b1b0-4acd-4177-842c-51784e4158bb.jpg', 1, CAST(N'2021-12-29T18:11:44.5833333' AS DateTime2), CAST(N'2021-12-29T18:11:44.5833333' AS DateTime2))
INSERT [dbo].[Partner] ([Id], [OrgName], [Email], [Phone], [Address], [CategoryId], [Logo], [Status], [CreatedAt], [UpdatedAt]) VALUES (3, N'Operation Smile', N'smile@gmail.com', N'0946963056', N'Viet Nam', 3, N'de1be3a6-8d06-40c7-a09b-190458ca920b.jpg', 1, CAST(N'2021-12-29T18:11:44.5833333' AS DateTime2), CAST(N'2021-12-29T18:11:44.5833333' AS DateTime2))
INSERT [dbo].[Partner] ([Id], [OrgName], [Email], [Phone], [Address], [CategoryId], [Logo], [Status], [CreatedAt], [UpdatedAt]) VALUES (4, N'Power 2000', N'2000power@gmail.com', N'0948633555', N'Viet Nam', 4, N'4c35d10b-7741-4a1e-ad47-0518064564eb.jpg', 1, CAST(N'2021-12-29T18:11:44.5833333' AS DateTime2), CAST(N'2021-12-29T18:11:44.5833333' AS DateTime2))
INSERT [dbo].[Partner] ([Id], [OrgName], [Email], [Phone], [Address], [CategoryId], [Logo], [Status], [CreatedAt], [UpdatedAt]) VALUES (5, N'Flower and Sharing Charity Fund', N'flower@gmail.com', N'8494633356', N'Viet Nam', 2, N'868a1bbd-c9d3-4802-842d-12a7bf141f68.jpg', 1, CAST(N'2021-12-29T18:11:44.5833333' AS DateTime2), CAST(N'2021-12-29T18:11:44.5833333' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Partner] OFF
GO
SET IDENTITY_INSERT [dbo].[Photos] ON 

INSERT [dbo].[Photos] ([Id], [Photo], [ProgramId], [Status], [CreatedAt], [GetProgramsId]) VALUES (1, N'images/AlbumProgram/program1-img1.jpg', 1, 0, NULL, NULL)
INSERT [dbo].[Photos] ([Id], [Photo], [ProgramId], [Status], [CreatedAt], [GetProgramsId]) VALUES (2, N'images/AlbumProgram/program1-img2.jpg', 1, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Photos] OFF
GO
SET IDENTITY_INSERT [dbo].[Programs] ON 

INSERT [dbo].[Programs] ([Id], [ShortContent], [Content], [ExpectedAmount], [PartnerId], [Duration], [Status], [Photo], [CreatedAt], [UpdatedAt], [DeleteAt]) VALUES (1, N'''Warm winter in Ban Lau'' - Join hands to give warm clothes to 464 students', N'<h5><b>The harsh winter of the children of Ban Lau Primary School</b></h5><p><br></p><p>Perhaps in the imagination and thinking of many people, winter is a beautiful time with cold weather, snowfall, bustling and brilliant festivals at the end of the year, etc. However, for people in the region. High mountains, winter is the day when the skin is cold, it is frost, the path is covered with fog, etc. Not as fortunate as children in the city, students at Ban Lau Primary School, district Muong Khuong, Lao Cai province and many other highland schools, the journey to "the word" is still difficult and arduous.</p><p style="text-align: center; "><img src="http://localhost:29948/files/Partner1/program1-1.jpg" style="width: 1182px;"></p><p style="text-align: center; "><i>Winter for people in the high mountains is cold, icy, and foggy days.</i><br></p><p></p><p>Located in Ban Lau commune, Muong Khuong district - a disadvantaged district of Lao Cai province bordering the border, Ban Lau primary school currently has 464 students from grade 1 to grade 5, of which there are more than 300 children from high school. ethnic minorities, 90 children from poor, near-poor households, families with special difficulties. Every day, their parents have to work to sell their faces to the land, their backs to the sky, but they still don''t have enough to eat. Even a thin shirt is difficult to buy, let alone a thick and warm coat for the children. school.</p><p></p><p style="text-align: center;"><img src="http://localhost:29948/files/Partner1/program1-2.jpg" style="width: 1182px;"></p><p style="text-align: center;"><i>Children with fragile clothes, overcome the cold wind to go to school, greatly affecting their health and learning quality.</i></p><p style="text-align: left;">They usually live 3-5km away from the school. In winter, there are times when the temperature drops below 0 degrees, but most of the children are only allowed to wear thin clothes to overcome the cold wind to go to school, which greatly affects their health and quality. study.</p><p style="text-align: center;"><img src="http://localhost:29948/files/Partner1/program1-3.jpg" style="width: 1182px;"></p><p style="text-align: center;"><img src="http://localhost:29948/files/Partner1/program1-4.jpg" style="width: 1182px;"></p><p style="text-align: center;"><i>Despite the difficulties, they are always persistent on the path to knowledge.</i></p><p style="text-align: center;"><i><br></i></p><h4><span style="background-color: rgb(255, 255, 255);"><b>Join hands with MSD to implement the project "Warm winter in Ban Lau"</b></span></h4><div><div style=""><br></div><div style="">Understanding this, the Research Institute for Sustainable Development Management cordially invites you to join hands with the campaign "Warm winter in Ban Lau" with the desire to give children personal belongings to ensure their health and serve their education. practice. The campaign is expected to give 464 new pairs of shoes, 928 pairs of socks and 464 new pairs of books to students throughout the school, and also give 90 more warm coats and 20 blankets to children with extremely difficult circumstances during the school year. December. We hope that these gifts will replace hugs, bring warmth to children who are still struggling on the journey to school, and send words of encouragement and encouragement. dance so that they can overcome difficulties, continue to go to school to conquer knowledge and step by step towards their dreams. Therefore, we hope to be able to receive contributions&nbsp; to reach the goal of 100.000$. This money will be used to carry out the activity of giving gifts to the children.</div></div><p style="text-align: center;"><br></p>', 20000, 2, CAST(N'2022-01-28T18:11:22.3096915' AS DateTime2), 1, N'images/AlbumProgram/program1.jpeg', CAST(N'2021-12-29T18:11:45.2400000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Programs] ([Id], [ShortContent], [Content], [ExpectedAmount], [PartnerId], [Duration], [Status], [Photo], [CreatedAt], [UpdatedAt], [DeleteAt]) VALUES (2, N'''Warm winter in Ban Lau'' - Join hands to give warm clothes to 464 students', N'<h5><b>The harsh winter of the children of Ban Lau Primary School</b></h5><p><br></p><p>Perhaps in the imagination and thinking of many people, winter is a beautiful time with cold weather, snowfall, bustling and brilliant festivals at the end of the year, etc. However, for people in the region. High mountains, winter is the day when the skin is cold, it is frost, the path is covered with fog, etc. Not as fortunate as children in the city, students at Ban Lau Primary School, district Muong Khuong, Lao Cai province and many other highland schools, the journey to "the word" is still difficult and arduous.</p><p style="text-align: center; "><img src="http://localhost:29948/files/Partner1/program1-1.jpg" style="width: 1182px;"></p><p style="text-align: center; "><i>Winter for people in the high mountains is cold, icy, and foggy days.</i><br></p><p></p><p>Located in Ban Lau commune, Muong Khuong district - a disadvantaged district of Lao Cai province bordering the border, Ban Lau primary school currently has 464 students from grade 1 to grade 5, of which there are more than 300 children from high school. ethnic minorities, 90 children from poor, near-poor households, families with special difficulties. Every day, their parents have to work to sell their faces to the land, their backs to the sky, but they still don''t have enough to eat. Even a thin shirt is difficult to buy, let alone a thick and warm coat for the children. school.</p><p></p><p style="text-align: center;"><img src="http://localhost:29948/files/Partner1/program1-2.jpg" style="width: 1182px;"></p><p style="text-align: center;"><i>Children with fragile clothes, overcome the cold wind to go to school, greatly affecting their health and learning quality.</i></p><p style="text-align: left;">They usually live 3-5km away from the school. In winter, there are times when the temperature drops below 0 degrees, but most of the children are only allowed to wear thin clothes to overcome the cold wind to go to school, which greatly affects their health and quality. study.</p><p style="text-align: center;"><img src="http://localhost:29948/files/Partner1/program1-3.jpg" style="width: 1182px;"></p><p style="text-align: center;"><img src="http://localhost:29948/files/Partner1/program1-4.jpg" style="width: 1182px;"></p><p style="text-align: center;"><i>Despite the difficulties, they are always persistent on the path to knowledge.</i></p><p style="text-align: center;"><i><br></i></p><h4><span style="background-color: rgb(255, 255, 255);"><b>Join hands with MSD to implement the project "Warm winter in Ban Lau"</b></span></h4><div><div style=""><br></div><div style="">Understanding this, the Research Institute for Sustainable Development Management cordially invites you to join hands with the campaign "Warm winter in Ban Lau" with the desire to give children personal belongings to ensure their health and serve their education. practice. The campaign is expected to give 464 new pairs of shoes, 928 pairs of socks and 464 new pairs of books to students throughout the school, and also give 90 more warm coats and 20 blankets to children with extremely difficult circumstances during the school year. December. We hope that these gifts will replace hugs, bring warmth to children who are still struggling on the journey to school, and send words of encouragement and encouragement. dance so that they can overcome difficulties, continue to go to school to conquer knowledge and step by step towards their dreams. Therefore, we hope to be able to receive contributions&nbsp; to reach the goal of 100.000$. This money will be used to carry out the activity of giving gifts to the children.</div></div><p style="text-align: center;"><br></p>', 20000, 2, CAST(N'2022-01-28T18:11:22.3097536' AS DateTime2), 2, N'images/AlbumProgram/program1.jpeg', CAST(N'2021-12-29T18:11:45.2500000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Programs] ([Id], [ShortContent], [Content], [ExpectedAmount], [PartnerId], [Duration], [Status], [Photo], [CreatedAt], [UpdatedAt], [DeleteAt]) VALUES (3, N'Let''s donate together to give "One More Full Meal, One More Smile" for  the elderly living alone in shelters and community houses.', N'<h5><b>When full meals become a concern</b></h5><p>Shelters have gradually become the official "homes" of the elderly and abandoned and helpless children. Here, the elderly and their children are cared for like family members, they find comfort, share joys and sorrows. The children are protected and cared for by "mothers and fathers" who, although not related by blood, still love them as if they were blood.</p><p style="text-align: center; "><img src="http://localhost:29948/files/Partner1/program2-1.jpg" style="width: 1181.99px;"></p><p style="text-align: center; "><i>Cooking ingredients are delivered to the shelter.</i></p><p style="text-align: center; "></p><div style="text-align: left;">Every old man when coming to the Crescent Moon has different circumstances, but no matter what the circumstances, at the age of "seventeen ten ancient lai hy" he should have been reunited with his children and grandchildren, well cared for. unique. But on the faces of the elderly is hardship and sorrow, there are those who have been in the shelter for a long time but have never seen the shadow of their relatives visiting, or there are new elderly people who have all brought their new home with them. In her own feelings, one old lady burst into tears when she ate a full meal from her home, because it had been a long time since they had had such a delicious meal.</div><div style="text-align: center;"><img src="http://localhost:29948/files/Partner1/program2-2.jpg" style="width: 1181.99px;"><br></div><i>An old woman''s meal at the shelter.</i><p></p><p style="text-align: left;">And it is the home that has become the place where the elderly have more "old friends" to whisper sad stories. Where the children have more care and attention from those who always love and consider them as their "natural children". Besides, Moon Crescent Inn is also a refuge for old people who go early to late at night to make a hard living.</p><p style="text-align: center;"><img src="http://localhost:29948/files/Partner1/program2-3.jpg" style="width: 1181.99px;"></p><p style="text-align: left;">We hope that the sponsors and benefactors will accompany this campaign to bring enough meals for the elderly and homeless in shelters and community houses. No matter how much money you have, it is always worth it, no matter how much you donate, love to join hands to share meals with the home.<br></p>', 100000, 1, CAST(N'2022-02-27T18:11:22.3097541' AS DateTime2), 1, N'images/AlbumProgram/program2.webp', CAST(N'2021-12-29T18:11:45.2400000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Programs] ([Id], [ShortContent], [Content], [ExpectedAmount], [PartnerId], [Duration], [Status], [Photo], [CreatedAt], [UpdatedAt], [DeleteAt]) VALUES (4, N'Relief of 10,000 life jackets and flashlights for people in Central Vietnam', N'<p>In Quang Binh, Quang Tri... from the afternoon of October 17, the fierce flood began to pour in. By the night and early morning of October 18, many communes and districts in the Central region were simultaneously submerged in the sea. The flood water came back suddenly, rising again at night, so thousands of people could only save their lives, leave their possessions behind, and climb on the roofs and walls to wait for rescue.</p><p style="text-align: center; "><img src="http://localhost:29948/files/Partner1/program3-1.jpg" style="width: 800px;"></p><p style="text-align: left;">The rescue force mobilized many boats and boats to rescue people. But in the midst of the sea of black water, plus the lack of life jackets, flashlights, the dedicated efforts of the soldiers were not enough… The cries for help, the sound of rain, the sound of rushing flood water echoed throughout the Central region.</p><p style="text-align: center;"><img src="http://localhost:29948/files/Partner1/program3-2.jpg" style="width: 862.911px; height: 564.793px;"></p><p style="text-align: center;"><i>Many people had to wait until morning to be rescued to a safe place</i></p><p style="text-align: center;"><div style="text-align: left;">Quang Binh, Quang Tri as well as the central provinces are in dire need of life jackets and flashlights to rescue and help people cope with floods that may suddenly rise in the coming days. MoMo wallet cooperated with the National Volunteer Center to launch a fundraiser of 1 billion VND for the program "Rescuing 10,000 life jackets and flashlights for the Central people". This amount of aid will be urgently transported to the central provinces to local rescue forces for distribution, ready to rescue people when floods attack.<br></div><br></p>', 50000, 4, CAST(N'2022-02-27T18:11:22.3097544' AS DateTime2), 1, N'images/AlbumProgram/program3.webp', CAST(N'2021-12-29T18:11:45.2900000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Programs] ([Id], [ShortContent], [Content], [ExpectedAmount], [PartnerId], [Duration], [Status], [Photo], [CreatedAt], [UpdatedAt], [DeleteAt]) VALUES (5, N'Join Sika Vietnam to raise funds for surgery for 70 babies with cleft lip and palate', N'<h5><b>Results from the May campaign</b></h5><p>At the end of May, the MoMo Piggy Bank community and sponsor Sika successfully raised funds to help bring new smiles to 70 children. In the surgery program with the contribution of the MoMo community and sponsor Sika, there was an image of Quoc Bao''s mother in a wheelchair seeing him off to the operating room, making the medical team, who performed the program unable to from being emotional, she took off her hat to respect the will of a disabled mother to bring her child to heal her smile.</p><p style="text-align: center; "><img src="http://localhost:29948/files/Partner1/program4-1.jpg" style="width: 1181.99px;"></p><p style="text-align: center;"><i>The story of a disabled mother bringing her child to heal her smile has touched thousands of hearts</i></p><p style="text-align: center;"></p><div style="text-align: left;">Baby Quoc Bao was born in Diep Not village, a small village of the Ca Dong ethnic group, in Ngoc Tem commune, Kon Plong district, - a remote mountainous region of Kon Tum province, bordering Quang Ngai. Because of its remote and dangerous terrain, Ngoc Tem is the locality with the most serious landslide among dozens of landslide points on the Truong Son Dong route due to the impact of the storm No. 12 in 2020.</div><div style="text-align: left;"><br></div><div style="text-align: center;"><img src="http://localhost:29948/files/Partner1/program4-2.jpg" style="width: 1181.99px;"></div><div style="text-align: center;"><br></div><div style="text-align: left;"><div>Not long after recovering from the storm, Quoc Bao''s mother - Y Chinh, a disabled woman who is confined to a wheelchair with congenitally atrophied legs - after a 6-hour journey across the steep pass on the Truong Son Dong road took her to Quang Ngai Obstetrics and Gynecology Hospital so that the doctors of Operation Smile could heal her lips.</div><div><br></div><div>After forty minutes, Y Chinh''s mother''s little Quoc Bao came out of the operating room with her healed lips. Anxiety broke into happiness when my mother held me in her arms. I will not have difficulty in eating anymore, in the future when I go to class I will not be teased by friends, I will be confident because I am a completely normal and healthy person. And like her energetic mother, we believe she will always be resilient and overcome difficulties and challenges in the future.</div><div style="text-align: center; "<img src="http://localhost:29948/files/Partner1/program4-3.jpg" style="width: 1181.99px;"></div><div style="text-align: center; "><br></div><div style="text-align: center; "><i>Quoc Bao has found his smile again</i></div><div style="text-align: center; "><i><br></i><br></div><div style="text-align: left;"><h5><b>Continue writing miracles for children with cleft lip and cleft palate</b></h5><div><br></div><div>In order for the miracles not to stop at Quoc Bao''s story, MoMo Piggy wishes to receive 1,750,000 Golden Pigs donated by the community in this campaign to help the children''s dream of having a perfect smile come true. .</div><div><br></div><div>At the same time, for the examination and treatment activities to continue, the sponsor Sika Vietnam sponsored 700 million VND to Operation Smile fund to support all the surgery and recovery costs for 70 children with anomalies. maxillofacial defect.</div></div></div><p></p>', 100000, 3, CAST(N'2022-02-27T18:11:22.3097546' AS DateTime2), 1, N'images/AlbumProgram/khuyettat.webp', CAST(N'2021-12-29T18:11:45.2900000' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Programs] OFF
GO
SET IDENTITY_INSERT [dbo].[Query] ON 

INSERT [dbo].[Query] ([Id], [Title], [Content], [AccountId], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, N'How to register your account?', N'Please click to log in the navbar and then choose “Need an account? Sign up!” to register your account.', 6, 4, CAST(N'2021-12-26T18:11:22.3110167' AS DateTime2), NULL)
INSERT [dbo].[Query] ([Id], [Title], [Content], [AccountId], [Status], [CreatedAt], [UpdatedAt]) VALUES (2, N'How to Login your account?', N'Please click to login in the navbar. The login screen is displayed. Enter your email and password to login.', 6, 4, CAST(N'2021-12-25T18:11:22.3110780' AS DateTime2), NULL)
INSERT [dbo].[Query] ([Id], [Title], [Content], [AccountId], [Status], [CreatedAt], [UpdatedAt]) VALUES (3, N'How to create new issue in help center?', N'Frist, you need to login. Please click page in then navbar and choose the help center. Click “Create by you” and then click to new issue to raise your quesiton. You can also answered the question which you want.', 6, 4, CAST(N'2021-12-27T18:11:22.3110786' AS DateTime2), NULL)
INSERT [dbo].[Query] ([Id], [Title], [Content], [AccountId], [Status], [CreatedAt], [UpdatedAt]) VALUES (4, N'How to invite your friend by email?', N'Click pages and choose invite your friend in the navbar. The invite your friend’s screen is display. You will enter your name, email, the content of the email which you want to send. Last step, you click the button “Send Email” to mail to your friend.', 6, 4, CAST(N'2021-12-28T18:11:22.3110789' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Query] OFF
GO
SET IDENTITY_INSERT [dbo].[Reply] ON 

INSERT [dbo].[Reply] ([Id], [AccountId], [Content], [QueryId], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, 1, N'Please click to log in the navbar and then choose “Need an account? Sign up!” to register your account.', 1, 1, CAST(N'2021-12-28T18:11:22.3115133' AS DateTime2), NULL)
INSERT [dbo].[Reply] ([Id], [AccountId], [Content], [QueryId], [Status], [CreatedAt], [UpdatedAt]) VALUES (2, 2, N'Please click to login in the navbar. The login screen is displayed. Enter your email and password to login.', 2, 1, CAST(N'2021-12-29T18:11:22.3115392' AS DateTime2), NULL)
INSERT [dbo].[Reply] ([Id], [AccountId], [Content], [QueryId], [Status], [CreatedAt], [UpdatedAt]) VALUES (3, 3, N'Frist, you need to login. Please click page in then navbar and choose the help center. Click “Create by you” and then click to new issue to raise your quesiton. You can also answered the question which you want.', 3, 1, CAST(N'2021-12-29T18:11:22.3115396' AS DateTime2), NULL)
INSERT [dbo].[Reply] ([Id], [AccountId], [Content], [QueryId], [Status], [CreatedAt], [UpdatedAt]) VALUES (4, 4, N'Click pages and choose invite your friend in the navbar. The invite your friend’s screen is display. You will enter your name, email, the content of the email which you want to send. Last step, you click the button “Send Email” to mail to your friend.', 4, 1, CAST(N'2021-12-28T18:11:22.3115397' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Reply] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Role], [Description]) VALUES (1, 1, N'Admin')
INSERT [dbo].[Role] ([Id], [Role], [Description]) VALUES (2, 2, N'User')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT (N'images/avatar.jpg') FOR [Avatar]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((2)) FOR [RoleId]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[ContactUs] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ContactUs] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Donate] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Donate] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[DonateCategory] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Fund] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Fund] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Interested] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Interested] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Partner] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Partner] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Partner] ADD  DEFAULT (getdate()) FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Programs] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [ExpectedAmount]
GO
ALTER TABLE [dbo].[Programs] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Programs] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Query] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Query] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Reply] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Reply] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role_GetRoleId] FOREIGN KEY([GetRoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role_GetRoleId]
GO
ALTER TABLE [dbo].[Donate]  WITH CHECK ADD  CONSTRAINT [FK_Donate_Account_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Donate] CHECK CONSTRAINT [FK_Donate_Account_AccountId]
GO
ALTER TABLE [dbo].[Donate]  WITH CHECK ADD  CONSTRAINT [FK_Donate_DonateCategory_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[DonateCategory] ([Id])
GO
ALTER TABLE [dbo].[Donate] CHECK CONSTRAINT [FK_Donate_DonateCategory_CategoryId]
GO
ALTER TABLE [dbo].[Donate]  WITH CHECK ADD  CONSTRAINT [FK_Donate_Partner_PartnerId] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([Id])
GO
ALTER TABLE [dbo].[Donate] CHECK CONSTRAINT [FK_Donate_Partner_PartnerId]
GO
ALTER TABLE [dbo].[Donate]  WITH CHECK ADD  CONSTRAINT [FK_Donate_Programs_ProgramId] FOREIGN KEY([ProgramId])
REFERENCES [dbo].[Programs] ([Id])
GO
ALTER TABLE [dbo].[Donate] CHECK CONSTRAINT [FK_Donate_Programs_ProgramId]
GO
ALTER TABLE [dbo].[Fund]  WITH CHECK ADD  CONSTRAINT [FK_Fund_Donate_DonateId] FOREIGN KEY([DonateId])
REFERENCES [dbo].[Donate] ([Id])
GO
ALTER TABLE [dbo].[Fund] CHECK CONSTRAINT [FK_Fund_Donate_DonateId]
GO
ALTER TABLE [dbo].[Interested]  WITH CHECK ADD  CONSTRAINT [FK_Interested_Account_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Interested] CHECK CONSTRAINT [FK_Interested_Account_AccountId]
GO
ALTER TABLE [dbo].[Interested]  WITH CHECK ADD  CONSTRAINT [FK_Interested_Partner_PartnerId] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([Id])
GO
ALTER TABLE [dbo].[Interested] CHECK CONSTRAINT [FK_Interested_Partner_PartnerId]
GO
ALTER TABLE [dbo].[Interested]  WITH CHECK ADD  CONSTRAINT [FK_Interested_Programs_ProgramId] FOREIGN KEY([ProgramId])
REFERENCES [dbo].[Programs] ([Id])
GO
ALTER TABLE [dbo].[Interested] CHECK CONSTRAINT [FK_Interested_Programs_ProgramId]
GO
ALTER TABLE [dbo].[Partner]  WITH CHECK ADD  CONSTRAINT [FK_Partner_DonateCategory_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[DonateCategory] ([Id])
GO
ALTER TABLE [dbo].[Partner] CHECK CONSTRAINT [FK_Partner_DonateCategory_CategoryId]
GO
ALTER TABLE [dbo].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Programs_GetProgramsId] FOREIGN KEY([GetProgramsId])
REFERENCES [dbo].[Programs] ([Id])
GO
ALTER TABLE [dbo].[Photos] CHECK CONSTRAINT [FK_Photos_Programs_GetProgramsId]
GO
ALTER TABLE [dbo].[Programs]  WITH CHECK ADD  CONSTRAINT [FK_Programs_Partner_PartnerId] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([Id])
GO
ALTER TABLE [dbo].[Programs] CHECK CONSTRAINT [FK_Programs_Partner_PartnerId]
GO
ALTER TABLE [dbo].[Query]  WITH CHECK ADD  CONSTRAINT [FK_Query_Account_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Query] CHECK CONSTRAINT [FK_Query_Account_AccountId]
GO
ALTER TABLE [dbo].[Reply]  WITH CHECK ADD  CONSTRAINT [FK_Reply_Account_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Reply] CHECK CONSTRAINT [FK_Reply_Account_AccountId]
GO
ALTER TABLE [dbo].[Reply]  WITH CHECK ADD  CONSTRAINT [FK_Reply_Query_QueryId] FOREIGN KEY([QueryId])
REFERENCES [dbo].[Query] ([Id])
GO
ALTER TABLE [dbo].[Reply] CHECK CONSTRAINT [FK_Reply_Query_QueryId]
GO
