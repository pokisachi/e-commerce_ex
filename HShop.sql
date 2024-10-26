CREATE DATABASE HShop;
GO
USE HShop;
GO
CREATE TABLE Category(
	[CategoryId] SMALLINT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[CategoryName] [nvarchar](64) NOT NULL,
	[CategoryAlias] [nvarchar](64) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](32) NULL
);
GO
--DROP TABLE [Supplier];
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [varchar](2) NOT NULL,
	[CompanyName] [nvarchar](64) NOT NULL,
	[Logo] [VARCHAR](32) NOT NULL,
	[ContactName] [nvarchar](64) NULL,
	[Email] [nvarchar](64) NOT NULL,
	[Phone] [nvarchar](16) NULL,
	[Address] [nvarchar](64) NULL,
	[Description] [nvarchar](max) NULL
);
--DROP TABLE Product;
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ProductName] [nvarchar](64) NOT NULL,
	[ProductAlias] [nvarchar](64) NULL,
	[CategoryId] SMALLINT NOT NULL,
	[Unit] [nvarchar](50) NULL,
	[Price] [DECIMAL] NULL,
	[Image] [nvarchar](50) NULL,
	[ProductDate] [datetime] NOT NULL,
	[SaleOff] [DECIMAL] NOT NULL,
	[Viewed] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[SupplierId] [varchar](2) NOT NULL
);
GO

SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryAlias], [Description], [ImageUrl]) VALUES 
(1000, N'Đồng hồ', N'dong-ho', N'Soft drinks, coffees, teas, beers, and ales', N'Best.png')
,(1001, N'Laptop', N'lap-top', N'Sweet and savory sauces, relishes, spreads, and seasonings', N'Certificate.png')
,(1002, N'Máy ảnh', N'may-anh', N'Desserts, candies, and sweet breads', N'')
,(1003, N'Điện thoại', N'dien-thoai', N'Cheeses', N'Bell.png')
,(1004, N'Nước hoa', N'nuoc-hoa', N'Breads, crackers, pasta, and cereal', N'Favourites.png')
,(1005, N'Trang sức', N'trang-suc', N'Prepared meats', N'Dice.png')
,(1006, N'Giày', N'giay', N'Dried fruit and bean curd', N'')
,(1007, N'Vali', N'vali', N'Seaweed and fish', N'Microsoft.png');
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
INSERT [dbo].[Supplier] ([SupplierId], [CompanyName], [Logo], [ContactName], [Email], [Phone], [Address], [Description]) VALUES 
(N'AP', N'Apple', N'apple.gif', N'Petter Pike', N'pike@yahoo.com', N'0987345876', N'765 Hello, Califonia, United States', N'Moble Device')
,(N'MO', N'Motorola', N'motorola.gif', N'John David', N'john@gmail.com', N'0918456987', N'22 Rose, Messachuset, United States', N'Communication Company')
,(N'NK', N'Nokia', N'Nokia.gif', N'Okawa', N'okawa@gmail.com', N'0913745789', N'123 Revenue, Tokyo, Japan', N'Famous company')
,(N'SM', N'Seamen', N'semen.gif', N'David Brown', N'brown@gmail.com', N'0987456876', N'23 New World, Texas, United Kindom', N'Digital device company')
,(N'SS', N'Samsung', N'samsung.gif', N'LeeSongChai', N'lee@yahoo.com', N'0913745789', N'456 Romario, Seaul, Korea', N'The best company')
GO

SET IDENTITY_INSERT [dbo].[Product] ON 
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductAlias], [CategoryId], [Unit], [Price], [Image], [ProductDate], [SaleOff], [Viewed], [Description], [SupplierId]) VALUES 
(1001, N'Aniseed Syrup 123', N'1001-aniseed-syrup-123', 1000, N'10 boxes x 20 bags', 190, N'41MJUdI2jdL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1378, N' value="EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors"', N'AP')
,(1002, N'Change', N'1002-change', 1000, N'10 boxes x 20 bags', 19, N'41TexqWVkHL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1562, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1003, N'Tên mới sửa', N'1003-aniseed-syrup', 1001, N'12 - 550 ml bottles', 1001, N'31EPGSm2s1L._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 491, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1004, N'Chef Anton''s Cajun Seasoning', N'1004-chef-antons-cajun-seasoning', 1001, N'48 - 6 oz jars', 22, N'41CIcYRxJKL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 216, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1005, N'Chef Anton''s Gumbo Mix', N'1005-chef-antons-gumbo-mix', 1001, N'36 boxes', 21.35, N'41G38jC0ajL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 134, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1006, N'Grandma''s Boysenberry Spread', N'1006-grandmas-boysenberry-spread', 1001, N'12 - 8 oz jars', 25, N'41iDo0HDhbL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 153, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1007, N'Uncle Bob''s Organic Dried Pears', N'1007-uncle-bobs-organic-dried-pears', 1006, N'12 - 1 lb pkgs.', 30, N'81k1XbQ6nQL._SL1500_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 5006, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1008, N'Northwoods Cranberry Sauce', N'1008-northwoods-cranberry-sauce', 1001, N'12 - 12 oz jars', 40, N'41LMouG6j7L._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1009, N'Mishi Kobe Niku', N'1009-mishi-kobe-niku', 1005, N'18 - 500 g pkgs.', 97, N'21meTyhQebL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 3, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1010, N'Ikura', N'1010-ikura', 1007, N'12 - 200 ml jars', 31, N'31hCgES5GXL._AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 3, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1011, N'Queso Cabrales', N'1011-queso-cabrales', 1003, N'1 kg pkg.', 21, N'31jsjfVfH9L._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1012, N'Queso Manchego La Pastora', N'1012-queso-manchego-la-pastora', 1003, N'10 - 500 g pkgs.', 38, N'41BiMx1FKyL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1013, N'Konbu', N'1013-konbu', 1007, N'2 kg box', 6, N'31ioCUUFnoL.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1014, N'Tofu', N'1014-tofu', 1006, N'40 - 100 g pkgs.', 23.25, N'81Q1DvOnnoL._SL1500_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1015, N'Genen Shouyu', N'1015-genen-shouyu', 1001, N'24 - 250 ml bottles', 15.5, N'41qlcUEhNmL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1016, N'Pavlova', N'1016-pavlova', 1002, N'32 - 500 g boxes', 17.45, N'41iji4-9UsL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 329, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1017, N'Alice Mutton', N'1017-alice-mutton', 1005, N'20 - 1 kg tins', 39, N'31LAnW1JFqL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
,(1018, N'Carnarvon Tigers', N'1018-carnarvon-tigers', 1007, N'16 kg pkg.', 62.5, N'31yxRemzRLL._SS350_ (1).jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1019, N'Teatime Chocolate Biscuits', N'1019-teatime-chocolate-biscuits', 1002, N'10 boxes x 12 pieces', 9.2, N'41KALboJKuL.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 12, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1020, N'Sir Rodney''s Marmalade', N'1020-sir-rodneys-marmalade', 1002, N'30 gift boxes', 81, N'41sl3FN6NpL.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1021, N'Sir Rodney''s Scones', N'1021-sir-rodneys-scones', 1002, N'24 pkgs. x 4 pieces', 10, N'41w4TlVPhGL.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1022, N'Gustaf''s KnÃ¤ckebrÃ¶d', N'1022-gustafs-knckebrd', 1004, N'24 - 500 g pkgs.', 21, N'31pT+SdvQXL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 40, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1023, N'TunnbrÃÂ¶d', N'1023-tunnbrd', 1004, N'12 - 250 g pkgs.', 9, N'31YOss-gC-L._AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 762, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1024, N'GuaranÃ¡ FantÃ¡stica', N'1024-guaran-fantstica', 1000, N'12 - 355 ml cans', 4.5, N'41V4Ds2PtZL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 96, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1025, N'NuNuCa NuÃÂ-Nougat-Creme', N'1025-nunuca-nu-nougat-creme', 1002, N'20 - 450 g glasses', 14, N'41XX7Pi240L.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1026, N'GumbÃ¤r GummibÃ¤rchen', N'1026-gumbr-gummibrchen', 1002, N'100 - 250 g bags', 31.23, N'41-yvkFqVZL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1027, N'Schoggi Schokolade', N'1027-schoggi-schokolade', 1002, N'100 - 100 g pieces', 43.9, N'41ZE9SmWdzL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1028, N'RÃ¶ssle Sauerkraut', N'1028-rssle-sauerkraut', 1006, N'25 - 825 g cans', 45.6, N'91FM0Hog9FL._SL1500_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1029, N'ThÃ¼ringer Rostbratwurst', N'1029-thringer-rostbratwurst', 1005, N'50 bags x 30 sausgs.', 123.79, N'31ncPnMYCxL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 2, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1030, N'Nord-Ost Matjeshering', N'1030-nord-ost-matjeshering', 1007, N'10 - 200 g glasses', 25.89, N'41lffECD-sL._SY445_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1031, N'Gorgonzola Telino', N'1031-gorgonzola-telino', 1003, N'12 - 100 g pkgs', 12.5, N'41IPLmZIKhL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1032, N'Mascarpone Fabioli', N'1032-mascarpone-fabioli', 1003, N'24 - 200 g pkgs.', 32, N'41qfgTvFBwL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1033, N'Geitost', N'1033-geitost', 1003, N'500 g', 2.5, N'41qfgTvFBwL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SM')
,(1034, N'Sasquatch Ale', N'1034-sasquatch-ale', 1000, N'24 - 12 oz bottles', 14, N'41WvZnGYUkL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 7, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1035, N'Steeleye Stout', N'1035-steeleye-stout', 1000, N'24 - 12 oz bottles', 18, N'41yh1vBmqsL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1036, N'Inlagd Sill', N'1036-inlagd-sill', 1007, N'24 - 250 g  jars', 19, N'41sw9ASUvBL._SX342_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1037, N'Gravad lax', N'1037-gravad-lax', 1007, N'12 - 500 g pkgs.', 26, N'41Z43OmFHjL._SX342_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1038, N'CÃ´te de Blaye', N'1038-cte-de-blaye', 1000, N'12 - 75 cl bottles', 263.5, N'41Ymq8fjbOL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 3, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1039, N'Chartreuse verte', N'1039-chartreuse-verte', 1000, N'750 cc per bottle', 18, N'51GBNkHO6vL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1040, N'Boston Crab Meat', N'1040-boston-crab-meat', 1007, N'24 - 4 oz tins', 18.4, N'51JhyHtnEgL._SL1001_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1041, N'Jack''s New England Clam Chowder', N'1041-jacks-new-england-clam-chowder', 1007, N'12 - 12 oz cans', 9.65, N'71bJrFAys9L._SL1280_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1042, N'Singaporean Hokkien Fried Mee', N'1042-singaporean-hokkien-fried-mee', 1004, N'32 - 1 kg pkgs.', 14, N'41A9R5KXCXL._AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1043, N'Ipoh Coffee', N'1043-ipoh-coffee', 1000, N'16 - 500 g tins', 46, N'51czOOat0OL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 2, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1044, N'Gula Malacca', N'1044-gula-malacca', 1001, N'20 - 2 kg bags', 19.45, N'41riQRGf-6L._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1045, N'Rogede sild', N'1045-rogede-sild', 1007, N'1k pkg.', 9.5, N'71cBwWAgvIL._SL1430_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1046, N'Spegesild', N'1046-spegesild', 1007, N'4 - 450 g glasses', 12, N'91T2BjUkYmL._SL1500_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1047, N'Zaanse koeken', N'1047-zaanse-koeken', 1002, N'10 - 4 oz boxes', 9.5, N'51s6pbRlNyL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1048, N'Chocolade', N'1048-chocolade', 1002, N'10 pkgs.', 12.75, N'91JUBDf1jTL._AA1500_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1049, N'Maxilaku', N'1049-maxilaku', 1002, N'24 - 50 g pkgs.', 20, N'51w+JqOnmSL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'MO')
,(1050, N'Valkoinen suklaa', N'1050-valkoinen-suklaa', 1002, N'12 - 100 g bars', 16.25, N'51yomC0EodL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1051, N'Manjimup Dried Apples', N'1051-manjimup-dried-apples', 1006, N'50 - 300 g pkgs.', 53, N'416pdroSEkL.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1052, N'Filo Mix', N'1052-filo-mix', 1004, N'16 - 2 kg boxes', 7, N'41Pg1ahql8L._AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1053, N'Perth Pasties', N'1053-perth-pasties', 1005, N'48 pieces', 32.8, N'31pAGovVENL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1054, N'TourtiÃ¨re', N'1054-tourtire', 1005, N'16 pies', 7.45, N'31TB6tC6BOL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1055, N'PÃ¢tÃ© chinois', N'1055-pt-chinois', 1005, N'24 boxes x 2 pies', 24, N'41brDHtPY9L._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1056, N'Gnocchi di nonna Alice', N'1056-gnocchi-di-nonna-alice', 1004, N'24 - 250 g pkgs.', 38, N'51nukXFJLJL.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1057, N'Ravioli Angelo', N'1057-ravioli-angelo', 1004, N'24 - 250 g pkgs.', 19.5, N'410PjzqoC8L._AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1058, N'Escargots de Bourgogne', N'1058-escargots-de-bourgogne', 1007, N'24 pieces', 13.25, N'91T2BjUkYmL._SL1500_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1059, N'Raclette Courdavault', N'1059-raclette-courdavault', 1003, N'5 kg pkg.', 55, N'41sdBTtnUDL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1060, N'Camembert Pierrot', N'1060-camembert-pierrot', 1003, N'15 - 300 g rounds', 34, N'41zxxR71G+L._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1061, N'Sirop d''Ã©rable', N'1061-sirop-drable', 1001, N'24 - 500 ml bottles', 28.5, N'41RxtSQOd2L._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1062, N'Tarte au sucre', N'1062-tarte-au-sucre', 1002, N'48 pies', 49.3, N'415cOCbeyML.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1063, N'Vegie-spread', N'1063-vegie-spread', 1001, N'15 - 625 g jars', 43.9, N'41sd2DTD8EL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1064, N'Wimmers gute SemmelknÃ¶del', N'1064-wimmers-gute-semmelkndel', 1004, N'20 bags x 4 pieces', 33.25, N'419WCoqfamL._AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1065, N'Louisiana Fiery Hot Pepper Sauce', N'1065-louisiana-fiery-hot-pepper-sauce', 1001, N'32 - 8 oz bottles', 21.05, N'41wHu2N4tVL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'SS')
,(1066, N'Louisiana Hot Spiced Okra', N'1066-louisiana-hot-spiced-okra', 1001, N'24 - 8 oz jars', 17, N'416OcTXFfeL._AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1067, N'Laughing Lumberjack Lager', N'1067-laughing-lumberjack-lager', 1000, N'24 - 12 oz bottles', 14, N'51GBNkHO6vL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1068, N'Scottish Longbreads', N'1068-scottish-longbreads', 1002, N'10 boxes x 8 pieces', 12.5, N'Camera1.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1069, N'Gudbrandsdalsost', N'1069-gudbrandsdalsost', 1003, N'10 kg pkg.', 36, N'51+4d3VBFvL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1070, N'Outback Lager', N'1070-outback-lager', 1000, N'24 - 355 ml bottles', 15, N'51Lj5bxbNtL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1071, N'Flotemysost', N'1071-flotemysost', 1003, N'10 - 500 g pkgs.', 21.5, N'51l46qQB50L._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1072, N'Mozzarella di Giovanni', N'1072-mozzarella-di-giovanni', 1003, N'24 - 200 g pkgs.', 34.8, N'5195-l+nflL._AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1073, N'RÃ¶d Kaviar', N'1073-rd-kaviar', 1007, N'24 - 150 g jars', 15, N'513UnnRfFML._SL1001_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1074, N'Longlife Tofu', N'1074-longlife-tofu', 1006, N'5 kg pkg.', 10, N'816zGZv1ORL._SL1500_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1075, N'RhÃ¶nbrÃ¤u Klosterbier', N'1075-rhnbru-klosterbier', 1000, N'24 - 0.5 l bottles', 7.75, N'51uJ-pWfc9L._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1076, N'LakkalikÃ¶Ã¶ri', N'1076-lakkalikri', 1000, N'500 ml', 18, N'51vxcBS1sQL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1077, N'Original Frankfurter grÃ¼ne SoÃe', N'1077-original-frankfurter-grne-soe', 1001, N'12 boxes', 13, N'1009.gif', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1081, N'Chai88888888', N'1081-chai88888888', 1000, N'10 boxes x 20 bags', 19, N'51y46IslQkL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 4, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1083, N'Mishi Kobe Niku', N'1083-mishi-kobe-niku', 1005, N'18 - 500 g pkgs.', 97, N'41GVLtgNngL._SL500_AA300_.jpg', CAST(N'2009-07-31T07:00:00.000' AS DateTime), 0, 0, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1084, N'Change-New', N'1084-change-new', 1000, N'10 boxes x 20 bags', 19, N'51Z9tfgl4aL._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 1, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'NK')
,(1085, N'Tên mới thêm', N'1003-aniseed-syrup', 1001, N'12 - 550 ml bottles', 1001, N'31EPGSm2s1L._SL500_AA300_.jpg', CAST(N'2009-08-01T07:00:00.000' AS DateTime), 0, 491, N'EmEditor uses JavaScript or VBScript for its macro language, so those who are familiar with HTML or Windows scripting will be able to write macros with little difficulty. For those unfamiliar with scripting languages, EmEditor can record keystrokes, which can then be saved in a macro file that can easily be loaded in different situations. With the use of JavaScript or VBScript, you can also troubleshoot your code easily. For example, in JavaScript, you can use the following statement to troubleshoot errors', N'AP')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO

--Drop TABLE Cart
CREATE TABLE Cart(
	CartCode char(32) NOT NULL ,
	ProductId INT NOT NULL REFERENCES Product(ProductId),
	Quantity SMALLINT NOT NULL,
	CreatedDate DATETIME NOT NULL DEFAULT GETDATE(),
	UpdatedDate DATETIME NOT NULL DEFAULT GETDATE(),
	PRIMARY KEY(CartCode, ProductId)
	);
GO
--DROP PROC AddCart;
CREATE PROC AddCart
(
	@CartCode CHAR(32),
	@ProductId INT,
	@Quantity SMALLINT
)
AS
	IF EXISTS(SELECT * FROM Cart WHERE CartCode = @CartCode AND ProductId = @ProductId)
		UPDATE Cart SET Quantity += @Quantity, UpdatedDate = GETDATE() WHERE CartCode = @CartCode AND ProductId = @ProductId;
	ELSE
		INSERT INTO Cart (CartCode, ProductId, Quantity) VALUES (@CartCode, @ProductId, @Quantity);
GO
CREATE PROC GetCategoryAndProducts
AS
SELECT Category.CategoryId, CategoryName, COUNT(*) AS Total FROM Category
	JOIN Product ON Category.CategoryId = Product.CategoryId
	GROUP BY Category.CategoryId, CategoryName;
	GO

------Customer

CREATE TABLE Customer(
	CustomerId INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	CustomerName NVARCHAR(64) NOT NULL,
	Email VARCHAR(64) NOT NULL,
	DateOfBirth DATE NOT NULL,
	Address NVARCHAR(128) NOT NULL
);
GO
SET IDENTITY_INSERT Customer ON;
INSERT INTO Customer (CustomerId, CustomerName, Email, DateOfBirth, Address) VALUES
	(1, 'A', 'a@ceb.net.vn', '2000/3/1', 'A'),
	(2, 'B', 'a@ceb.net.vn', '2001/3/1', 'B'),
	(3, 'C', 'a@ceb.net.vn', '2002/3/1', 'C'),
	(4, 'D', 'a@ceb.net.vn', '2003/3/1', 'D'),
	(5, 'E', 'a@ceb.net.vn', '2004/3/1', 'E'),
	(6, 'F', 'a@ceb.net.vn', '2005/3/1', 'F'),
	(7, 'G', 'a@ceb.net.vn', '2006/3/1', 'G'),
	(8, 'Y', 'a@ceb.net.vn', '2007/3/1', 'H'),
	(9, 'I', 'a@ceb.net.vn', '2008/3/1', 'I'),
	(10, 'K', 'a@ceb.net.vn', '2009/3/1', 'K');
SET IDENTITY_INSERT Customer OFF;
GO
CREATE TABLE Invoice(
	InvoiceId INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	InvoiceDate DATETIME NOT NULL DEFAULT GETDATE(),
	CustomerId INT NOT NULL REFERENCES Customer(CustomerId)
);
GO
SET IDENTITY_INSERT Invoice ON;
INSERT INTO Invoice (InvoiceId, InvoiceDate, CustomerId) VALUES
	(1, '2024/1/1', 1),
	(2, '2023/1/1', 3),
	(3, '2022/1/1', 5),
	(4, '2024/1/1', 7),
	(5, '2023/1/1', 10),
	(6, '2022/1/1', 9),
	(7, '2021/1/1', 8),
	(8, '2020/1/1', 7),
	(9, '2022/1/1', 6),
	(10, '2023/1/1', 5),
	(11, '2024/3/1', 4),
	(12, '2024/1/5', 3),
	(13, '2024/6/1', 2),
	(14, '2023/9/1', 8);
GO
SET IDENTITY_INSERT Invoice OFF;
GO
CREATE TABLE InvoiceDetail(
	InvoiceId INT NOT NULL,
	ProductId INT NOT NULL,
	Quantity SMALLINT NOT NULL,
	Price DECIMAL(10, 2) NOT NULL
);
GO
INSERT INTO InvoiceDetail (InvoiceId, ProductId, Quantity, Price) VALUES
	(1, 1, 2, 9.3),
	(1, 2, 1, 8.4),
	(1, 3, 2, 2.7),
	(2, 1, 2, 9.3),
	(2, 3, 2, 9.3),
	(2, 5, 2, 9.3),
	(3, 1, 2, 9.3),
	(3, 2, 2, 2.9),
	(3, 4, 2, 9.3),
	(4, 2, 1, 7.2),
	(4, 1, 3, 9.3),
	(4, 4, 2, 8.5),
	(5, 1, 3, 6.9),
	(5, 3, 2, 9.3),
	(6, 5, 4, 8.3),
	(7, 4, 2, 9.3),
	(8, 3, 2, 2.3),
	(9, 2, 2, 9.3),
	(10, 4, 2, 7.2),
	(11, 7, 2, 3.3),
	(12, 2, 2, 8.3),
	(13, 5, 2, 9.3),
	(14, 3, 2, 9.3),
	(14, 4, 2, 9.3);
GO

CREATE PROC GetSalesByAge
as
SELECT YEAR(GETDATE()) -YEAR(DateOfBirth) AS Age, SUM(Price * Quantity) AS Sales
	FROM Customer JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId
	JOIN InvoiceDetail ON Invoice.InvoiceId = InvoiceDetail.InvoiceId
	GROUP BY YEAR(DateOfBirth);
Go

----DROP TABLE Employee
CREATE TABLE Employee(
	EmployeeId INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
	EmployeeName NVARCHAR(64) NOT NULL,
	ParentId INT REFERENCES Employee(EmployeeId)
);
GO
GO
SET IDENTITY_INSERT Employee ON;
INSERT INTO Employee (EmployeeId, EmployeeName, ParentId) VALUES
	(1, 'Mike', NULL),
	(2, 'Jim', 1),
	(3, 'Alice', 1),
	(4, 'Bob', 2),
	(5, 'Carol', 4);
SET IDENTITY_INSERT Employee OFF;
GO
--SELECT * FROM Employee;


go
CREATE TABLE SalesAndExpenses(
	[Year] INT NOT NULL,
	Sales DECIMAL(10, 2),
	Expenses DECIMAL(10, 2)
);
GO
INSERT INTO SalesAndExpenses VALUES
(2004,  1000,      400),
(2005,  1170,      460),
(2006,  660,       1120),
(2007,  1030,      540),
(2008,  1040,      1200),
(2009,  1025,      900),
(2010,  1029,      1540),
(2011,  1049,      4009);
GO

CREATE PROC GetSalesAndExpenses
AS
    SELECT [Year], Sales, Expenses
    FROM SalesAndExpenses;
GO
------------------

CREATE PROC GetEmployeesAndParent
AS
SELECT C.EmployeeId, C.EmployeeName, C.ParentId,  P.EmployeeName AS ParentName
	FROM Employee AS P RIGHT JOIN Employee AS C ON C.ParentId = P.EmployeeId;
	GO
--Drop PROC GetEmployeesAndParent
--DROP TABLE Invoice
GO
CREATE TABLE Invoice(
	InvoiceId BIGINT NOT NULL PRIMARY KEY,
	InvoiceDate DATETIME NOT NULL DEFAULT GETDATE(),
	Fullname NVARCHAR(64) NOT NULL,
	Email VARCHAR(64) NOT NULL,
	Phone VARCHAR(16) NOT NULL,
	Address NVARCHAR(128) NOT NULL
);
GO
--DROP  TABLE InvoiceDetail
CREATE TABLE InvoiceDetail(
	InvoiceId BIGINT NOT NULL,
	ProductId INT NOT NULL,
	Quantity SMALLINT NOT NULL,
	Price DECIMAL(10, 2) NOT NULL
);
GO
--DROP TABLE InvoiceDetail
--DROP PROC AddInvoice

CREATE PROC AddInvoice(
	@CartCode CHAR(32),
	@InvoiceId BIGINT,
	@InvoiceDate DATETIME,
	@FullName NVARCHAR(64),
	@Email VARCHAR(64),
	@Phone VARCHAR(16),
	@Address NVARCHAR(128)
)
AS
BEGIN
	INSERT INTO Invoice(InvoiceId, InvoiceDate, FullName, Email, Phone, Address) VALUES
		(@InvoiceId, @InvoiceDate, @FullName, @Email, @Phone, @Address);
	INSERT INTO InvoiceDetail(InvoiceId, ProductId, Quantity, Product.Price)
		SELECT @InvoiceId, Cart.ProductId, Cart.Quantity, Product.Price
		FROM Cart JOIN Product ON Cart.ProductID = Product.ProductId AND CartCode = @CartCode;
	--DELETE FROM Cart WHERE CartCode = @CartCode;
End
Go

select * from InvoiceDetail
select * from Invoice

CREATE PROC GetAmountInvoice
(
	@InvoiceId BIGINT
)
AS
	SELECT Price * Quantity FROM InvoiceDetail WHERE InvoiceId = @InvoiceId;
--Bang Thu Thap Khach Hang
--drop table vnpayment;
go
	CREATE TABLE VnPayment(
		Amount BIGINT NOT NULL,
		BankCode VARCHAR(8) NOT NULL,
		BankTranNo VARCHAR(32) NOT NULL,
		CardType VARCHAR(16) NOT NULL,
		OrderInfo NVARCHAR(64) NOT NULL,
		PayDate VARCHAR(16) NOT NULL,
		ResponseCode VARCHAR(4) NOT NULL,
		TmnCode VARCHAR(16) NOT NULL,
		TransactionNo VARCHAR(16) NOT NULL,
		TransactionStatus VARCHAR(4) NOT NULL,
		TxnRef BIGINT NOT NULL,
		SecureHash VARCHAR(MAX) NOT NULL
);
GO
--drop proc addvnpayment;
go

CREATE PROC AddVnPayment(
		@Amount BIGINT,
		@BankCode VARCHAR(8) ,
		@BankTranNo VARCHAR(32) ,
		@CardType VARCHAR(16) ,
		@OrderInfo NVARCHAR(64),
		@PayDate VARCHAR(16),
		@ResponseCode VARCHAR(4),
		@TmnCode VARCHAR(16) ,
		@TransactionNo VARCHAR(16) ,
		@TransactionStatus VARCHAR(4) ,
		@TxnRef BIGINT ,
		@SecureHash VARCHAR(MAX) 
)
AS
INSERT INTO VnPayment VALUES(@Amount, @BankCode, @BankTranNo, @CardType, @OrderInfo,
	@PayDate, @ResponseCode, @TmnCode, @TransactionNo, @TransactionStatus, @TxnRef, @SecureHash);
Go

--select * from vnpayment;