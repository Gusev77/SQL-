USE [master]
GO
/****** Object:  Database [Autobuspark]    Script Date: 29.04.2020 19:00:41 ******/
CREATE DATABASE [Autobuspark]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Autobuspark', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.HP\MSSQL\DATA\Autobuspark.mdf' , SIZE = 10240KB , MAXSIZE = 102400KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Autobuspark_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.HP\MSSQL\DATA\Autobuspark_log.ldf' , SIZE = 8192KB , MAXSIZE = 102400KB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Autobuspark] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Autobuspark].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Autobuspark] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Autobuspark] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Autobuspark] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Autobuspark] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Autobuspark] SET ARITHABORT OFF 
GO
ALTER DATABASE [Autobuspark] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Autobuspark] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Autobuspark] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Autobuspark] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Autobuspark] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Autobuspark] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Autobuspark] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Autobuspark] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Autobuspark] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Autobuspark] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Autobuspark] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Autobuspark] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Autobuspark] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Autobuspark] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Autobuspark] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Autobuspark] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Autobuspark] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Autobuspark] SET RECOVERY FULL 
GO
ALTER DATABASE [Autobuspark] SET  MULTI_USER 
GO
ALTER DATABASE [Autobuspark] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Autobuspark] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Autobuspark] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Autobuspark] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Autobuspark] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Autobuspark', N'ON'
GO
ALTER DATABASE [Autobuspark] SET QUERY_STORE = OFF
GO
USE [Autobuspark]
GO
/****** Object:  Table [dbo].[OWNER]    Script Date: 29.04.2020 19:00:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OWNER](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nchar](10) NOT NULL,
	[Services] [nchar](100) NOT NULL,
 CONSTRAINT [UserID] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_bus]    Script Date: 29.04.2020 19:00:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_bus](
	[ID Autobus] [int] NOT NULL,
	[Kolvo bus] [int] NOT NULL,
	[Mest in bus] [int] NOT NULL,
	[Adress park] [char](10) NOT NULL,
 CONSTRAINT [PK_Table_bus] PRIMARY KEY CLUSTERED 
(
	[ID Autobus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Passengers]    Script Date: 29.04.2020 19:00:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Passengers](
	[UserID] [int] NOT NULL,
	[FIO passagers] [nchar](100) NOT NULL,
	[IDVoditely] [int] NOT NULL,
	[FIO Voditely] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Table_Passengers] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Remont]    Script Date: 29.04.2020 19:00:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Remont](
	[IDRemont] [int] NOT NULL,
	[FIO Masters] [nchar](100) NOT NULL,
	[Time remont] [time](7) NOT NULL,
	[Cost] [money] NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Table_Remont] PRIMARY KEY CLUSTERED 
(
	[IDRemont] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Stop]    Script Date: 29.04.2020 19:00:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Stop](
	[ID_Stop] [int] NOT NULL,
	[Type Stop] [nchar](10) NOT NULL,
	[IDWay] [int] NOT NULL,
	[Ticket office] [nchar](4) NOT NULL,
 CONSTRAINT [PK_Table_Stop] PRIMARY KEY CLUSTERED 
(
	[ID_Stop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Voditely]    Script Date: 29.04.2020 19:00:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Voditely](
	[UserID] [int] NOT NULL,
	[FIO] [nchar](100) NOT NULL,
	[Oklad] [int] NOT NULL,
	[Stag] [int] NOT NULL,
	[Adress] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Table_Voditely] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table_Way]    Script Date: 29.04.2020 19:00:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_Way](
	[IDWay] [int] NOT NULL,
	[Nubmer] [int] NOT NULL,
	[Time] [time](7) NOT NULL,
	[ID bus] [int] NOT NULL,
 CONSTRAINT [PK_Table_Way] PRIMARY KEY CLUSTERED 
(
	[IDWay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table_Passengers]  WITH CHECK ADD  CONSTRAINT [FK_Table_Passengers_Table_Voditely] FOREIGN KEY([IDVoditely])
REFERENCES [dbo].[Table_Voditely] ([UserID])
GO
ALTER TABLE [dbo].[Table_Passengers] CHECK CONSTRAINT [FK_Table_Passengers_Table_Voditely]
GO
ALTER TABLE [dbo].[Table_Remont]  WITH CHECK ADD  CONSTRAINT [FK_Table_Remont_Table_bus] FOREIGN KEY([IDRemont])
REFERENCES [dbo].[Table_bus] ([ID Autobus])
GO
ALTER TABLE [dbo].[Table_Remont] CHECK CONSTRAINT [FK_Table_Remont_Table_bus]
GO
ALTER TABLE [dbo].[Table_Stop]  WITH CHECK ADD  CONSTRAINT [FK_Table_Stop_Table_Way] FOREIGN KEY([IDWay])
REFERENCES [dbo].[Table_Way] ([IDWay])
GO
ALTER TABLE [dbo].[Table_Stop] CHECK CONSTRAINT [FK_Table_Stop_Table_Way]
GO
ALTER TABLE [dbo].[Table_Voditely]  WITH CHECK ADD  CONSTRAINT [FK_Table_Voditely_Table_bus] FOREIGN KEY([UserID])
REFERENCES [dbo].[Table_bus] ([ID Autobus])
GO
ALTER TABLE [dbo].[Table_Voditely] CHECK CONSTRAINT [FK_Table_Voditely_Table_bus]
GO
ALTER TABLE [dbo].[Table_Way]  WITH CHECK ADD  CONSTRAINT [FK_Table_Way_Table_bus] FOREIGN KEY([Nubmer])
REFERENCES [dbo].[Table_bus] ([ID Autobus])
GO
ALTER TABLE [dbo].[Table_Way] CHECK CONSTRAINT [FK_Table_Way_Table_bus]
GO
USE [master]
GO
ALTER DATABASE [Autobuspark] SET  READ_WRITE 
GO
