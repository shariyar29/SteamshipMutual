USE [master]
GO
/****** Object:  Database [DBSalesChart]    Script Date: 06-Sep-20 7:28:03 PM ******/
CREATE DATABASE [DBSalesChart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBSalesChart', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBSalesChart.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBSalesChart_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\DBSalesChart_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBSalesChart] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBSalesChart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBSalesChart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBSalesChart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBSalesChart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBSalesChart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBSalesChart] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBSalesChart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBSalesChart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBSalesChart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBSalesChart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBSalesChart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBSalesChart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBSalesChart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBSalesChart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBSalesChart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBSalesChart] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBSalesChart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBSalesChart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBSalesChart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBSalesChart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBSalesChart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBSalesChart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBSalesChart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBSalesChart] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBSalesChart] SET  MULTI_USER 
GO
ALTER DATABASE [DBSalesChart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBSalesChart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBSalesChart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBSalesChart] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DBSalesChart] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBSalesChart', N'ON'
GO
USE [DBSalesChart]
GO
/****** Object:  Table [dbo].[tbl_employee]    Script Date: 06-Sep-20 7:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_employee](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[EFirstName] [nvarchar](150) NULL,
	[ELastName] [nvarchar](150) NULL,
	[Edesignation] [nvarchar](150) NULL,
	[EManager] [int] NULL,
 CONSTRAINT [PK_tbl_employee] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Sales]    Script Date: 06-Sep-20 7:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Sales](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[EmpID] [int] NULL,
	[SalesDate] [date] NULL,
	[SalesAmount] [float] NULL,
	[Sales_Desc] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_Sales] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_employee] ON 

INSERT [dbo].[tbl_employee] ([EmpID], [EFirstName], [ELastName], [Edesignation], [EManager]) VALUES (1, N'Shariyar', N'Shaikh', N'Manager', NULL)
INSERT [dbo].[tbl_employee] ([EmpID], [EFirstName], [ELastName], [Edesignation], [EManager]) VALUES (2, N'John', N'Doe', N'Manager', NULL)
INSERT [dbo].[tbl_employee] ([EmpID], [EFirstName], [ELastName], [Edesignation], [EManager]) VALUES (3, N'Tom', N'Doe', N'Sales', 1)
INSERT [dbo].[tbl_employee] ([EmpID], [EFirstName], [ELastName], [Edesignation], [EManager]) VALUES (4, N'Harry', N'Tom', N'Sales', 1)
INSERT [dbo].[tbl_employee] ([EmpID], [EFirstName], [ELastName], [Edesignation], [EManager]) VALUES (5, N'John', N'Smith', N'sales', 2)
INSERT [dbo].[tbl_employee] ([EmpID], [EFirstName], [ELastName], [Edesignation], [EManager]) VALUES (6, N'Tony', N'Hanry', N'Sales', 2)
INSERT [dbo].[tbl_employee] ([EmpID], [EFirstName], [ELastName], [Edesignation], [EManager]) VALUES (12, N'Ben', N'Thomas', N'Sales', 1)
INSERT [dbo].[tbl_employee] ([EmpID], [EFirstName], [ELastName], [Edesignation], [EManager]) VALUES (13, N'Toby', N'Thomas', N'Sales', 2)
SET IDENTITY_INSERT [dbo].[tbl_employee] OFF
SET IDENTITY_INSERT [dbo].[tbl_Sales] ON 

INSERT [dbo].[tbl_Sales] ([SID], [EmpID], [SalesDate], [SalesAmount], [Sales_Desc]) VALUES (1, 3, CAST(N'2020-09-01' AS Date), 5000, N'HRMS Software')
INSERT [dbo].[tbl_Sales] ([SID], [EmpID], [SalesDate], [SalesAmount], [Sales_Desc]) VALUES (2, 4, CAST(N'2020-09-01' AS Date), 3000, N'Insurance Software')
INSERT [dbo].[tbl_Sales] ([SID], [EmpID], [SalesDate], [SalesAmount], [Sales_Desc]) VALUES (3, 5, CAST(N'2020-09-01' AS Date), 5000, N'HRMS software')
INSERT [dbo].[tbl_Sales] ([SID], [EmpID], [SalesDate], [SalesAmount], [Sales_Desc]) VALUES (4, 3, CAST(N'2020-09-01' AS Date), 6000, N'POS software')
INSERT [dbo].[tbl_Sales] ([SID], [EmpID], [SalesDate], [SalesAmount], [Sales_Desc]) VALUES (5, NULL, CAST(N'2020-09-03' AS Date), 3800, N'HRMS')
INSERT [dbo].[tbl_Sales] ([SID], [EmpID], [SalesDate], [SalesAmount], [Sales_Desc]) VALUES (6, NULL, CAST(N'2020-09-05' AS Date), 200, N'HRMS')
INSERT [dbo].[tbl_Sales] ([SID], [EmpID], [SalesDate], [SalesAmount], [Sales_Desc]) VALUES (7, 13, CAST(N'2020-09-06' AS Date), 1000, N'Insurance')
INSERT [dbo].[tbl_Sales] ([SID], [EmpID], [SalesDate], [SalesAmount], [Sales_Desc]) VALUES (8, 3, CAST(N'2020-09-06' AS Date), 500, N'HRMS')
INSERT [dbo].[tbl_Sales] ([SID], [EmpID], [SalesDate], [SalesAmount], [Sales_Desc]) VALUES (9, 4, CAST(N'2020-09-06' AS Date), 850, N'HRMS')
INSERT [dbo].[tbl_Sales] ([SID], [EmpID], [SalesDate], [SalesAmount], [Sales_Desc]) VALUES (10, 13, CAST(N'2020-09-06' AS Date), 3500, N'HRMS')
INSERT [dbo].[tbl_Sales] ([SID], [EmpID], [SalesDate], [SalesAmount], [Sales_Desc]) VALUES (11, 13, CAST(N'2020-09-03' AS Date), 350, N'hrms')
INSERT [dbo].[tbl_Sales] ([SID], [EmpID], [SalesDate], [SalesAmount], [Sales_Desc]) VALUES (12, 13, CAST(N'2020-09-07' AS Date), 500, N'Insurance')
SET IDENTITY_INSERT [dbo].[tbl_Sales] OFF
ALTER TABLE [dbo].[tbl_Sales]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Sales_tbl_employee] FOREIGN KEY([EmpID])
REFERENCES [dbo].[tbl_employee] ([EmpID])
GO
ALTER TABLE [dbo].[tbl_Sales] CHECK CONSTRAINT [FK_tbl_Sales_tbl_employee]
GO
/****** Object:  StoredProcedure [dbo].[sp_allsales]    Script Date: 06-Sep-20 7:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
		Create proc [dbo].[sp_allsales]
as
begin
SELECT distinct(e1.EmpID),(e1.EFirstName + ' '+ e1.elastname) as 'EmployeeName', 
		SalesAmount,
        e2.EFirstName + ' '+ e2.elastname AS 'ManagerName'
FROM   tbl_employee e1
       JOIN tbl_employee e2
       ON e1.EManager = e2.EmpID
	   inner join tbl_Sales s
	   on e1.EmpID = s.EmpID
	   
		end

GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteEmployee]    Script Date: 06-Sep-20 7:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[sp_DeleteEmployee]
@ID int,
@Fname nvarchar(150),
@Lname nvarchar(150),
@Designation nvarchar(150),
@Manager int
as 
begin
 delete from tbl_employee  where EmpID=@ID
end

GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteSales]    Script Date: 06-Sep-20 7:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[sp_DeleteSales]
@ID int,
@EmpID int,
@DateTime date,
@Amount float,
@SalesDesc nvarchar(max)
as 
begin
 delete from tbl_Sales  where SID=@ID
end

GO
/****** Object:  StoredProcedure [dbo].[sp_insertEmployee]    Script Date: 06-Sep-20 7:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_insertEmployee]
@Fname nvarchar(150),
@Lname nvarchar(150),
@Designation nvarchar(150),
@Manager int
as 
begin
 Insert into tbl_employee (EFirstName,ELastName,Edesignation,EManager)
 values (@Fname,@Lname,@Designation,@Manager)
end

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertSales]    Script Date: 06-Sep-20 7:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_InsertSales]
@EmpID int,
@DateTime date,
@Amount float,
@SalesDesc nvarchar(max)
as 
begin
 insert into tbl_Sales (EmpID,SalesDate,SalesAmount,Sales_Desc)
 values (@EmpID,@DateTime,@Amount,@SalesDesc)
end

GO
/****** Object:  StoredProcedure [dbo].[sp_manager]    Script Date: 06-Sep-20 7:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create proc [dbo].[sp_manager]
		as
		begin
		SELECT e1.EManager,
     e2.EFirstName + ' '+ e2.ELastName as ManagerName
FROM tbl_employee e1,
     tbl_employee e2
WHERE e1.EManager = e2.EmpID
GROUP BY e1.EManager,e2.EFirstName,e2.ELastName
end

GO
/****** Object:  StoredProcedure [dbo].[sp_sales]    Script Date: 06-Sep-20 7:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_sales]
as
begin
SELECT distinct(e1.EmpID),(e1.EFirstName + ' '+ e1.elastname) as 'EmployeeName', 
		sum(s.SalesAmount) as 'TotalSales',
        e2.EFirstName + ' '+ e2.elastname AS 'ManagerName'
FROM   tbl_employee e1
       JOIN tbl_employee e2
       ON e1.EManager = e2.EmpID
	   inner join tbl_Sales s
	   on e1.EmpID = s.EmpID
	   group by e1.EmpID,e1.ELastName,e1.EFirstName,e2.EFirstName,e2.ELastName
	    order by TotalSales desc
		end

GO
/****** Object:  StoredProcedure [dbo].[sp_salesemp]    Script Date: 06-Sep-20 7:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_salesemp]
as
begin
Select EmpID,EFirstName+ ' ' +ELastName as 'Name'
from tbl_employee where Edesignation='sales'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateEmployee]    Script Date: 06-Sep-20 7:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateEmployee]
@ID int,
@Fname nvarchar(150),
@Lname nvarchar(150),
@Designation nvarchar(150),
@Manager int
as 
begin
 update tbl_employee set EFirstName=@Fname,ELastName=@Lname,Edesignation=@Designation,EManager=@Manager where EmpID=@ID
end

GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateSales]    Script Date: 06-Sep-20 7:28:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[sp_UpdateSales]
@ID int,
@EmpID int,
@DateTime date,
@Amount float,
@SalesDesc nvarchar(max)
as 
begin
 update tbl_Sales set EmpID=@EmpID,SalesDate=@DateTime,SalesAmount=@Amount,Sales_Desc=@SalesDesc where SID=@ID
end

GO
USE [master]
GO
ALTER DATABASE [DBSalesChart] SET  READ_WRITE 
GO
