USE [master]
GO
/****** Object:  Database [MovieWebsiteDB]    Script Date: 30/1/2023 9:35:29 PM ******/
CREATE DATABASE [MovieWebsiteDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MovieWebsiteDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQL\MSSQL\DATA\MovieWebsiteDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MovieWebsiteDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQL\MSSQL\DATA\MovieWebsiteDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MovieWebsiteDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MovieWebsiteDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MovieWebsiteDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MovieWebsiteDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MovieWebsiteDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MovieWebsiteDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MovieWebsiteDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MovieWebsiteDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET RECOVERY FULL 
GO
ALTER DATABASE [MovieWebsiteDB] SET  MULTI_USER 
GO
ALTER DATABASE [MovieWebsiteDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MovieWebsiteDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MovieWebsiteDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MovieWebsiteDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MovieWebsiteDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MovieWebsiteDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MovieWebsiteDB', N'ON'
GO
ALTER DATABASE [MovieWebsiteDB] SET QUERY_STORE = OFF
GO
USE [MovieWebsiteDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 30/1/2023 9:35:30 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 30/1/2023 9:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 30/1/2023 9:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 30/1/2023 9:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 30/1/2023 9:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 30/1/2023 9:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 30/1/2023 9:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 30/1/2023 9:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 30/1/2023 9:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[PosterId] [int] NULL,
	[Genre] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Rating] [int] NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 30/1/2023 9:35:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[RatingId] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[RatingValue] [int] NOT NULL,
 CONSTRAINT [PK_Ratings] PRIMARY KEY CLUSTERED 
(
	[RatingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230128162119_InitialCreate', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230128233152_InitialMigrate', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230128234203_UpdateMigrate', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230129004810_UpdateMigrate2', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230130074857_UserManagement', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230130101959_AddRatings', N'6.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230130102051_AddRatings', N'6.0.13')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e2d7ae90-ecab-453c-93f7-d87ac9f0735a', N'Admin', N'ADMIN', N'2de46031-5fe0-4f51-be0d-68fbf3b27e47')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e4323fa0-fd48-42be-a569-15ba48f3f2fb', N'User', N'USER', N'8ed77de8-8405-4356-bc70-c7f1e9eafd29')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'008bc97e-a2c4-4ae1-8586-229eca9014d9', N'e2d7ae90-ecab-453c-93f7-d87ac9f0735a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'008bc97e-a2c4-4ae1-8586-229eca9014d9', N'e4323fa0-fd48-42be-a569-15ba48f3f2fb')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'008bc97e-a2c4-4ae1-8586-229eca9014d9', N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAWQK2jOsHMhMlLZMiCqtjd11b3VNlH/HZFtuzVPBaP/uOeJ054lTf3mmUXaPBE2wg==', N'WL7A2MQPQZF6IA7RDGJHCM4AG6K62HQI', N'd0657978-e375-4dc1-ab2e-e4030ec121d4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0c722fdd-93ac-498c-b0ac-d28ad545817f', N'User', N'USER', N'user@gmail.com', N'USER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEL58HIbIJoatUKicmAUYzfN9lgpSHriaSqUtXVzBud2AK4ZrxU489s3PIpklWc3SvA==', N'32EWNZUO4GPDSWX7ZY6IQS7OVD3K6UW4', N'e995c4d8-cafd-46e7-b3c2-f34b4a485e95', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'89d96125-fbd8-40c7-b5b9-0bc684f47003', N'syahmi', N'SYAHMI', N'syahmiradz@gmail.com', N'SYAHMIRADZ@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJ2CyGbDV7WTHRSFuF2Y9lIANkax8JysrAkGynVVfwa/JLm/VOcv+q5D1vp38eSKnQ==', N'RKYWUYBKR3TWG36MBO35K5IQKNBX2VXZ', N'a5f73ee7-b6a8-4eb9-be0e-81605eb75eb2', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([MovieId], [Title], [PosterId], [Genre], [Description], [Rating]) VALUES (1, N'Godfather', 1, N'Crime ', N'The aging patriarch of an organized crime dynasty in postwar New York City transfers control of his clandestine empire to his reluctant youngest son.', 0)
INSERT [dbo].[Movies] ([MovieId], [Title], [PosterId], [Genre], [Description], [Rating]) VALUES (2, N'Highlander', 2, N'Action Adventure', N'An immortal Scottish swordsman must confront the last of his immortal opponent, a murderously brutal barbarian who lusts for the fabled "Prize".', 0)
INSERT [dbo].[Movies] ([MovieId], [Title], [PosterId], [Genre], [Description], [Rating]) VALUES (3, N'Highlander 2', 3, N'Action Adventure', N'In the future, Highlander Connor MacLeod must prevent the destruction of Earth under an anti-ozone shield.', 0)
INSERT [dbo].[Movies] ([MovieId], [Title], [PosterId], [Genre], [Description], [Rating]) VALUES (4, N'Last of the Mohicans', 4, N'Action Adventure', N'Three trappers protect the daughters of a British Colonel in the midst of the French and Indian War.', 0)
INSERT [dbo].[Movies] ([MovieId], [Title], [PosterId], [Genre], [Description], [Rating]) VALUES (5, N'Police Academy 6', 5, N'Comedy', N'Those bumbling cadets take to the streets when three inept goons successfully orchestrate a metropolitan crime wave.
', 0)
INSERT [dbo].[Movies] ([MovieId], [Title], [PosterId], [Genre], [Description], [Rating]) VALUES (6, N'Rear Window', 6, N'Mystery Thriller', N'A wheelchair-bound photographer spies on his neighbors from his Greenwich Village courtyard apartment window, and becomes convinced one of them has committed murder, despite the skepticism of his fashion-model girlfriend.', 0)
INSERT [dbo].[Movies] ([MovieId], [Title], [PosterId], [Genre], [Description], [Rating]) VALUES (7, N'Road House', 7, N'Action Thriller', N'A tough bouncer is hired to tame a dirty bar.', 0)
INSERT [dbo].[Movies] ([MovieId], [Title], [PosterId], [Genre], [Description], [Rating]) VALUES (8, N'Shawshank Redemption', 8, N'Drama', N'Over the course of several years, two convicts form a friendship, seeking consolation and, eventually, redemption through basic compassion.', 0)
INSERT [dbo].[Movies] ([MovieId], [Title], [PosterId], [Genre], [Description], [Rating]) VALUES (9, N'Star Trek IV: The Voyage Home', 9, N'Sci-fi Action Adventure', N'To save Earth from an alien probe, Admiral James T. Kirk and his fugitive crew go back in time to San Francisco in 1986 to retrieve the only beings who can communicate with it: humpback whales.', 0)
INSERT [dbo].[Movies] ([MovieId], [Title], [PosterId], [Genre], [Description], [Rating]) VALUES (10, N'Superman IV: The Quest for Peace', 10, N'Sci-fi Action Adventure', N'The Man of Steel crusades for nuclear disarmament and meets Lex Luthor''s latest creation, Nuclear Man.', 0)
INSERT [dbo].[Movies] ([MovieId], [Title], [PosterId], [Genre], [Description], [Rating]) VALUES (11, N'Test Movie', 0, N'Comedy', N'Funny movie edit', 0)
INSERT [dbo].[Movies] ([MovieId], [Title], [PosterId], [Genre], [Description], [Rating]) VALUES (13, N'New Movie', 0, N'Drama', N'A dramatic movie', 0)
INSERT [dbo].[Movies] ([MovieId], [Title], [PosterId], [Genre], [Description], [Rating]) VALUES (14, N'Avengers', 0, N'Superhero', N'Superhero Movie', 0)
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[Ratings] ON 

INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (1, 1, N'e2d7ae90-ecab-453c-93f7-d87ac9f0735a', 0)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (2, 2, N'e2d7ae90-ecab-453c-93f7-d87ac9f0735a', 3)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (3, 3, N'e2d7ae90-ecab-453c-93f7-d87ac9f0735a', 5)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (4, 4, N'e2d7ae90-ecab-453c-93f7-d87ac9f0735a', 1)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (5, 5, N'e2d7ae90-ecab-453c-93f7-d87ac9f0735a', 3)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (6, 6, N'e2d7ae90-ecab-453c-93f7-d87ac9f0735a', 4)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (7, 7, N'e2d7ae90-ecab-453c-93f7-d87ac9f0735a', 5)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (8, 8, N'e2d7ae90-ecab-453c-93f7-d87ac9f0735a', 4)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (9, 9, N'e2d7ae90-ecab-453c-93f7-d87ac9f0735a', 2)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (10, 10, N'e2d7ae90-ecab-453c-93f7-d87ac9f0735a', 4)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (11, 10, N'0c722fdd-93ac-498c-b0ac-d28ad545817f', 5)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (12, 9, N'0c722fdd-93ac-498c-b0ac-d28ad545817f', 3)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (13, 8, N'0c722fdd-93ac-498c-b0ac-d28ad545817f', 2)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (14, 7, N'0c722fdd-93ac-498c-b0ac-d28ad545817f', 3)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (15, 6, N'0c722fdd-93ac-498c-b0ac-d28ad545817f', 4)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (16, 5, N'0c722fdd-93ac-498c-b0ac-d28ad545817f', 5)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (17, 4, N'0c722fdd-93ac-498c-b0ac-d28ad545817f', 1)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (18, 3, N'0c722fdd-93ac-498c-b0ac-d28ad545817f', 3)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (19, 2, N'0c722fdd-93ac-498c-b0ac-d28ad545817f', 4)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (20, 1, N'0c722fdd-93ac-498c-b0ac-d28ad545817f', 5)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (21, 1, N'89d96125-fbd8-40c7-b5b9-0bc684f47003', 5)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (22, 2, N'89d96125-fbd8-40c7-b5b9-0bc684f47003', 3)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (23, 3, N'89d96125-fbd8-40c7-b5b9-0bc684f47003', 5)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (24, 4, N'89d96125-fbd8-40c7-b5b9-0bc684f47003', 1)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (25, 5, N'89d96125-fbd8-40c7-b5b9-0bc684f47003', 2)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (26, 6, N'89d96125-fbd8-40c7-b5b9-0bc684f47003', 3)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (27, 7, N'89d96125-fbd8-40c7-b5b9-0bc684f47003', 5)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (28, 8, N'89d96125-fbd8-40c7-b5b9-0bc684f47003', 4)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (29, 9, N'89d96125-fbd8-40c7-b5b9-0bc684f47003', 4)
INSERT [dbo].[Ratings] ([RatingId], [MovieId], [UserId], [RatingValue]) VALUES (30, 10, N'89d96125-fbd8-40c7-b5b9-0bc684f47003', 5)
SET IDENTITY_INSERT [dbo].[Ratings] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 30/1/2023 9:35:30 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 30/1/2023 9:35:30 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 30/1/2023 9:35:30 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 30/1/2023 9:35:30 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 30/1/2023 9:35:30 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 30/1/2023 9:35:30 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 30/1/2023 9:35:30 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [MovieWebsiteDB] SET  READ_WRITE 
GO
