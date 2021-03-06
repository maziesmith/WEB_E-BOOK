USE master
GO
/****** Object:  Database [BooksDBSQL]    Script Date: 02/07/2013 13:39:34 ******/
CREATE DATABASE [BooksDBSQL] 
go
ALTER DATABASE [BooksDBSQL] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BooksDBSQL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BooksDBSQL] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BooksDBSQL] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BooksDBSQL] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BooksDBSQL] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BooksDBSQL] SET ARITHABORT OFF
GO
ALTER DATABASE [BooksDBSQL] SET AUTO_CLOSE ON
GO
ALTER DATABASE [BooksDBSQL] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BooksDBSQL] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BooksDBSQL] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BooksDBSQL] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BooksDBSQL] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BooksDBSQL] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BooksDBSQL] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BooksDBSQL] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BooksDBSQL] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BooksDBSQL] SET  ENABLE_BROKER
GO
ALTER DATABASE [BooksDBSQL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BooksDBSQL] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BooksDBSQL] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BooksDBSQL] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BooksDBSQL] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BooksDBSQL] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BooksDBSQL] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BooksDBSQL] SET  READ_WRITE
GO
ALTER DATABASE [BooksDBSQL] SET RECOVERY SIMPLE
GO
ALTER DATABASE [BooksDBSQL] SET  MULTI_USER
GO
ALTER DATABASE [BooksDBSQL] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BooksDBSQL] SET DB_CHAINING OFF
GO
USE [BooksDBSQL]
GO
/****** Object:  Table [dbo].[ShopCart]    Script Date: 02/07/2013 13:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopCart](
	[OrderID] [nvarchar](255) NULL,
	[BookID] [nvarchar](50) NULL,
	[BookTitle] [nvarchar](50) NULL,
	[Price] [money] NULL,
	[Qty] [int] NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BooksShopCart] ON [dbo].[ShopCart] 
(
	[BookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [OrderID] ON [dbo].[ShopCart] 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'OrderID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'OrderID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ShopCart' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2595' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BookID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BookID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ShopCart' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2850' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BookTitle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BookTitle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ShopCart' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'#,##0.00" лв";-#,##0.00" лв"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Price' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ShopCart' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Qty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ShopCart' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'12/29/2005 2:27:40 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2/6/2012 1:17:30 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ShopCart' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShopCart'
GO
INSERT [dbo].[ShopCart] ([OrderID], [BookID], [BookTitle], [Price], [Qty]) VALUES (N'ses1', N'WB111', N'Ajax in Action', 120.0000, 1)
INSERT [dbo].[ShopCart] ([OrderID], [BookID], [BookTitle], [Price], [Qty]) VALUES (N'ses1', N'SY444', N'Linux in a Nutshell', 44.9500, 1)
INSERT [dbo].[ShopCart] ([OrderID], [BookID], [BookTitle], [Price], [Qty]) VALUES (N'ses1', N'HW333', N'USB System Architecture', 49.9900, 1)
INSERT [dbo].[ShopCart] ([OrderID], [BookID], [BookTitle], [Price], [Qty]) VALUES (N'ses1', N'SW333', N'Programming C#', 44.9500, 1)
INSERT [dbo].[ShopCart] ([OrderID], [BookID], [BookTitle], [Price], [Qty]) VALUES (N'ses1', N'WB555', N'Microsoft ASP.NET 2.0', 29.9900, 1)
INSERT [dbo].[ShopCart] ([OrderID], [BookID], [BookTitle], [Price], [Qty]) VALUES (N'ses1', N'DB111', N'Oracle Database', 9.9900, 1)
INSERT [dbo].[ShopCart] ([OrderID], [BookID], [BookTitle], [Price], [Qty]) VALUES (N'ses1', N'SY222', N'The UNIX Operating System', 19.9500, 1)
INSERT [dbo].[ShopCart] ([OrderID], [BookID], [BookTitle], [Price], [Qty]) VALUES (N'ses1', N'GR111', N'Adobe Photoshop CS2', 29.9900, 1)
INSERT [dbo].[ShopCart] ([OrderID], [BookID], [BookTitle], [Price], [Qty]) VALUES (N'ses1', N'DB111', N'Oracle Database', 9.9900, 1)
INSERT [dbo].[ShopCart] ([OrderID], [BookID], [BookTitle], [Price], [Qty]) VALUES (N'ses1', N'DB111', N'Oracle Database', 9.9900, 1)
INSERT [dbo].[ShopCart] ([OrderID], [BookID], [BookTitle], [Price], [Qty]) VALUES (N'ses1', N'DB111', N'Oracle Database', 9.9900, 1)
INSERT [dbo].[ShopCart] ([OrderID], [BookID], [BookTitle], [Price], [Qty]) VALUES (N'ses1', N'WB444', N'DOM Scripting', 23.0900, 1)
/****** Object:  Table [dbo].[gestbook]    Script Date: 02/07/2013  13:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gestbook](
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NULL,
 CONSTRAINT [aaaaagestbook_PK] PRIMARY KEY NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1620' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'gestbook' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'gestbook' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'11/15/2009 8:34:27 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'11/15/2009 9:17:19 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'gestbook' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'gestbook'
GO
INSERT [dbo].[gestbook] ([name], [email]) VALUES (N'Примерно име', N'Точен имейл')
/****** Object:  Table [dbo].[Books]    Script Date: 02/07/2013  13:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[BookID] [nvarchar](50) NOT NULL,
	[BookType] [nvarchar](50) NULL,
	[BookTitle] [nvarchar](50) NULL,
	[BookAuthor] [nvarchar](50) NULL,
	[BookDescription] [ntext] NULL,
	[BookPrice] [money] NULL,
	[BookQty] [int] NULL,
	[BookSale] [bit] NULL,
 CONSTRAINT [aaaaaBooks_PK] PRIMARY KEY NONCLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1275' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BookID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BookID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Books' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookID'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1740' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BookType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BookType' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Books' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookType'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'3000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BookTitle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BookTitle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Books' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1515' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BookAuthor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BookAuthor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Books' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2490' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BookDescription' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BookDescription' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Books' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'TextFormat', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1080' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Currency' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BookPrice' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BookPrice' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Books' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1470' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Long Integer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BookQty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BookQty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Books' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1020' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Yes/No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BookSale' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BookSale' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Books' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books', @level2type=N'COLUMN',@level2name=N'BookSale'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'10/16/2000 3:54:46 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'2/6/2012 1:17:30 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderBy', @value=N'Books.BookID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Books' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'31' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Books'
GO
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'DB111', N'Database', N'Oracle Database', N'K. Loney', N'Get thorough coverage of Oracle Database 10g from the most comprehensive reference available, published by Oracle Press. With in-depth details on all the new features, this powerhouse resource provides an overview of database architecture and Oracle Grid Computing technology, and covers SQL, SQL*Plus, PL/SQL, dynamic PL/SQL, object-oriented features, and Java programming in the Oracle environment. You''ll also find valuable database administration and application development techniques, plus an alphabetical reference covering major Oracle commands, keywords, features, and functions, with cross-referencing of topics.', 9.9900, 10, 1)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'DB222', N'Database', N'Databases in Depth', N'C. J. Date', N'In Database in Depth, author and well-known database authority Chris Date lays out the fundamentals of the relational model. Don''t let a lack to formal education in database theory hold you back. Instead, let Chris''s clear explanation of relational concepts, set theory, the difference between model and implementation, relational algebra, normalization, and much more set you apart and well above the competition when it comes to getting work done with a relational database.', 29.9500, 6, 1)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'DB333', N'Database', N'Database Processing', N'D. Kroenke', N'Revised to reflect the needs of today''s users, this 10th edition of Database Processing assures that you will learn marketable skills. By presenting SQL SELECT statements near the beginning of the book readers will know early on how to query data and obtain results-seeing firsthand some of the ways that database technology is useful in the marketplace. By utilizing free software downloads, you will be able to actively use a DBMS product by the end of the 2nd chapter. Each topic appears in the context of accomplishing practical tasks. Its spiral approach to database design provides users with enhanced information not available in other database books on the market.', 136.6500, 12, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'DB444', N'Database', N'Access Database Design', N'S. Roman', N'When using software products with graphical interfaces, we frequently focus so much on the details of how to use the interface that we forget about the general concepts that allow us to understand and use the software effectively. This is particularly true of a powerful database product like Microsoft Access. Novice, and sometimes even experienced, programmers are so concerned with how something is done in Access that they often lose sight of the general principles that underlie their database applications. Access Database Design and Programming takes you behind the details of the Access interface, focusing on the general knowledge necessary for Access power users or developers to create effective database applications.', 34.9500, 25, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'DB555', N'Database', N'SQL Server 2005', N'P. Debetta', N'Get a developer-focused introduction to the new programmability features in the next version of Microsoft SQL Server-including integration with the Microsoft .NET Framework-and learn powerful new ways to manipulate your servers. Whether you''re a developer currently working with T-SQL or Microsoft Visual Studio.NET, or you''re responsible for database administration, you''ll see how to draw from your existing skills and knowledge to exploit new SQL Server technology. With introductory-level code samples written in both T-SQL and C#, you''ll understand how to take advantage of the cross-platform interoperability, native support for XML and Web services, shared language base, and other programming innovations to build better solutions from business intelligence to enterprise data management.', 29.9900, 5, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'GR111', N'Graphics', N'Adobe Photoshop CS2', N'Adobe', N'With this book, you learn by doing, getting your feet wet immediately as you progress through a series of hands-on projects that build on your growing Photoshop knowledge. Simple step-by-step instructions, review questions at the end of each chapter, and a companion CD with all of the book''s project files make learning a breeze as the Adobe Creative Team takes you on a self-paced tour of the image-editing powerhouse. This bestselling guide has been completely revised to cover all of Photoshop CS2''s new features and creative tools. This comprehensive guide starts with an introductory tour of the software and then progresses on through lessons on everything from Photoshop''s interface to more complex topics like color management, Web graphics, and photo retouching.', 29.9900, 4, 1)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'GR222', N'Graphics', N'Learning Web Design', N'J. Niederst', N'In Learning Web Design, author Jennifer Niederst shares the knowledge she''s gained from years of web design experience, both as a designer and a teacher. This book starts from the beginning--defining the Internet, the Web, browsers, and URLs--so you don''t need to have any previous knowledge about how the Web works. After reading this book, you''ll have a solid foundation in HTML, graphics, and design principles that you can immediately put to use in creating effective web pages.', 39.9500, 8, 1)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'GR333', N'Graphics', N'Macromedia Flash Professional', N'T. Green', N'Offering breakthrough video capabilities and powerful run-time effects, Macromedia Flash Professional 8 is poised to upend the Web video market, posing a serious challenge to Microsoft, RealNetworks, and Apple''s efforts in the process. Here to make sure you''re ready for it is the official Macromedia training for the program. Through 20-plus hours of project-based instruction, you''ll learn how to program for the enhanced Flash Player; use ActionScript to create dynamic interactivity; take advantage of new Flash 8 features like the improved script editor, revamped library interface, and new Undo feature; and more. Simple step-by-step instructions peppered with plenty of visual aids and a CD that includes lesson files and a trial version of Flash Professional 8 leave you with a solid understanding of Flash development and the techniques required to tap your creative potential by producing dynamic, interactive content.', 44.9900, 17, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'GR444', N'Graphics', N'Digital Photographer Handbook', N'M. Freeman', N'Michael Freeman has a well-deserved reputation for effectively explaining the concepts behind digital picture-taking to a variety of audiences. Here, he turns his attention to the professionals and advanced hobbyists who are making the move from traditional to digital and want help mastering the technology and meeting their clients'' new requirements. Freeman thoroughly answers the most frequently asked questions about the basics of digital capture, from cameras and computers to storage options, printers, and scanners. Photographers will learn the different file formats and how to save images for print or publishing on the web. They''ll explore valuable software tools and basic image processing programs that fix common problems, and see how to improve pictures using an assortment of cropping and filtering techniques.', 24.9500, 22, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'GR555', N'Graphics', N'Creating Motion Graphics', N'T. Meyer', N'Trish and Chris Meyer share their years of real-world production experience in this vital update to the acclaimed Creating Motion Graphics with After Effects series. More than a step-by-step review of the features, you learn how this program integrates into real-world production workflows from award-winning artists who make their living using After Effects. This full-color guide is packed with visual examples, and the enclosed DVD-ROM is loaded with source material and projects that encourage you to practice their techniques.', 59.9500, 13, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'HW111', N'Hardware', N'How Computers Work', N'R. White', N'How Computers Work, 7th Edition, has been one of the bestselling computer books for the last 10 years. This four-color visual tutorial is a must-have for any computer user, from novice to expert. The rich graphics and intricate details about the inner workings of computers have been admired for years by consumers, instructors, professionals, and readers of all ages. A fresh cover and interior provide the reader with superior usability and it is the most aesthetically-pleasing edition yet!', 29.9900, 8, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'HW222', N'Hardware', N'Upgrading and Repairing PCs', N'S. Mueller', N'Push your PC''s performance to the limit. Know the differences between: Pentium II, Pentium MMX, Pentium Pro, and earlier CPU chips and choose the best chip for your needs; understand compatibility and feature sets of processor upgrade sockets, motherboards, and chipsets; use Universal Serial Bus ports and devices to simplify peripheral installation, configuration, and improve performance; squeeze the most performance, life, and reliability out of your hard drives; prevent memory headaches: pick the right speed and type of SIMMs and DIMMs, run more programs at once, and work with bigger files; and integrate hot new hardware including 3D graphics accelerators, fast SDRAM memory, Zoomed Video and CardBus PC Cards for your notebook, and NLX motherboards with support for Single Edge Contact processors and Accelerated Graphics Ports.', 59.9900, 5, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'HW333', N'Hardware', N'USB System Architecture', N'D. Anderson', N'Universal Serial Bus System Architecture, Second Edition, based on the 2.0 version of the Universal Serial Bus specification, provides in-depth coverage and a detailed discussion of USB. It focuses on the USB protocol, signaling environment, and electrical specifications, along with the hardware/software interaction required to configure and access USB devices.', 49.9900, 1, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'HW444', N'Hardware', N'Designing Embedded Hardware', N'J. Catsoulis', N'Designing Embedded Hardware is a book about designing small machines for embedded applications. There are many books on the market dedicated to writing code for particular microprocessors, or that stress the philosophy of embedded system design without providing any practical information. This book steers a middle path, telling you what you need to know to create your own products, and distilling much of the lore of embedded systems design into a single volume. It shows you how to build a complete embedded system, add peripherals, and connect your system to other devices.', 44.9500, 3, 1)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'HW555', N'Hardware', N'Contemporary Logic Design', N'R. Katz', N'Contemporary Logic Design introduces a wide range of software tools including schematic capture, logic simulation, Boolean minimization, multi-level minimization and state assignment. Links the traditional techniques of logic design (such as Karnaugh maps and breadboard techniques) with real-world design examples. Provides comprehensive, early coverage of programmable logic including ROMs, PALs, and PLAs. Includes a variety of examples, exercises, problems, and case studies that illustrate real design problems and challenge the reader to develop practical solutions using modern design tools.', 102.9500, 2, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'SW111', N'Software', N'Java How to Program', N'Deitel', N'This edition is completely up-to-date with The Java 2 Platform Standard Edition (J2SE) 1.5. Now includes topics such as autoboxing, enumerations, enhanced for loops, static import statements, variable-length argument lists, and much more. Presents each new concept in the context of a complete, working program, immediately followed by one or more windows showing the program''s input/output dialog. A valuable reference for programmers and anyone interested in learning the Java programming language.', 98.5900, 9, 1)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'SW222', N'Software', N'C Programming Language', N'B. Kernighan', N'The original authors of C and the first UNIX system present this concise and powerful guide to ANSI standard C programming. This version, building on Kerninghan and Ritchie''s classic The C Programming Language, brings readers up-to-date with the finalized ANSI standard for C while teaching users how to take advantage of noted C features like economy of expression, its full set of operators and more. One reader claimed "Just about every C programmer I respect learned C from this book," while another raved that this book is the "Bible of C." This book is regarded by just about anyone in the C field as the canonical work on the C language and is essential reading for C programmers.', 44.2500, 12, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'SW333', N'Software', N'Programming C#', N'J. Liberty', N'The programming language C# was built with the future of application development in mind. Pursuing that vision, C#''s designers succeeded in creating a safe, simple, component-based, high-performance language that works effectively with Microsoft''s .NET Framework. Now the favored language among those programming for the Microsoft platform, C# continues to grow in popularity as more developers discover its strength and flexibility. And, from the start, C# developers have relied on Programming C# both as an introduction to the language and a means of further building their skills. The new fourth edition of Programming C#--the top-selling C# book on the market--has been updated to the C# ISO standard as well as changes to Microsoft''s implementation of the language.', 44.9500, 0, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'SW444', N'Software', N'Programming PHP', N'R. J. Lerdorf', N'PHP is a simple yet powerful open source scripting language for creating dynamic web content. The millions of web sites powered by PHP are testament to its popularity and ease of use. PHP is used by both programmers, who appreciate its flexibility and speed, and web designers, who value its accessibility and convenience. Programming PHP is an authoritative guide to PHP 4, the latest version of the language, and is filled with the unique knowledge of the creator of PHP, Rasmus Lerdorf. This book explains PHP language syntax and programming techniques in a clear and concise manner, with numerous examples that illustrate both correct usage and common idioms. The book also includes style tips and practical programming advice that will help you become not just a PHP programmer, but a good PHP programmer.', 39.9500, 17, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'SW555', N'Software', N'Visual Basic.NET Programming', N'P. Vick', N'Visual Basic .NET builds on the legendary simplicity of Visual Basic to add the immense power of true object-oriented programming and Microsoft''s .NET Framework. Now, for the first time, one of the language''s architects has written a definitive technical reference and tutorial for Visual Basic .NET. Moving far beyond the online documentation, Paul Vick presents the language''s complete specification, along with descriptions, reference materials, and code samples direct from the Visual Basic .NET design team.', 49.9900, 13, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'SY111', N'Systems', N'Operating System Concepts', N'A. Silberschatz', N'By staying current, remaining relevant, and adapting to emerging course needs, this text has continued to define the operating systems course. This Seventh Edition not only presents the latest and most relevant systems, it also digs deeper to uncover those fundamental concepts that have remained constant throughout the evolution of today''s operating systems. With this strong conceptual foundation in place, students can more easily understand the details related to specific systems.', 95.7500, 1, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'SY222', N'Systems', N'The UNIX Operating System', N'J. D. Peek', N'Learning the Unix Operating System is a handy book for someone just starting with Unix or Linux, and it''s an ideal primer for Mac and PC users of the Internet who need to know a little about Unix on the systems they visit. The fifth edition is the most effective introduction to Unix in print, covering Internet usage for email, file transfers, web browsing, and many major and minor updates to help the reader navigate the ever-expanding capabilities of the operating system.', 19.9500, 12, 1)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'SY333', N'Systems', N'Windows Server 2003', N'W. R. Stanek', N'Here''s the practical, pocket-sized reference for IT professionals supporting Windows .NET Server. Designed for quick referencing, this portable guide covers all the essentials for performing everyday system-administration tasks. Topics include managing workstations and servers, using Microsoft Active Directory services, creating and administering user and group accounts, managing files and directories, data security and auditing, data back-up and recovery, network administration using TCP/IP, WINS, and DNS, and more.', 29.9900, 25, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'SY444', N'Systems', N'Linux in a Nutshell', N'S. Figgins', N'Whether you''re using Linux for personal software projects, for a small office or home office, to provide services to a small group of colleagues, or to administer a site responsible for millions of email and web connections each day, you need quick access to information on a wide range of tools. This book covers all aspects of administering and making effective use of Linux systems. Among its topics are booting, package management, and revision control. But foremost in Linux in a Nutshell are the utilities and commands that make Linux one of the most powerful and flexible systems available.', 44.9500, 14, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'SY555', N'Systems', N'Mastering Active Directory', N'R. R. King', N'Active Directory represents an enormous advance in network administration. It provides a vast set of powerful tools and technologies for managing a network within a native Windows environment. Mastering Active Directory for Windows Server 2003 is the resource you need to take full advantage of all it has to offer. You get a sound introduction to network directory services, then detailed, practical instruction in the work of implementing Active Directory and using all of its tools. This edition has been completely updated to address features new to Active Directory for Windows Server 2003.', 49.9900, 8, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'WB111', N'Web', N'Ajax in Action', N'D. Crane', N'Ajax in Action helps you implement that thinking--it explains how to distribute the application between the client and the server while retaining the integrity of the system. You will learn how to ensure your app is flexible and maintainable, and how good, structured design can help avoid problems like browser incompatibilities. Along the way it helps you unlearn many old coding habits. Above all, it opens your mind to the many advantages gained by placing much of the processing in the browser. If you are a web developer who has prior experience with web technologies, this book is for you.', 120.0000, 14, 1)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'WB222', N'Web', N'Professional ASP.NET 2.0', N'B. Evjen', N'ASP.NET allows web sites to display unique pages for each visitor rather than show the same static HTML pages. The release of ASP.NET 2.0 is a revolutionary leap forward in the area of web application development. It brings with it a wealth of new and exciting built-in functions that reduce the amount of code you''ll need to write for even the most common applications. With more than 50 new server controls, the number of classes inside ASP.NET 2.0 has more than doubled, and, in many cases, the changes in this new version are dramatic. This book will alert you to every new feature and capability that ASP.NET 2.0 provides so that you''ll be prepared to put these new technologies into action.', 32.9900, 21, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'WB333', N'Web', N'Cascading Style Sheets', N'E. A. Meyer', N'This second edition of Cascading Style Sheets: The Definitive Guide completes the discussion of CSS2, explores CSS2.1, and introduces emerging elements of CSS3. Eric A. Meyer uses his trademark wit and humor to explore properties, tags, attributes, and implementation, as well as real-life issues, such as browser support and design guidelines. This book addresses experienced web authors and scripters, as well as novice authors who may be implementing CSS from scratch. Cascading Style Sheets: The Definitive Guide, Second Edition also includes a new foreword by Molly Holzschlag, a steering committee member for the Web Standards Project.', 39.9500, 6, 0)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'WB444', N'Web', N'DOM Scripting', N'J. Keith', N'There are three main technologies married together to create usable, standards-compliant web designs: XHTML for data structure, Cascading Style Sheets for styling your data, and JavaScript for adding dynamic effects and manipulating structure on the fly using the Document Object Model. This book is about the latter of the three. DOM Scripting: Web Design with JavaScript and the Document Object Model gives you everything you need to start using JavaScript and the Document Object Model to enhance your web pages with client-side dynamic effects. Jermey starts off by giving you a basic crash course in JavaScript and the DOM, then moves on to provide you with several real world examples built up from scratch including dynamic image galleries and dynamic menus, and shows you how to manipulate web page style using the CSS DOM, and create markup on the fly.', 23.0900, 8, 1)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'WB555', N'Web', N'Microsoft ASP.NET 2.0', N'D. Esposito', N'Get an expert, developer-focused introduction to the next big innovation in ASP.NET Web programming. Programming authority Dino Esposito takes you inside ASP.NET 2.0 technology, explaining how its updated, more powerful infrastructure allows you to create rich and dynamic Web applications quickly and with less code. Esposito examines how developer best practices with ASP.NET 1.x and classic ASP helped drive the architectural changes in ASP.NET 2.0, and he offers prerelease insights into its final architecture. With concise concept and feature explanations and more than 70 fully functional examples, this comprehensive introduction gives you everything you need to dig into ASP.NET 2.0 right now.', 29.9900, 12, 1)
INSERT [dbo].[Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (N'WB936', N'Web', N'Web Development', N'Vanya Lazarova', N'Tova e mnogo specialna kniga', 30.0000, 14, 1)
/****** Object:  View [dbo].[View_CartQuery]    Script Date: 02/07/2012 13:39:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_CartQuery]
AS
SELECT     BookID, BookTitle, Price, Qty, Price * Qty AS Value
FROM         dbo.ShopCart
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShopCart"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 162
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CartQuery'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CartQuery'
GO
/****** Object:  Default [DF__Books__BookPrice__0519C6AF]    Script Date: 02/07/2013 13:39:34 ******/
ALTER TABLE [dbo].[Books] ADD  DEFAULT ((0)) FOR [BookPrice]
GO
/****** Object:  Default [DF__Books__BookQty__060DEAE8]    Script Date: 02/07/2012 13:39:34 ******/
ALTER TABLE [dbo].[Books] ADD  DEFAULT ((0)) FOR [BookQty]
GO
/****** Object:  Default [DF__Books__BookSale__07020F21]    Script Date: 02/07/2012 13:39:34 ******/
ALTER TABLE [dbo].[Books] ADD  DEFAULT ((0)) FOR [BookSale]
GO

CREATE PROCEDURE INSERT_ShopCart
@Order_id nvarchar(255),
@Book_id nvarchar(50),
@BookTitle nvarchar(50),
@Price money,
@Qty int
as
begin
    declare @msg nvarchar(30)
	begin try
	insert into ShopCart(OrderID,BookID,BookTitle,Price,Qty)
	values(@Order_id,@Book_id,@BookTitle, @Price,@Qty)
	end try
	begin catch
	set @msg='Записът не може да бъде добавен!'
	raiserror (@msg,16,1)
	RETURN
	end catch
end
go
ALTER PROCEDURE [dbo].[sp_DELBooks]
(@BookID nvarchar(50),
@B_id int=0 output)
AS
SET @B_id=0
SELECT @B_id=count(*)
FROM ShopCart
WHERE (BookID=@BookID)
IF @B_id>0
  BEGIN 
  DELETE FROM ShopCart
  WHERE BookID=@BookID
END
RETURN @B_id
go

