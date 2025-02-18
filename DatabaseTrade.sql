USE [master]
GO
/****** Object:  Database [Trade]    Script Date: 11.02.2025 16:10:22 ******/
CREATE DATABASE [Trade]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Trade', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Trade.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Trade_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Trade_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Trade] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Trade].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Trade] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Trade] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Trade] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Trade] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Trade] SET ARITHABORT OFF 
GO
ALTER DATABASE [Trade] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Trade] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Trade] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Trade] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Trade] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Trade] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Trade] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Trade] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Trade] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Trade] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Trade] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Trade] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Trade] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Trade] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Trade] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Trade] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Trade] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Trade] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Trade] SET  MULTI_USER 
GO
ALTER DATABASE [Trade] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Trade] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Trade] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Trade] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Trade] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Trade] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Trade] SET QUERY_STORE = OFF
GO
USE [Trade]
GO
/****** Object:  Table [dbo].[NameCity]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameCity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameCity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameManufacturer]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameManufacturer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameManufacturer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameStreet]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameStreet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameStreet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameSupplier]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameSupplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Supplier] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameSupplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameUnit]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameUnit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NumberIndex]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumberIndex](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Index] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NumberIndex] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Article] [nvarchar](50) NOT NULL,
	[Count] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[OrderDeliveryDate] [date] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[NameClient] [nvarchar](50) NULL,
	[Code] [int] NOT NULL,
	[IdOderStatus] [int] NOT NULL,
 CONSTRAINT [PK__Order__C3905BAFD54278A1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__OrderPro__70FE91CA9961FFC9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickUpPoint]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickUpPoint](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdIndex] [int] NOT NULL,
	[IdCity] [int] NOT NULL,
	[IdStreet] [int] NOT NULL,
	[NumberHous] [int] NULL,
 CONSTRAINT [PK_PickUpPoint] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProductArticleNumber] [int] NOT NULL,
	[IdProductName] [int] NOT NULL,
	[IdNameUnit] [int] NOT NULL,
	[ProductCost] [decimal](18, 2) NOT NULL,
	[ProductMaxDiscount] [int] NOT NULL,
	[IdProductManufacturer] [int] NOT NULL,
	[IdProductSupplier] [int] NOT NULL,
	[IdProductCategory] [int] NOT NULL,
	[ProductDiscount] [int] NOT NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductDescription] [nvarchar](500) NOT NULL,
	[ProductPhoto] [nvarchar](100) NULL,
	[PhotoImage] [image] NULL,
 CONSTRAINT [PK__Product__2EA7DCD50BD69C2A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11.02.2025 16:10:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](500) NOT NULL,
	[UserPassword] [nvarchar](50) NOT NULL,
	[UserRole] [int] NOT NULL,
 CONSTRAINT [PK__User__1788CCAC9361248E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NameCity] ON 

INSERT [dbo].[NameCity] ([Id], [City]) VALUES (1, N' г.Нефтеюганск')
SET IDENTITY_INSERT [dbo].[NameCity] OFF
GO
SET IDENTITY_INSERT [dbo].[NameManufacturer] ON 

INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (1, N'Cat Chow')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (2, N'Chappy')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (3, N'Dog Chow')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (4, N'Dreames')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (6, N'LIKER')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (7, N'Nobby')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (8, N'Pro Plan')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (9, N'TitBit')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (10, N'Triol')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (11, N'trixie')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (12, N'True Touch')
INSERT [dbo].[NameManufacturer] ([Id], [Manufacturer]) VALUES (13, N'ZooM')
SET IDENTITY_INSERT [dbo].[NameManufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[NameStreet] ON 

INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (1, N' ул. 8 Марта')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (2, N' ул. Вишневая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (3, N' ул. Гоголя')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (4, N' ул. Дзержинского')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (5, N' ул. Зеленая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (6, N' ул. Клубная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (7, N' ул. Коммунистическая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (8, N' ул. Комсомольская')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (9, N' ул. Маяковского')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (10, N' ул. Мичурина')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (11, N' ул. Молодежная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (12, N' ул. Набережная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (13, N' ул. Некрасова')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (14, N' ул. Новая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (15, N' ул. Октябрьская')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (16, N' ул. Партизанская')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (17, N' ул. Победы')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (18, N' ул. Подгорная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (19, N' ул. Полевая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (20, N' ул. Садовая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (21, N' ул. Светлая')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (22, N' ул. Северная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (23, N' ул. Солнечная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (24, N' ул. Спортивная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (25, N' ул. Фрунзе')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (26, N' ул. Цветочная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (27, N' ул. Чехова')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (28, N' ул. Школьная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (29, N' ул. Шоссейная')
INSERT [dbo].[NameStreet] ([Id], [Street]) VALUES (30, N' ул. Степная')
SET IDENTITY_INSERT [dbo].[NameStreet] OFF
GO
SET IDENTITY_INSERT [dbo].[NameSupplier] ON 

INSERT [dbo].[NameSupplier] ([Id], [Supplier]) VALUES (1, N'PetShop')
INSERT [dbo].[NameSupplier] ([Id], [Supplier]) VALUES (2, N'ZooMir')
SET IDENTITY_INSERT [dbo].[NameSupplier] OFF
GO
SET IDENTITY_INSERT [dbo].[NameUnit] ON 

INSERT [dbo].[NameUnit] ([Id], [Unit]) VALUES (1, N'.шт')
SET IDENTITY_INSERT [dbo].[NameUnit] OFF
GO
SET IDENTITY_INSERT [dbo].[NumberIndex] ON 

INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (1, N'125061')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (2, N'125703')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (3, N'125837')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (4, N'190949')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (5, N'344288')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (6, N'394060')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (7, N'394242')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (8, N'394782')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (9, N'400562')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (10, N'410172')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (11, N'410542')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (12, N'410661')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (13, N'420151')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (14, N'426030')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (15, N'443890')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (16, N'450375')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (17, N'450558')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (18, N'450983')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (19, N'454311')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (20, N'603002')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (21, N'603036')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (22, N'603379')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (23, N'603721')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (24, N'614164')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (25, N'614510')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (26, N'614611')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (27, N'614753')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (28, N'620839')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (29, N'625283')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (30, N'625560')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (31, N'625590')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (32, N'625683')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (33, N'630201')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (34, N'630370')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (35, N'660007')
INSERT [dbo].[NumberIndex] ([Id], [Index]) VALUES (36, N'660540')
SET IDENTITY_INSERT [dbo].[NumberIndex] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (1, N'А112Т4', 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, NULL, 601, 2)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (2, N'F432F4', 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, NULL, 602, 2)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (3, N'E532Q5', 10, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, N'Шилова Майя Артемьевна', 603, 1)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (4, N'G345E4', 1, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, NULL, 604, 1)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (5, N'R356F4', 1, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, NULL, 605, 1)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (6, N'H436R4', 1, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, N'Филимонов Роберт Васильевич', 606, 1)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (7, N'H342F5', 2, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, NULL, 607, 2)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (8, N'K436T5', 1, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, NULL, 608, 2)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (9, N'V527T5', 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, N'Волкова Эмилия Артёмовна', 609, 2)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (10, N'M356R4', 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, N'Чистякова Виктория Степановна', 610, 1)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (11, N' G453T5', 1, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, NULL, 601, 2)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (12, N' Y324F4', 15, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, NULL, 602, 2)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (13, N' T432F4', 10, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, N'Шилова Майя Артемьевна', 603, 1)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (14, N' E345R4', 2, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, NULL, 604, 1)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (15, N' E431R5', 10, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, NULL, 605, 1)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (16, N' D643B5', 1, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, N'Филимонов Роберт Васильевич', 606, 1)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (17, N' Q245F5', 2, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, NULL, 607, 2)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (18, N' V527T5', 1, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, NULL, 608, 2)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (19, N' K452T5', 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, N'Волкова Эмилия Артёмовна', 609, 2)
INSERT [dbo].[Order] ([Id], [Article], [Count], [OrderDate], [OrderDeliveryDate], [OrderPickupPoint], [NameClient], [Code], [IdOderStatus]) VALUES (20, N' W548O7', 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, N'Чистякова Виктория Степановна', 610, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([Id], [Status]) VALUES (1, N'Завершен')
INSERT [dbo].[OrderStatus] ([Id], [Status]) VALUES (2, N'Новый ')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[PickUpPoint] ON 

INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (1, 5, 1, 27, 1)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (2, 24, 1, 30, 30)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (3, 7, 1, 7, 43)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (4, 36, 1, 23, 25)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (5, 3, 1, 29, 40)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (6, 2, 1, 16, 49)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (7, 29, 1, 17, 46)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (8, 26, 1, 11, 50)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (9, 19, 1, 14, 19)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (10, 35, 1, 15, 19)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (11, 21, 1, 20, 4)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (12, 18, 1, 8, 26)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (13, 8, 1, 27, 3)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (14, 20, 1, 4, 28)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (15, 17, 1, 12, 30)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (16, 6, 1, 25, 43)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (17, 12, 1, 28, 50)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (18, 31, 1, 7, 20)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (19, 32, 1, 1, NULL)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (20, 9, 1, 5, 32)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (21, 25, 1, 9, 47)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (22, 11, 1, 21, 46)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (23, 28, 1, 26, 8)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (24, 15, 1, 7, 1)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (25, 22, 1, 24, 46)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (26, 23, 1, 3, 41)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (27, 10, 1, 22, 13)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (28, 13, 1, 2, 32)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (29, 1, 1, 18, 8)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (30, 34, 1, 29, 24)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (31, 27, 1, 19, 35)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (32, 14, 1, 9, 44)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (33, 16, 1, 6, 44)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (34, 30, 1, 13, 12)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (35, 33, 1, 8, 17)
INSERT [dbo].[PickUpPoint] ([Id], [IdIndex], [IdCity], [IdStreet], [NumberHous]) VALUES (36, 4, 1, 10, 26)
SET IDENTITY_INSERT [dbo].[PickUpPoint] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (1, 30, 3, 1, CAST(123.00 AS Decimal(18, 2)), 30, 4, 1, 2, 3, 6, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', N'А112Т4.png', NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (2, 12, 8, 1, CAST(149.00 AS Decimal(18, 2)), 15, 12, 2, 1, 2, 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий', N'G453T5.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (3, 10, 7, 1, CAST(1200.00 AS Decimal(18, 2)), 10, 8, 2, 2, 3, 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', N'F432F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (4, 29, 3, 1, CAST(86.00 AS Decimal(18, 2)), 5, 9, 1, 3, 4, 17, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', N'Y324F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (5, 9, 3, 1, CAST(166.00 AS Decimal(18, 2)), 15, 9, 1, 3, 5, 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', N'E532Q5.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (6, 25, 7, 1, CAST(1700.00 AS Decimal(18, 2)), 25, 2, 2, 3, 2, 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', N'T432F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (7, 11, 6, 1, CAST(300.00 AS Decimal(18, 2)), 5, 6, 2, 3, 3, 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', N'G345E4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (8, 5, 1, 1, CAST(199.00 AS Decimal(18, 2)), 5, 5, 2, 2, 5, 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', N'E345R4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (9, 23, 5, 1, CAST(234.00 AS Decimal(18, 2)), 10, 7, 1, 3, 3, 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный', N'R356F4.jpg', NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (10, 6, 3, 1, CAST(170.00 AS Decimal(18, 2)), 5, 10, 2, 3, 5, 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', N'E431R5.png', NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (11, 3, 1, 1, CAST(600.00 AS Decimal(18, 2)), 10, 10, 1, 3, 5, 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (12, 16, 1, 1, CAST(300.00 AS Decimal(18, 2)), 15, 10, 1, 3, 2, 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (13, 4, 7, 1, CAST(4100.00 AS Decimal(18, 2)), 30, 1, 1, 2, 4, 9, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (14, 15, 5, 1, CAST(385.00 AS Decimal(18, 2)), 10, 10, 2, 1, 2, 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (15, 24, 7, 1, CAST(280.00 AS Decimal(18, 2)), 15, 1, 2, 2, 3, 8, N'Сухой корм для кошек CAT CHOW', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (16, 26, 7, 1, CAST(1700.00 AS Decimal(18, 2)), 25, 2, 1, 3, 4, 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (17, 14, 1, 1, CAST(510.00 AS Decimal(18, 2)), 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (18, 22, 1, 1, CAST(510.00 AS Decimal(18, 2)), 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (19, 13, 7, 1, CAST(2190.00 AS Decimal(18, 2)), 30, 8, 1, 3, 4, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (20, 17, 3, 1, CAST(177.00 AS Decimal(18, 2)), 15, 10, 2, 3, 3, 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (21, 19, 6, 1, CAST(100.00 AS Decimal(18, 2)), 5, 10, 2, 3, 4, 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (22, 27, 1, 1, CAST(640.00 AS Decimal(18, 2)), 5, 10, 1, 3, 5, 4, N'Игрушка для собак Triol Ящерица 39 см коричневый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (23, 20, 4, 1, CAST(800.00 AS Decimal(18, 2)), 25, 13, 2, 3, 2, 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (24, 8, 2, 1, CAST(3500.00 AS Decimal(18, 2)), 30, 10, 2, 3, 5, 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (25, 1, 5, 1, CAST(400.00 AS Decimal(18, 2)), 15, 10, 2, 1, 4, 5, N'Миска для животных Triol "Стрекоза", 450 мл', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (26, 18, 5, 1, CAST(292.00 AS Decimal(18, 2)), 25, 10, 1, 1, 3, 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (27, 2, 6, 1, CAST(600.00 AS Decimal(18, 2)), 15, 11, 1, 3, 2, 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (28, 7, 3, 1, CAST(140.00 AS Decimal(18, 2)), 20, 9, 2, 3, 3, 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (29, 21, 3, 1, CAST(50.00 AS Decimal(18, 2)), 5, 9, 2, 3, 4, 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', NULL, NULL)
INSERT [dbo].[Product] ([Id], [IdProductArticleNumber], [IdProductName], [IdNameUnit], [ProductCost], [ProductMaxDiscount], [IdProductManufacturer], [IdProductSupplier], [IdProductCategory], [ProductDiscount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto], [PhotoImage]) VALUES (30, 28, 7, 1, CAST(600.00 AS Decimal(18, 2)), 15, 3, 1, 3, 5, 15, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([Id], [Category]) VALUES (1, N'Для животных')
INSERT [dbo].[ProductCategory] ([Id], [Category]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[ProductCategory] ([Id], [Category]) VALUES (3, N'Товары для собак')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductName] ON 

INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (1, N'Игрушка')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (2, N'Клетка')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (3, N'Лакомство')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (4, N'Лежак')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (5, N'Миска')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (6, N'Мячик')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (7, N'Сухой корм')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (8, N'Щетка-варежка')
SET IDENTITY_INSERT [dbo].[ProductName] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([Id], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([Id], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Суслов', N'Илья', N'Арсентьевич', N'pixil59@gmail.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Яковлева', N'Ярослава', N'Даниэльевна', N'deummecillummu-4992@mail.ru', N'uzWC67', 1)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Игнатьева', N'Алина', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp', 1)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Денисов', N'Михаил', N'Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR', 3)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Тимофеев', N'Михаил', N'Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv', 3)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Соловьев', N'Ярослав', N'Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9', 3)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Филимонов', N'Роберт', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos', 2)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Шилова', N'Майя', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT', 2)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Чистякова', N'Виктория', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr', 2)
INSERT [dbo].[User] ([Id], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Волкова', N'Эмилия', N'Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([IdOderStatus])
REFERENCES [dbo].[OrderStatus] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickUpPoint] FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickUpPoint] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickUpPoint]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([Id])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([Id])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[PickUpPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickUpPoint_NameCity] FOREIGN KEY([IdCity])
REFERENCES [dbo].[NameCity] ([Id])
GO
ALTER TABLE [dbo].[PickUpPoint] CHECK CONSTRAINT [FK_PickUpPoint_NameCity]
GO
ALTER TABLE [dbo].[PickUpPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickUpPoint_NameStreet] FOREIGN KEY([IdStreet])
REFERENCES [dbo].[NameStreet] ([Id])
GO
ALTER TABLE [dbo].[PickUpPoint] CHECK CONSTRAINT [FK_PickUpPoint_NameStreet]
GO
ALTER TABLE [dbo].[PickUpPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickUpPoint_NumberIndex] FOREIGN KEY([IdIndex])
REFERENCES [dbo].[NumberIndex] ([Id])
GO
ALTER TABLE [dbo].[PickUpPoint] CHECK CONSTRAINT [FK_PickUpPoint_NumberIndex]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_NameManufacturer] FOREIGN KEY([IdProductManufacturer])
REFERENCES [dbo].[NameManufacturer] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_NameManufacturer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_NameSupplier] FOREIGN KEY([IdProductSupplier])
REFERENCES [dbo].[NameSupplier] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_NameSupplier]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_NameUnit] FOREIGN KEY([IdNameUnit])
REFERENCES [dbo].[NameUnit] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_NameUnit]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([IdProductCategory])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductName] FOREIGN KEY([IdProductName])
REFERENCES [dbo].[ProductName] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductName]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK__User__UserRole__5FB337D6] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK__User__UserRole__5FB337D6]
GO
USE [master]
GO
ALTER DATABASE [Trade] SET  READ_WRITE 
GO
