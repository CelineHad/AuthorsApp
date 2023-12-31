USE [master]
GO
/****** Object:  Database [AuthorsDB]    Script Date: 11/16/2023 12:08:37 AM ******/
CREATE DATABASE [AuthorsDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AuthorsDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AuthorsDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AuthorsDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\AuthorsDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AuthorsDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AuthorsDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AuthorsDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AuthorsDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AuthorsDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AuthorsDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AuthorsDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AuthorsDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AuthorsDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AuthorsDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AuthorsDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AuthorsDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AuthorsDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AuthorsDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AuthorsDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AuthorsDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AuthorsDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AuthorsDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AuthorsDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AuthorsDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AuthorsDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AuthorsDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AuthorsDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AuthorsDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AuthorsDB] SET RECOVERY FULL 
GO
ALTER DATABASE [AuthorsDB] SET  MULTI_USER 
GO
ALTER DATABASE [AuthorsDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AuthorsDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AuthorsDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AuthorsDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AuthorsDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AuthorsDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AuthorsDB', N'ON'
GO
ALTER DATABASE [AuthorsDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [AuthorsDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AuthorsDB]
GO
/****** Object:  Table [dbo].[author]    Script Date: 11/16/2023 12:08:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[author](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[birthdate] [date] NULL,
	[ArticlesNum] [int] NULL,
	[FieldOfStudy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[author] ON 

INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (1, N'jasd Dojnasdn', N'joasd.asca@example.com', CAST(N'1990-01-01' AS Date), 5, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (2, N'celine  haddad', N'celine.haddad@example.com', CAST(N'1985-07-20' AS Date), 8, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (3, N'lareen haddad', N'lareen.haddad@example.com', CAST(N'1992-03-10' AS Date), 12, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (4, N'rami hanna', N'ramik.hanna@example.com', CAST(N'1989-12-05' AS Date), 7, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (5, N'Zack Taylor', N'zack.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (6, N'gfds Doe', N'sdvsdvd.doe@example.com', CAST(N'1990-01-01' AS Date), 6, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (7, N'sdfsdf Johnson', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (8, N'Bsdfsob Smith', N'sdfvsdv.smith@example.com', CAST(N'1992-03-10' AS Date), 122, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (9, N'Esdfva Brown', N'dfvsdf.brown@example.com', CAST(N'1989-12-05' AS Date), 34, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (10, N'sdfs Taylor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (11, N'gfds swdrfvwsed', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 234, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (12, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (13, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (14, N'Esdfva sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 322, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (15, N'sdfs Taysdcsslor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (16, N'gfds erfte', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 24, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (17, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (18, N'erfer fvdf', N'sdfvsdv.erge@example.com', CAST(N'1992-03-10' AS Date), 122, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (19, N'Esdfva sdfvsdcf', N'dfvsdf.erger@example.com', CAST(N'1989-12-05' AS Date), 322, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (20, N'sdfs Taysdcsslor', N'svsfv.eref@example.com', CAST(N'1987-09-18' AS Date), 6, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (21, N'gfds swdrfvwsed', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 234, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (22, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (23, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (24, N'Esdfva sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 322, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (25, N'sdfs esrfrrtfr', N'svsfv.erger@example.com', CAST(N'1987-09-18' AS Date), 6, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (26, N'ere Taysdcsslor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 55, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (27, N'gfds erf', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 244, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (28, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (29, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (30, N'eer sdfvsdcf', N'dfvsdf.sdf@example.com', CAST(N'1989-12-05' AS Date), 33, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (31, N'sdfs Taysdcsslor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (32, N'sdfs Taysdcsslor', N'sddd.taylor@example.com', CAST(N'1987-09-18' AS Date), 33, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (33, N'werrd Taysdcsslor', N'sssf.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (34, N'gfds swdrfvwsed', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 234, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (35, N'sdfsdf erfertf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (36, N'Bsdfsob fvdf', N'sss.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (37, N'erfef sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 322, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (38, N'sdfs Taysdcsslor', N'sdcsd.sdvdfvd@example.com', CAST(N'1987-09-18' AS Date), 23, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (39, N'gfds erfte', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 24, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (40, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (41, N'erfer fvdf', N'sdfvsdv.erge@example.com', CAST(N'1992-03-10' AS Date), 122, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (42, N'Esdfva sdfvsdcf', N'dfvsdf.erger@example.com', CAST(N'1989-12-05' AS Date), 322, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (43, N'sdfs Taysdcsslor', N'svsfv.eref@example.com', CAST(N'1987-09-18' AS Date), 6, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (44, N'gfds swdrfvwsed', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 234, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (45, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (46, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (47, N'Esdfva sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 322, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (48, N'sdfs esrfrrtfr', N'svsfv.erger@example.com', CAST(N'1987-09-18' AS Date), 6, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (49, N'ere Taysdcsslor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 55, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (50, N'gfds erf', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 244, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (51, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (52, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (53, N'eer sdfvsdcf', N'dfvsdf.sdf@example.com', CAST(N'1989-12-05' AS Date), 33, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (54, N'sdfs Taysdcsslor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (55, N'sdfs Taysdcsslor', N'sddd.taylor@example.com', CAST(N'1987-09-18' AS Date), 33, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (56, N'werrd Taysdcsslor', N'sssf.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (57, N'gfds swdrfvwsed', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 234, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (58, N'sdfsdf erfertf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (59, N'Bsdfsob fvdf', N'sss.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (60, N'erfef sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 322, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (61, N'sdfs Taysdcsslor', N'sdcsd.sdvdfvd@example.com', CAST(N'1987-09-18' AS Date), 23, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (62, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (63, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (64, N'Esdfva sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 322, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (65, N'sdfs esrfrrtfr', N'svsfv.erger@example.com', CAST(N'1987-09-18' AS Date), 6, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (66, N'ere Taysdcsslor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 55, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (67, N'gfds erf', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 244, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (68, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (69, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (70, N'eer sdfvsdcf', N'dfvsdf.sdf@example.com', CAST(N'1989-12-05' AS Date), 33, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (71, N'sdfs Taysdcsslor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (72, N'sdfs Taysdcsslor', N'sddd.taylor@example.com', CAST(N'1987-09-18' AS Date), 33, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (73, N'werrd Taysdcsslor', N'sssf.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (74, N'gfds swdrfvwsed', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 234, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (75, N'sdfsdf erfertf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (76, N'Bsdfsob fvdf', N'sss.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (77, N'erfef sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 322, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (78, N'sdfs Taysdcsslor', N'sdcsd.sdvdfvd@example.com', CAST(N'1987-09-18' AS Date), 23, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (79, N'gfds erfte', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 24, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (80, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (81, N'erfer fvdf', N'sdfvsdv.erge@example.com', CAST(N'1992-03-10' AS Date), 122, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (82, N'Esdfva sdfvsdcf', N'dfvsdf.erger@example.com', CAST(N'1989-12-05' AS Date), 322, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (83, N'sdfs Taysdcsslor', N'svsfv.eref@example.com', CAST(N'1987-09-18' AS Date), 6, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (84, N'gfds swdrfvwsed', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 234, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (85, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (86, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (87, N'Esdfva sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 322, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (88, N'sdfs esrfrrtfr', N'svsfv.erger@example.com', CAST(N'1987-09-18' AS Date), 6, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (89, N'ere Taysdcsslor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 55, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (90, N'gfds erf', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 244, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (91, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (92, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (93, N'eer sdfvsdcf', N'dfvsdf.sdf@example.com', CAST(N'1989-12-05' AS Date), 33, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (94, N'sdfs Taysdcsslor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (95, N'sdfs Taysdcsslor', N'sddd.taylor@example.com', CAST(N'1987-09-18' AS Date), 33, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (96, N'werrd Taysdcsslor', N'sssf.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (97, N'gfds swdrfvwsed', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 234, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (98, N'sdfsdf erfertf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (99, N'Bsdfsob fvdf', N'sss.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 2)
GO
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (100, N'erfef sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 322, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (101, N'sdfs Taysdcsslor', N'sdcsd.sdvdfvd@example.com', CAST(N'1987-09-18' AS Date), 23, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (102, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (103, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (104, N'Esdfva sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 322, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (105, N'sdfs esrfrrtfr', N'svsfv.erger@example.com', CAST(N'1987-09-18' AS Date), 6, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (106, N'ere Taysdcsslor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 55, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (107, N'gfds erf', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 244, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (108, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (109, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (110, N'eer sdfvsdcf', N'dfvsdf.sdf@example.com', CAST(N'1989-12-05' AS Date), 33, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (111, N'sdfs Taysdcsslor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (112, N'sdfs Taysdcsslor', N'sddd.taylor@example.com', CAST(N'1987-09-18' AS Date), 33, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (113, N'werrd Taysdcsslor', N'sssf.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (114, N'gfds swdrfvwsed', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 234, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (115, N'sdfsdf erfertf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (116, N'Bsdfsob fvdf', N'sss.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (117, N'erfef sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 322, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (118, N'sdfs Taysdcsslor', N'sdcsd.sdvdfvd@example.com', CAST(N'1987-09-18' AS Date), 23, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (119, N'gfds erfte', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 24, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (120, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (121, N'erfer fvdf', N'sdfvsdv.erge@example.com', CAST(N'1992-03-10' AS Date), 122, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (122, N'Esdfva sdfvsdcf', N'dfvsdf.erger@example.com', CAST(N'1989-12-05' AS Date), 322, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (123, N'sdfs Taysdcsslor', N'svsfv.eref@example.com', CAST(N'1987-09-18' AS Date), 6, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (124, N'gfds swdrfvwsed', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 234, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (125, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (126, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (127, N'Esdfva sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 322, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (128, N'sdfs esrfrrtfr', N'svsfv.erger@example.com', CAST(N'1987-09-18' AS Date), 6, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (129, N'ere Taysdcsslor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 55, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (130, N'gfds erf', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 244, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (131, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (132, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (133, N'eer sdfvsdcf', N'dfvsdf.sdf@example.com', CAST(N'1989-12-05' AS Date), 33, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (134, N'sdfs Taysdcsslor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (135, N'sdfs Taysdcsslor', N'sddd.taylor@example.com', CAST(N'1987-09-18' AS Date), 33, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (136, N'werrd Taysdcsslor', N'sssf.taylor@example.com', CAST(N'1987-09-18' AS Date), 6, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (137, N'gfds swdrfvwsed', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 234, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (138, N'sdfsdf erfertf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (139, N'Bsdfsob fvdf', N'sss.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (140, N'erfef sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 322, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (141, N'sdfs Taysdcsslor', N'sdcsd.sdvdfvd@example.com', CAST(N'1987-09-18' AS Date), 23, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (142, N'sdfsdf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (143, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (144, N'Esdfva sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 322, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (145, N'gfds ersedcffte', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 24, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (146, N'sdfsdgggf swedfwaedf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 55, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (147, N'erfer fvddssf', N'sdfvsdv.erge@example.com', CAST(N'1992-03-10' AS Date), 122, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (148, N'Esdfva sv', N'dfvsdf.erger@example.com', CAST(N'1989-12-05' AS Date), 322, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (149, N'sdfs Taysdcsslor', N'svsfv.eref@example.com', CAST(N'1987-09-18' AS Date), 6, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (150, N'ssd swdrfvwsed', N'dfv.ssss@example.com', CAST(N'1990-01-01' AS Date), 234, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (151, N'sdfsdf sdvs', N'dfvffv.j@example.com', CAST(N'1985-07-20' AS Date), 55, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (152, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (153, N'vvdrf sdfvsdcf', N'dfvsdf.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 362, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (154, N'sdfs ssdv', N'svsfv.dfvd@example.com', CAST(N'1987-09-18' AS Date), 16, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (155, N'ere Taysdcsslor', N'svsfv.taylor@example.com', CAST(N'1987-09-18' AS Date), 55, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (156, N'gfds erf', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 23434, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (157, N'sdfsdf swedfwaedf', N'fvf.j@example.com', CAST(N'1985-07-20' AS Date), 55, 1)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (158, N'Bsdfsob fvdf', N'sdfvsdv.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (159, N'eer sdfvsdcf', N'dfvsdf.sdf@example.com', CAST(N'1989-12-05' AS Date), 33, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (160, N'fsf Taysdcsslor', N'svsfv.rfrve@example.com', CAST(N'1987-09-18' AS Date), 534, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (161, N'sdfs Taysdcsslor', N'sddd.taylor@example.com', CAST(N'1987-09-18' AS Date), 33, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (162, N'werrd vvsdvs', N'sssf.eeeee@example.com', CAST(N'1987-09-18' AS Date), 6, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (163, N'gfds swdrfvwsed', N'sdvsdvd.aasdcasds@example.com', CAST(N'1990-01-01' AS Date), 234, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (164, N'sdfsdf erfertf', N'sdvdcvsd.j@example.com', CAST(N'1985-07-20' AS Date), 5, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (165, N'Bsdfsob fvdf', N'sss.sdvsasdcfdc@example.com', CAST(N'1992-03-10' AS Date), 122, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (166, N'erfef sdfvsdcf', N'dfvsdf.ssgvd@example.com', CAST(N'1989-12-05' AS Date), 32, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (167, N'sdfs Taysdcsslor', N'sdcsd.sdvdfvd@example.com', CAST(N'1987-09-18' AS Date), 23, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (168, N'sdfsdf swedfwaedf', N'dfddf.j@example.com', CAST(N'1985-07-20' AS Date), 55, 2)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (169, N'Bsdfsob fvdf', N'sdfvsdv.dfdff@example.com', CAST(N'1992-03-10' AS Date), 122, 4)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (170, N'Esdfva sdfvsdcf', N'dfvfv.scdcdc@example.com', CAST(N'1989-12-05' AS Date), 22, 3)
INSERT [dbo].[author] ([id], [name], [email], [birthdate], [ArticlesNum], [FieldOfStudy]) VALUES (171, N'wderferfe', N'sdkns@gmail.com', CAST(N'1992-03-10' AS Date), 45, 4)
SET IDENTITY_INSERT [dbo].[author] OFF
GO
USE [master]
GO
ALTER DATABASE [AuthorsDB] SET  READ_WRITE 
GO
