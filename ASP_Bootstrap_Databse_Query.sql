USE [ASPBootstrap]
GO
/****** Object:  UserDefinedFunction [dbo].[getSizeName]    Script Date: 08-06-2020 10:10:30 PM ******/
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
/****** Object:  Table [dbo].[ForgotPassRequests]    Script Date: 08-06-2020 10:10:30 PM ******/
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
/****** Object:  Table [dbo].[tblBrands]    Script Date: 08-06-2020 10:10:30 PM ******/
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
/****** Object:  Table [dbo].[tblCategories]    Script Date: 08-06-2020 10:10:30 PM ******/
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
/****** Object:  Table [dbo].[tblGender]    Script Date: 08-06-2020 10:10:30 PM ******/
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
/****** Object:  Table [dbo].[tblProductImages]    Script Date: 08-06-2020 10:10:30 PM ******/
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
/****** Object:  Table [dbo].[tblProducts]    Script Date: 08-06-2020 10:10:30 PM ******/
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
/****** Object:  Table [dbo].[tblProductSizeQuantity]    Script Date: 08-06-2020 10:10:30 PM ******/
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
/****** Object:  Table [dbo].[tblPurchase]    Script Date: 08-06-2020 10:10:30 PM ******/
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
/****** Object:  Table [dbo].[tblSizes]    Script Date: 08-06-2020 10:10:30 PM ******/
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
/****** Object:  Table [dbo].[tblSubCategories]    Script Date: 08-06-2020 10:10:30 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 08-06-2020 10:10:30 PM ******/
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
/****** Object:  StoredProcedure [dbo].[procBindAllProducts]    Script Date: 08-06-2020 10:10:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procBindAllProducts]
	
AS
	select A.*,B.*,C.Name,A.PPrice-A.PSelPrice as DiscAmount,B.Name as ImageName,C.Name as BrandName
	from tblProducts A
	inner join tblBrands C on C.BrandID=A.PBrandID
	cross apply(
	select top 1 * from tblProductImages B where B.PID = A.PID order by B.PID desc
	) B
	order by A.pid desc
RETURN 0


GO
/****** Object:  StoredProcedure [dbo].[procInsertProducts]    Script Date: 08-06-2020 10:10:30 PM ******/
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
