USE [master]
GO
/****** Object:  Database [ASPBootstrap]    Script Date: 19-07-2020 10:43:31 PM ******/
CREATE DATABASE [ASPBootstrap]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASPBootstrap', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ASPBootstrap.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASPBootstrap_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ASPBootstrap_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ASPBootstrap] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASPBootstrap].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASPBootstrap] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASPBootstrap] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASPBootstrap] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASPBootstrap] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASPBootstrap] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASPBootstrap] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ASPBootstrap] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASPBootstrap] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASPBootstrap] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASPBootstrap] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASPBootstrap] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASPBootstrap] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASPBootstrap] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASPBootstrap] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASPBootstrap] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ASPBootstrap] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASPBootstrap] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASPBootstrap] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASPBootstrap] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASPBootstrap] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASPBootstrap] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASPBootstrap] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASPBootstrap] SET RECOVERY FULL 
GO
ALTER DATABASE [ASPBootstrap] SET  MULTI_USER 
GO
ALTER DATABASE [ASPBootstrap] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASPBootstrap] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASPBootstrap] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASPBootstrap] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASPBootstrap] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ASPBootstrap', N'ON'
GO
ALTER DATABASE [ASPBootstrap] SET QUERY_STORE = OFF
GO
USE [ASPBootstrap]
GO
/****** Object:  UserDefinedFunction [dbo].[getSizeName]    Script Date: 19-07-2020 10:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getSizeName]
(
	@SizeID bigint
)
RETURNS nvarchar(10)
as
begin
declare @SizeName nvarchar(10)
select @SizeName= Sizename from tblSizes where SizeID=@SizeID
return @SizeName
end


GO
/****** Object:  Table [dbo].[ForgotPassRequests]    Script Date: 19-07-2020 10:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForgotPassRequests](
	[Id] [uniqueidentifier] NOT NULL,
	[Uid] [int] NULL,
	[RequestDateTime] [datetime] NULL,
 CONSTRAINT [PK__ForgotPa__3214EC074A2F9313] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBrands]    Script Date: 19-07-2020 10:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBrands](
	[BrandID] [bigint] IDENTITY(9,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK__tblBrand__DAD4F3BEF95CD269] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategories]    Script Date: 19-07-2020 10:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategories](
	[CatID] [bigint] IDENTITY(3,1) NOT NULL,
	[CatName] [nvarchar](max) NULL,
 CONSTRAINT [PK__tblCateg__6A1C8ADA6FFA4F5C] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGender]    Script Date: 19-07-2020 10:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGender](
	[GenderID] [bigint] IDENTITY(3,1) NOT NULL,
	[GenderName] [nvarchar](50) NULL,
 CONSTRAINT [PK__tblGende__4E24E8172EC47D06] PRIMARY KEY CLUSTERED 
(
	[GenderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductImages]    Script Date: 19-07-2020 10:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductImages](
	[PIMGID] [bigint] IDENTITY(10026,1) NOT NULL,
	[PID] [bigint] NULL,
	[Name] [nvarchar](max) NULL,
	[Extention] [nvarchar](50) NULL,
 CONSTRAINT [PK__tblProdu__9C38038659EA7074] PRIMARY KEY CLUSTERED 
(
	[PIMGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProducts]    Script Date: 19-07-2020 10:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProducts](
	[PID] [bigint] IDENTITY(10009,1) NOT NULL,
	[PName] [nvarchar](max) NULL,
	[PPrice] [money] NULL,
	[PSelPrice] [money] NULL,
	[PBrandID] [bigint] NULL,
	[PCategoryID] [bigint] NULL,
	[PSubCatID] [bigint] NULL,
	[PGender] [bigint] NULL,
	[PDescription] [nvarchar](max) NULL,
	[PProductDetails] [nvarchar](max) NULL,
	[PMaterialCare] [nvarchar](max) NULL,
	[FreeDelivery] [int] NULL,
	[30DayRet] [int] NULL,
	[COD] [int] NULL,
 CONSTRAINT [PK__tblProdu__C57755206229B59D] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductSizeQuantity]    Script Date: 19-07-2020 10:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductSizeQuantity](
	[PrdSizeQuantID] [bigint] IDENTITY(10011,1) NOT NULL,
	[PID] [bigint] NULL,
	[SizeID] [bigint] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK__tblProdu__DAB7F4F05292467C] PRIMARY KEY CLUSTERED 
(
	[PrdSizeQuantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPurchase]    Script Date: 19-07-2020 10:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPurchase](
	[PurchaseID] [bigint] IDENTITY(49,1) NOT NULL,
	[UserID] [int] NULL,
	[PIDSizeID] [nvarchar](max) NULL,
	[CartAmount] [money] NULL,
	[CartDiscount] [money] NULL,
	[TotalPayed] [money] NULL,
	[PaymentType] [nvarchar](50) NULL,
	[PaymentStatus] [nvarchar](50) NULL,
	[DateOfPurchase] [datetime] NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[PinCode] [nvarchar](50) NULL,
	[MobileNumber] [nvarchar](50) NULL,
 CONSTRAINT [PK__tblPurch__6B0A6BDEC918B461] PRIMARY KEY CLUSTERED 
(
	[PurchaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSizes]    Script Date: 19-07-2020 10:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSizes](
	[SizeID] [bigint] IDENTITY(10006,1) NOT NULL,
	[SizeName] [nvarchar](50) NULL,
	[BrandID] [bigint] NULL,
	[CategoryID] [bigint] NULL,
	[SubCategoryID] [bigint] NULL,
	[GenderID] [bigint] NULL,
 CONSTRAINT [PK__tblSizes__83BD095A36895826] PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSubCategories]    Script Date: 19-07-2020 10:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSubCategories](
	[SubCatID] [bigint] IDENTITY(6,1) NOT NULL,
	[SubCatName] [nvarchar](max) NULL,
	[MainCatID] [bigint] NULL,
 CONSTRAINT [PK__tblSubCa__39637975E2B2F050] PRIMARY KEY CLUSTERED 
(
	[SubCatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19-07-2020 10:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Usertype] [nchar](10) NULL,
 CONSTRAINT [PK__Users__C5B69A4A98FD6996] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblBrands] ON 
GO
INSERT [dbo].[tblBrands] ([BrandID], [Name]) VALUES (9, N'Polo')
GO
INSERT [dbo].[tblBrands] ([BrandID], [Name]) VALUES (10, N'Adidas')
GO
SET IDENTITY_INSERT [dbo].[tblBrands] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCategories] ON 
GO
INSERT [dbo].[tblCategories] ([CatID], [CatName]) VALUES (3, N'Shirt')
GO
INSERT [dbo].[tblCategories] ([CatID], [CatName]) VALUES (4, N'Trousers')
GO
INSERT [dbo].[tblCategories] ([CatID], [CatName]) VALUES (5, N'Footwear')
GO
SET IDENTITY_INSERT [dbo].[tblCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[tblGender] ON 
GO
INSERT [dbo].[tblGender] ([GenderID], [GenderName]) VALUES (3, N'Male')
GO
INSERT [dbo].[tblGender] ([GenderID], [GenderName]) VALUES (4, N'Female')
GO
SET IDENTITY_INSERT [dbo].[tblGender] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProductImages] ON 
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10026, 10009, N'Polo Shirt01', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10027, 10009, N'Polo Shirt02', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10028, 10009, N'Polo Shirt03', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10029, 10009, N'Polo Shirt04', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10030, 10009, N'Polo Shirt05', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10031, 10010, N'Men Blue Solid Denim Jacket01', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10032, 10010, N'Men Blue Solid Denim Jacket02', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10033, 10010, N'Men Blue Solid Denim Jacket03', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10034, 10010, N'Men Blue Solid Denim Jacket04', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10035, 10010, N'Men Blue Solid Denim Jacket05', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10036, 10011, N'Unisex Black & Silver-Toned Marathon Tech Sneakers01', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10037, 10011, N'Unisex Black & Silver-Toned Marathon Tech Sneakers02', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10038, 10011, N'Unisex Black & Silver-Toned Marathon Tech Sneakers03', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10039, 10011, N'Unisex Black & Silver-Toned Marathon Tech Sneakers04', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10040, 10011, N'Unisex Black & Silver-Toned Marathon Tech Sneakers05', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10041, 10012, N'Women Pink Solid Leather Sleek Sneakers01', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10042, 10012, N'Women Pink Solid Leather Sleek Sneakers02', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10043, 10012, N'Women Pink Solid Leather Sleek Sneakers03', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10044, 10012, N'Women Pink Solid Leather Sleek Sneakers04', N'.jpg')
GO
INSERT [dbo].[tblProductImages] ([PIMGID], [PID], [Name], [Extention]) VALUES (10045, 10012, N'Women Pink Solid Leather Sleek Sneakers05', N'.jpg')
GO
SET IDENTITY_INSERT [dbo].[tblProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProducts] ON 
GO
INSERT [dbo].[tblProducts] ([PID], [PName], [PPrice], [PSelPrice], [PBrandID], [PCategoryID], [PSubCatID], [PGender], [PDescription], [PProductDetails], [PMaterialCare], [FreeDelivery], [30DayRet], [COD]) VALUES (10009, N'Polo Shirt', 1489.0000, 1200.0000, 9, 3, 7, 3, N'Polo Checked Shirt', N'Polo Checked Shirt', N'Polo Checked Shirt', 1, 1, 1)
GO
INSERT [dbo].[tblProducts] ([PID], [PName], [PPrice], [PSelPrice], [PBrandID], [PCategoryID], [PSubCatID], [PGender], [PDescription], [PProductDetails], [PMaterialCare], [FreeDelivery], [30DayRet], [COD]) VALUES (10010, N'Men Blue Solid Denim Jacket', 2299.0000, 899.0000, 9, 3, 6, 3, N'Blue solid jacket, has a spread collar, 2 pockets, button closure, long sleeves, straight hem, and unlined', N'The model (height 6'') is wearing a size M', N'Cotton
Machine-wash', 1, 1, 1)
GO
INSERT [dbo].[tblProducts] ([PID], [PName], [PPrice], [PSelPrice], [PBrandID], [PCategoryID], [PSubCatID], [PGender], [PDescription], [PProductDetails], [PMaterialCare], [FreeDelivery], [30DayRet], [COD]) VALUES (10011, N'Unisex Black & Silver-Toned Marathon Tech Sneakers', 11999.0000, 10199.0000, 10, 5, 8, 3, N'ADIDAS Originals Unisex Marathon Tech Sneakers
Modern cushioning upgrades the feel of these adidas Marathon Tech Shoes. They flash silvery 3-Stripes and archive-inspired details on a clean mesh upper. A responsive midsole cushions and re-energises every step you take.', N'Product design details
Main materials: Mesh and suede upper/ rubber outsole
Brand colour: Core Black / Silver Metallic / Cloud White
Lace-up closure
Warranty: 3 months
Warranty provided by brand/ manufacturer', N'Material & Care
Mesh and suede
Wipe with a clean, dry cloth to remove dust', 1, 1, 0)
GO
INSERT [dbo].[tblProducts] ([PID], [PName], [PPrice], [PSelPrice], [PBrandID], [PCategoryID], [PSubCatID], [PGender], [PDescription], [PProductDetails], [PMaterialCare], [FreeDelivery], [30DayRet], [COD]) VALUES (10012, N'Women Pink Solid Leather Sleek Sneakers', 7599.0000, 6499.0000, 10, 5, 8, 4, N'Product design details 
Main material: Leather upper / Rubber outsole 
Brand colour: Shock Pink / Shock Pink / Core Black
Central lace-up 
Warranty: 3 months against manufacturing defect
Warranty provided by brand owner/manufacturer', N'Special technologies
Narrow fit
Women''s-specific fit
Enjoy the comfort and performance of OrthoLite(r) sockliner
Soft feel', N'Material & Care
Leather
Use a branded leather conditioner to clean the product
Avoid washing', 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[tblProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProductSizeQuantity] ON 
GO
INSERT [dbo].[tblProductSizeQuantity] ([PrdSizeQuantID], [PID], [SizeID], [Quantity]) VALUES (10011, 10009, 10006, 10)
GO
INSERT [dbo].[tblProductSizeQuantity] ([PrdSizeQuantID], [PID], [SizeID], [Quantity]) VALUES (10012, 10010, 10006, 10)
GO
INSERT [dbo].[tblProductSizeQuantity] ([PrdSizeQuantID], [PID], [SizeID], [Quantity]) VALUES (10013, 10011, 10007, 15)
GO
INSERT [dbo].[tblProductSizeQuantity] ([PrdSizeQuantID], [PID], [SizeID], [Quantity]) VALUES (10014, 10011, 10008, 15)
GO
INSERT [dbo].[tblProductSizeQuantity] ([PrdSizeQuantID], [PID], [SizeID], [Quantity]) VALUES (10015, 10011, 10009, 15)
GO
INSERT [dbo].[tblProductSizeQuantity] ([PrdSizeQuantID], [PID], [SizeID], [Quantity]) VALUES (10016, 10012, 10010, 10)
GO
SET IDENTITY_INSERT [dbo].[tblProductSizeQuantity] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPurchase] ON 
GO
INSERT [dbo].[tblPurchase] ([PurchaseID], [UserID], [PIDSizeID], [CartAmount], [CartDiscount], [TotalPayed], [PaymentType], [PaymentStatus], [DateOfPurchase], [Name], [Address], [PinCode], [MobileNumber]) VALUES (49, 2, N'10010-10006,10010-10006', 2299.0000, 1400.0000, 899.0000, N'Paytm', N'NotPaid', CAST(N'2020-06-21T20:45:15.873' AS DateTime), N'ffdsf', N'fdf', N'5465+', N'4556546')
GO
SET IDENTITY_INSERT [dbo].[tblPurchase] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSizes] ON 
GO
INSERT [dbo].[tblSizes] ([SizeID], [SizeName], [BrandID], [CategoryID], [SubCategoryID], [GenderID]) VALUES (10006, N'Medium', 9, 3, 6, 3)
GO
INSERT [dbo].[tblSizes] ([SizeID], [SizeName], [BrandID], [CategoryID], [SubCategoryID], [GenderID]) VALUES (10007, N'UK 6', 10, 5, 8, 3)
GO
INSERT [dbo].[tblSizes] ([SizeID], [SizeName], [BrandID], [CategoryID], [SubCategoryID], [GenderID]) VALUES (10008, N'UK 9', 10, 5, 8, 3)
GO
INSERT [dbo].[tblSizes] ([SizeID], [SizeName], [BrandID], [CategoryID], [SubCategoryID], [GenderID]) VALUES (10009, N'UK 11', 10, 5, 8, 3)
GO
INSERT [dbo].[tblSizes] ([SizeID], [SizeName], [BrandID], [CategoryID], [SubCategoryID], [GenderID]) VALUES (10010, N'UK 7', 10, 5, 8, 4)
GO
SET IDENTITY_INSERT [dbo].[tblSizes] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSubCategories] ON 
GO
INSERT [dbo].[tblSubCategories] ([SubCatID], [SubCatName], [MainCatID]) VALUES (6, N'Denim Shirt', 3)
GO
INSERT [dbo].[tblSubCategories] ([SubCatID], [SubCatName], [MainCatID]) VALUES (7, N'Formal Shirts', 3)
GO
INSERT [dbo].[tblSubCategories] ([SubCatID], [SubCatName], [MainCatID]) VALUES (8, N'Sneakers', 5)
GO
SET IDENTITY_INSERT [dbo].[tblSubCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Uid], [Username], [Password], [Email], [Name], [Usertype]) VALUES (1, N'Admin', N'123', N'admin@admin.com', N'Admin', N'A         ')
GO
INSERT [dbo].[Users] ([Uid], [Username], [Password], [Email], [Name], [Usertype]) VALUES (2, N'John', N'123', N'johndoe@abc.com', N'John Doe', N'U         ')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[ForgotPassRequests]  WITH CHECK ADD  CONSTRAINT [ FK_ForgotPassRequests_Users] FOREIGN KEY([Uid])
REFERENCES [dbo].[Users] ([Uid])
GO
ALTER TABLE [dbo].[ForgotPassRequests] CHECK CONSTRAINT [ FK_ForgotPassRequests_Users]
GO
ALTER TABLE [dbo].[tblProductImages]  WITH CHECK ADD  CONSTRAINT [ FK_tblProductImages_ToTable] FOREIGN KEY([PID])
REFERENCES [dbo].[tblProducts] ([PID])
GO
ALTER TABLE [dbo].[tblProductImages] CHECK CONSTRAINT [ FK_tblProductImages_ToTable]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [ FK_tblProducts_ToTable] FOREIGN KEY([PBrandID])
REFERENCES [dbo].[tblBrands] ([BrandID])
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [ FK_tblProducts_ToTable]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [ FK_tblProducts_ToTable_1] FOREIGN KEY([PCategoryID])
REFERENCES [dbo].[tblCategories] ([CatID])
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [ FK_tblProducts_ToTable_1]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [ FK_tblProducts_ToTable_2] FOREIGN KEY([PSubCatID])
REFERENCES [dbo].[tblSubCategories] ([SubCatID])
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [ FK_tblProducts_ToTable_2]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [ FK_tblProducts_ToTable_3] FOREIGN KEY([PGender])
REFERENCES [dbo].[tblGender] ([GenderID])
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [ FK_tblProducts_ToTable_3]
GO
ALTER TABLE [dbo].[tblProductSizeQuantity]  WITH CHECK ADD  CONSTRAINT [ FK_tblProductSizeQuantity_ToTable] FOREIGN KEY([PID])
REFERENCES [dbo].[tblProducts] ([PID])
GO
ALTER TABLE [dbo].[tblProductSizeQuantity] CHECK CONSTRAINT [ FK_tblProductSizeQuantity_ToTable]
GO
ALTER TABLE [dbo].[tblProductSizeQuantity]  WITH CHECK ADD  CONSTRAINT [ FK_tblProductSizeQuantity_ToTable_1] FOREIGN KEY([SizeID])
REFERENCES [dbo].[tblSizes] ([SizeID])
GO
ALTER TABLE [dbo].[tblProductSizeQuantity] CHECK CONSTRAINT [ FK_tblProductSizeQuantity_ToTable_1]
GO
ALTER TABLE [dbo].[tblPurchase]  WITH CHECK ADD  CONSTRAINT [ FK_tblPurchase_ToUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([Uid])
GO
ALTER TABLE [dbo].[tblPurchase] CHECK CONSTRAINT [ FK_tblPurchase_ToUsers]
GO
ALTER TABLE [dbo].[tblSizes]  WITH CHECK ADD  CONSTRAINT [ FK_tblSizes_ToBrand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[tblBrands] ([BrandID])
GO
ALTER TABLE [dbo].[tblSizes] CHECK CONSTRAINT [ FK_tblSizes_ToBrand]
GO
ALTER TABLE [dbo].[tblSizes]  WITH CHECK ADD  CONSTRAINT [ FK_tblSizes_ToCat] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tblCategories] ([CatID])
GO
ALTER TABLE [dbo].[tblSizes] CHECK CONSTRAINT [ FK_tblSizes_ToCat]
GO
ALTER TABLE [dbo].[tblSizes]  WITH CHECK ADD  CONSTRAINT [ FK_tblSizes_ToGender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[tblGender] ([GenderID])
GO
ALTER TABLE [dbo].[tblSizes] CHECK CONSTRAINT [ FK_tblSizes_ToGender]
GO
ALTER TABLE [dbo].[tblSizes]  WITH CHECK ADD  CONSTRAINT [ FK_tblSizes_ToSubCat] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[tblSubCategories] ([SubCatID])
GO
ALTER TABLE [dbo].[tblSizes] CHECK CONSTRAINT [ FK_tblSizes_ToSubCat]
GO
ALTER TABLE [dbo].[tblSubCategories]  WITH CHECK ADD  CONSTRAINT [ FK_tblSubCategories_Cat] FOREIGN KEY([MainCatID])
REFERENCES [dbo].[tblCategories] ([CatID])
GO
ALTER TABLE [dbo].[tblSubCategories] CHECK CONSTRAINT [ FK_tblSubCategories_Cat]
GO
/****** Object:  StoredProcedure [dbo].[procBindAllProducts]    Script Date: 19-07-2020 10:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procBindAllProducts]
	(
		@PCategoryID bigint=null,
		@PSubCatID bigint=null
	)
AS
	select A.*,B.*,C.Name,A.PPrice-A.PSelPrice as DiscAmount,B.Name as ImageName,C.Name as BrandName
	from tblProducts A
	inner join tblBrands C on C.BrandID=A.PBrandID
	cross apply(
	select top 1 * from tblProductImages B where B.PID = A.PID order by B.PID desc
	) B
	where A.PCategoryID=COALESCE(NULLIF(@PCategoryID,null),A.PCategoryID) and A.PSubCatID=COALESCE(NULLIF(@PSubCatID,null),A.PSubCatID)
	order by A.pid desc
RETURN 0


GO
/****** Object:  StoredProcedure [dbo].[procInsertProducts]    Script Date: 19-07-2020 10:43:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procInsertProducts]
	(
	@PName nvarchar(MAX),
	@PPrice money,
	@PSelPrice money,
	@PBrandID bigint,
	@PCategoryID bigint,
	@PSubCatID bigint,
	@PGender bigint,
	@PDescription nvarchar(MAX),
	@PProductDetails nvarchar(MAX),
	@PMaterialCare nvarchar(MAX),
	@FreeDelivery int,
	@30DayRet int,
	@COD int
	)
AS
	insert into tblProducts values(@PName,@PPrice,@PSelPrice,@PBrandID,@PCategoryID,@PSubCatID,@PGender,
	@PDescription,@PProductDetails,@PMaterialCare,@FreeDelivery,@30DayRet,@COD)
	select SCOPE_IDENTITY()
RETURN 0


GO
USE [master]
GO
ALTER DATABASE [ASPBootstrap] SET  READ_WRITE 
GO