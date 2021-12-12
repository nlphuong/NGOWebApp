CREATE DATABASE NGOWebsite
GO
use NGOWebsite
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/12/2021 5:09:53 PM ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 12/12/2021 5:09:53 PM ******/
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
	[Birthday] [datetime2](7) NULL,
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
/****** Object:  Table [dbo].[ContactUs]    Script Date: 12/12/2021 5:09:53 PM ******/
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
/****** Object:  Table [dbo].[Donate]    Script Date: 12/12/2021 5:09:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[CategoryId] [int] NULL,
	[PartnerId] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Donate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonateCategory]    Script Date: 12/12/2021 5:09:53 PM ******/
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
/****** Object:  Table [dbo].[Fund]    Script Date: 12/12/2021 5:09:53 PM ******/
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
/****** Object:  Table [dbo].[Interested]    Script Date: 12/12/2021 5:09:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interested](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[ProgramId] [int] NOT NULL,
	[PartnerId] [int] NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[GetProgramsId] [int] NULL,
 CONSTRAINT [PK_Interested] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 12/12/2021 5:09:53 PM ******/
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
/****** Object:  Table [dbo].[Photos]    Script Date: 12/12/2021 5:09:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](max) NULL,
	[ProgramId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[GetProgramsId] [int] NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Programs]    Script Date: 12/12/2021 5:09:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShortContent] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[ExpectedAmount] [float] NULL,
	[PartnerId] [int] NOT NULL,
	[Duration] [datetime2](7) NULL,
	[Status] [int] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[DeleteAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Programs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Query]    Script Date: 12/12/2021 5:09:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Query](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[AccountId] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NULL,
	[UpdatedAt] [datetime2](7) NULL,
 CONSTRAINT [PK_Query] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reply]    Script Date: 12/12/2021 5:09:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reply](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Role]    Script Date: 12/12/2021 5:09:53 PM ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211212100239_Test1', N'5.0.12')
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [FullName], [Email], [Password], [Phone], [Address], [Birthday], [Avatar], [RoleId], [Status], [CreatedAt], [GetRoleId]) VALUES (1, N'Nguyen Linh Phuong', N'phuongnl@gmail.com', N'HashPassMD5', N'0941132369', N'Laos', CAST(N'1995-01-01T00:00:00.0000000' AS DateTime2), N'images/avatar.jpg', 1, 1, CAST(N'2021-12-12T17:02:38.7657272' AS DateTime2), NULL)
INSERT [dbo].[Account] ([Id], [FullName], [Email], [Password], [Phone], [Address], [Birthday], [Avatar], [RoleId], [Status], [CreatedAt], [GetRoleId]) VALUES (2, N'Tran Cong Sang', N'sangtrancong171196@gmail.com', N'HashPassMD5', N'0946963045', N'TPHCM', CAST(N'1996-01-01T00:00:00.0000000' AS DateTime2), N'images/avatar.jpg', 1, 1, CAST(N'2021-12-12T17:02:38.7657272' AS DateTime2), NULL)
INSERT [dbo].[Account] ([Id], [FullName], [Email], [Password], [Phone], [Address], [Birthday], [Avatar], [RoleId], [Status], [CreatedAt], [GetRoleId]) VALUES (3, N'Lai Ngoc Thuy Tien', N'tien@gmail.com', N'HashPassMD5', N'0125963999', N'TPHCM', CAST(N'1996-01-01T00:00:00.0000000' AS DateTime2), N'images/avatar.jpg', 1, 1, CAST(N'2021-12-12T17:02:38.7657272' AS DateTime2), NULL)
INSERT [dbo].[Account] ([Id], [FullName], [Email], [Password], [Phone], [Address], [Birthday], [Avatar], [RoleId], [Status], [CreatedAt], [GetRoleId]) VALUES (4, N'Phung Van Phuc', N'phuc@gmail.com', N'HashPassMD5', N'0125963999', N'TPHCM', CAST(N'1996-01-01T00:00:00.0000000' AS DateTime2), N'images/avatar.jpg', 1, 1, CAST(N'2021-12-12T17:02:38.7657272' AS DateTime2), NULL)
INSERT [dbo].[Account] ([Id], [FullName], [Email], [Password], [Phone], [Address], [Birthday], [Avatar], [RoleId], [Status], [CreatedAt], [GetRoleId]) VALUES (5, N'Vu Bui Minh Hieu', N'hieu@gmail.com', N'HashPassMD5', N'0125963999', N'TPHCM', CAST(N'1996-01-01T00:00:00.0000000' AS DateTime2), N'images/avatar.jpg', 1, 1, CAST(N'2021-12-12T17:02:38.7657272' AS DateTime2), NULL)
INSERT [dbo].[Account] ([Id], [FullName], [Email], [Password], [Phone], [Address], [Birthday], [Avatar], [RoleId], [Status], [CreatedAt], [GetRoleId]) VALUES (6, N'Sang user', N'trancongsang.a1.vd.2014@gmail.com', N'HashPassMD5', N'0125963999', N'TPHCM', CAST(N'1996-01-01T00:00:00.0000000' AS DateTime2), N'images/avatar.jpg', 2, 1, CAST(N'2021-12-12T17:02:38.7657272' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[ContactUs] ON 

INSERT [dbo].[ContactUs] ([Id], [Name], [Phone], [Email], [Content], [Status], [CreatedAt]) VALUES (1, N'sang', N'0946963045', N'trancongsang.a1.vd.2014@gmail.com', N'good website', 1, CAST(N'2021-12-12T17:02:38.7665749' AS DateTime2))
INSERT [dbo].[ContactUs] ([Id], [Name], [Phone], [Email], [Content], [Status], [CreatedAt]) VALUES (2, N'nam', N'0946963335', N'nam@gmail.com', N'good job', 1, CAST(N'2021-12-12T17:02:38.7665749' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ContactUs] OFF
GO
SET IDENTITY_INSERT [dbo].[Donate] ON 

INSERT [dbo].[Donate] ([Id], [AccountId], [CategoryId], [PartnerId], [Amount], [Status], [CreatedAt]) VALUES (1, 4, 2, 2, 1000, 1, CAST(N'2021-12-12T17:02:38.7667079' AS DateTime2))
INSERT [dbo].[Donate] ([Id], [AccountId], [CategoryId], [PartnerId], [Amount], [Status], [CreatedAt]) VALUES (2, 3, 2, 1, 2000, 1, CAST(N'2021-12-12T17:02:38.7667079' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Donate] OFF
GO
SET IDENTITY_INSERT [dbo].[DonateCategory] ON 

INSERT [dbo].[DonateCategory] ([Id], [Name], [Photo], [Status]) VALUES (1, N'Care for elderly people', N'images/care-elderly.jpg', 0)
INSERT [dbo].[DonateCategory] ([Id], [Name], [Photo], [Status]) VALUES (2, N'Children Welfare Activity', N'images/ChildrenWelfare.jpg', 0)
INSERT [dbo].[DonateCategory] ([Id], [Name], [Photo], [Status]) VALUES (3, N'Disabled Person', N'images/DisabledPerson.jpg', 0)
SET IDENTITY_INSERT [dbo].[DonateCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Fund] ON 

INSERT [dbo].[Fund] ([Id], [Total], [CurrentFund], [DonateId], [Status], [CreatedAt]) VALUES (1, 100000, 5000, 1, 1, CAST(N'2021-12-12T17:02:38.7670226' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Fund] OFF
GO
SET IDENTITY_INSERT [dbo].[Interested] ON 

INSERT [dbo].[Interested] ([Id], [AccountId], [ProgramId], [PartnerId], [Status], [CreatedAt], [GetProgramsId]) VALUES (1, 4, 1, 1, 1, CAST(N'2021-12-12T17:02:38.7671489' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Interested] OFF
GO
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([Id], [OrgName], [Email], [Phone], [Address], [CategoryId], [Logo], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, N'Partner1', N'partner1@gmail.com', N'0593330772', N'USA', 2, N'images/partner.jpg', 1, CAST(N'2021-12-12T17:02:38.7672671' AS DateTime2), CAST(N'2021-12-12T17:02:38.7672968' AS DateTime2))
INSERT [dbo].[Partner] ([Id], [OrgName], [Email], [Phone], [Address], [CategoryId], [Logo], [Status], [CreatedAt], [UpdatedAt]) VALUES (2, N'Partner2', N'partner2@gmail.com', N'0946963045', N'HCM, VIet Nam', 2, N'images/partner.jpg', 1, CAST(N'2021-12-12T17:02:38.7672671' AS DateTime2), CAST(N'2021-12-12T17:02:38.7672968' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Partner] OFF
GO
SET IDENTITY_INSERT [dbo].[Photos] ON 

INSERT [dbo].[Photos] ([Id], [Photo], [ProgramId], [Status], [CreatedAt], [GetProgramsId]) VALUES (1, N'images/AlbumProgram/program1-img1.jpg', 1, 0, NULL, NULL)
INSERT [dbo].[Photos] ([Id], [Photo], [ProgramId], [Status], [CreatedAt], [GetProgramsId]) VALUES (2, N'images/AlbumProgram/program1-img2.jpg', 1, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Photos] OFF
GO
SET IDENTITY_INSERT [dbo].[Programs] ON 

INSERT [dbo].[Programs] ([Id], [ShortContent], [Content], [ExpectedAmount], [PartnerId], [Duration], [Status], [CreatedAt], [UpdatedAt], [DeleteAt]) VALUES (1, N'Let''s join hands to fill Tet warmly and completely for orphaned children because of the epidemic', N'Together with the Hope Fund, bring a warm and complete Tet to orphans and children in difficult circumstances According to statistics in Vietnam, the pandemic has claimed the lives of more than 19,000 people.Thousands of children suddenly fell into orphans,lost the love,  care and care of their parents and loved ones.There are children whose families are already in trouble.Since being orphaned,both parents are forced to become the breadwinners of their younger siblings.There are also newborn babies who have not enjoyed the warmth of their mothers, and have to struggle with their fathers to make a living in cramped boarding houses.Two children Le Quoc Bao and Le Quoc Dam are just one of thousands of those unlucky cases. The 2022 Tet Gift Giving Project was established by the Hope Foundation from the deep understanding and sympathy for those losses. We are looking forward to sharing some of the burden on the small shoulders of children, bringing a warm and full Tet for their families.', 0, 1, CAST(N'2022-01-11T17:02:38.7928872' AS DateTime2), 1, CAST(N'2021-12-12T17:02:38.7674072' AS DateTime2), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Programs] OFF
GO
SET IDENTITY_INSERT [dbo].[Query] ON 

INSERT [dbo].[Query] ([Id], [Title], [Content], [AccountId], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, N'Title', N'What .......?', 6, 1, CAST(N'2021-12-09T17:02:38.7939326' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Query] OFF
GO
SET IDENTITY_INSERT [dbo].[Reply] ON 

INSERT [dbo].[Reply] ([Id], [AccountId], [Content], [QueryId], [Status], [CreatedAt], [UpdatedAt]) VALUES (1, 1, N'Answer1', 1, 1, CAST(N'2021-12-11T16:57:38.7943319' AS DateTime2), NULL)
INSERT [dbo].[Reply] ([Id], [AccountId], [Content], [QueryId], [Status], [CreatedAt], [UpdatedAt]) VALUES (2, 2, N'Answer2', 1, 1, CAST(N'2021-12-11T16:52:38.7943593' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[Reply] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Role], [Description]) VALUES (1, 1, N'User')
INSERT [dbo].[Role] ([Id], [Role], [Description]) VALUES (2, 2, N'Admin')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT (N'images/avatar.jpg') FOR [Avatar]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((2)) FOR [RoleId]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ('2021-12-12T17:02:38.7657272+07:00') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[ContactUs] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ContactUs] ADD  DEFAULT ('2021-12-12T17:02:38.7665749+07:00') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Donate] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Donate] ADD  DEFAULT ('2021-12-12T17:02:38.7667079+07:00') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Fund] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Fund] ADD  DEFAULT ('2021-12-12T17:02:38.7670226+07:00') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Interested] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Interested] ADD  DEFAULT ('2021-12-12T17:02:38.7671489+07:00') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Partner] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Partner] ADD  DEFAULT ('2021-12-12T17:02:38.7672671+07:00') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Partner] ADD  DEFAULT ('2021-12-12T17:02:38.7672968+07:00') FOR [UpdatedAt]
GO
ALTER TABLE [dbo].[Programs] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [ExpectedAmount]
GO
ALTER TABLE [dbo].[Programs] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Programs] ADD  DEFAULT ('2021-12-12T17:02:38.7674072+07:00') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Query] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Query] ADD  DEFAULT ('2021-12-12T17:02:38.7677561+07:00') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Reply] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Reply] ADD  DEFAULT ('2021-12-12T17:02:38.7678776+07:00') FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role_GetRoleId] FOREIGN KEY([GetRoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role_GetRoleId]
GO
ALTER TABLE [dbo].[Donate]  WITH CHECK ADD  CONSTRAINT [FK_Donate_Account_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
ON DELETE CASCADE
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
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Donate] CHECK CONSTRAINT [FK_Donate_Partner_PartnerId]
GO
ALTER TABLE [dbo].[Fund]  WITH CHECK ADD  CONSTRAINT [FK_Fund_Donate_DonateId] FOREIGN KEY([DonateId])
REFERENCES [dbo].[Donate] ([Id])
GO
ALTER TABLE [dbo].[Fund] CHECK CONSTRAINT [FK_Fund_Donate_DonateId]
GO
ALTER TABLE [dbo].[Interested]  WITH CHECK ADD  CONSTRAINT [FK_Interested_Account_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Interested] CHECK CONSTRAINT [FK_Interested_Account_AccountId]
GO
ALTER TABLE [dbo].[Interested]  WITH CHECK ADD  CONSTRAINT [FK_Interested_Partner_PartnerId] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([Id])
GO
ALTER TABLE [dbo].[Interested] CHECK CONSTRAINT [FK_Interested_Partner_PartnerId]
GO
ALTER TABLE [dbo].[Interested]  WITH CHECK ADD  CONSTRAINT [FK_Interested_Programs_GetProgramsId] FOREIGN KEY([GetProgramsId])
REFERENCES [dbo].[Programs] ([Id])
GO
ALTER TABLE [dbo].[Interested] CHECK CONSTRAINT [FK_Interested_Programs_GetProgramsId]
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
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Programs] CHECK CONSTRAINT [FK_Programs_Partner_PartnerId]
GO
ALTER TABLE [dbo].[Query]  WITH CHECK ADD  CONSTRAINT [FK_Query_Account_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Query] CHECK CONSTRAINT [FK_Query_Account_AccountId]
GO
ALTER TABLE [dbo].[Reply]  WITH CHECK ADD  CONSTRAINT [FK_Reply_Account_AccountId] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reply] CHECK CONSTRAINT [FK_Reply_Account_AccountId]
GO
ALTER TABLE [dbo].[Reply]  WITH CHECK ADD  CONSTRAINT [FK_Reply_Query_QueryId] FOREIGN KEY([QueryId])
REFERENCES [dbo].[Query] ([Id])
GO
ALTER TABLE [dbo].[Reply] CHECK CONSTRAINT [FK_Reply_Query_QueryId]
GO
