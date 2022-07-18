USE [master]
GO
/****** Object:  Database [BrikenaVinca]    Script Date: 7/18/2022 9:25:27 PM ******/
CREATE DATABASE [BrikenaVinca]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BrikenaVinca', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BrikenaVinca.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BrikenaVinca_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BrikenaVinca_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BrikenaVinca] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BrikenaVinca].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BrikenaVinca] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BrikenaVinca] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BrikenaVinca] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BrikenaVinca] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BrikenaVinca] SET ARITHABORT OFF 
GO
ALTER DATABASE [BrikenaVinca] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BrikenaVinca] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BrikenaVinca] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BrikenaVinca] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BrikenaVinca] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BrikenaVinca] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BrikenaVinca] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BrikenaVinca] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BrikenaVinca] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BrikenaVinca] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BrikenaVinca] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BrikenaVinca] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BrikenaVinca] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BrikenaVinca] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BrikenaVinca] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BrikenaVinca] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BrikenaVinca] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BrikenaVinca] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BrikenaVinca] SET  MULTI_USER 
GO
ALTER DATABASE [BrikenaVinca] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BrikenaVinca] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BrikenaVinca] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BrikenaVinca] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BrikenaVinca] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BrikenaVinca] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BrikenaVinca] SET QUERY_STORE = OFF
GO
USE [BrikenaVinca]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/18/2022 9:25:27 PM ******/
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
/****** Object:  Table [dbo].[Project]    Script Date: 7/18/2022 9:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 7/18/2022 9:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[Id] [uniqueidentifier] NOT NULL,
	[ImagePath] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Desc] [nvarchar](max) NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220718184303_initial', N'3.1.25')
GO
INSERT [dbo].[Project] ([Id], [Title], [ImagePath]) VALUES (N'97f0863e-0add-442b-af08-849529e58498', N'dieci10 PIZZAE ALTRO', N'/assets/img/pizzaaa.png')
GO
INSERT [dbo].[Skills] ([Id], [ImagePath], [Title], [Desc]) VALUES (N'ed6601f7-686d-47e3-92de-d7cae9669d17', N'/assets/img/python.jpg', N'Python', N'Besides c++ and php, python is my programming language that I know and prefer the most.                                 It is a language that I learned out of curiosity and great desire.')
INSERT [dbo].[Skills] ([Id], [ImagePath], [Title], [Desc]) VALUES (N'd6a4a855-f17e-4f98-abfd-ec9039528258', N'/assets/img/html.png', N'HTML/CSS/JS', N'As a web developer, the three main languages we use to build websites are HTML, CSS, and JavaScript.<br>                                     My experience with theese languages starts from 2017.')
INSERT [dbo].[Skills] ([Id], [ImagePath], [Title], [Desc]) VALUES (N'd0315ab7-b3ca-4742-856d-f66e449dcac6', N'/assets/img/1.jpg', N'Design', N'designing and experimenting with photos is my greatest desire,                                 this is also the reason why adobe photoshop is in the top three of my best skills')
GO
USE [master]
GO
ALTER DATABASE [BrikenaVinca] SET  READ_WRITE 
GO
