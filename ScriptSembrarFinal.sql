USE [master]
GO
/****** Object:  Database [Sembrar2]    Script Date: 22/02/2018 8:51:47 ******/
CREATE DATABASE [Sembrar2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sembrar2', FILENAME = N'C:\Data\Sembrar2\Sembrar2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sembrar2_log', FILENAME = N'C:\Data\Sembrar2\Sembrar2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
USE Sembrar2
set dateformat YMD

ALTER DATABASE [Sembrar2] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sembrar2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sembrar2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sembrar2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sembrar2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sembrar2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sembrar2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sembrar2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sembrar2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sembrar2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sembrar2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sembrar2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sembrar2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sembrar2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sembrar2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sembrar2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sembrar2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sembrar2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sembrar2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sembrar2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sembrar2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sembrar2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sembrar2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sembrar2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sembrar2] SET RECOVERY FULL 
GO
ALTER DATABASE [Sembrar2] SET  MULTI_USER 
GO
ALTER DATABASE [Sembrar2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sembrar2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sembrar2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sembrar2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sembrar2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Sembrar2', N'ON'
GO
USE [Sembrar2]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Profile_ReportingAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Profile_BasicAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_ReportingAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_BasicAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 22/02/2018 8:51:47 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Table [dbo].[ADULTO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADULTO](
	[IDPERSONA] [int] NOT NULL,
	[IDADULTO] [int] IDENTITY(1,1) NOT NULL,
	[ESTUDIAADULTO] [bit] NOT NULL,
	[DONDEESTUDIAADULTO] [varchar](150) NULL,
	[NIVELEDUCACIONADULTO] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AREA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AREA](
	[IDAREA] [int] IDENTITY(1,1) NOT NULL,
	[NOMBREAREA] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAREA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ASISTENCIA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASISTENCIA](
	[IDASISTENCIA] [int] IDENTITY(1,1) NOT NULL,
	[IDLINEADEACCION] [int] NOT NULL,
	[IDORIENTADOR] [int] NOT NULL,
	[IDPROCESO] [int] NOT NULL,
	[IDPERIODO] [int] NOT NULL,
	[IDPERSONA] [int] NOT NULL,
	[IDTIPOASISTENCIA] [int] NOT NULL,
	[FECHAASISTENCIA] [date] NOT NULL,
 CONSTRAINT [PK_ASISTENCIA] PRIMARY KEY CLUSTERED 
(
	[IDASISTENCIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASISTENCIAREUNION]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASISTENCIAREUNION](
	[IDASISTENCIAREUNION] [bigint] IDENTITY(1,1) NOT NULL,
	[IDREUNION] [int] NOT NULL,
	[IDTIPOASISTENCIA] [int] NOT NULL,
	[IDPERSONA] [int] NOT NULL,
 CONSTRAINT [PK_ASISTENCIAREUNION] PRIMARY KEY CLUSTERED 
(
	[IDASISTENCIAREUNION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL DEFAULT ((0)),
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL DEFAULT (NULL),
	[IsAnonymous] [bit] NOT NULL DEFAULT ((0)),
	[LastActivityDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CATEGORIATIPOFAMILIA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEGORIATIPOFAMILIA](
	[IDCATEGORIATIPOFAMILIA] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRECATEGORIATIPOFAMILIA] [varchar](100) NOT NULL,
	[IDAREA] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCATEGORIATIPOFAMILIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CERTIFICADOMEDICO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CERTIFICADOMEDICO](
	[IDCERTIFICADOMEDICO] [int] NOT NULL,
	[IDPERSONA] [int] NULL,
	[IDMENOREDAD] [int] NULL,
	[IDENFEREMEDAD] [int] NULL,
	[SANOCERTIFICADOMEDICO] [bit] NOT NULL,
	[ENFERMOCERTIFICADOMEDICO] [bit] NOT NULL,
	[OBSERVACIONCERTIFICADOMEDICO] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUESTIONARIO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUESTIONARIO](
	[IDPROCESO] [int] NOT NULL,
	[IDOBJETIVO] [int] NOT NULL,
	[IDINDICADOR] [int] NOT NULL,
	[IDPREGUNTA] [int] NOT NULL,
	[ESTADOPREGUNTACUESTIONARIO] [bit] NOT NULL,
	[OBSERVACIONESCUESTIONARIO] [varchar](500) NULL,
 CONSTRAINT [PK_CUESTIONARIO] PRIMARY KEY CLUSTERED 
(
	[IDPROCESO] ASC,
	[IDOBJETIVO] ASC,
	[IDINDICADOR] ASC,
	[IDPREGUNTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ENFERMEDAD]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ENFERMEDAD](
	[IDENFEREMEDAD] [int] NOT NULL,
	[NOMBRENEFERMEDAD] [varchar](100) NOT NULL,
	[ESTADOENFEREMEDAD] [int] NOT NULL,
	[FECHAENFERMEDAD] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FAMILIA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FAMILIA](
	[IDFAMILIA] [int] IDENTITY(1,1) NOT NULL,
	[IDTIPOFAMILIA] [int] NULL,
	[NOMBREFAMILIA] [varchar](50) NULL,
	[MIEMBROSFAMILIA] [int] NULL,
	[OBSERVACIONFAMILIA] [varchar](300) NULL,
	[ANIOINGRESOFAMILIA] [datetime] NULL,
	[DIRECCIONFAMILIA] [varchar](300) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INDICADOR]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INDICADOR](
	[IDINDICADOR] [int] IDENTITY(10,1) NOT NULL,
	[NOMBREINDICADOR] [varchar](150) NOT NULL,
	[ESTADO] [bit] NOT NULL CONSTRAINT [DF_INDICADOR_ESTADO]  DEFAULT ((1))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JOVEN]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JOVEN](
	[IDPERSONA] [int] NOT NULL,
	[IDMENOREDAD] [int] NOT NULL,
	[IDJOVEN] [char](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LINEADEACCION]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LINEADEACCION](
	[IDLINEADEACCION] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRELINEADEACCION] [varchar](50) NOT NULL,
	[DESCRIPCIONLINEADEACCION] [varchar](200) NULL,
	[IDTIPOPERSONA] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDLINEADEACCION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MATRICULA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATRICULA](
	[IDMATRICULA] [int] IDENTITY(1,1) NOT NULL,
	[IDLINEADEACCION] [int] NOT NULL,
	[IDORIENTADOR] [int] NOT NULL,
	[IDPROCESO] [int] NOT NULL,
	[IDPERIODO] [int] NOT NULL,
	[IDPERSONA] [int] NOT NULL,
 CONSTRAINT [PK_MATRICULA] PRIMARY KEY CLUSTERED 
(
	[IDMATRICULA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MENOREDAD]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MENOREDAD](
	[IDPERSONA] [int] NOT NULL,
	[IDMENOREDAD] [int] IDENTITY(1,1) NOT NULL,
	[CODIGOSADMENOREDAD] [varchar](7) NOT NULL,
	[ANIOINGRESOMENOREDAD] [int] NOT NULL,
	[PESOMENOREDAD] [decimal](10, 2) NOT NULL,
	[TALLAMENOREDAD] [decimal](10, 2) NOT NULL,
	[DISCAPACIDADESMENOREDAD] [varchar](200) NULL,
	[VACUNASMENOREDAD] [bit] NOT NULL,
	[ALIMENTACIONMENOREDAD] [int] NOT NULL,
	[NOMBREENCARGADOMENOREDAD] [int] NOT NULL,
	[SACRAMENTOMENOREDAD] [varchar](200) NULL,
	[IDREPRESENTANTE] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NINIO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NINIO](
	[IDPERSONA] [int] NOT NULL,
	[IDMENOREDAD] [int] NOT NULL,
	[IDNINIO] [int] IDENTITY(1,1) NOT NULL,
	[TRABAJONINIO] [bit] NULL,
	[TIEMPOTRABAJONINIO] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OBJETIVO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OBJETIVO](
	[IDOBJETIVO] [int] IDENTITY(10,1) NOT NULL,
	[NOMBREOBJETIVO] [varchar](150) NOT NULL,
	[ESTADOOBJETIVO] [bit] NOT NULL CONSTRAINT [DF_OBJETIVO_ESTADOOBJETIVO]  DEFAULT ((1))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OCUPACION]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OCUPACION](
	[IDALIMENTACION2] [int] NOT NULL,
	[NOMBRE] [varchar](50) NULL,
	[ESTADOTIPOPREGUNTA] [int] NULL,
	[FECHATIPOPREGUNTA] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORIENTADOR]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORIENTADOR](
	[IDORIENTADOR] [int] IDENTITY(10,1) NOT NULL,
	[USERIDASP] [uniqueidentifier] NOT NULL,
	[NOMBREORIENTADOR] [varchar](50) NULL,
	[APELLIDOORIENTADOR] [varchar](50) NULL,
	[GENEROORIENTADOR] [char](1) NULL,
	[ESTADOORIENTADOR] [bit] NOT NULL CONSTRAINT [DF_ORIENTADOR_ESTADOORIENTADOR]  DEFAULT ((1))
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORIENTADORACARGODEPROCESOENPERIODO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORIENTADORACARGODEPROCESOENPERIODO](
	[IDLINEADEACCION] [int] NOT NULL,
	[IDORIENTADOR] [int] NOT NULL,
	[IDPROCESO] [int] NOT NULL,
	[IDPERIODO] [int] NOT NULL,
	[OBSERVACION] [varchar](255) NULL,
 CONSTRAINT [PK_ORIENTADORACARGODEPROCESOENPERIODO] PRIMARY KEY CLUSTERED 
(
	[IDLINEADEACCION] ASC,
	[IDORIENTADOR] ASC,
	[IDPROCESO] ASC,
	[IDPERIODO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PARENTEZCO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PARENTEZCO](
	[IDPARENTEZCO] [int] IDENTITY(1,1) NOT NULL,
	[NOMBREPARENTEZCO] [varchar](20) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PERIODO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERIODO](
	[IDPERIODO] [int] IDENTITY(1,1) NOT NULL,
	[IDTIPOPERIODO] [int] NULL,
	[NOMBREPERIODO] [varchar](200) NOT NULL,
	[FECHAINICIOPERIODO] [date] NOT NULL,
	[FECHAFINPERIODO] [date] NULL,
	[ESTADOPERIODO] [bit] NOT NULL,
 CONSTRAINT [PK__PERIODO__A7A01349451EFD21] PRIMARY KEY CLUSTERED 
(
	[IDPERIODO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PERIODO_PERSONA_FAMILIA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERIODO_PERSONA_FAMILIA](
	[IDFAMILIA] [int] NOT NULL,
	[IDPERSONA] [int] NOT NULL,
	[IDPERIODO] [int] NOT NULL,
	[REPRESENTANTE] [bit] NOT NULL,
	[IDPARENTEZCO] [int] NULL,
	[IDREPRESENTANTE] [int] NULL,
 CONSTRAINT [pk_PERIODOPERSONAFAMILIAID] PRIMARY KEY CLUSTERED 
(
	[IDFAMILIA] ASC,
	[IDPERSONA] ASC,
	[IDPERIODO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PERSONA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERSONA](
	[IDPERSONA] [int] IDENTITY(1,1) NOT NULL,
	[IDALIMENTACION2] [int] NULL,
	[IDASISTENCIA] [int] NULL,
	[PRIMERNOMBREPERSONA] [varchar](50) NOT NULL,
	[SEGUNDONOMBREPERSONA] [varchar](50) NULL,
	[PRIMERAPELLIDOPERSONA] [varchar](50) NOT NULL,
	[SEGUNDOAPELLIDOPERSONA] [varchar](50) NULL,
	[GENEROPERSONA] [bit] NOT NULL,
	[FECHANACIMIENTOPERSONA] [date] NULL,
	[CEDULAPERSONA] [varchar](10) NULL,
	[LUGARNACIMIENTOPERSONA] [varchar](50) NOT NULL,
	[VIVECONFAMILIAPERSONA] [bit] NOT NULL,
	[OBSERVACIONPERSONA] [varchar](1024) NULL,
	[FECHAINGRESOPROGRAMA] [date] NULL,
	[CABEZAFAMILIA] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PERSONA_FAMILIA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONA_FAMILIA](
	[IDFAMILIA] [int] NOT NULL,
	[IDPERSONA] [int] NOT NULL,
	[FECHATIPOPREGUNTA] [datetime] NULL,
	[REFERENCIAFAMILIA] [bit] NULL,
 CONSTRAINT [PK_PERSONA_FAMILIA] PRIMARY KEY CLUSTERED 
(
	[IDFAMILIA] ASC,
	[IDPERSONA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POSIBLERESPUESTA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[POSIBLERESPUESTA](
	[IDPOSIBLERESPUESTA] [int] IDENTITY(1,1) NOT NULL,
	[TEXTOPOSIBLERESPUESTA] [varchar](50) NOT NULL,
	[PUNTAJEPOSIBLERESPUESTA] [int] NULL,
	[ESTADOPOSIBLERESPUESTA] [bit] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PREGUNTA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PREGUNTA](
	[IDPREGUNTA] [int] IDENTITY(1,1) NOT NULL,
	[IDTIPOPREGUNTA] [int] NULL,
	[NOMBREPREGUNTA] [varchar](100) NULL,
	[ESTADOPREGUNTA] [bit] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PREGUNTASCONPOSIBLESRESPUESTAS]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PREGUNTASCONPOSIBLESRESPUESTAS](
	[IDPOSIBLERESPUESTA] [int] NOT NULL,
	[IDPREGUNTA] [int] NOT NULL,
 CONSTRAINT [PK_PREGUNTASCONPOSIBLESRESPUESTAS] PRIMARY KEY CLUSTERED 
(
	[IDPOSIBLERESPUESTA] ASC,
	[IDPREGUNTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PROCESO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROCESO](
	[IDPROCESO] [int] IDENTITY(35,1) NOT NULL,
	[NOMBREPROCESO] [varchar](150) NOT NULL,
	[ESTADOPROCESO] [bit] NOT NULL,
 CONSTRAINT [PK_PROCESO_1] PRIMARY KEY CLUSTERED 
(
	[IDPROCESO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROCESO_ORIENTADOR]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROCESO_ORIENTADOR](
	[IDORIENTADOR] [int] NOT NULL,
	[IDPROCESO] [int] NOT NULL,
 CONSTRAINT [PK_PROCESO_ORIENTADOR] PRIMARY KEY CLUSTERED 
(
	[IDORIENTADOR] ASC,
	[IDPROCESO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[REPRESENTANTE]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REPRESENTANTE](
	[IDREPRESENTANTE] [int] IDENTITY(1,1) NOT NULL,
	[IDORIENTADOR] [int] NULL,
	[IDPERSONA] [int] NULL,
	[ANIOLECTIVOREPRESENTANTE] [varchar](20) NULL,
	[REFERENCIAREPRESENTANTE] [varchar](50) NULL,
	[RELACIONINIOREPRESENTANTE] [varchar](100) NULL,
	[CODIGOSAD1] [varchar](7) NULL,
	[CODIGOSAD2] [varchar](7) NULL,
	[CODIGOSAD3] [varchar](7) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[REUNION]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[REUNION](
	[IDREUNION] [int] IDENTITY(1,1) NOT NULL,
	[IDLINEADEACCION] [int] NOT NULL,
	[IDORIENTADOR] [int] NOT NULL,
	[IDPROCESO] [int] NOT NULL,
	[IDPERIODO] [int] NOT NULL,
	[IDTIPOASISTENTES] [int] NOT NULL,
	[TEMAREUNION] [varchar](50) NOT NULL,
	[FECHAREUNION] [date] NOT NULL,
	[HORAREUNION] [time](7) NOT NULL,
	[ESTADOREUNION] [bit] NOT NULL,
	[OBSERVACIONREUNION] [varchar](100) NULL,
 CONSTRAINT [PK_REUNIONES] PRIMARY KEY CLUSTERED 
(
	[IDREUNION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SOLUCIONCUESTIONARIO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOLUCIONCUESTIONARIO](
	[IDSOLUCIONCUESTIONARIO] [bigint] IDENTITY(1,1) NOT NULL,
	[IDPROCESO] [int] NOT NULL,
	[IDOBJETIVO] [int] NOT NULL,
	[IDINDICADOR] [int] NOT NULL,
	[IDPREGUNTA] [int] NOT NULL,
	[IDPERSONA] [int] NOT NULL,
	[IDPERIODO] [int] NOT NULL,
	[FECHASOLUCIONCUESTIONARIO] [date] NOT NULL,
	[TEXTOSOLUCIONCUESTIONARIO] [varchar](200) NOT NULL,
 CONSTRAINT [PK_SOLUCIONCUESTIONARIO] PRIMARY KEY CLUSTERED 
(
	[IDSOLUCIONCUESTIONARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TELEFONOPERSONA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TELEFONOPERSONA](
	[IDTELEFONO] [int] IDENTITY(1,1) NOT NULL,
	[IDPERSONA] [int] NOT NULL,
	[TELEFONOPERSONA1] [varchar](10) NOT NULL,
 CONSTRAINT [PK_TELEFONOPERSONA] PRIMARY KEY CLUSTERED 
(
	[IDTELEFONO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIPOASISTENCIA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPOASISTENCIA](
	[IDTIPOASISTENCIA] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRETIPOASISTENCIA] [varchar](15) NOT NULL,
 CONSTRAINT [PK_TIPOASISTENCIA] PRIMARY KEY CLUSTERED 
(
	[IDTIPOASISTENCIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIPOASISTENTES]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPOASISTENTES](
	[IDTIPOASISTENTES] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRETIPOASISTENTES] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TIPOASISTENTES] PRIMARY KEY CLUSTERED 
(
	[IDTIPOASISTENTES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIPOFAMILIA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPOFAMILIA](
	[IDTIPOFAMILIA] [int] NOT NULL,
	[NOMBRE] [varchar](50) NULL,
	[ESTADO] [int] NULL,
	[FECHA] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIPOPERIODO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPOPERIODO](
	[IDTIPOPERIODO] [int] NOT NULL,
	[NOMBRETIPOPERIODO] [varchar](15) NOT NULL,
 CONSTRAINT [PK_TIPOPERIODO] PRIMARY KEY CLUSTERED 
(
	[IDTIPOPERIODO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIPOPERSONA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPOPERSONA](
	[IDTIPOPERSONA] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRETIPOPERSONA] [varchar](50) NOT NULL,
	[EDADMINIMA] [int] NULL,
	[EDADMAXIMA] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIPOPREGUNTA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPOPREGUNTA](
	[IDTIPOPREGUNTA] [int] NOT NULL,
	[NOMBRETIPOPREGUNTA] [varchar](200) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[UserIdAsp] [uniqueidentifier] NOT NULL,
	[NombreUsuario] [varchar](50) NULL,
	[ApellidoUsuario] [varchar](50) NULL,
	[GeneroUsuario] [char](1) NULL,
	[EstadoUsuario] [bit] NOT NULL CONSTRAINT [DF_Usuario_EstadoUsuario]  DEFAULT ((1)),
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VISITADOMICILIAR]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VISITADOMICILIAR](
	[IDVISITADOMICILIAR] [int] NOT NULL,
	[IDFAMILIA] [int] NULL,
	[AREAVISITADOMICILIAR] [varchar](100) NOT NULL,
	[MODALIDADVISTADOMICILIAR] [varchar](100) NOT NULL,
	[PERSONAREFERENCIA] [bit] NOT NULL,
	[FECHAVISITA] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[PERSONASORIENTADOR]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PERSONASORIENTADOR]
AS
SELECT m.IDLINEADEACCION as IDLINEAACCION,
m.IDPROCESO as IDPROCESO,
m.IDPERIODO as IDPERIODO,
m.IDORIENTADOR AS IDORIENTADOR,
p.IDPERSONA AS IDPERSONA,
(p.PRIMERNOMBREPERSONA + ' ' + p.SEGUNDONOMBREPERSONA + ' ' + p.PRIMERAPELLIDOPERSONA + ' ' + p.SEGUNDOAPELLIDOPERSONA) AS NOMBRE,
P.FECHANACIMIENTOPERSONA AS FECHANACIMIENTOPERSONA
FROM PERSONA p
INNER JOIN MATRICULA M ON p.IDPERSONA =  m.IDPERSONA;



GO
/****** Object:  View [dbo].[VISTAPERSONA]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VISTAPERSONA]
AS
SELECT * FROM PERSONA WHERE GENEROPERSONA='TRUE';





















GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  












GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  












GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  












GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  












GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  












GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  












GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  












GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  












GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  












GO
SET IDENTITY_INSERT [dbo].[AREA] ON 

INSERT [dbo].[AREA] ([IDAREA], [NOMBREAREA]) VALUES (1, N'NINEZ Y FAMILIA')
INSERT [dbo].[AREA] ([IDAREA], [NOMBREAREA]) VALUES (2, N'JOVEN')
INSERT [dbo].[AREA] ([IDAREA], [NOMBREAREA]) VALUES (3, N'LABORAL')
SET IDENTITY_INSERT [dbo].[AREA] OFF
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'Myweb', N'myweb', N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'3befe6f9-f2d0-4c4b-9deb-4dac1c96b5e1', N'juan', 0, N'vRa+oVZLyfIYzaPOinvaMQ==', NULL, N'jnviana@udlanet.ec', N'jnviana@udlanet.ec', NULL, NULL, 1, 0, CAST(N'2017-10-10 11:59:34.000' AS DateTime), CAST(N'2018-01-16 02:12:52.317' AS DateTime), CAST(N'2017-10-10 11:59:34.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'779f9328-52a3-40f3-9a71-75a2c0409288', N'carlos', 0, N'ZXyGtOrp0fnP4dDWKiTctg==', NULL, N'cmdavila@udlanet.ec', N'cmdavila@udlanet.ec', NULL, NULL, 1, 0, CAST(N'2017-10-10 09:10:00.000' AS DateTime), CAST(N'2018-01-16 01:28:12.853' AS DateTime), CAST(N'2017-10-10 09:10:00.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'0a9a7283-a012-419b-8c67-d653108c9028', N'patricio', 0, N's8Yq1Zj6AF5yrQkz69JJpQ==', NULL, N'pespinosa@sembrar.com', N'pespinosa@sembrar.com', N'Mi nombre es?', N'patricio', 1, 0, CAST(N'2018-01-12 14:16:57.000' AS DateTime), CAST(N'2018-01-12 19:32:46.420' AS DateTime), CAST(N'2018-01-12 14:16:57.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'5d7c4fce-b80d-42e5-b9e0-bbf2f7f74976', N'coordinador', 0, N'FtPKJE7cQsnIIxQJnps32w==', NULL, N'coordinadorsaedi@sembrar.com', N'coordinadorsaedi@sembrar.com', N'Mi nombre es?', N'coordinador', 1, 0, CAST(N'2018-01-12 14:19:48.000' AS DateTime), CAST(N'2018-02-05 03:01:40.153' AS DateTime), CAST(N'2018-01-12 14:19:48.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'12d2949b-7f50-421a-b95e-9ea31b76b611', N'orientador', 0, N'E2O6BIvcoJ1Hfu285yXsmg==', NULL, N'manchez@sembrar.com', N'manchez@sembrar.com', N'Mi nombre es?', N'orientador', 1, 0, CAST(N'2017-10-16 06:24:22.000' AS DateTime), CAST(N'2018-02-06 21:31:30.837' AS DateTime), CAST(N'2017-10-16 06:24:22.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'bc69e841-a73d-4f84-ac83-3eba8693035e', N'arisalo', 0, N'suodbnICsQVlY30l2tRwIg==', NULL, N'jsuarez@sembrar.com', N'jsuarez@sembrar.com', N'Mi nombre es?', N'jimena', 1, 0, CAST(N'2018-01-12 15:11:52.000' AS DateTime), CAST(N'2018-01-12 20:42:45.250' AS DateTime), CAST(N'2018-01-12 15:11:52.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'a54bd398-e2fd-40f7-963e-535f52365608', N'xavier', 0, N'09W+oXwHD400t0xFVoAaAA==', NULL, N'rchango@sembrar.com', N'rchango@sembrar.com', N'Cual es mi nombre?', N'richard', 1, 0, CAST(N'2018-01-12 15:13:55.000' AS DateTime), CAST(N'2018-01-12 16:46:46.550' AS DateTime), CAST(N'2018-01-12 15:13:55.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'750f1553-9b9f-40bf-828c-267cbe40977e', N'Saedi2018*', 0, N'QRjnGc3TaJS5PoHfPixiEw==', NULL, N'adminsaedi@sembrar.com', N'adminsaedi@sembrar.com', N'Mi nombre es?', N'administrador', 1, 0, CAST(N'2018-01-12 13:43:01.000' AS DateTime), CAST(N'2018-01-16 01:27:58.627' AS DateTime), CAST(N'2018-01-12 13:43:01.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 2, CAST(N'2018-02-04 04:12:27.523' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'b51500c0-e1be-400c-93fe-00f25d719ab5', N'alejandro', 0, N'Y5LBL2xFwb2jFLeAwvB63Q==', NULL, N'asanchez@sembrar.com', N'asanchez@sembrar.com', N'Mi nombre es?', N'alejandro', 1, 0, CAST(N'2018-01-12 13:53:09.000' AS DateTime), CAST(N'2018-02-09 15:23:13.197' AS DateTime), CAST(N'2018-01-12 13:53:09.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'28c93998-00eb-4885-9023-a253e0d51c73', N'tecnico', 0, N'wlz5xUJEjzBRPjf1qQVSwg==', NULL, N'tecnicosaedi@sembrar.com', N'tecnicosaedi@sembrar.com', N'Mi nombre es?', N'tecnico', 1, 0, CAST(N'2018-01-12 14:21:28.000' AS DateTime), CAST(N'2018-02-04 19:41:09.230' AS DateTime), CAST(N'2018-01-12 14:21:28.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'b0d2a449-2258-4312-a08a-c0363bd58829', N'siempre', 0, N'rH5KpauESVNQaop9d4JOig==', NULL, N'rfreire@sembar.com', N'rfreire@sembar.com', N'Mi nombre es?', N'roberto', 1, 0, CAST(N'2018-01-12 14:29:29.000' AS DateTime), CAST(N'2018-01-12 15:17:02.870' AS DateTime), CAST(N'2018-01-12 14:29:29.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'8b805ca9-9dc5-40b6-a003-413b3975ec98', N'%LbzpZPchBGf', 0, N'n3aBekN6qBwE87DVHNyNcw==', NULL, N'hola@gmail.com', N'hola@gmail.com', N'nombre mascota', N'chichi', 1, 0, CAST(N'2018-01-12 14:31:41.000' AS DateTime), CAST(N'2018-01-12 14:31:41.000' AS DateTime), CAST(N'2018-01-12 14:31:41.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'5c140b70-32d6-49c2-b0c5-7aa6a9b8d4e9', N'jose2002', 0, N'mo5VI0QGu8z3krFY606jJg==', NULL, N'jrecalde@sembrar.com', N'jrecalde@sembrar.com', N'Mi nombre es?', N'josé luis', 1, 0, CAST(N'2018-01-12 15:11:43.000' AS DateTime), CAST(N'2018-01-12 19:00:35.223' AS DateTime), CAST(N'2018-01-12 15:11:43.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'9e76911a-615b-40f9-a68d-a1accb709c3d', N'godlive', 0, N'1zhA03evxsrga31UDHn5nw==', NULL, N'ltroya@sembra.com', N'ltroya@sembra.com', N'Mi nombre es?', N'lucia', 1, 0, CAST(N'2018-01-12 15:14:16.000' AS DateTime), CAST(N'2018-01-12 20:42:09.107' AS DateTime), CAST(N'2018-01-12 15:14:16.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'79216974-00ea-40c8-bb53-24d6b7a32aca', N'marcelita', 0, N'IhAlsjlWBklfnA4ND75WGA==', NULL, N'mcanar@sembrar.com', N'mcanar@sembrar.com', N'Mi nombre es?', N'martha', 1, 0, CAST(N'2018-01-12 15:15:40.000' AS DateTime), CAST(N'2018-01-12 16:46:34.810' AS DateTime), CAST(N'2018-01-12 15:15:40.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'4812d6ce-fbaf-410b-a81b-756b18eb495b', N'educador', 0, N'tkeklxk9yEgw/OgIqKw5ZA==', NULL, N'pjimenez@sembrar.com', N'pjimenez@sembrar.com', N'Mi nombre es?', N'paola', 1, 0, CAST(N'2018-01-12 19:05:17.000' AS DateTime), CAST(N'2018-01-12 21:08:26.457' AS DateTime), CAST(N'2018-01-12 19:05:17.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'fa172a9a-212a-4ffe-a2bf-8e9e7d07f564', N'educador', 0, N'MEwFlZixJKkppij9IfkySA==', NULL, N'cmorales@sembrar.com', N'cmorales@sembrar.com', N'Mi nombre es?', N'catalina', 1, 0, CAST(N'2018-01-12 19:06:04.000' AS DateTime), CAST(N'2018-01-12 20:42:04.233' AS DateTime), CAST(N'2018-01-12 19:06:04.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'3bba047a-9b76-4a60-b61e-2ce98dff21c7', N'educador', 0, N'sL282nWAZ4HYTybmSYQ30g==', NULL, N'dmaji@sembrar.com', N'dmaji@sembrar.com', N'Mi nombre es?', N'delia del pilar', 1, 0, CAST(N'2018-01-12 19:07:20.000' AS DateTime), CAST(N'2018-01-12 21:14:09.887' AS DateTime), CAST(N'2018-01-12 19:07:20.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'5c62640c-c49a-4087-bbef-f2c86a6bacc1', N'educador', 0, N'u8BhAsQbmVsvDGGWkcNdiw==', NULL, N'erodriguez@sembrar.com', N'erodriguez@sembrar.com', N'Mi nombre es?', N'edith', 1, 0, CAST(N'2018-01-12 19:08:14.000' AS DateTime), CAST(N'2018-01-12 20:54:10.937' AS DateTime), CAST(N'2018-01-12 19:08:14.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'c1b23bd9-3dbd-4717-b0f2-768fdca189ef', N'educador', 0, N'hE4YZDq31Ez9bp3jMMXi6A==', NULL, N'amaldonado@sembrar.com', N'amaldonado@sembrar.com', N'Mi nombre es?', N'alva', 1, 0, CAST(N'2018-01-12 19:09:58.000' AS DateTime), CAST(N'2018-01-12 20:54:51.200' AS DateTime), CAST(N'2018-01-12 19:09:58.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'611569a5-520f-41ef-b642-e0c3f17bfc16', N'educador', 0, N'+cc5yf0lOZiLlWsVfAVy+A==', NULL, N'mrivilla@sembrar.com', N'mrivilla@sembrar.com', N'Mi nombre es?', N'mayra', 1, 0, CAST(N'2018-01-12 19:13:38.000' AS DateTime), CAST(N'2018-01-12 21:29:16.903' AS DateTime), CAST(N'2018-01-12 19:13:38.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'100b24bf-4bf4-428f-86e2-a424d5811380', N'educador', 0, N'6DLsdXq6dltyEebH9HjYFQ==', NULL, N'itoapanta@sembrar.com', N'itoapanta@sembrar.com', N'Mi nombre es?', N'isabel', 1, 0, CAST(N'2018-01-12 19:14:14.000' AS DateTime), CAST(N'2018-01-12 21:10:39.153' AS DateTime), CAST(N'2018-01-12 19:14:14.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'13c69c93-2151-475d-8d45-a7cf1abec48d', N'educador', 0, N'vYbX//HfneJPdp42/wXJYg==', NULL, N'cbalarezo@sembrar.com', N'cbalarezo@sembrar.com', N'Mi nombre es?', N'carmen', 1, 0, CAST(N'2018-01-12 19:16:12.000' AS DateTime), CAST(N'2018-01-12 20:57:47.253' AS DateTime), CAST(N'2018-01-12 19:16:12.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'78dac564-d38f-49cf-bec3-b158a128fc4b', N'jose2002', 0, N'2MiVHXOTJ9OfN9FK/qSyUA==', NULL, N'jrecalde@sembrar.com', N'jrecalde@sembrar.com', N'Mi nombre es?', N'josé luis', 1, 0, CAST(N'2018-01-12 19:17:42.000' AS DateTime), CAST(N'2018-01-12 21:17:13.217' AS DateTime), CAST(N'2018-01-12 19:17:42.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'c131c7d1-adb4-42f7-90a2-dacdc6e22c79', N'educador', 0, N'qqRrsvB+Cth4wywqN1GPKw==', NULL, N'iespinoz@sembrar.com', N'iespinoz@sembrar.com', N'Mi nombre es?', N'ivonne aracelly', 1, 0, CAST(N'2018-01-12 19:18:48.000' AS DateTime), CAST(N'2018-01-12 21:18:10.157' AS DateTime), CAST(N'2018-01-12 19:18:48.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'158975c9-5ead-4f27-9405-75e94a41c5ae', N'educador', 0, N'PakvkiRdgQLQ+ClModfkbg==', NULL, N'slamingo@sembrar.com', N'slamingo@sembrar.com', N'Mi nombre es?', N'silvia', 1, 0, CAST(N'2018-01-12 19:20:04.000' AS DateTime), CAST(N'2018-01-12 21:13:36.470' AS DateTime), CAST(N'2018-01-12 19:20:04.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'2c9335bc-c1f5-4152-9c5f-c39c45d9fe39', N'educador', 0, N'Hy/QwHiEdbn0KLOS/H5UJQ==', NULL, N'mbenalcazar@sembrar.com', N'mbenalcazar@sembrar.com', N'Mi nombre es?', N'maría', 1, 0, CAST(N'2018-01-12 19:20:56.000' AS DateTime), CAST(N'2018-01-12 20:57:34.210' AS DateTime), CAST(N'2018-01-12 19:20:56.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'e459f4c0-6dc7-45ab-8a9e-c2b1382f6e86', N'educador', 0, N'st3hrXpUy5oR46enQwVNeA==', NULL, N'mcanar@sembrar.com', N'mcanar@sembrar.com', N'Mi nombre es?', N'martha', 1, 0, CAST(N'2018-01-12 19:21:42.000' AS DateTime), CAST(N'2018-01-12 21:13:19.007' AS DateTime), CAST(N'2018-01-12 19:21:42.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'eed632e1-a6c9-4e03-a1e9-786f1941635a', N'educador', 0, N'tqqQMS2n4W0o0XzLLPRe7A==', NULL, N'rchango@sembrar.com', N'rchango@sembrar.com', N'Mi nombre es?', N'richard', 1, 0, CAST(N'2018-01-12 19:22:49.000' AS DateTime), CAST(N'2018-01-12 20:57:08.257' AS DateTime), CAST(N'2018-01-12 19:22:49.000' AS DateTime), CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), 0, CAST(N'1754-01-01 00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'ce6a8201-d196-4705-b7a7-ec27f83f3d83', N'Administrador', N'administrador', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'024739db-7bab-4d00-a6f8-0d9111ae5e13', N'Coordinador', N'coordinador', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'28014575-727b-462c-a089-9e6c091e8fa9', N'Orientador', N'orientador', NULL)
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'6197d8bb-9af7-49f1-baba-723eed69eaea', N'Tecnico', N'tecnico', NULL)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'3befe6f9-f2d0-4c4b-9deb-4dac1c96b5e1', N'jnviana', N'jnviana', NULL, 0, CAST(N'2018-01-16 02:12:52.317' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'779f9328-52a3-40f3-9a71-75a2c0409288', N'cdavila', N'cdavila', NULL, 0, CAST(N'2018-01-16 01:28:12.853' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'5d7c4fce-b80d-42e5-b9e0-bbf2f7f74976', N'coordinadorsaedi', N'coordinadorsaedi', NULL, 0, CAST(N'2018-02-05 03:01:40.153' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'75a89e54-5be2-4d69-b2e7-69864432c4d7', N'admin', N'admin', NULL, 0, CAST(N'2018-01-12 13:42:04.023' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'12d2949b-7f50-421a-b95e-9ea31b76b611', N'orientadorsaedi', N'orientadorsaedi', NULL, 0, CAST(N'2018-02-06 21:31:30.837' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'0a9a7283-a012-419b-8c67-d653108c9028', N'pespinosa', N'pespinosa', NULL, 0, CAST(N'2018-01-12 19:32:46.420' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'bc69e841-a73d-4f84-ac83-3eba8693035e', N'jsuarez', N'jsuarez', NULL, 0, CAST(N'2018-01-12 20:42:45.250' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'a54bd398-e2fd-40f7-963e-535f52365608', N'rchango', N'rchango', NULL, 0, CAST(N'2018-01-12 16:46:46.550' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'750f1553-9b9f-40bf-828c-267cbe40977e', N'adminsaedi', N'adminsaedi', NULL, 0, CAST(N'2018-01-16 01:27:58.627' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'b51500c0-e1be-400c-93fe-00f25d719ab5', N'asanchez', N'asanchez', NULL, 0, CAST(N'2018-02-09 15:23:13.197' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'28c93998-00eb-4885-9023-a253e0d51c73', N'tecnicosaedi', N'tecnicosaedi', NULL, 0, CAST(N'2018-02-04 19:41:09.230' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'b0d2a449-2258-4312-a08a-c0363bd58829', N'rfreire', N'rfreire', NULL, 0, CAST(N'2018-01-12 15:17:02.870' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'8b805ca9-9dc5-40b6-a003-413b3975ec98', N'rfreire@', N'rfreire@', NULL, 0, CAST(N'2018-01-12 14:31:41.000' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'5c140b70-32d6-49c2-b0c5-7aa6a9b8d4e9', N'jrecalde', N'jrecalde', NULL, 0, CAST(N'2018-01-12 19:00:35.223' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'9e76911a-615b-40f9-a68d-a1accb709c3d', N'ltroya', N'ltroya', NULL, 0, CAST(N'2018-01-12 20:42:09.107' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'79216974-00ea-40c8-bb53-24d6b7a32aca', N'mcanar', N'mcanar', NULL, 0, CAST(N'2018-01-12 16:46:34.810' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'4812d6ce-fbaf-410b-a81b-756b18eb495b', N'pjimenez', N'pjimenez', NULL, 0, CAST(N'2018-01-12 21:08:26.457' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'fa172a9a-212a-4ffe-a2bf-8e9e7d07f564', N'cmorales', N'cmorales', NULL, 0, CAST(N'2018-01-12 20:42:04.233' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'3bba047a-9b76-4a60-b61e-2ce98dff21c7', N'dmaji', N'dmaji', NULL, 0, CAST(N'2018-01-12 21:14:09.887' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'5c62640c-c49a-4087-bbef-f2c86a6bacc1', N'erodriguez', N'erodriguez', NULL, 0, CAST(N'2018-01-12 20:54:10.937' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'c1b23bd9-3dbd-4717-b0f2-768fdca189ef', N'amaldonado', N'amaldonado', NULL, 0, CAST(N'2018-01-12 20:54:51.200' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'611569a5-520f-41ef-b642-e0c3f17bfc16', N'mrivilla', N'mrivilla', NULL, 0, CAST(N'2018-01-12 21:29:16.903' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'100b24bf-4bf4-428f-86e2-a424d5811380', N'itoapanta', N'itoapanta', NULL, 0, CAST(N'2018-01-12 21:10:39.153' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'13c69c93-2151-475d-8d45-a7cf1abec48d', N'cbalarezo', N'cbalarezo', NULL, 0, CAST(N'2018-01-12 20:57:47.253' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'78dac564-d38f-49cf-bec3-b158a128fc4b', N'jrecalde_educador', N'jrecalde_educador', NULL, 0, CAST(N'2018-01-12 21:17:13.217' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'c131c7d1-adb4-42f7-90a2-dacdc6e22c79', N'iespinoza', N'iespinoza', NULL, 0, CAST(N'2018-01-12 21:18:10.157' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'158975c9-5ead-4f27-9405-75e94a41c5ae', N'slamingo', N'slamingo', NULL, 0, CAST(N'2018-01-12 21:13:36.470' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'2c9335bc-c1f5-4152-9c5f-c39c45d9fe39', N'mbenalcazar', N'mbenalcazar', NULL, 0, CAST(N'2018-01-12 20:57:34.210' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'e459f4c0-6dc7-45ab-8a9e-c2b1382f6e86', N'mcanar_educador', N'mcanar_educador', NULL, 0, CAST(N'2018-01-12 21:13:19.007' AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'49ad56a9-7c01-4440-a9cb-eca9bec3c188', N'eed632e1-a6c9-4e03-a1e9-786f1941635a', N'rchango_educador', N'rchango_educador', NULL, 0, CAST(N'2018-01-12 20:57:08.257' AS DateTime))
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'b51500c0-e1be-400c-93fe-00f25d719ab5', N'ce6a8201-d196-4705-b7a7-ec27f83f3d83')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'79216974-00ea-40c8-bb53-24d6b7a32aca', N'6197d8bb-9af7-49f1-baba-723eed69eaea')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'750f1553-9b9f-40bf-828c-267cbe40977e', N'ce6a8201-d196-4705-b7a7-ec27f83f3d83')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'3bba047a-9b76-4a60-b61e-2ce98dff21c7', N'28014575-727b-462c-a089-9e6c091e8fa9')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'bc69e841-a73d-4f84-ac83-3eba8693035e', N'6197d8bb-9af7-49f1-baba-723eed69eaea')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'8b805ca9-9dc5-40b6-a003-413b3975ec98', N'024739db-7bab-4d00-a6f8-0d9111ae5e13')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'3befe6f9-f2d0-4c4b-9deb-4dac1c96b5e1', N'ce6a8201-d196-4705-b7a7-ec27f83f3d83')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'a54bd398-e2fd-40f7-963e-535f52365608', N'6197d8bb-9af7-49f1-baba-723eed69eaea')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'75a89e54-5be2-4d69-b2e7-69864432c4d7', N'ce6a8201-d196-4705-b7a7-ec27f83f3d83')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'4812d6ce-fbaf-410b-a81b-756b18eb495b', N'28014575-727b-462c-a089-9e6c091e8fa9')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'779f9328-52a3-40f3-9a71-75a2c0409288', N'ce6a8201-d196-4705-b7a7-ec27f83f3d83')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'158975c9-5ead-4f27-9405-75e94a41c5ae', N'28014575-727b-462c-a089-9e6c091e8fa9')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'c1b23bd9-3dbd-4717-b0f2-768fdca189ef', N'28014575-727b-462c-a089-9e6c091e8fa9')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'eed632e1-a6c9-4e03-a1e9-786f1941635a', N'28014575-727b-462c-a089-9e6c091e8fa9')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'5c140b70-32d6-49c2-b0c5-7aa6a9b8d4e9', N'6197d8bb-9af7-49f1-baba-723eed69eaea')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'fa172a9a-212a-4ffe-a2bf-8e9e7d07f564', N'28014575-727b-462c-a089-9e6c091e8fa9')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'12d2949b-7f50-421a-b95e-9ea31b76b611', N'28014575-727b-462c-a089-9e6c091e8fa9')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'9e76911a-615b-40f9-a68d-a1accb709c3d', N'6197d8bb-9af7-49f1-baba-723eed69eaea')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'28c93998-00eb-4885-9023-a253e0d51c73', N'6197d8bb-9af7-49f1-baba-723eed69eaea')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'100b24bf-4bf4-428f-86e2-a424d5811380', N'28014575-727b-462c-a089-9e6c091e8fa9')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'13c69c93-2151-475d-8d45-a7cf1abec48d', N'28014575-727b-462c-a089-9e6c091e8fa9')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'78dac564-d38f-49cf-bec3-b158a128fc4b', N'28014575-727b-462c-a089-9e6c091e8fa9')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'5d7c4fce-b80d-42e5-b9e0-bbf2f7f74976', N'024739db-7bab-4d00-a6f8-0d9111ae5e13')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'b0d2a449-2258-4312-a08a-c0363bd58829', N'024739db-7bab-4d00-a6f8-0d9111ae5e13')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'e459f4c0-6dc7-45ab-8a9e-c2b1382f6e86', N'28014575-727b-462c-a089-9e6c091e8fa9')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'2c9335bc-c1f5-4152-9c5f-c39c45d9fe39', N'28014575-727b-462c-a089-9e6c091e8fa9')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'0a9a7283-a012-419b-8c67-d653108c9028', N'ce6a8201-d196-4705-b7a7-ec27f83f3d83')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'c131c7d1-adb4-42f7-90a2-dacdc6e22c79', N'28014575-727b-462c-a089-9e6c091e8fa9')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'611569a5-520f-41ef-b642-e0c3f17bfc16', N'28014575-727b-462c-a089-9e6c091e8fa9')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'5c62640c-c49a-4087-bbef-f2c86a6bacc1', N'28014575-727b-462c-a089-9e6c091e8fa9')
SET IDENTITY_INSERT [dbo].[CATEGORIATIPOFAMILIA] ON 

INSERT [dbo].[CATEGORIATIPOFAMILIA] ([IDCATEGORIATIPOFAMILIA], [NOMBRECATEGORIATIPOFAMILIA], [IDAREA]) VALUES (1, N'Inicial', 1)
INSERT [dbo].[CATEGORIATIPOFAMILIA] ([IDCATEGORIATIPOFAMILIA], [NOMBRECATEGORIATIPOFAMILIA], [IDAREA]) VALUES (2, N'Niños', 1)
INSERT [dbo].[CATEGORIATIPOFAMILIA] ([IDCATEGORIATIPOFAMILIA], [NOMBRECATEGORIATIPOFAMILIA], [IDAREA]) VALUES (3, N'Jovenes', 2)
INSERT [dbo].[CATEGORIATIPOFAMILIA] ([IDCATEGORIATIPOFAMILIA], [NOMBRECATEGORIATIPOFAMILIA], [IDAREA]) VALUES (4, N'Adultos', 3)
SET IDENTITY_INSERT [dbo].[CATEGORIATIPOFAMILIA] OFF
SET IDENTITY_INSERT [dbo].[INDICADOR] ON 

INSERT [dbo].[INDICADOR] ([IDINDICADOR], [NOMBREINDICADOR], [ESTADO]) VALUES (1, N'NO APLICA', 1)
SET IDENTITY_INSERT [dbo].[INDICADOR] OFF
SET IDENTITY_INSERT [dbo].[OBJETIVO] ON 

INSERT [dbo].[OBJETIVO] ([IDOBJETIVO], [NOMBREOBJETIVO], [ESTADOOBJETIVO]) VALUES (1, N'NO APLICA', 1)
SET IDENTITY_INSERT [dbo].[OBJETIVO] OFF
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (1, N'AMA DE CASA', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (2, N'ALBAÑIL', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (3, N'ATENCIÓN AL CLIENTE', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (4, N'AYUDANTE DE COCINA', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (10, N'COSTURERA', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (11, N'CONSERJE/SEGURIDAD', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (12, N'EDUCADOR', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (14, N'ESTUDIANTE', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (15, N'LIMPIEZA', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (16, N'MECÁNICO', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (17, N'MENSAJERO', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (18, N'MESERA', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (19, N'MILITAR', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (20, N'OBRERO', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (21, N'OTRO', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (13, N'EMPLEADA DOMÉSTICA', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (22, N'PANADERO', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (23, N'PINTOR', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (24, N'PLOMERO', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (25, N'SOLDADOR', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (5, N'BODEGUERO', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (6, N'CARPINTERO', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (7, N'CHOFER', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (8, N'COCINERA', NULL, NULL)
INSERT [dbo].[OCUPACION] ([IDALIMENTACION2], [NOMBRE], [ESTADOTIPOPREGUNTA], [FECHATIPOPREGUNTA]) VALUES (9, N'COMERCIANTE', NULL, NULL)
SET IDENTITY_INSERT [dbo].[ORIENTADOR] ON 

INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (13, N'4812d6ce-fbaf-410b-a81b-756b18eb495b', N'Paola', N'Jiménez', N'F', 1)
INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (12, N'12d2949b-7f50-421a-b95e-9ea31b76b611', N'Educador', N'SAEDI', N'M', 1)
INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (14, N'fa172a9a-212a-4ffe-a2bf-8e9e7d07f564', N'Catalina', N'Morales', N'F', 1)
INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (15, N'3bba047a-9b76-4a60-b61e-2ce98dff21c7', N'Delia Del Pilar', N'Maji', N'F', 1)
INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (16, N'5c62640c-c49a-4087-bbef-f2c86a6bacc1', N'Edith', N'Rodriguez', N'F', 1)
INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (17, N'c1b23bd9-3dbd-4717-b0f2-768fdca189ef', N'Alva Rosario', N'Maldonado', N'F', 1)
INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (18, N'611569a5-520f-41ef-b642-e0c3f17bfc16', N'Mayra', N'Rivilla', N'F', 1)
INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (19, N'100b24bf-4bf4-428f-86e2-a424d5811380', N'Isabel', N'Toapanta', N'F', 0)
INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (20, N'13c69c93-2151-475d-8d45-a7cf1abec48d', N'Carmen Guadalupe', N'Balarezo', N'F', 1)
INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (21, N'78dac564-d38f-49cf-bec3-b158a128fc4b', N'José Luis', N'Recalde', N'M', 0)
INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (22, N'c131c7d1-adb4-42f7-90a2-dacdc6e22c79', N'Ivonne Aracelly', N'Espinoza', N'F', 1)
INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (23, N'158975c9-5ead-4f27-9405-75e94a41c5ae', N'Silvia', N'Lamingo', N'F', 1)
INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (24, N'2c9335bc-c1f5-4152-9c5f-c39c45d9fe39', N'María', N'Benalcazar', N'F', 1)
INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (25, N'e459f4c0-6dc7-45ab-8a9e-c2b1382f6e86', N'Martha', N'Cañar', N'F', 1)
INSERT [dbo].[ORIENTADOR] ([IDORIENTADOR], [USERIDASP], [NOMBREORIENTADOR], [APELLIDOORIENTADOR], [GENEROORIENTADOR], [ESTADOORIENTADOR]) VALUES (26, N'eed632e1-a6c9-4e03-a1e9-786f1941635a', N'Richard', N'Chango', N'M', 1)
SET IDENTITY_INSERT [dbo].[ORIENTADOR] OFF
SET IDENTITY_INSERT [dbo].[PARENTEZCO] ON 

INSERT [dbo].[PARENTEZCO] ([IDPARENTEZCO], [NOMBREPARENTEZCO]) VALUES (1, N'PADRE')
INSERT [dbo].[PARENTEZCO] ([IDPARENTEZCO], [NOMBREPARENTEZCO]) VALUES (2, N'Madre')
INSERT [dbo].[PARENTEZCO] ([IDPARENTEZCO], [NOMBREPARENTEZCO]) VALUES (3, N'Hermana')
INSERT [dbo].[PARENTEZCO] ([IDPARENTEZCO], [NOMBREPARENTEZCO]) VALUES (4, N'Abuel@')
INSERT [dbo].[PARENTEZCO] ([IDPARENTEZCO], [NOMBREPARENTEZCO]) VALUES (5, N'Ti@')
INSERT [dbo].[PARENTEZCO] ([IDPARENTEZCO], [NOMBREPARENTEZCO]) VALUES (6, N'Prim@')
INSERT [dbo].[PARENTEZCO] ([IDPARENTEZCO], [NOMBREPARENTEZCO]) VALUES (7, N'Hij@')
SET IDENTITY_INSERT [dbo].[PARENTEZCO] OFF
SET IDENTITY_INSERT [dbo].[TIPOASISTENCIA] ON 

INSERT [dbo].[TIPOASISTENCIA] ([IDTIPOASISTENCIA], [NOMBRETIPOASISTENCIA]) VALUES (1, N'Presente')
INSERT [dbo].[TIPOASISTENCIA] ([IDTIPOASISTENCIA], [NOMBRETIPOASISTENCIA]) VALUES (2, N'Ausente')
INSERT [dbo].[TIPOASISTENCIA] ([IDTIPOASISTENCIA], [NOMBRETIPOASISTENCIA]) VALUES (3, N'Justificado')
SET IDENTITY_INSERT [dbo].[TIPOASISTENCIA] OFF
SET IDENTITY_INSERT [dbo].[TIPOASISTENTES] ON 

INSERT [dbo].[TIPOASISTENTES] ([IDTIPOASISTENTES], [NOMBRETIPOASISTENTES]) VALUES (1, N'Representantes')
INSERT [dbo].[TIPOASISTENTES] ([IDTIPOASISTENTES], [NOMBRETIPOASISTENTES]) VALUES (2, N'Representados')
INSERT [dbo].[TIPOASISTENTES] ([IDTIPOASISTENTES], [NOMBRETIPOASISTENTES]) VALUES (4, N'Ambos')
SET IDENTITY_INSERT [dbo].[TIPOASISTENTES] OFF
INSERT [dbo].[TIPOFAMILIA] ([IDTIPOFAMILIA], [NOMBRE], [ESTADO], [FECHA]) VALUES (1, N'Tipo 1', 1, NULL)
INSERT [dbo].[TIPOPERIODO] ([IDTIPOPERIODO], [NOMBRETIPOPERIODO]) VALUES (1, N'AÑO LECTIVO')
INSERT [dbo].[TIPOPERIODO] ([IDTIPOPERIODO], [NOMBRETIPOPERIODO]) VALUES (2, N'FAMILIAR')
SET IDENTITY_INSERT [dbo].[TIPOPERSONA] ON 

INSERT [dbo].[TIPOPERSONA] ([IDTIPOPERSONA], [NOMBRETIPOPERSONA], [EDADMINIMA], [EDADMAXIMA]) VALUES (1, N'Adultos', NULL, NULL)
INSERT [dbo].[TIPOPERSONA] ([IDTIPOPERSONA], [NOMBRETIPOPERSONA], [EDADMINIMA], [EDADMAXIMA]) VALUES (2, N'Jóvenes 12-18', NULL, NULL)
INSERT [dbo].[TIPOPERSONA] ([IDTIPOPERSONA], [NOMBRETIPOPERSONA], [EDADMINIMA], [EDADMAXIMA]) VALUES (4, N'Niños Escolares 5-11', NULL, NULL)
INSERT [dbo].[TIPOPERSONA] ([IDTIPOPERSONA], [NOMBRETIPOPERSONA], [EDADMINIMA], [EDADMAXIMA]) VALUES (5, N'Niños Preescolares 0-4', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TIPOPERSONA] OFF
INSERT [dbo].[TIPOPREGUNTA] ([IDTIPOPREGUNTA], [NOMBRETIPOPREGUNTA]) VALUES (1, N'Cerrada')
INSERT [dbo].[TIPOPREGUNTA] ([IDTIPOPREGUNTA], [NOMBRETIPOPREGUNTA]) VALUES (2, N'Abierta')
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [UserIdAsp], [NombreUsuario], [ApellidoUsuario], [GeneroUsuario], [EstadoUsuario]) VALUES (1, N'779f9328-52a3-40f3-9a71-75a2c0409288', N'Carlos', N'Davila', N'M', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [UserIdAsp], [NombreUsuario], [ApellidoUsuario], [GeneroUsuario], [EstadoUsuario]) VALUES (2, N'3befe6f9-f2d0-4c4b-9deb-4dac1c96b5e1', N'Juan Manuel', N'Viana Barrero', N'M', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [UserIdAsp], [NombreUsuario], [ApellidoUsuario], [GeneroUsuario], [EstadoUsuario]) VALUES (6, N'750f1553-9b9f-40bf-828c-267cbe40977e', N'Administrador', N'SAEDI', N'M', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [UserIdAsp], [NombreUsuario], [ApellidoUsuario], [GeneroUsuario], [EstadoUsuario]) VALUES (7, N'b51500c0-e1be-400c-93fe-00f25d719ab5', N'Alejandro', N'Sanchez', N'M', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [UserIdAsp], [NombreUsuario], [ApellidoUsuario], [GeneroUsuario], [EstadoUsuario]) VALUES (8, N'0a9a7283-a012-419b-8c67-d653108c9028', N'Patricio', N'Espinosa', N'M', 0)
INSERT [dbo].[Usuario] ([IdUsuario], [UserIdAsp], [NombreUsuario], [ApellidoUsuario], [GeneroUsuario], [EstadoUsuario]) VALUES (9, N'5d7c4fce-b80d-42e5-b9e0-bbf2f7f74976', N'Coordinador', N'SAEDI', N'F', 0)
INSERT [dbo].[Usuario] ([IdUsuario], [UserIdAsp], [NombreUsuario], [ApellidoUsuario], [GeneroUsuario], [EstadoUsuario]) VALUES (10, N'28c93998-00eb-4885-9023-a253e0d51c73', N'Tecnico', N'SAEDI', N'M', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [UserIdAsp], [NombreUsuario], [ApellidoUsuario], [GeneroUsuario], [EstadoUsuario]) VALUES (11, N'b0d2a449-2258-4312-a08a-c0363bd58829', N'Roberto', N'Freire', N'M', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [UserIdAsp], [NombreUsuario], [ApellidoUsuario], [GeneroUsuario], [EstadoUsuario]) VALUES (12, N'8b805ca9-9dc5-40b6-a003-413b3975ec98', N'Roberto', N'Freire', N'M', 0)
INSERT [dbo].[Usuario] ([IdUsuario], [UserIdAsp], [NombreUsuario], [ApellidoUsuario], [GeneroUsuario], [EstadoUsuario]) VALUES (13, N'5c140b70-32d6-49c2-b0c5-7aa6a9b8d4e9', N'José Luis', N'Recalde', N'M', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [UserIdAsp], [NombreUsuario], [ApellidoUsuario], [GeneroUsuario], [EstadoUsuario]) VALUES (14, N'bc69e841-a73d-4f84-ac83-3eba8693035e', N'Jimena', N'Suarez', N'F', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [UserIdAsp], [NombreUsuario], [ApellidoUsuario], [GeneroUsuario], [EstadoUsuario]) VALUES (15, N'a54bd398-e2fd-40f7-963e-535f52365608', N'Richard', N'Chango', N'M', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [UserIdAsp], [NombreUsuario], [ApellidoUsuario], [GeneroUsuario], [EstadoUsuario]) VALUES (16, N'9e76911a-615b-40f9-a68d-a1accb709c3d', N'Lucía', N'Troya', N'F', 1)
INSERT [dbo].[Usuario] ([IdUsuario], [UserIdAsp], [NombreUsuario], [ApellidoUsuario], [GeneroUsuario], [EstadoUsuario]) VALUES (17, N'79216974-00ea-40c8-bb53-24d6b7a32aca', N'Martha', N'Cañar', N'F', 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  Index [PK_ADULTO]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[ADULTO] ADD  CONSTRAINT [PK_ADULTO] PRIMARY KEY NONCLUSTERED 
(
	[IDPERSONA] ASC,
	[IDADULTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_A__C93A4C98E9A37F23]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__17477DE4DDFE4802]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__aspnet_A__3091033191F91A66]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_M__1788CC4DD5098478]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__CD67DC58448847FB]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_P__3214EC06B9180600]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_R__8AFACE1B7EB19013]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__aspnet_U__1788CC4D7C6E0D10]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_CERTIFICADOMEDICO]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[CERTIFICADOMEDICO] ADD  CONSTRAINT [PK_CERTIFICADOMEDICO] PRIMARY KEY NONCLUSTERED 
(
	[IDCERTIFICADOMEDICO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_ENFERMEDAD]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[ENFERMEDAD] ADD  CONSTRAINT [PK_ENFERMEDAD] PRIMARY KEY NONCLUSTERED 
(
	[IDENFEREMEDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_FAMILIA]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[FAMILIA] ADD  CONSTRAINT [PK_FAMILIA] PRIMARY KEY NONCLUSTERED 
(
	[IDFAMILIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_INDICADOR]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[INDICADOR] ADD  CONSTRAINT [PK_INDICADOR] PRIMARY KEY NONCLUSTERED 
(
	[IDINDICADOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__INDICADO__5D1042DD26A09CAF]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[INDICADOR] ADD  CONSTRAINT [UQ__INDICADO__5D1042DD26A09CAF] UNIQUE NONCLUSTERED 
(
	[NOMBREINDICADOR] ASC,
	[ESTADO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__INDICADO__5D1042DDB9B2EF35]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[INDICADOR] ADD  CONSTRAINT [UQ__INDICADO__5D1042DDB9B2EF35] UNIQUE NONCLUSTERED 
(
	[NOMBREINDICADOR] ASC,
	[ESTADO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK_JOVEN]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[JOVEN] ADD  CONSTRAINT [PK_JOVEN] PRIMARY KEY NONCLUSTERED 
(
	[IDPERSONA] ASC,
	[IDMENOREDAD] ASC,
	[IDJOVEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_MENOREDAD]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[MENOREDAD] ADD  CONSTRAINT [PK_MENOREDAD] PRIMARY KEY NONCLUSTERED 
(
	[IDPERSONA] ASC,
	[IDMENOREDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [CODIGO]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[MENOREDAD] ADD  CONSTRAINT [CODIGO] UNIQUE NONCLUSTERED 
(
	[CODIGOSADMENOREDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_NINIO]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[NINIO] ADD  CONSTRAINT [PK_NINIO] PRIMARY KEY NONCLUSTERED 
(
	[IDPERSONA] ASC,
	[IDMENOREDAD] ASC,
	[IDNINIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_OBJETIVO]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[OBJETIVO] ADD  CONSTRAINT [PK_OBJETIVO] PRIMARY KEY NONCLUSTERED 
(
	[IDOBJETIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_OCUPACION]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[OCUPACION] ADD  CONSTRAINT [PK_OCUPACION] PRIMARY KEY NONCLUSTERED 
(
	[IDALIMENTACION2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_ORIENTADOR]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[ORIENTADOR] ADD  CONSTRAINT [PK_ORIENTADOR] PRIMARY KEY NONCLUSTERED 
(
	[IDORIENTADOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_PARENTEZCO]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[PARENTEZCO] ADD  CONSTRAINT [PK_PARENTEZCO] PRIMARY KEY NONCLUSTERED 
(
	[IDPARENTEZCO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_PERSONA]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[PERSONA] ADD  CONSTRAINT [PK_PERSONA] PRIMARY KEY NONCLUSTERED 
(
	[IDPERSONA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_REPUESTA]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[POSIBLERESPUESTA] ADD  CONSTRAINT [PK_REPUESTA] PRIMARY KEY NONCLUSTERED 
(
	[IDPOSIBLERESPUESTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_PREGUNTA]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[PREGUNTA] ADD  CONSTRAINT [PK_PREGUNTA] PRIMARY KEY NONCLUSTERED 
(
	[IDPREGUNTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PROCESO_ORIENTADOR]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[PROCESO_ORIENTADOR] ADD  CONSTRAINT [IX_PROCESO_ORIENTADOR] UNIQUE NONCLUSTERED 
(
	[IDORIENTADOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_REPRESENTANTE]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[REPRESENTANTE] ADD  CONSTRAINT [PK_REPRESENTANTE] PRIMARY KEY NONCLUSTERED 
(
	[IDREPRESENTANTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_TIPOFAMILIA]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[TIPOFAMILIA] ADD  CONSTRAINT [PK_TIPOFAMILIA] PRIMARY KEY NONCLUSTERED 
(
	[IDTIPOFAMILIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_TIPOPERSONA]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[TIPOPERSONA] ADD  CONSTRAINT [PK_TIPOPERSONA] PRIMARY KEY NONCLUSTERED 
(
	[IDTIPOPERSONA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_TIPOPREGUNTA]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[TIPOPREGUNTA] ADD  CONSTRAINT [PK_TIPOPREGUNTA] PRIMARY KEY NONCLUSTERED 
(
	[IDTIPOPREGUNTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_VISITADOMICILIAR]    Script Date: 22/02/2018 8:51:47 ******/
ALTER TABLE [dbo].[VISITADOMICILIAR] ADD  CONSTRAINT [PK_VISITADOMICILIAR] PRIMARY KEY NONCLUSTERED 
(
	[IDVISITADOMICILIAR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[POSIBLERESPUESTA] ADD  CONSTRAINT [DF_EstadoRespuesta]  DEFAULT ((1)) FOR [ESTADOPOSIBLERESPUESTA]
GO
ALTER TABLE [dbo].[PREGUNTA] ADD  CONSTRAINT [DF_EstadoPregunta]  DEFAULT ((1)) FOR [ESTADOPREGUNTA]
GO
ALTER TABLE [dbo].[ADULTO]  WITH CHECK ADD  CONSTRAINT [FK_ADULTO_INHERITAN_PERSONA] FOREIGN KEY([IDPERSONA])
REFERENCES [dbo].[PERSONA] ([IDPERSONA])
GO
ALTER TABLE [dbo].[ADULTO] CHECK CONSTRAINT [FK_ADULTO_INHERITAN_PERSONA]
GO
ALTER TABLE [dbo].[ASISTENCIA]  WITH CHECK ADD  CONSTRAINT [FK_ASISTENCIA_ORIENTADORACARGODEPROCESOENPERIODO] FOREIGN KEY([IDLINEADEACCION], [IDORIENTADOR], [IDPROCESO], [IDPERIODO])
REFERENCES [dbo].[ORIENTADORACARGODEPROCESOENPERIODO] ([IDLINEADEACCION], [IDORIENTADOR], [IDPROCESO], [IDPERIODO])
GO
ALTER TABLE [dbo].[ASISTENCIA] CHECK CONSTRAINT [FK_ASISTENCIA_ORIENTADORACARGODEPROCESOENPERIODO]
GO
ALTER TABLE [dbo].[ASISTENCIA]  WITH CHECK ADD  CONSTRAINT [FK_ASISTENCIA_PERSONA] FOREIGN KEY([IDPERSONA])
REFERENCES [dbo].[PERSONA] ([IDPERSONA])
GO
ALTER TABLE [dbo].[ASISTENCIA] CHECK CONSTRAINT [FK_ASISTENCIA_PERSONA]
GO
ALTER TABLE [dbo].[ASISTENCIA]  WITH CHECK ADD  CONSTRAINT [FK_ASISTENCIA_TIPOASISTENCIA] FOREIGN KEY([IDTIPOASISTENCIA])
REFERENCES [dbo].[TIPOASISTENCIA] ([IDTIPOASISTENCIA])
GO
ALTER TABLE [dbo].[ASISTENCIA] CHECK CONSTRAINT [FK_ASISTENCIA_TIPOASISTENCIA]
GO
ALTER TABLE [dbo].[ASISTENCIAREUNION]  WITH CHECK ADD  CONSTRAINT [FK_ASISTENCIAREUNION_PERSONA] FOREIGN KEY([IDPERSONA])
REFERENCES [dbo].[PERSONA] ([IDPERSONA])
GO
ALTER TABLE [dbo].[ASISTENCIAREUNION] CHECK CONSTRAINT [FK_ASISTENCIAREUNION_PERSONA]
GO
ALTER TABLE [dbo].[ASISTENCIAREUNION]  WITH CHECK ADD  CONSTRAINT [FK_ASISTENCIAREUNION_REUNION] FOREIGN KEY([IDREUNION])
REFERENCES [dbo].[REUNION] ([IDREUNION])
GO
ALTER TABLE [dbo].[ASISTENCIAREUNION] CHECK CONSTRAINT [FK_ASISTENCIAREUNION_REUNION]
GO
ALTER TABLE [dbo].[ASISTENCIAREUNION]  WITH CHECK ADD  CONSTRAINT [FK_ASISTENCIAREUNION_TIPOASISTENCIA] FOREIGN KEY([IDTIPOASISTENCIA])
REFERENCES [dbo].[TIPOASISTENCIA] ([IDTIPOASISTENCIA])
GO
ALTER TABLE [dbo].[ASISTENCIAREUNION] CHECK CONSTRAINT [FK_ASISTENCIAREUNION_TIPOASISTENCIA]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_UsersInRoles_aspnet_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK_aspnet_UsersInRoles_aspnet_Users]
GO
ALTER TABLE [dbo].[CATEGORIATIPOFAMILIA]  WITH CHECK ADD  CONSTRAINT [fk_IDAREA] FOREIGN KEY([IDAREA])
REFERENCES [dbo].[AREA] ([IDAREA])
GO
ALTER TABLE [dbo].[CATEGORIATIPOFAMILIA] CHECK CONSTRAINT [fk_IDAREA]
GO
ALTER TABLE [dbo].[CERTIFICADOMEDICO]  WITH CHECK ADD  CONSTRAINT [FK_CERTIFIC_RELATIONS_ENFERMED] FOREIGN KEY([IDENFEREMEDAD])
REFERENCES [dbo].[ENFERMEDAD] ([IDENFEREMEDAD])
GO
ALTER TABLE [dbo].[CERTIFICADOMEDICO] CHECK CONSTRAINT [FK_CERTIFIC_RELATIONS_ENFERMED]
GO
ALTER TABLE [dbo].[CERTIFICADOMEDICO]  WITH CHECK ADD  CONSTRAINT [FK_CERTIFIC_RELATIONS_MENOREDA] FOREIGN KEY([IDPERSONA], [IDMENOREDAD])
REFERENCES [dbo].[MENOREDAD] ([IDPERSONA], [IDMENOREDAD])
GO
ALTER TABLE [dbo].[CERTIFICADOMEDICO] CHECK CONSTRAINT [FK_CERTIFIC_RELATIONS_MENOREDA]
GO
ALTER TABLE [dbo].[CUESTIONARIO]  WITH CHECK ADD  CONSTRAINT [FK_CUESTIONARIO_INDICADOR] FOREIGN KEY([IDINDICADOR])
REFERENCES [dbo].[INDICADOR] ([IDINDICADOR])
GO
ALTER TABLE [dbo].[CUESTIONARIO] CHECK CONSTRAINT [FK_CUESTIONARIO_INDICADOR]
GO
ALTER TABLE [dbo].[CUESTIONARIO]  WITH CHECK ADD  CONSTRAINT [FK_CUESTIONARIO_OBJETIVO] FOREIGN KEY([IDOBJETIVO])
REFERENCES [dbo].[OBJETIVO] ([IDOBJETIVO])
GO
ALTER TABLE [dbo].[CUESTIONARIO] CHECK CONSTRAINT [FK_CUESTIONARIO_OBJETIVO]
GO
ALTER TABLE [dbo].[CUESTIONARIO]  WITH CHECK ADD  CONSTRAINT [FK_CUESTIONARIO_PREGUNTA] FOREIGN KEY([IDPREGUNTA])
REFERENCES [dbo].[PREGUNTA] ([IDPREGUNTA])
GO
ALTER TABLE [dbo].[CUESTIONARIO] CHECK CONSTRAINT [FK_CUESTIONARIO_PREGUNTA]
GO
ALTER TABLE [dbo].[CUESTIONARIO]  WITH CHECK ADD  CONSTRAINT [FK_CUESTIONARIO_PROCESO] FOREIGN KEY([IDPROCESO])
REFERENCES [dbo].[PROCESO] ([IDPROCESO])
GO
ALTER TABLE [dbo].[CUESTIONARIO] CHECK CONSTRAINT [FK_CUESTIONARIO_PROCESO]
GO
ALTER TABLE [dbo].[FAMILIA]  WITH CHECK ADD  CONSTRAINT [FK_FAMILIA_RELATIONS_TIPOFAMI] FOREIGN KEY([IDTIPOFAMILIA])
REFERENCES [dbo].[TIPOFAMILIA] ([IDTIPOFAMILIA])
GO
ALTER TABLE [dbo].[FAMILIA] CHECK CONSTRAINT [FK_FAMILIA_RELATIONS_TIPOFAMI]
GO
ALTER TABLE [dbo].[JOVEN]  WITH CHECK ADD  CONSTRAINT [FK_JOVEN_INHERITAN_MENOREDA] FOREIGN KEY([IDPERSONA], [IDMENOREDAD])
REFERENCES [dbo].[MENOREDAD] ([IDPERSONA], [IDMENOREDAD])
GO
ALTER TABLE [dbo].[JOVEN] CHECK CONSTRAINT [FK_JOVEN_INHERITAN_MENOREDA]
GO
ALTER TABLE [dbo].[LINEADEACCION]  WITH CHECK ADD  CONSTRAINT [FK_LINEADEACCION_TIPOPERSONA] FOREIGN KEY([IDTIPOPERSONA])
REFERENCES [dbo].[TIPOPERSONA] ([IDTIPOPERSONA])
GO
ALTER TABLE [dbo].[LINEADEACCION] CHECK CONSTRAINT [FK_LINEADEACCION_TIPOPERSONA]
GO
ALTER TABLE [dbo].[MATRICULA]  WITH CHECK ADD  CONSTRAINT [FK_MATRICULA_ORIENTADORACARGODEPROCESOENPERIODO] FOREIGN KEY([IDLINEADEACCION], [IDORIENTADOR], [IDPROCESO], [IDPERIODO])
REFERENCES [dbo].[ORIENTADORACARGODEPROCESOENPERIODO] ([IDLINEADEACCION], [IDORIENTADOR], [IDPROCESO], [IDPERIODO])
GO
ALTER TABLE [dbo].[MATRICULA] CHECK CONSTRAINT [FK_MATRICULA_ORIENTADORACARGODEPROCESOENPERIODO]
GO
ALTER TABLE [dbo].[MATRICULA]  WITH CHECK ADD  CONSTRAINT [FK_MATRICULA_PERSONA] FOREIGN KEY([IDPERSONA])
REFERENCES [dbo].[PERSONA] ([IDPERSONA])
GO
ALTER TABLE [dbo].[MATRICULA] CHECK CONSTRAINT [FK_MATRICULA_PERSONA]
GO
ALTER TABLE [dbo].[MENOREDAD]  WITH CHECK ADD  CONSTRAINT [FK_MENOREDAD_PERSONA] FOREIGN KEY([IDPERSONA])
REFERENCES [dbo].[PERSONA] ([IDPERSONA])
GO
ALTER TABLE [dbo].[MENOREDAD] CHECK CONSTRAINT [FK_MENOREDAD_PERSONA]
GO
ALTER TABLE [dbo].[MENOREDAD]  WITH CHECK ADD  CONSTRAINT [FK_MENOREDAD_REPRESENTANTE] FOREIGN KEY([IDREPRESENTANTE])
REFERENCES [dbo].[REPRESENTANTE] ([IDREPRESENTANTE])
GO
ALTER TABLE [dbo].[MENOREDAD] CHECK CONSTRAINT [FK_MENOREDAD_REPRESENTANTE]
GO
ALTER TABLE [dbo].[NINIO]  WITH CHECK ADD  CONSTRAINT [FK_NINIO_MENOREDAD] FOREIGN KEY([IDPERSONA], [IDMENOREDAD])
REFERENCES [dbo].[MENOREDAD] ([IDPERSONA], [IDMENOREDAD])
GO
ALTER TABLE [dbo].[NINIO] CHECK CONSTRAINT [FK_NINIO_MENOREDAD]
GO
ALTER TABLE [dbo].[ORIENTADOR]  WITH CHECK ADD  CONSTRAINT [FK_ORIENTADOR_aspnet_Users] FOREIGN KEY([USERIDASP])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[ORIENTADOR] CHECK CONSTRAINT [FK_ORIENTADOR_aspnet_Users]
GO
ALTER TABLE [dbo].[ORIENTADORACARGODEPROCESOENPERIODO]  WITH CHECK ADD  CONSTRAINT [FK_ORIENTADORACARGODEPROCESOENPERIODO_LINEADEACCION] FOREIGN KEY([IDLINEADEACCION])
REFERENCES [dbo].[LINEADEACCION] ([IDLINEADEACCION])
GO
ALTER TABLE [dbo].[ORIENTADORACARGODEPROCESOENPERIODO] CHECK CONSTRAINT [FK_ORIENTADORACARGODEPROCESOENPERIODO_LINEADEACCION]
GO
ALTER TABLE [dbo].[ORIENTADORACARGODEPROCESOENPERIODO]  WITH CHECK ADD  CONSTRAINT [FK_ORIENTADORACARGODEPROCESOENPERIODO_ORIENTADOR] FOREIGN KEY([IDORIENTADOR])
REFERENCES [dbo].[ORIENTADOR] ([IDORIENTADOR])
GO
ALTER TABLE [dbo].[ORIENTADORACARGODEPROCESOENPERIODO] CHECK CONSTRAINT [FK_ORIENTADORACARGODEPROCESOENPERIODO_ORIENTADOR]
GO
ALTER TABLE [dbo].[ORIENTADORACARGODEPROCESOENPERIODO]  WITH CHECK ADD  CONSTRAINT [FK_ORIENTADORACARGODEPROCESOENPERIODO_PERIODO] FOREIGN KEY([IDPERIODO])
REFERENCES [dbo].[PERIODO] ([IDPERIODO])
GO
ALTER TABLE [dbo].[ORIENTADORACARGODEPROCESOENPERIODO] CHECK CONSTRAINT [FK_ORIENTADORACARGODEPROCESOENPERIODO_PERIODO]
GO
ALTER TABLE [dbo].[ORIENTADORACARGODEPROCESOENPERIODO]  WITH CHECK ADD  CONSTRAINT [FK_ORIENTADORACARGODEPROCESOENPERIODO_PROCESO] FOREIGN KEY([IDPROCESO])
REFERENCES [dbo].[PROCESO] ([IDPROCESO])
GO
ALTER TABLE [dbo].[ORIENTADORACARGODEPROCESOENPERIODO] CHECK CONSTRAINT [FK_ORIENTADORACARGODEPROCESOENPERIODO_PROCESO]
GO
ALTER TABLE [dbo].[PERIODO]  WITH CHECK ADD  CONSTRAINT [FK_PERIODO_TIPOPERIODO] FOREIGN KEY([IDTIPOPERIODO])
REFERENCES [dbo].[TIPOPERIODO] ([IDTIPOPERIODO])
GO
ALTER TABLE [dbo].[PERIODO] CHECK CONSTRAINT [FK_PERIODO_TIPOPERIODO]
GO
ALTER TABLE [dbo].[PERIODO_PERSONA_FAMILIA]  WITH CHECK ADD  CONSTRAINT [fk_IDFAMILIA] FOREIGN KEY([IDFAMILIA])
REFERENCES [dbo].[FAMILIA] ([IDFAMILIA])
GO
ALTER TABLE [dbo].[PERIODO_PERSONA_FAMILIA] CHECK CONSTRAINT [fk_IDFAMILIA]
GO
ALTER TABLE [dbo].[PERIODO_PERSONA_FAMILIA]  WITH CHECK ADD  CONSTRAINT [fk_IDPERIODO] FOREIGN KEY([IDPERIODO])
REFERENCES [dbo].[PERIODO] ([IDPERIODO])
GO
ALTER TABLE [dbo].[PERIODO_PERSONA_FAMILIA] CHECK CONSTRAINT [fk_IDPERIODO]
GO
ALTER TABLE [dbo].[PERIODO_PERSONA_FAMILIA]  WITH CHECK ADD  CONSTRAINT [FK_PERIODO_PERSONA_FAMILIA_IDREPRESENTANTE] FOREIGN KEY([IDREPRESENTANTE])
REFERENCES [dbo].[PERSONA] ([IDPERSONA])
GO
ALTER TABLE [dbo].[PERIODO_PERSONA_FAMILIA] CHECK CONSTRAINT [FK_PERIODO_PERSONA_FAMILIA_IDREPRESENTANTE]
GO
ALTER TABLE [dbo].[PERIODO_PERSONA_FAMILIA]  WITH CHECK ADD  CONSTRAINT [FK_PERIODO_PERSONA_FAMILIA_PARENTEZCO] FOREIGN KEY([IDPARENTEZCO])
REFERENCES [dbo].[PARENTEZCO] ([IDPARENTEZCO])
GO
ALTER TABLE [dbo].[PERIODO_PERSONA_FAMILIA] CHECK CONSTRAINT [FK_PERIODO_PERSONA_FAMILIA_PARENTEZCO]
GO
ALTER TABLE [dbo].[PERSONA_FAMILIA]  WITH CHECK ADD  CONSTRAINT [FK_PERSONA_FAMILIA_FAMILIA] FOREIGN KEY([IDFAMILIA])
REFERENCES [dbo].[FAMILIA] ([IDFAMILIA])
GO
ALTER TABLE [dbo].[PERSONA_FAMILIA] CHECK CONSTRAINT [FK_PERSONA_FAMILIA_FAMILIA]
GO
ALTER TABLE [dbo].[PREGUNTA]  WITH CHECK ADD  CONSTRAINT [FK_PREGUNTA_RELATIONS_TIPOPREG] FOREIGN KEY([IDTIPOPREGUNTA])
REFERENCES [dbo].[TIPOPREGUNTA] ([IDTIPOPREGUNTA])
GO
ALTER TABLE [dbo].[PREGUNTA] CHECK CONSTRAINT [FK_PREGUNTA_RELATIONS_TIPOPREG]
GO
ALTER TABLE [dbo].[PREGUNTASCONPOSIBLESRESPUESTAS]  WITH CHECK ADD  CONSTRAINT [FK_PREGUNTASCONPOSIBLESRESPUESTAS_POSIBLERESPUESTA] FOREIGN KEY([IDPOSIBLERESPUESTA])
REFERENCES [dbo].[POSIBLERESPUESTA] ([IDPOSIBLERESPUESTA])
GO
ALTER TABLE [dbo].[PREGUNTASCONPOSIBLESRESPUESTAS] CHECK CONSTRAINT [FK_PREGUNTASCONPOSIBLESRESPUESTAS_POSIBLERESPUESTA]
GO
ALTER TABLE [dbo].[PREGUNTASCONPOSIBLESRESPUESTAS]  WITH CHECK ADD  CONSTRAINT [FK_PREGUNTASCONPOSIBLESRESPUESTAS_PREGUNTA] FOREIGN KEY([IDPREGUNTA])
REFERENCES [dbo].[PREGUNTA] ([IDPREGUNTA])
GO
ALTER TABLE [dbo].[PREGUNTASCONPOSIBLESRESPUESTAS] CHECK CONSTRAINT [FK_PREGUNTASCONPOSIBLESRESPUESTAS_PREGUNTA]
GO
ALTER TABLE [dbo].[PROCESO_ORIENTADOR]  WITH CHECK ADD  CONSTRAINT [FK_PROCESO_ORIENTADOR_ORIENTADOR] FOREIGN KEY([IDORIENTADOR])
REFERENCES [dbo].[ORIENTADOR] ([IDORIENTADOR])
GO
ALTER TABLE [dbo].[PROCESO_ORIENTADOR] CHECK CONSTRAINT [FK_PROCESO_ORIENTADOR_ORIENTADOR]
GO
ALTER TABLE [dbo].[PROCESO_ORIENTADOR]  WITH CHECK ADD  CONSTRAINT [FK_PROCESO_ORIENTADOR_PROCESO] FOREIGN KEY([IDPROCESO])
REFERENCES [dbo].[PROCESO] ([IDPROCESO])
GO
ALTER TABLE [dbo].[PROCESO_ORIENTADOR] CHECK CONSTRAINT [FK_PROCESO_ORIENTADOR_PROCESO]
GO
ALTER TABLE [dbo].[REPRESENTANTE]  WITH CHECK ADD  CONSTRAINT [FK_REPRESEN_RELATIONS_ORIENTAD] FOREIGN KEY([IDORIENTADOR])
REFERENCES [dbo].[ORIENTADOR] ([IDORIENTADOR])
GO
ALTER TABLE [dbo].[REPRESENTANTE] CHECK CONSTRAINT [FK_REPRESEN_RELATIONS_ORIENTAD]
GO
ALTER TABLE [dbo].[REPRESENTANTE]  WITH CHECK ADD  CONSTRAINT [FK_REPRESEN_RELATIONS_PERSONA] FOREIGN KEY([IDPERSONA])
REFERENCES [dbo].[PERSONA] ([IDPERSONA])
GO
ALTER TABLE [dbo].[REPRESENTANTE] CHECK CONSTRAINT [FK_REPRESEN_RELATIONS_PERSONA]
GO
ALTER TABLE [dbo].[REUNION]  WITH CHECK ADD  CONSTRAINT [FK_REUNION_ORIENTADORACARGODEPROCESOENPERIODO] FOREIGN KEY([IDLINEADEACCION], [IDORIENTADOR], [IDPROCESO], [IDPERIODO])
REFERENCES [dbo].[ORIENTADORACARGODEPROCESOENPERIODO] ([IDLINEADEACCION], [IDORIENTADOR], [IDPROCESO], [IDPERIODO])
GO
ALTER TABLE [dbo].[REUNION] CHECK CONSTRAINT [FK_REUNION_ORIENTADORACARGODEPROCESOENPERIODO]
GO
ALTER TABLE [dbo].[REUNION]  WITH CHECK ADD  CONSTRAINT [FK_REUNION_TIPOASISTENTES] FOREIGN KEY([IDTIPOASISTENTES])
REFERENCES [dbo].[TIPOASISTENTES] ([IDTIPOASISTENTES])
GO
ALTER TABLE [dbo].[REUNION] CHECK CONSTRAINT [FK_REUNION_TIPOASISTENTES]
GO
ALTER TABLE [dbo].[SOLUCIONCUESTIONARIO]  WITH CHECK ADD  CONSTRAINT [FK_SOLUCIONCUESTIONARIO_CUESTIONARIO] FOREIGN KEY([IDPROCESO], [IDOBJETIVO], [IDINDICADOR], [IDPREGUNTA])
REFERENCES [dbo].[CUESTIONARIO] ([IDPROCESO], [IDOBJETIVO], [IDINDICADOR], [IDPREGUNTA])
GO
ALTER TABLE [dbo].[SOLUCIONCUESTIONARIO] CHECK CONSTRAINT [FK_SOLUCIONCUESTIONARIO_CUESTIONARIO]
GO
ALTER TABLE [dbo].[SOLUCIONCUESTIONARIO]  WITH CHECK ADD  CONSTRAINT [FK_SOLUCIONCUESTIONARIO_PERIODO] FOREIGN KEY([IDPERIODO])
REFERENCES [dbo].[PERIODO] ([IDPERIODO])
GO
ALTER TABLE [dbo].[SOLUCIONCUESTIONARIO] CHECK CONSTRAINT [FK_SOLUCIONCUESTIONARIO_PERIODO]
GO
ALTER TABLE [dbo].[SOLUCIONCUESTIONARIO]  WITH CHECK ADD  CONSTRAINT [FK_SOLUCIONCUESTIONARIO_PERSONA] FOREIGN KEY([IDPERSONA])
REFERENCES [dbo].[PERSONA] ([IDPERSONA])
GO
ALTER TABLE [dbo].[SOLUCIONCUESTIONARIO] CHECK CONSTRAINT [FK_SOLUCIONCUESTIONARIO_PERSONA]
GO
ALTER TABLE [dbo].[VISITADOMICILIAR]  WITH CHECK ADD  CONSTRAINT [FK_VISITADO_RELATIONS_FAMILIA] FOREIGN KEY([IDFAMILIA])
REFERENCES [dbo].[FAMILIA] ([IDFAMILIA])
GO
ALTER TABLE [dbo].[VISITADOMICILIAR] CHECK CONSTRAINT [FK_VISITADO_RELATIONS_FAMILIA]
GO
ALTER TABLE [dbo].[AREA]  WITH CHECK ADD CHECK  (([NOMBREAREA]=upper([NOMBREAREA]) AND NOT [NOMBREAREA] like ' %' AND NOT [NOMBREAREA] like '% '))
GO
ALTER TABLE [dbo].[AREA]  WITH CHECK ADD CHECK  (([NOMBREAREA]=upper([NOMBREAREA]) AND NOT [NOMBREAREA] like ' %' AND NOT [NOMBREAREA] like '% '))
GO
ALTER TABLE [dbo].[CATEGORIATIPOFAMILIA]  WITH CHECK ADD CHECK  (([NOMBRECATEGORIATIPOFAMILIA]=upper([NOMBRECATEGORIATIPOFAMILIA]) AND NOT [NOMBRECATEGORIATIPOFAMILIA] like ' %' AND NOT [NOMBRECATEGORIATIPOFAMILIA] like '% '))
GO
ALTER TABLE [dbo].[CATEGORIATIPOFAMILIA]  WITH CHECK ADD CHECK  (([NOMBRECATEGORIATIPOFAMILIA]=upper([NOMBRECATEGORIATIPOFAMILIA]) AND NOT [NOMBRECATEGORIATIPOFAMILIA] like ' %' AND NOT [NOMBRECATEGORIATIPOFAMILIA] like '% '))
GO
/****** Object:  StoredProcedure [dbo].[ActualizaOrientadorMembership]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizaOrientadorMembership]
@IdUsuario			int,
@NombreUsuario		varchar(50),
@ApellidoUsuairo	varchar(50),
@GeneroUsuario		char(1),
@EstadooUsuario		bit,
@UserName			nvarchar(256),
@LoweredUserName	nvarchar(256),
@Email				nvarchar(256),
@LoweredEmail		nvarchar(256)
AS
BEGIN TRY
	BEGIN TRANSACTION
		DECLARE @aspUserId uniqueidentifier 
		SET @aspUserId = (SELECT UserId FROM aspnet_Users,ORIENTADOR
		WHERE aspnet_Users.UserId = ORIENTADOR.USERIDASP AND ORIENTADOR.IDORIENTADOR = @IdUsuario);
		UPDATE aspnet_Users
		SET UserName = @UserName,
		LoweredUserName = @LoweredUserName
		WHERE UserId = @aspUserId;
		UPDATE aspnet_Membership
		SET Email = @Email,
		LoweredEmail = @LoweredEmail
		WHERE UserId = @aspUserId
		UPDATE ORIENTADOR
		SET NOMBREORIENTADOR = @NombreUsuario,
		APELLIDOORIENTADOR= @ApellidoUsuairo,
		GENEROORIENTADOR = @GeneroUsuario,
		ESTADOORIENTADOR = @EstadooUsuario
		WHERE IDORIENTADOR= @IdUsuario
	COMMIT;
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch


/****** Object:  StoredProcedure [dbo].[ActualizarUsuarioMembership]    Script Date: 27/11/2017 4:24:18 ******/
SET ANSI_NULLS ON






GO
/****** Object:  StoredProcedure [dbo].[ActualizarPass]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarPass]
@IdUsuario			int,
@NuevaPass			nvarchar(128)
AS
BEGIN TRY
	BEGIN TRANSACTION
		DECLARE @aspUserId uniqueidentifier 
		SET @aspUserId = (SELECT UserId FROM aspnet_Users,Usuario 
		WHERE aspnet_Users.UserId = Usuario.UserIdAsp AND Usuario.IdUsuario = @IdUsuario);
		UPDATE aspnet_Membership
		SET Password = @NuevaPass
		WHERE UserId = @aspUserId
	COMMIT;
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch








GO
/****** Object:  StoredProcedure [dbo].[ActualizarPassOrientador]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarPassOrientador]
@IdUsuario			int,
@NuevaPass			nvarchar(128)
AS
BEGIN TRY
	BEGIN TRANSACTION
		DECLARE @aspUserId uniqueidentifier 
		SET @aspUserId = (SELECT UserId FROM aspnet_Users,ORIENTADOR 
		WHERE aspnet_Users.UserId = ORIENTADOR.USERIDASP AND ORIENTADOR.IDORIENTADOR = @IdUsuario);
		UPDATE aspnet_Membership
		SET Password = @NuevaPass
		WHERE UserId = @aspUserId
	COMMIT;
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch








GO
/****** Object:  StoredProcedure [dbo].[ActualizarUsuarioMembership]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarUsuarioMembership]
@IdUsuario			int,
@NombreUsuario		varchar(50),
@ApellidoUsuairo	varchar(50),
@GeneroUsuario		char(1),
@EstadoUsuario		bit,
@UserName			nvarchar(256),
@LoweredUserName	nvarchar(256),
@Email				nvarchar(256),
@LoweredEmail		nvarchar(256)
AS
BEGIN TRY
	BEGIN TRANSACTION
		DECLARE @aspUserId uniqueidentifier 
		SET @aspUserId = (SELECT UserId FROM aspnet_Users,Usuario 
		WHERE aspnet_Users.UserId = Usuario.UserIdAsp AND Usuario.IdUsuario = @IdUsuario);
		UPDATE aspnet_Users
		SET UserName = @UserName,
		LoweredUserName = @LoweredUserName
		WHERE UserId = @aspUserId;
		UPDATE aspnet_Membership
		SET Email = @Email,
		LoweredEmail = @LoweredEmail
		WHERE UserId = @aspUserId
		UPDATE Usuario
		SET NombreUsuario = @NombreUsuario,
		ApellidoUsuario = @ApellidoUsuairo,
		GeneroUsuario = @GeneroUsuario,
		EstadoUsuario = @EstadoUsuario
		WHERE IdUsuario = @IdUsuario
	COMMIT;
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch






GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     








GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END








GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        








GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END








GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia1]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaDia1]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis1 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO =@IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO =@IdProceso and FECHAASISTENCIA = concat('1/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis1) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch

GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia10]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaDia10]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis10 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO =@IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO =@IdProceso and FECHAASISTENCIA = concat('10/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis10) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch

GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia11]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaDia11]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis11 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso  and FECHAASISTENCIA = concat('11/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis11) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch



GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia12]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaDia12]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis12 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('12/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis12) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch

GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia13]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia13]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis13 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('13/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis13) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia14]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia14]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis14 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('14/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis14) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia15]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia15]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis15 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('15/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis15) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia16]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia16]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis16 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('16/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis16) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia17]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia17]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis17 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('17/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis17) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia18]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia18]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis18 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('18/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis18) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia19]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia19]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis19 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('19/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis19) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia2]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia2]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis2 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('2/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis2) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia20]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia20]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis20 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('20/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis20) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia21]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia21]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis21 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('21/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis21) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia22]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia22]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis22 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('22/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis22) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia23]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia23]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis23 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('23/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis23) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia24]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia24]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis24 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('24/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis24) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia25]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia25]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis25 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('25/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis25) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia26]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia26]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis26 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('26/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis26) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia27]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia27]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis27 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('27/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis27) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia28]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia28]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis28 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('28/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis28) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia29]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia29]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis29 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));
	if @Mes!=2 begin
	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('29/',@Mes,'/',@Anio);
	end
	If Exists(Select 1 from @R3) Begin 
	insert into @R1(idpersona,Asis29) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia3]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia3]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis3 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('3/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis3) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia30]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia30]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis30 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));
	if @Mes!=2 begin
	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('30/',@Mes,'/',@Anio);
	end
	If Exists(Select 1 from @R3) Begin 
	insert into @R1(idpersona,Asis30) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia31]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia31]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int, Nombre varchar(100),Asis31 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre1 varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre1) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));
	if @Mes = 1 or @Mes = 3 or @Mes = 5 or @Mes = 7 or @Mes = 8 or @Mes = 10 or @Mes = 12 begin
	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('31/',@Mes,'/',@Anio);
	end
	If Exists(Select 1 from @R3) Begin 
	insert into @R1(idpersona,Nombre,Asis31) 
	SELECT IdPersona,Nombre1,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona, Nombre) 
	SELECT IdPersona, Nombre1
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia4]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia4]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis4 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('4/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis4) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia5]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia5]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis5 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('5/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis5) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia6]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia6]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis6 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('6/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis6) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia7]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia7]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis7 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('7/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis7) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia8]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia8]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis8 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('8/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis8) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaDia9]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaDia9]
@Orientador int,
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int,Asis9 int);
	declare @R2 table (a int identity (1,1), IdPersona int, Nombre varchar(100));
	declare @R3 table (b int identity (1,1), IdPersona1 int, Asis1 int);

	insert into @R2(IdPersona, Nombre) SELECT DISTINCT Asistencia.IDPERSONA,concat(PERSONA.PRIMERNOMBREPERSONA, ' ',PERSONA.PRIMERAPELLIDOPERSONA)
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes,'/',@Anio));

	insert into @R3(IdPersona1, Asis1) SELECT DISTINCT ASISTENCIA.IDPERSONA, IDTIPOASISTENCIA
	FROM ASISTENCIA
	inner join PERSONA on ASISTENCIA.IDPERSONA= PERSONA.IDPERSONA
	where ASISTENCIA.IDORIENTADOR = @Orientador and IDPROCESO = @IdProceso and FECHAASISTENCIA = concat('9/',@Mes,'/',@Anio);
	
	If Exists(Select 1 from @R3) Begin
	insert into @R1(idpersona,Asis9) 
	SELECT IdPersona,Asis1
	FROM @R2, @R3
	where IdPersona=IdPersona1 and a=b
	end
	else 
	begin
	insert into @R1(idpersona) 
	SELECT IdPersona
	FROM @R2
	end

	SELECT distinct * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaNoviembreTotal]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaNoviembreTotal]
AS
Begin try
	Begin Transaction
	
	select count(*) as Total, Asistencia.IDOrientador FROM ASISTENCIA 
	inner join ORIENTADOR on ORIENTADOR.IDORIENTADOR=ASISTENCIA.IDORIENTADOR 
	where FECHAASISTENCIA between '1/11/2017' and '30/11/2017'
	GROUP BY Asistencia.IDOrientador;
	
	commit;
	Print 'Exito';
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch










GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaOctubreTotal]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaOctubreTotal]
AS
Begin try
	Begin Transaction
	
	select count(*) as Total, Asistencia.IDOrientador FROM ASISTENCIA 
	inner join ORIENTADOR on ORIENTADOR.IDORIENTADOR=ASISTENCIA.IDORIENTADOR 
	where FECHAASISTENCIA between '1/10/2017' and '31/10/2017'
	GROUP BY Asistencia.IDOrientador;
	
	commit;
	Print 'Exito';
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaParametro]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[ConsultaAsistenciaParametro]
@Anio int,
@Mes int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @PrimerLunes datetime;
	SELECT @PrimerLunes = DATEADD(WEEK, DATEDIFF(WEEK, 0, DATEADD(DAY, 6-DATEPART(DAY, concat('1/',@Mes,'/',@Anio)), concat('1/',@Mes,'/',@Anio))), 0);	
	declare @UltimoDia datetime;
	SELECT @UltimoDia= EOMONTH (concat('1/',@Mes,'/',@Anio));
	select Asistencia.IDOrientador,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and DATEADD(day, 6, @PrimerLunes) THEN 1 END) as Semana1,
	count(CASE WHEN (IDTIPOASISTENCIA = 2) and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and DATEADD(day, 6, @PrimerLunes) THEN 1 END) as Semana1Ausentes,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between DATEADD(day, 7, @PrimerLunes) and DATEADD(day, 13, @PrimerLunes) THEN 1 END) as Semana2,
	count(CASE WHEN (IDTIPOASISTENCIA = 2) and FECHAASISTENCIA between DATEADD(day, 7, @PrimerLunes) and DATEADD(day, 13, @PrimerLunes) THEN 1 END) as Semana2Ausentes,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between DATEADD(day, 14, @PrimerLunes) and DATEADD(day, 20, @PrimerLunes) THEN 1 END) as Semana3,
	count(CASE WHEN (IDTIPOASISTENCIA = 2) and FECHAASISTENCIA between DATEADD(day, 14, @PrimerLunes) and DATEADD(day, 20, @PrimerLunes) THEN 1 END) as Semana3Ausentes,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between DATEADD(day, 21, @PrimerLunes) and @UltimoDia THEN 1 END) as Semana4,
	count(CASE WHEN (IDTIPOASISTENCIA = 2) and FECHAASISTENCIA between DATEADD(day, 21, @PrimerLunes) and @UltimoDia THEN 1 END) as Semana4Ausentes
	from ASISTENCIA
	inner join ORIENTADOR on ORIENTADOR.IDORIENTADOR=ASISTENCIA.IDORIENTADOR
	where IDPROCESO=@IdProceso
	group by  Asistencia.IDOrientador;

	commit;
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch

GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaParametroO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaParametroO]
@Anio int,
@Mes int, 
@IdOrientador int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @PrimerLunes datetime;
	SELECT @PrimerLunes = DATEADD(WEEK, DATEDIFF(WEEK, 0, DATEADD(DAY, 6-DATEPART(DAY, concat('1/',@Mes,'/',@Anio)), concat('1/',@Mes,'/',@Anio))), 0);	
	declare @UltimoDia datetime;
	SELECT @UltimoDia= EOMONTH (concat('1/',@Mes,'/',@Anio));
	select Asistencia.IDOrientador,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and DATEADD(day, 6, @PrimerLunes) THEN 1 END) as Semana1,
	count(CASE WHEN (IDTIPOASISTENCIA = 2) and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and DATEADD(day, 6, @PrimerLunes) THEN 1 END) as Semana1Ausentes,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between DATEADD(day, 7, @PrimerLunes) and DATEADD(day, 13, @PrimerLunes) THEN 1 END) as Semana2,
	count(CASE WHEN (IDTIPOASISTENCIA = 2) and FECHAASISTENCIA between DATEADD(day, 7, @PrimerLunes) and DATEADD(day, 13, @PrimerLunes) THEN 1 END) as Semana2Ausentes,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between DATEADD(day, 14, @PrimerLunes) and DATEADD(day, 20, @PrimerLunes) THEN 1 END) as Semana3,
	count(CASE WHEN (IDTIPOASISTENCIA = 2) and FECHAASISTENCIA between DATEADD(day, 14, @PrimerLunes) and DATEADD(day, 20, @PrimerLunes) THEN 1 END) as Semana3Ausentes,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between DATEADD(day, 21, @PrimerLunes) and @UltimoDia THEN 1 END) as Semana4,
	count(CASE WHEN (IDTIPOASISTENCIA = 2) and FECHAASISTENCIA between DATEADD(day, 21, @PrimerLunes) and @UltimoDia THEN 1 END) as Semana4Ausentes
	from ASISTENCIA
	inner join ORIENTADOR on ORIENTADOR.IDORIENTADOR=ASISTENCIA.IDORIENTADOR
	where ORIENTADOR.IDORIENTADOR=@IdOrientador and IDPROCESO = @IdProceso
	group by  Asistencia.IDOrientador;

	commit;
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch


GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaPorPersonaReunion]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaPorPersonaReunion]
@Persona int,
@Mes int,
@Anio int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (Asis int, CantidadReuniones int, Nombre varchar(100), totalasistencias int, totalinscritos int);
	
	declare @Asistencias int
	select @Asistencias = count(*) from ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION = REUNION.IDREUNION 
	where IDPROCESO=@IdProceso and month(FECHAREUNION) = @Mes and year(FECHAREUNION)= @Anio and IDPERSONA = @Persona and IDTIPOASISTENCIA != 2; 
	
	declare @Nombre varchar(100)
	select @Nombre = concat(PRIMERNOMBREPERSONA, ' ', PRIMERAPELLIDOPERSONA) from PERSONA where IDPERSONA=@Persona;

	declare @AsistenciaTotal int
	select @AsistenciaTotal = count(*) from ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION = REUNION.IDREUNION 
	where IDPROCESO=@IdProceso and month(FECHAREUNION) = @Mes and year(FECHAREUNION)= @Anio and IDTIPOASISTENCIA != 2; 

	declare @InscritosTotal int
	select @InscritosTotal = count(*) from ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION = REUNION.IDREUNION 
	where IDPROCESO=@IdProceso and month(FECHAREUNION) = @Mes and year(FECHAREUNION)= @Anio; 

	insert into @R1(Asis, CantidadReuniones, Nombre, totalasistencias, totalinscritos)
	select @Asistencias,count(*),@Nombre, @AsistenciaTotal, @InscritosTotal from ASISTENCIAREUNION
	inner join REUNION on ASISTENCIAREUNION.IDREUNION = REUNION.IDREUNION
	where IDPROCESO=@IdProceso and month(FECHAREUNION) = @Mes and year(FECHAREUNION)= @Anio and IDPERSONA = @Persona;

	SELECT * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch
GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaPorPersonaReunionO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaPorPersonaReunionO]
@Persona int,
@Mes int,
@Anio int,
@IdOrientador int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @R1 table (Asis int, CantidadReuniones int, Nombre varchar(100), totalasistencias int, totalinscritos int);
	
	declare @Asistencias int
	select @Asistencias = count(*) from ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION = REUNION.IDREUNION 
	inner join Orientador on REUNION.IDORIENTADOR = ORIENTADOR.IDORIENTADOR
	where ORIENTADOR.IDORIENTADOR=@IdOrientador and IDPROCESO = @IdProceso
	and month(FECHAREUNION) = @Mes and year(FECHAREUNION)= @Anio and IDPERSONA = @Persona and IDTIPOASISTENCIA != 2
	; 
	
	declare @Nombre varchar(100)
	select @Nombre = concat(PRIMERNOMBREPERSONA, ' ', PRIMERAPELLIDOPERSONA) from PERSONA where IDPERSONA=@Persona;

	declare @AsistenciaTotal int
	select @AsistenciaTotal = count(*) from ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION = REUNION.IDREUNION 
	inner join Orientador on REUNION.IDORIENTADOR = ORIENTADOR.IDORIENTADOR
	where ORIENTADOR.IDORIENTADOR=@IdOrientador and IDPROCESO = @IdProceso
	and month(FECHAREUNION) = @Mes and year(FECHAREUNION)= @Anio and IDTIPOASISTENCIA != 2; 

	declare @InscritosTotal int
	select @InscritosTotal = count(*) from ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION = REUNION.IDREUNION 
	inner join Orientador on REUNION.IDORIENTADOR = ORIENTADOR.IDORIENTADOR
	where ORIENTADOR.IDORIENTADOR=@IdOrientador and IDPROCESO = @IdProceso
	and month(FECHAREUNION) = @Mes and year(FECHAREUNION)= @Anio; 

	insert into @R1(Asis, CantidadReuniones, Nombre, totalasistencias, totalinscritos)
	select @Asistencias,count(*),@Nombre, @AsistenciaTotal, @InscritosTotal from ASISTENCIAREUNION
	inner join REUNION on ASISTENCIAREUNION.IDREUNION = REUNION.IDREUNION
	inner join Orientador on REUNION.IDORIENTADOR = ORIENTADOR.IDORIENTADOR
	where ORIENTADOR.IDORIENTADOR=@IdOrientador and IDPROCESO = @IdProceso
	and month(FECHAREUNION) = @Mes and year(FECHAREUNION)= @Anio and IDPERSONA = @Persona;

	SELECT * FROM @R1;  

	commit;
	Print 'Exito';
	
End try
Begin Catch
	SELECT distinct * FROM @R1;  
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch

GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaRango]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaRango]
@Anio int,
@Mes int,
@Anio2 int,
@Mes2 int,
@IdProceso int
AS
Begin try
	Begin Transaction
	select Asistencia.IDOrientador,
	count(CASE WHEN (IDTIPOASISTENCIA= 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes2,'/',@Anio2)) THEN 1 END) as Asistencia,
	count(CASE WHEN (IDTIPOASISTENCIA= 2) and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes2,'/',@Anio2)) THEN 1 END) as Ausencia
	from ASISTENCIA
	inner join ORIENTADOR on ORIENTADOR.IDORIENTADOR=ASISTENCIA.IDORIENTADOR
	where IDPROCESO=@IdProceso
	group by  Asistencia.IDOrientador;

	commit;
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch
GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaRangoO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaRangoO]
@Anio int,
@Mes int,
@Anio2 int,
@Mes2 int,
@IdOrientador int,
@IdProceso int
AS
Begin try
	Begin Transaction
	select Asistencia.IDOrientador,
	count(CASE WHEN (IDTIPOASISTENCIA= 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes2,'/',@Anio2)) THEN 1 END) as Asistencia,
	count(CASE WHEN (IDTIPOASISTENCIA= 2) and FECHAASISTENCIA between concat('1/',@Mes,'/',@Anio) and EOMONTH (concat('1/',@Mes2,'/',@Anio2)) THEN 1 END) as Ausencia
	from ASISTENCIA
	inner join ORIENTADOR on ORIENTADOR.IDORIENTADOR=ASISTENCIA.IDORIENTADOR
	where ORIENTADOR.IDORIENTADOR=@IdOrientador and IDPROCESO =@IdProceso
	group by  Asistencia.IDOrientador;
	commit;
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch
GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaReunion]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaReunion]
@IdReunion int
AS
Begin try
	Begin Transaction

	select ASISTENCIAREUNION.IDPERSONA, CONCAT(PRIMERNOMBREPERSONA, ' ', PRIMERAPELLIDOPERSONA) AS NOMBRE, CEDULAPERSONA, NOMBRETIPOASISTENCIA, REUNION.FECHAREUNION, CONVERT(TIME(0), REUNION.HORAREUNION) AS HORAREUNION, REUNION.TEMAREUNION,OBSERVACIONREUNION FROM ASISTENCIAREUNION
	inner join PERSONA on ASISTENCIAREUNION.IDPERSONA = PERSONA.IDPERSONA 
	INNER JOIN TIPOASISTENCIA ON ASISTENCIAREUNION.IDTIPOASISTENCIA = TIPOASISTENCIA.IDTIPOASISTENCIA
	INNER JOIN REUNION ON ASISTENCIAREUNION.IDREUNION = REUNION.IDREUNION
	where ASISTENCIAREUNION.IDREUNION=@IdReunion;
	
	commit;
	Print 'Exito';
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch




GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaSeptiembreTotal]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaSeptiembreTotal]
AS
Begin try
	Begin Transaction
	
	select count(*) as Total, Asistencia.IDOrientador FROM ASISTENCIA 
	inner join ORIENTADOR on ORIENTADOR.IDORIENTADOR=ASISTENCIA.IDORIENTADOR 
	where FECHAASISTENCIA between '1/9/2017' and '30/9/2017'
	GROUP BY Asistencia.IDOrientador;
	
	commit;
	Print 'Exito';
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch









GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaTotal]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaTotal]
@Anio int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @Anio2 int = @Anio+1;
	select Asistencia.IDOrientador,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/9/',@Anio) and concat('30/9/',@Anio) THEN 1 END) as AsistenciaSeptiembre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/9/',@Anio) and concat('30/9/',@Anio) THEN 1 END) AS AusenciasSeptiembre, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/9/',@Anio) and concat('30/9/',@Anio) THEN 1 END) AS InscritosSeptiembre,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/10/',@Anio) and concat('31/10/',@Anio) THEN 1 END) as AsistenciaOctubre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/10/',@Anio) and concat('31/10/',@Anio) THEN 1 END) AS AusenciasOctubre, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/10/',@Anio) and concat('31/10/',@Anio) THEN 1 END) AS InscritosOctubre,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/11/',@Anio) and concat('30/11/',@Anio) THEN 1 END) as AsistenciaNoviembre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/11/',@Anio) and concat('30/11/',@Anio) THEN 1 END) AS AusenciasNoviembre, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/11/',@Anio) and concat('30/11/',@Anio) THEN 1 END) AS InscritosNoviembre,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/12/',@Anio) and concat('31/12/',@Anio) THEN 1 END) as AsistenciaDiciembre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/12/',@Anio) and concat('31/12/',@Anio) THEN 1 END) AS AusenciasDiciembre, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/12/',@Anio) and concat('31/12/',@Anio) THEN 1 END) AS InscritosDiciembre,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/1/',@Anio2) and concat('31/1/',@Anio2) THEN 1 END) as AsistenciaEnero, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/1/',@Anio2) and concat('31/1/',@Anio2) THEN 1 END) AS AusenciasEnero, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/1/',@Anio2) and concat('31/1/',@Anio2) THEN 1 END) AS InscritosEnero,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/2/',@Anio2) and concat('28/2/',@Anio2) THEN 1 END) as AsistenciaFebrero, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/2/',@Anio2) and concat('28/2/',@Anio2) THEN 1 END) AS AusenciasFebrero, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/2/',@Anio2) and concat('28/2/',@Anio2) THEN 1 END) AS InscritosFebrero,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/3/',@Anio2) and concat('31/3/',@Anio2) THEN 1 END) as AsistenciaMarzo, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/3/',@Anio2) and concat('31/3/',@Anio2) THEN 1 END) AS AusenciasMarzo, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/3/',@Anio2) and concat('31/3/',@Anio2) THEN 1 END) AS InscritosMarzo,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/4/',@Anio2) and concat('30/4/',@Anio2) THEN 1 END) as AsistenciaAbril, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/4/',@Anio2) and concat('30/4/',@Anio2) THEN 1 END) AS AusenciasAbril, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/4/',@Anio2) and concat('30/4/',@Anio2) THEN 1 END) AS InscritosAbril,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/5/',@Anio2) and concat('31/5/',@Anio2) THEN 1 END) as AsistenciaMayo, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/5/',@Anio2) and concat('31/5/',@Anio2) THEN 1 END) AS AusenciasMayo, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/5/',@Anio2) and concat('31/5/',@Anio2) THEN 1 END) AS InscritosMayo,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA= 3) and FECHAASISTENCIA between concat('1/6/',@Anio2) and concat('30/6/',@Anio2) THEN 1 END) as AsistenciaJunio, COUNT(CASE WHEN IDTIPOASISTENCIA= 2 and FECHAASISTENCIA between concat('1/6/',@Anio2) and concat('30/6/',@Anio2) THEN 1 END) AS AusenciasJunio, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/6/',@Anio2) and concat('30/6/',@Anio2) THEN 1 END) AS InscritosJunio,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA= 3) and FECHAASISTENCIA between concat('1/7/',@Anio2) and concat('31/7/',@Anio2) THEN 1 END) as AsistenciaJulio, COUNT(CASE WHEN IDTIPOASISTENCIA= 2 and FECHAASISTENCIA between concat('1/7/',@Anio2) and concat('31/7/',@Anio2) THEN 1 END) AS AusenciasJulio, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/7/',@Anio2) and concat('31/7/',@Anio2) THEN 1 END) AS InscritosJulio,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/8/',@Anio2) and concat('31/8/',@Anio2) THEN 1 END) as AsistenciaAgosto, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/8/',@Anio2) and concat('31/8/',@Anio2) THEN 1 END) AS AusenciasAgosto, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/8/',@Anio2) and concat('31/8/',@Anio2) THEN 1 END) AS InscritosAgosto
	FROM ASISTENCIA 
	inner join ORIENTADOR on ORIENTADOR.IDORIENTADOR=ASISTENCIA.IDORIENTADOR 
	where IDPROCESO = @IdProceso
	GROUP BY Asistencia.IDOrientador;
	
	commit;
	Print 'Exito';
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch
GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaTotalO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaTotalO]
@Anio int,
@IdOrientador int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @Anio2 int = @Anio+1;
	select Asistencia.IDOrientador,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/9/',@Anio) and concat('30/9/',@Anio) THEN 1 END) as AsistenciaSeptiembre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/9/',@Anio) and concat('30/9/',@Anio) THEN 1 END) AS AusenciasSeptiembre, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/9/',@Anio) and concat('30/9/',@Anio) THEN 1 END) AS InscritosSeptiembre,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/10/',@Anio) and concat('31/10/',@Anio) THEN 1 END) as AsistenciaOctubre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/10/',@Anio) and concat('31/10/',@Anio) THEN 1 END) AS AusenciasOctubre, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/10/',@Anio) and concat('31/10/',@Anio) THEN 1 END) AS InscritosOctubre,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/11/',@Anio) and concat('30/11/',@Anio) THEN 1 END) as AsistenciaNoviembre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/11/',@Anio) and concat('30/11/',@Anio) THEN 1 END) AS AusenciasNoviembre, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/11/',@Anio) and concat('30/11/',@Anio) THEN 1 END) AS InscritosNoviembre,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/12/',@Anio) and concat('31/12/',@Anio) THEN 1 END) as AsistenciaDiciembre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/12/',@Anio) and concat('31/12/',@Anio) THEN 1 END) AS AusenciasDiciembre, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/12/',@Anio) and concat('31/12/',@Anio) THEN 1 END) AS InscritosDiciembre,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/1/',@Anio2) and concat('31/1/',@Anio2) THEN 1 END) as AsistenciaEnero, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/1/',@Anio2) and concat('31/1/',@Anio2) THEN 1 END) AS AusenciasEnero, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/1/',@Anio2) and concat('31/1/',@Anio2) THEN 1 END) AS InscritosEnero,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/2/',@Anio2) and concat('28/2/',@Anio2) THEN 1 END) as AsistenciaFebrero, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/2/',@Anio2) and concat('28/2/',@Anio2) THEN 1 END) AS AusenciasFebrero, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/2/',@Anio2) and concat('28/2/',@Anio2) THEN 1 END) AS InscritosFebrero,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/3/',@Anio2) and concat('31/3/',@Anio2) THEN 1 END) as AsistenciaMarzo, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/3/',@Anio2) and concat('31/3/',@Anio2) THEN 1 END) AS AusenciasMarzo, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/3/',@Anio2) and concat('31/3/',@Anio2) THEN 1 END) AS InscritosMarzo,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/4/',@Anio2) and concat('30/4/',@Anio2) THEN 1 END) as AsistenciaAbril, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/4/',@Anio2) and concat('30/4/',@Anio2) THEN 1 END) AS AusenciasAbril, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/4/',@Anio2) and concat('30/4/',@Anio2) THEN 1 END) AS InscritosAbril,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/5/',@Anio2) and concat('31/5/',@Anio2) THEN 1 END) as AsistenciaMayo, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/5/',@Anio2) and concat('31/5/',@Anio2) THEN 1 END) AS AusenciasMayo, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/5/',@Anio2) and concat('31/5/',@Anio2) THEN 1 END) AS InscritosMayo,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA= 3) and FECHAASISTENCIA between concat('1/6/',@Anio2) and concat('30/6/',@Anio2) THEN 1 END) as AsistenciaJunio, COUNT(CASE WHEN IDTIPOASISTENCIA= 2 and FECHAASISTENCIA between concat('1/6/',@Anio2) and concat('30/6/',@Anio2) THEN 1 END) AS AusenciasJunio, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/6/',@Anio2) and concat('30/6/',@Anio2) THEN 1 END) AS InscritosJunio,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA= 3) and FECHAASISTENCIA between concat('1/7/',@Anio2) and concat('31/7/',@Anio2) THEN 1 END) as AsistenciaJulio, COUNT(CASE WHEN IDTIPOASISTENCIA= 2 and FECHAASISTENCIA between concat('1/7/',@Anio2) and concat('31/7/',@Anio2) THEN 1 END) AS AusenciasJulio, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/7/',@Anio2) and concat('31/7/',@Anio2) THEN 1 END) AS InscritosJulio,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAASISTENCIA between concat('1/8/',@Anio2) and concat('31/8/',@Anio2) THEN 1 END) as AsistenciaAgosto, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAASISTENCIA between concat('1/8/',@Anio2) and concat('31/8/',@Anio2) THEN 1 END) AS AusenciasAgosto, COUNT(CASE WHEN  FECHAASISTENCIA between concat('1/8/',@Anio2) and concat('31/8/',@Anio2) THEN 1 END) AS InscritosAgosto

	FROM ASISTENCIA 
	inner join ORIENTADOR on ORIENTADOR.IDORIENTADOR=ASISTENCIA.IDORIENTADOR
	where IDPROCESO = @IdProceso and 
	ORIENTADOR.IDORIENTADOR=@IdOrientador
	GROUP BY Asistencia.IDOrientador;
	
	commit;
	Print 'Exito';
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch


GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaTotalReuniones]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaTotalReuniones]
@Anio int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @Anio2 int = @Anio+1;

	declare @A1 int 
	SELECT @A1= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/9/',@Anio) and EOMONTH(concat('1/9/',@Anio));
	declare @A2 int 
	SELECT @A2= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/10/',@Anio) and EOMONTH(concat('1/10/',@Anio));
	declare @A3 int 
	SELECT @A3= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/11/',@Anio) and EOMONTH(concat('1/11/',@Anio));
	declare @A4 int 
	SELECT @A4= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/12/',@Anio) and EOMONTH(concat('1/12/',@Anio));
	declare @A5 int 
	SELECT @A5= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/1/',@Anio2) and EOMONTH(concat('1/1/',@Anio2));
	declare @A6 int 
	SELECT @A6= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/2/',@Anio2) and EOMONTH(concat('1/2/',@Anio2));
	declare @A7 int 
	SELECT @A7= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/3/',@Anio2) and EOMONTH(concat('1/3/',@Anio2));
	declare @A8 int 
	SELECT @A8= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/4/',@Anio2) and EOMONTH(concat('1/4/',@Anio2));
	declare @A9 int 
	SELECT @A9= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/5/',@Anio2) and EOMONTH(concat('1/5/',@Anio2));
	declare @A10 int 
	SELECT @A10= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/6/',@Anio2) and EOMONTH(concat('1/6/',@Anio2));
	declare @A11 int 
	SELECT @A11= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/7/',@Anio2) and EOMONTH(concat('1/7/',@Anio2));
	declare @A12 int 
	SELECT @A12= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/8/',@Anio2) and EOMONTH(concat('1/8/',@Anio2));
	select @A1 AS CantidadReunionesSEPTIEMBRE,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/9/',@Anio) and concat('30/9/',@Anio) THEN 1 END) as AsistenciaSeptiembre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/9/',@Anio) and concat('30/9/',@Anio) THEN 1 END) AS AusenciasSeptiembre, COUNT(CASE WHEN  FECHAREUNION between concat('1/9/',@Anio) and concat('30/9/',@Anio) THEN 1 END) AS InscritosSeptiembre,
	@A2 AS CantidadReunionesOCTUBRE,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/10/',@Anio) and concat('31/10/',@Anio) THEN 1 END) as AsistenciaOctubre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/10/',@Anio) and concat('31/10/',@Anio) THEN 1 END) AS AusenciasOctubre, COUNT(CASE WHEN  FECHAREUNION between concat('1/10/',@Anio) and concat('31/10/',@Anio) THEN 1 END) AS InscritosOctubre,
	@A3 AS CantidadReunionesNOVIEMBRE,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/11/',@Anio) and concat('30/11/',@Anio) THEN 1 END) as AsistenciaNoviembre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/11/',@Anio) and concat('30/11/',@Anio) THEN 1 END) AS AusenciasNoviembre, COUNT(CASE WHEN  FECHAREUNION between concat('1/11/',@Anio) and concat('30/11/',@Anio) THEN 1 END) AS InscritosNoviembre,
	@A4 AS CantidadReunionesDICIEMBRE,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/12/',@Anio) and concat('31/12/',@Anio) THEN 1 END) as AsistenciaDiciembre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/12/',@Anio) and concat('31/12/',@Anio) THEN 1 END) AS AusenciasDiciembre, COUNT(CASE WHEN  FECHAREUNION between concat('1/12/',@Anio) and concat('31/12/',@Anio) THEN 1 END) AS InscritosDiciembre,
	@A5 AS CantidadReunionesENERO,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/1/',@Anio2) and concat('31/1/',@Anio2) THEN 1 END) as AsistenciaEnero, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/1/',@Anio2) and concat('31/1/',@Anio2) THEN 1 END) AS AusenciasEnero, COUNT(CASE WHEN  FECHAREUNION between concat('1/1/',@Anio2) and concat('31/1/',@Anio2) THEN 1 END) AS InscritosEnero,
	@A6 AS CantidadReunionesFEBRERO,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/2/',@Anio2) and concat('28/2/',@Anio2) THEN 1 END) as AsistenciaFebrero, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/2/',@Anio2) and concat('28/2/',@Anio2) THEN 1 END) AS AusenciasFebrero, COUNT(CASE WHEN  FECHAREUNION between concat('1/2/',@Anio2) and concat('28/2/',@Anio2) THEN 1 END) AS InscritosFebrero,
	@A7 AS CantidadReunionesMARZO,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/3/',@Anio2) and concat('31/3/',@Anio2) THEN 1 END) as AsistenciaMarzo, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/3/',@Anio2) and concat('31/3/',@Anio2) THEN 1 END) AS AusenciasMarzo, COUNT(CASE WHEN  FECHAREUNION between concat('1/3/',@Anio2) and concat('31/3/',@Anio2) THEN 1 END) AS InscritosMarzo,
	@A8 AS CantidadReunionesABRIL,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/4/',@Anio2) and concat('30/4/',@Anio2) THEN 1 END) as AsistenciaAbril, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/4/',@Anio2) and concat('30/4/',@Anio2) THEN 1 END) AS AusenciasAbril, COUNT(CASE WHEN  FECHAREUNION between concat('1/4/',@Anio2) and concat('30/4/',@Anio2) THEN 1 END) AS InscritosAbril,
	@A9 AS CantidadReunionesMAYO,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/5/',@Anio2) and concat('31/5/',@Anio2) THEN 1 END) as AsistenciaMayo, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/5/',@Anio2) and concat('31/5/',@Anio2) THEN 1 END) AS AusenciasMayo, COUNT(CASE WHEN  FECHAREUNION between concat('1/5/',@Anio2) and concat('31/5/',@Anio2) THEN 1 END) AS InscritosMayo,
	@A10 AS CantidadReunionesJUNIO,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA= 3) and FECHAREUNION between concat('1/6/',@Anio2) and concat('30/6/',@Anio2) THEN 1 END) as AsistenciaJunio, COUNT(CASE WHEN IDTIPOASISTENCIA= 2 and FECHAREUNION between concat('1/6/',@Anio2) and concat('30/6/',@Anio2) THEN 1 END) AS AusenciasJunio, COUNT(CASE WHEN  FECHAREUNION between concat('1/6/',@Anio2) and concat('30/6/',@Anio2) THEN 1 END) AS InscritosJunio,
	@A11 AS CantidadReunionesJULIO,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA= 3) and FECHAREUNION between concat('1/7/',@Anio2) and concat('31/7/',@Anio2) THEN 1 END) as AsistenciaJulio, COUNT(CASE WHEN IDTIPOASISTENCIA= 2 and FECHAREUNION between concat('1/7/',@Anio2) and concat('31/7/',@Anio2) THEN 1 END) AS AusenciasJulio, COUNT(CASE WHEN  FECHAREUNION between concat('1/7/',@Anio2) and concat('31/7/',@Anio2) THEN 1 END) AS InscritosJulio,
	@A12 AS CantidadReunionesAGOSTO,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/8/',@Anio2) and concat('31/8/',@Anio2) THEN 1 END) as AsistenciaAgosto, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/8/',@Anio2) and concat('31/8/',@Anio2) THEN 1 END) AS AusenciasAgosto, COUNT(CASE WHEN  FECHAREUNION between concat('1/8/',@Anio2) and concat('31/8/',@Anio2) THEN 1 END) AS InscritosAgosto

	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	where IDPROCESO=@IdProceso;
	commit;
	Print 'Exito';
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch
GO
/****** Object:  StoredProcedure [dbo].[ConsultaAsistenciaTotalReunionesO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaAsistenciaTotalReunionesO]
@Anio int,
@IdOrientador int,
@IdProceso int
AS
Begin try
	Begin Transaction
	declare @Anio2 int = @Anio+1;

	declare @A1 int 
	SELECT @A1= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/9/',@Anio) and EOMONTH(concat('1/9/',@Anio));
	declare @A2 int 
	SELECT @A2= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/10/',@Anio) and EOMONTH(concat('1/10/',@Anio));
	declare @A3 int 
	SELECT @A3= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/11/',@Anio) and EOMONTH(concat('1/11/',@Anio));
	declare @A4 int 
	SELECT @A4= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/12/',@Anio) and EOMONTH(concat('1/12/',@Anio));
	declare @A5 int 
	SELECT @A5= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/1/',@Anio2) and EOMONTH(concat('1/1/',@Anio2));
	declare @A6 int 
	SELECT @A6= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/2/',@Anio2) and EOMONTH(concat('1/2/',@Anio2));
	declare @A7 int 
	SELECT @A7= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/3/',@Anio2) and EOMONTH(concat('1/3/',@Anio2));
	declare @A8 int 
	SELECT @A8= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/4/',@Anio2) and EOMONTH(concat('1/4/',@Anio2));
	declare @A9 int 
	SELECT @A9= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/5/',@Anio2) and EOMONTH(concat('1/5/',@Anio2));
	declare @A10 int 
	SELECT @A10= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/6/',@Anio2) and EOMONTH(concat('1/6/',@Anio2));
	declare @A11 int 
	SELECT @A11= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/7/',@Anio2) and EOMONTH(concat('1/7/',@Anio2));
	declare @A12 int 
	SELECT @A12= count(distinct(asistenciareunion.IDREUNION))
	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	WHERE IDPROCESO=@IdProceso and
	FECHAREUNION between concat('1/8/',@Anio2) and EOMONTH(concat('1/8/',@Anio2));
	select @A1 AS CantidadReunionesSEPTIEMBRE,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/9/',@Anio) and concat('30/9/',@Anio) THEN 1 END) as AsistenciaSeptiembre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/9/',@Anio) and concat('30/9/',@Anio) THEN 1 END) AS AusenciasSeptiembre, COUNT(CASE WHEN  FECHAREUNION between concat('1/9/',@Anio) and concat('30/9/',@Anio) THEN 1 END) AS InscritosSeptiembre,
	@A2 AS CantidadReunionesOCTUBRE,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/10/',@Anio) and concat('31/10/',@Anio) THEN 1 END) as AsistenciaOctubre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/10/',@Anio) and concat('31/10/',@Anio) THEN 1 END) AS AusenciasOctubre, COUNT(CASE WHEN  FECHAREUNION between concat('1/10/',@Anio) and concat('31/10/',@Anio) THEN 1 END) AS InscritosOctubre,
	@A3 AS CantidadReunionesNOVIEMBRE,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/11/',@Anio) and concat('30/11/',@Anio) THEN 1 END) as AsistenciaNoviembre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/11/',@Anio) and concat('30/11/',@Anio) THEN 1 END) AS AusenciasNoviembre, COUNT(CASE WHEN  FECHAREUNION between concat('1/11/',@Anio) and concat('30/11/',@Anio) THEN 1 END) AS InscritosNoviembre,
	@A4 AS CantidadReunionesDICIEMBRE,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/12/',@Anio) and concat('31/12/',@Anio) THEN 1 END) as AsistenciaDiciembre, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/12/',@Anio) and concat('31/12/',@Anio) THEN 1 END) AS AusenciasDiciembre, COUNT(CASE WHEN  FECHAREUNION between concat('1/12/',@Anio) and concat('31/12/',@Anio) THEN 1 END) AS InscritosDiciembre,
	@A5 AS CantidadReunionesENERO,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/1/',@Anio2) and concat('31/1/',@Anio2) THEN 1 END) as AsistenciaEnero, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/1/',@Anio2) and concat('31/1/',@Anio2) THEN 1 END) AS AusenciasEnero, COUNT(CASE WHEN  FECHAREUNION between concat('1/1/',@Anio2) and concat('31/1/',@Anio2) THEN 1 END) AS InscritosEnero,
	@A6 AS CantidadReunionesFEBRERO,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/2/',@Anio2) and concat('28/2/',@Anio2) THEN 1 END) as AsistenciaFebrero, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/2/',@Anio2) and concat('28/2/',@Anio2) THEN 1 END) AS AusenciasFebrero, COUNT(CASE WHEN  FECHAREUNION between concat('1/2/',@Anio2) and concat('28/2/',@Anio2) THEN 1 END) AS InscritosFebrero,
	@A7 AS CantidadReunionesMARZO,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/3/',@Anio2) and concat('31/3/',@Anio2) THEN 1 END) as AsistenciaMarzo, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/3/',@Anio2) and concat('31/3/',@Anio2) THEN 1 END) AS AusenciasMarzo, COUNT(CASE WHEN  FECHAREUNION between concat('1/3/',@Anio2) and concat('31/3/',@Anio2) THEN 1 END) AS InscritosMarzo,
	@A8 AS CantidadReunionesABRIL,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/4/',@Anio2) and concat('30/4/',@Anio2) THEN 1 END) as AsistenciaAbril, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/4/',@Anio2) and concat('30/4/',@Anio2) THEN 1 END) AS AusenciasAbril, COUNT(CASE WHEN  FECHAREUNION between concat('1/4/',@Anio2) and concat('30/4/',@Anio2) THEN 1 END) AS InscritosAbril,
	@A9 AS CantidadReunionesMAYO,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/5/',@Anio2) and concat('31/5/',@Anio2) THEN 1 END) as AsistenciaMayo, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/5/',@Anio2) and concat('31/5/',@Anio2) THEN 1 END) AS AusenciasMayo, COUNT(CASE WHEN  FECHAREUNION between concat('1/5/',@Anio2) and concat('31/5/',@Anio2) THEN 1 END) AS InscritosMayo,
	@A10 AS CantidadReunionesJUNIO,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA= 3) and FECHAREUNION between concat('1/6/',@Anio2) and concat('30/6/',@Anio2) THEN 1 END) as AsistenciaJunio, COUNT(CASE WHEN IDTIPOASISTENCIA= 2 and FECHAREUNION between concat('1/6/',@Anio2) and concat('30/6/',@Anio2) THEN 1 END) AS AusenciasJunio, COUNT(CASE WHEN  FECHAREUNION between concat('1/6/',@Anio2) and concat('30/6/',@Anio2) THEN 1 END) AS InscritosJunio,
	@A11 AS CantidadReunionesJULIO,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA= 3) and FECHAREUNION between concat('1/7/',@Anio2) and concat('31/7/',@Anio2) THEN 1 END) as AsistenciaJulio, COUNT(CASE WHEN IDTIPOASISTENCIA= 2 and FECHAREUNION between concat('1/7/',@Anio2) and concat('31/7/',@Anio2) THEN 1 END) AS AusenciasJulio, COUNT(CASE WHEN  FECHAREUNION between concat('1/7/',@Anio2) and concat('31/7/',@Anio2) THEN 1 END) AS InscritosJulio,
	@A12 AS CantidadReunionesAGOSTO,
	count(CASE WHEN (IDTIPOASISTENCIA = 1 OR IDTIPOASISTENCIA = 3) and FECHAREUNION between concat('1/8/',@Anio2) and concat('31/8/',@Anio2) THEN 1 END) as AsistenciaAgosto, COUNT(CASE WHEN IDTIPOASISTENCIA = 2 and FECHAREUNION between concat('1/8/',@Anio2) and concat('31/8/',@Anio2) THEN 1 END) AS AusenciasAgosto, COUNT(CASE WHEN  FECHAREUNION between concat('1/8/',@Anio2) and concat('31/8/',@Anio2) THEN 1 END) AS InscritosAgosto

	FROM ASISTENCIAREUNION 
	inner join REUNION on ASISTENCIAREUNION.IDREUNION=REUNION.IDREUNION
	inner join Orientador on REUNION.IDORIENTADOR = ORIENTADOR.IDORIENTADOR
	where ORIENTADOR.IDORIENTADOR=@IdOrientador and IDPROCESO=@IdProceso;
	commit;
	Print 'Exito';
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch


GO
/****** Object:  StoredProcedure [dbo].[ConsultaCuestionario]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaCuestionario]
@IdPersona int
AS
Begin try
	Begin Transaction

	select * FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA= RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join PERSONA on PERSONA.IDPERSONA=RESPUESTA_INDICADOR.IDPERSONA
	inner join INDICADOR on INDICADOR.IDINDICADOR=RESPUESTA_INDICADOR.IDINDICADOR
	where RESPUESTA_INDICADOR.IDPERSONA=@IdPersona;
	commit;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaCuestionario1]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaCuestionario1]
@IdPersona int
AS
Begin try
	Begin Transaction
	declare @Respuesta1 int

	select @Respuesta1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=9;

	declare @Respuesta2 int
	select @Respuesta2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=10;

	declare @Respuesta3 varchar(50)
	select @Respuesta3 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA= RESPUESTA_INDICADOR.IDRESPUESTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=11;

	declare @Respuesta4 varchar(50)
	select  @Respuesta4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=12;

	declare @Respuesta5 varchar(50)
	select @Respuesta5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=13;

	declare @Respuesta6 varchar(50)
	select @Respuesta6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=18;

	declare @Respuesta7 varchar(50)
	select @Respuesta7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=19;

	declare @Respuesta8 varchar(50)
	select @Respuesta8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=20;

	declare @Respuesta9 varchar(50)
	select @Respuesta9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=21;

	declare @Respuesta10 varchar(50)
	select @Respuesta10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=22;

	declare @Respuesta11 varchar(50)
	select @Respuesta11 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=26;

	declare @Respuesta12 varchar(50)
	select @Respuesta12 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=30;

	declare @Respuesta13 varchar(50)
	select @Respuesta13 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=33;

	declare @Respuesta14 varchar(50)
	select @Respuesta14 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA=RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=31;

	declare @Respuesta15 varchar(50)
	select @Respuesta15 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA=RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=32;

	declare @Respuesta16 varchar(50)
	select @Respuesta16 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=38;

	declare @Respuesta17 varchar(50)
	select @Respuesta17 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=39;

	declare @Respuesta18 varchar(50)
	select @Respuesta18 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=40;

	declare @Respuesta19 varchar(50)
	select @Respuesta19 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=41;


	declare @R1 varchar(50)
	select @R1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=43;

	declare @R2 varchar(50)
	select @R2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=44;

	declare @R3 varchar(50)
	select @R3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=45;

	declare @R4 varchar(50)
	select @R4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=46;

	declare @R5 varchar(50)
	select @R5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=47;

	declare @R6 varchar(50)
	select @R6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=48;

	declare @R7 varchar(50)
	select @R7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=49;

	declare @R8 varchar(50)
	select @R8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=50;

	declare @R9 varchar(50)
	select @R9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=51;

	declare @R10 varchar(50)
	select @R10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=52;

	declare @R11 varchar(50)
	select @R11 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=53;

	declare @R12 varchar(50)
	select @R12 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=55;

	declare @Ra1 varchar(50)
	select @Ra1 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA=RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=29 AND RESPUESTA_INDICADOR.IDPREGUNTA=56;

	declare @Ra2 varchar(50)
	select @Ra2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=57;

	declare @Ra3 varchar(50)
	select @Ra3 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA=RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=29 AND RESPUESTA_INDICADOR.IDPREGUNTA=58;

	declare @Ra4 varchar(50)
	select @Ra4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=59;

	declare @Ra5 varchar(50)
	select @Ra5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=60;

	declare @Ra6 varchar(50)
	select @Ra6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=61;

	declare @Ra7 varchar(50)
	select @Ra7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=62;

	declare @Ra8 varchar(50)
	select @Ra8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=63;

	select @Respuesta1 as 'N° hermanos', @Respuesta2 as 'N° hermanas', @Respuesta5 as '¿De que manera contribuye?', @Respuesta4 as '¿Quien?', @Respuesta3 as '¿Alguien diferente vive con la familia?',
	@Respuesta6 as 'Peso', @Respuesta7 as 'Talla', @Respuesta8 as 'Enfermedades', @Respuesta9 as 'Discapacidades', @Respuesta10 as 'Vacunas', @Respuesta11 as 'Higiene',
	@Respuesta12 as 'Escuela/CDI', @Respuesta13 as 'Año básico actual', @Respuesta14 as 'La unidad educativa es', @Respuesta15 as 'Jornada de estudio',
	@Respuesta16 as '¿Tiene familiares Migrados?', @Respuesta17 as 'País', @Respuesta18 as '¿Recibe algún apoyo de este familiar migrado?', @Respuesta19 as '¿Algún pariente migrado ha retornado?',
	@R1 as 'Ocupación del padre/fig. paterna',@R2 as '¿Está asegurado?',@R3 as 'Tipo seguro',@R4 as 'Ocupación de la madre',@R5 as 'Ingreso promedio del padre',@R6 as 'Ingreso promedio de la madre',@R7 as '¿Ha trabajado el niño-adolescente-joven?',@R8 as '¿En que?',@R9 as '¿Por cuanto tiempo?',@R10 as '¿Ha percibido un salario?',@R11 as '¿Le gusta ese trabajo?',@R12 as 'Tipo de seguro de la madre',
	@Ra1 as '¿Hablas a menudo con tus padres?', @Ra2 as '¿Conocen tus padres a la mayoría de tus amigos?', @Ra3 as '¿Comparte toda tu familia alguna comida?', @Ra4 as '¿Realizas actividades sin la ayuda de tus padres?', @Ra5 as '¿Cual?', @Ra6 as '¿Te llevas bien con ellos?', @Ra7 as '¿Comparten alguna actividad de fin de semana?', @Ra8 as '¿Cual?';

	commit;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaCuestionario1TODOS]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaCuestionario1TODOS]
AS
Begin try
	Begin Transaction
	declare @Respuesta1 int

	select @Respuesta1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=9;

	declare @Respuesta2 int
	select @Respuesta2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=10;

	declare @Respuesta3 varchar(50)
	select @Respuesta3 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA= RESPUESTA_INDICADOR.IDRESPUESTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=11;

	declare @Respuesta4 varchar(50)
	select  @Respuesta4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=12;

	declare @Respuesta5 varchar(50)
	select @Respuesta5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=13;

	declare @Respuesta6 varchar(50)
	select @Respuesta6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=18;

	declare @Respuesta7 varchar(50)
	select @Respuesta7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=19;

	declare @Respuesta8 varchar(50)
	select @Respuesta8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=20;

	declare @Respuesta9 varchar(50)
	select @Respuesta9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=21;

	declare @Respuesta10 varchar(50)
	select @Respuesta10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=22;

	declare @Respuesta11 varchar(50)
	select @Respuesta11 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=26;

	declare @Respuesta12 varchar(50)
	select @Respuesta12 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=30;

	declare @Respuesta13 varchar(50)
	select @Respuesta13 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=33;

	declare @Respuesta14 varchar(50)
	select @Respuesta14 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA=RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=31;

	declare @Respuesta15 varchar(50)
	select @Respuesta15 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA=RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=32;

	declare @Respuesta16 varchar(50)
	select @Respuesta16 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=38;

	declare @Respuesta17 varchar(50)
	select @Respuesta17 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=39;

	declare @Respuesta18 varchar(50)
	select @Respuesta18 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=40;

	declare @Respuesta19 varchar(50)
	select @Respuesta19 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=41;


	declare @R1 varchar(50)
	select @R1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=43;

	declare @R2 varchar(50)
	select @R2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=44;

	declare @R3 varchar(50)
	select @R3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=45;

	declare @R4 varchar(50)
	select @R4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=46;

	declare @R5 varchar(50)
	select @R5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=47;

	declare @R6 varchar(50)
	select @R6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=48;

	declare @R7 varchar(50)
	select @R7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=49;

	declare @R8 varchar(50)
	select @R8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=50;

	declare @R9 varchar(50)
	select @R9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=51;

	declare @R10 varchar(50)
	select @R10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=52;

	declare @R11 varchar(50)
	select @R11 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=53;

	declare @R12 varchar(50)
	select @R12 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=55;

	declare @Ra1 varchar(50)
	select @Ra1 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA=RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=29 AND RESPUESTA_INDICADOR.IDPREGUNTA=56;

	declare @Ra2 varchar(50)
	select @Ra2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=57;

	declare @Ra3 varchar(50)
	select @Ra3 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA=RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=29 AND RESPUESTA_INDICADOR.IDPREGUNTA=58;

	declare @Ra4 varchar(50)
	select @Ra4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=59;

	declare @Ra5 varchar(50)
	select @Ra5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=60;

	declare @Ra6 varchar(50)
	select @Ra6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=61;

	declare @Ra7 varchar(50)
	select @Ra7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=62;

	declare @Ra8 varchar(50)
	select @Ra8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=63;

	select @Respuesta1 as 'N° hermanos', @Respuesta2 as 'N° hermanas', @Respuesta5 as '¿De que manera contribuye?', @Respuesta4 as '¿Quien?', @Respuesta3 as '¿Alguien diferente vive con la familia?',
	@Respuesta6 as 'Peso', @Respuesta7 as 'Talla', @Respuesta8 as 'Enfermedades', @Respuesta9 as 'Discapacidades', @Respuesta10 as 'Vacunas', @Respuesta11 as 'Higiene',
	@Respuesta12 as 'Escuela/CDI', @Respuesta13 as 'Año básico actual', @Respuesta14 as 'La unidad educativa es', @Respuesta15 as 'Jornada de estudio',
	@Respuesta16 as '¿Tiene familiares Migrados?', @Respuesta17 as 'País', @Respuesta18 as '¿Recibe algún apoyo de este familiar migrado?', @Respuesta19 as '¿Algún pariente migrado ha retornado?',
	@R1 as 'Ocupación del padre/fig. paterna',@R2 as '¿Está asegurado?',@R3 as 'Tipo seguro',@R4 as 'Ocupación de la madre',@R5 as 'Ingreso promedio del padre',@R6 as 'Ingreso promedio de la madre',@R7 as '¿Ha trabajado el niño-adolescente-joven?',@R8 as '¿En que?',@R9 as '¿Por cuanto tiempo?',@R10 as '¿Ha percibido un salario?',@R11 as '¿Le gusta ese trabajo?',@R12 as 'Tipo de seguro de la madre',
	@Ra1 as '¿Hablas a menudo con tus padres?', @Ra2 as '¿Conocen tus padres a la mayoría de tus amigos?', @Ra3 as '¿Comparte toda tu familia alguna comida?', @Ra4 as '¿Realizas actividades sin la ayuda de tus padres?', @Ra5 as '¿Cual?', @Ra6 as '¿Te llevas bien con ellos?', @Ra7 as '¿Comparten alguna actividad de fin de semana?', @Ra8 as '¿Cual?';

	commit;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaCuestionario2]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaCuestionario2]
@IdPersona int
AS
Begin try
	Begin Transaction

	select * FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join PERSONA on PERSONA.IDPERSONA=RESPUESTA_INDICADOR.IDPERSONA
	inner join INDICADOR on INDICADOR.IDINDICADOR=RESPUESTA_INDICADOR.IDINDICADOR
	where RESPUESTA_INDICADOR.IDPERSONA=@IdPersona;
	commit;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaCuestionario3]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaCuestionario3]
@IdPersona int
AS
Begin try
	Begin Transaction

	declare @Respuesta1 varchar(50)
	select @Respuesta1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=66;

	declare @Respuesta2 varchar(50)
	select @Respuesta2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=67;

	declare @Respuesta3 varchar(50)
	select @Respuesta3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=68;

	declare @Respuesta4 varchar(50)
	select @Respuesta4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=69;

	declare @Respuesta5 varchar(50)
	select @Respuesta5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=70;

	declare @Respuesta6 varchar(50)
	select @Respuesta6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=71;

	declare @Respuesta7 varchar(50)
	select @Respuesta7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=72;

	declare @Respuesta8 varchar(50)
	select @Respuesta8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=73;

	declare @Respuesta9 varchar(50)
	select @Respuesta9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=74;

	declare @Respuesta10 varchar(50)
	select @Respuesta10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=75;

	declare @Respuesta11 varchar(50)
	select @Respuesta11 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=76;

	declare @Respuesta12 varchar(50)
	select @Respuesta12 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=77;

	declare @Respuesta13 varchar(50)
	select @Respuesta13 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=78;

	declare @R1 varchar(50)
	select @R1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=79;

	declare @R2 varchar(50)
	select @R2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=80;

	declare @R3 varchar(50)
	select @R3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=81;

	declare @R4 varchar(50)
	select @R4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=82;

	declare @R5 varchar(50)
	select @R5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=83;

	declare @R6 varchar(50)
	select @R6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=84;

	declare @R7 varchar(50)
	select @R7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=85;

	declare @R8 varchar(50)
	select @R8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=86;

	declare @R9 varchar(50)
	select @R9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=87;

	declare @R10 varchar(50)
	select @R10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=88;

	declare @A1 varchar(50)
	select @A1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=101;

	declare @A2 varchar(50)
	select @A2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=102;

	declare @A3 varchar(50)
	select @A3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=103;

	declare @A4 varchar(50)
	select @A4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=104;

	declare @A5 varchar(50)
	select @A5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=105;

	declare @A6 varchar(50)
	select @A6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=106;

	declare @A7 varchar(50)
	select @A7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=107;

	declare @A8 varchar(50)
	select @A8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=108;

	declare @A9 varchar(50)
	select @A9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=110;

	declare @A10 varchar(50)
	select @A10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=113;

	declare @A11 varchar(50)
	select @A11 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=114;

	declare @A12 varchar(50)
	select @A12 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=115;

	declare @B1 varchar(50)
	select @B1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=116;

	declare @B2 varchar(50)
	select @B2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=117;

	declare @B3 varchar(50)
	select @B3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=118;

	declare @B4 varchar(50)
	select @B4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=119;

	declare @B5 varchar(50)
	select @B5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=121;

	declare @B6 varchar(50)
	select @B6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=122;

	declare @B7 varchar(50)
	select @B7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=123;

	declare @C1 varchar(50)
	select @C1 = RESPUESTA.NOMBRE
	FROM  RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA=RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=124;

	declare @C2 varchar(50)
	select @C2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=125;

	declare @C3 varchar(50)
	select @C3 = RESPUESTA.NOMBRE
	FROM  RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA=RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=126;

	declare @C4 varchar(50)
	select @C4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=127;

	declare @C5 varchar(50)
	select @C5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=128;

	select @Respuesta1 as 'Educación', @Respuesta2 as 'Alimentación', @Respuesta3 as 'Servicios Básicos', @Respuesta4 as 'Plan de celular', @Respuesta5 as 'Tv Cable', @Respuesta6 as 'Internet', @Respuesta7 as 'Ahorro' , @Respuesta8 as 'Arriendo', @Respuesta9 as 'Salud', @Respuesta10 as 'Préstamos', @Respuesta11 as 'Recorrido', @Respuesta12 as 'Guardería', @Respuesta13 as 'Otros',
	@R1 as 'Religión', @R2 as '¿Acude a alguna iglesia?', @R3 as '¿Cada cuando asiste?', @R4 as 'Bautismo', @R5 as 'Eucaristía', @R6 as 'Confirmación', @R7 as 'Matrimonio', @R8 as 'Participa de Catequesis', @R9 as 'Participa en un grupo juvenil', @R10 as 'Otro',
	@A1 as 'Agua potable', @A2 as 'Electricidad', @A3 as 'Calle pavimentada', @A4 as 'Alcantarillado', @A5 as 'Acceso a farmacia', @A6 as 'Acceso a centro de salud', @A7 as 'Acceso a un médico particular', @A8 as 'Acceso a una moto o auto particular', @A9 as 'Internet', @A10 as 'Tablet', @A11 as 'Computador', @A12 as 'Smartphone',
	@B1 as '¿La madre Participa en alguna organización?', @B2 as '¿Cual?', @B3 as '¿Actividad que realiza?', @B4 as '¿Cada cuánto participa?', @B5 as '¿El niño en alguna organización o grupo?', @B6 as '¿Actividad que realiza?', @B7 as '¿Cada cuánto participa?',
	@C1 as '¿Cómo llegó a la Fundación?', @C2 as 'Otro', @C3 as '¿Qué espera de la Fundación?', @C4 as '¿Que le gustaría aprender este año?', @C5 as '¿Que sugerencias tiene para este año?';
	commit;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch











GO
/****** Object:  StoredProcedure [dbo].[ConsultaCuestionario3TODOS]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaCuestionario3TODOS]
AS
Begin try
	Begin Transaction

	declare @Respuesta1 varchar(50)
	select @Respuesta1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=66;

	declare @Respuesta2 varchar(50)
	select @Respuesta2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=67;

	declare @Respuesta3 varchar(50)
	select @Respuesta3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=68;

	declare @Respuesta4 varchar(50)
	select @Respuesta4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=69;

	declare @Respuesta5 varchar(50)
	select @Respuesta5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=70;

	declare @Respuesta6 varchar(50)
	select @Respuesta6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=71;

	declare @Respuesta7 varchar(50)
	select @Respuesta7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=72;

	declare @Respuesta8 varchar(50)
	select @Respuesta8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=73;

	declare @Respuesta9 varchar(50)
	select @Respuesta9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=74;

	declare @Respuesta10 varchar(50)
	select @Respuesta10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=75;

	declare @Respuesta11 varchar(50)
	select @Respuesta11 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=76;

	declare @Respuesta12 varchar(50)
	select @Respuesta12 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=77;

	declare @Respuesta13 varchar(50)
	select @Respuesta13 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=78;

	declare @R1 varchar(50)
	select @R1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=79;

	declare @R2 varchar(50)
	select @R2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=80;

	declare @R3 varchar(50)
	select @R3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=81;

	declare @R4 varchar(50)
	select @R4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=82;

	declare @R5 varchar(50)
	select @R5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=83;

	declare @R6 varchar(50)
	select @R6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=84;

	declare @R7 varchar(50)
	select @R7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=85;

	declare @R8 varchar(50)
	select @R8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=86;

	declare @R9 varchar(50)
	select @R9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=87;

	declare @R10 varchar(50)
	select @R10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=88;

	declare @A1 varchar(50)
	select @A1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=101;

	declare @A2 varchar(50)
	select @A2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=102;

	declare @A3 varchar(50)
	select @A3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=103;

	declare @A4 varchar(50)
	select @A4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=104;

	declare @A5 varchar(50)
	select @A5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=105;

	declare @A6 varchar(50)
	select @A6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=106;

	declare @A7 varchar(50)
	select @A7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=107;

	declare @A8 varchar(50)
	select @A8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=108;

	declare @A9 varchar(50)
	select @A9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=110;

	declare @A10 varchar(50)
	select @A10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=113;

	declare @A11 varchar(50)
	select @A11 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=114;

	declare @A12 varchar(50)
	select @A12 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=115;

	declare @B1 varchar(50)
	select @B1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=116;

	declare @B2 varchar(50)
	select @B2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=117;

	declare @B3 varchar(50)
	select @B3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=118;

	declare @B4 varchar(50)
	select @B4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=119;

	declare @B5 varchar(50)
	select @B5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=121;

	declare @B6 varchar(50)
	select @B6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=122;

	declare @B7 varchar(50)
	select @B7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=123;

	declare @C1 varchar(50)
	select @C1 = RESPUESTA.NOMBRE
	FROM  RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA=RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=124;

	declare @C2 varchar(50)
	select @C2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=125;

	declare @C3 varchar(50)
	select @C3 = RESPUESTA.NOMBRE
	FROM  RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA=RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=126;

	declare @C4 varchar(50)
	select @C4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=127;

	declare @C5 varchar(50)
	select @C5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=128;

	select @Respuesta1 as 'Educación', @Respuesta2 as 'Alimentación', @Respuesta3 as 'Servicios Básicos', @Respuesta4 as 'Plan de celular', @Respuesta5 as 'Tv Cable', @Respuesta6 as 'Internet', @Respuesta7 as 'Ahorro' , @Respuesta8 as 'Arriendo', @Respuesta9 as 'Salud', @Respuesta10 as 'Préstamos', @Respuesta11 as 'Recorrido', @Respuesta12 as 'Guardería', @Respuesta13 as 'Otros',
	@R1 as 'Religión', @R2 as '¿Acude a alguna iglesia?', @R3 as '¿Cada cuando asiste?', @R4 as 'Bautismo', @R5 as 'Eucaristía', @R6 as 'Confirmación', @R7 as 'Matrimonio', @R8 as 'Participa de Catequesis', @R9 as 'Participa en un grupo juvenil', @R10 as 'Otro',
	@A1 as 'Agua potable', @A2 as 'Electricidad', @A3 as 'Calle pavimentada', @A4 as 'Alcantarillado', @A5 as 'Acceso a farmacia', @A6 as 'Acceso a centro de salud', @A7 as 'Acceso a un médico particular', @A8 as 'Acceso a una moto o auto particular', @A9 as 'Internet', @A10 as 'Tablet', @A11 as 'Computador', @A12 as 'Smartphone',
	@B1 as '¿La madre Participa en alguna organización?', @B2 as '¿Cual?', @B3 as '¿Actividad que realiza?', @B4 as '¿Cada cuánto participa?', @B5 as '¿El niño en alguna organización o grupo?', @B6 as '¿Actividad que realiza?', @B7 as '¿Cada cuánto participa?',
	@C1 as '¿Cómo llegó a la Fundación?', @C2 as 'Otro', @C3 as '¿Qué espera de la Fundación?', @C4 as '¿Que le gustaría aprender este año?', @C5 as '¿Que sugerencias tiene para este año?';
	commit;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch













GO
/****** Object:  StoredProcedure [dbo].[ConsultaCuestionario4]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ConsultaCuestionario4]
@IdPersona int
AS
Begin try
	Begin Transaction

	declare @R1 varchar(50)
	select @R1 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA=RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=89;

	declare @R2 varchar(50)
	select @R2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=90;

	declare @R3 varchar(50)
	select @R3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=91;

	declare @R4 varchar(50)
	select @R4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=92;

	declare @R5 varchar(50)
	select @R5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=93;

	declare @R6 varchar(50)
	select @R6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=94;

	declare @R7 varchar(50)
	select @R7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=95;

	declare @R8 varchar(50)
	select @R8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=96;

	declare @R9 varchar(50)
	select @R9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=97;

	declare @R10 varchar(50)
	select @R10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=98;

	declare @R11 varchar(50)
	select @R11 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=99;

	declare @R12 varchar(50)
	select @R12 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=100;

	select @R1 as 'La vivienda es', @R2 as '¿Si la casa es propia cuenta con escrituras?',@R3 as 'Número de dormitorios',
	@R4 as 'Sala', @R5 as 'Comedor', @R6 as 'Número de baños', @R7 as '¿Alguna organización apoyo para la vivienda?', @R8 as 'Tiene previsto cambio o mejora',
	@R9 as '¿Como son las paredes?', @R10 as '¿Como es el piso?', @R11 as '¿Como es el techo?', @R12 as 'Otro detalle a destacar';
	COMMIT;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaCuestionario4TODOS]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaCuestionario4TODOS]
AS
Begin try
	Begin Transaction

	declare @R1 varchar(50)
	select @R1 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA=RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=89;

	declare @R2 varchar(50)
	select @R2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=90;

	declare @R3 varchar(50)
	select @R3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=91;

	declare @R4 varchar(50)
	select @R4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=92;

	declare @R5 varchar(50)
	select @R5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=93;

	declare @R6 varchar(50)
	select @R6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=94;

	declare @R7 varchar(50)
	select @R7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=95;

	declare @R8 varchar(50)
	select @R8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=96;

	declare @R9 varchar(50)
	select @R9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=97;

	declare @R10 varchar(50)
	select @R10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=98;

	declare @R11 varchar(50)
	select @R11 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=99;

	declare @R12 varchar(50)
	select @R12 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=100;

	select @R1 as 'La vivienda es', @R2 as '¿Si la casa es propia cuenta con escrituras?',@R3 as 'Número de dormitorios',
	@R4 as 'Sala', @R5 as 'Comedor', @R6 as 'Número de baños', @R7 as '¿Alguna organización apoyo para la vivienda?', @R8 as 'Tiene previsto cambio o mejora',
	@R9 as '¿Como son las paredes?', @R10 as '¿Como es el piso?', @R11 as '¿Como es el techo?', @R12 as 'Otro detalle a destacar';
	COMMIT;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch













GO
/****** Object:  StoredProcedure [dbo].[ConsultaCuestionarioPadre]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaCuestionarioPadre]
@IdPersona int
AS
Begin try
	Begin Transaction

	declare @R1 varchar(50)
	select @R1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=245;
	
	declare @R2 varchar(50)
	select @R2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=246;

	declare @R3 varchar(50)
	select @R3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=247;

	declare @R4 varchar(50)
	select @R4 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=248;

	declare @R5 varchar(50)
	select @R5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=249;

	declare @R6 varchar(50)
	select @R6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=251;

	declare @R7 varchar(50)
	select @R7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=252;

	declare @R8 varchar(50)
	select @R8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=253;

	select @R1 as '¿Estudia actualmente?', @R2 as '¿Donde/Que?', @R3 AS '¿Vive con la familia?', @R4 as 'Tipo de relación de pareja', @R5 as 'Otro';
	COMMIT;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch













GO
/****** Object:  StoredProcedure [dbo].[ConsultaDatosExtra]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaDatosExtra]
as
Begin try
	Begin Transaction
	
	declare @R1 table (IdPersona1 int, Codigo varchar(50), Apellidos varchar(50), Nombres varchar(50), Fecha datetime, Genero bit);
	
	insert into @R1(IdPersona1, Codigo, Apellidos, Nombres,Fecha, Genero) SELECT PERSONA.IDPERSONA, CODIGOSADMENOREDAD, PRIMERAPELLIDOPERSONA, PRIMERNOMBREPERSONA, FECHANACIMIENTOPERSONA, GENEROPERSONA
	FROM PERSONA
	inner join MENOREDAD on PERSONA.IDPERSONA= MENOREDAD.IDPERSONA;

	
	SELECT distinct * FROM @R1;   	
        		
	commit;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch













GO
/****** Object:  StoredProcedure [dbo].[ConsultaFamilia]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaFamilia]
@IdPersona int
AS
Begin try
	Begin Transaction
	declare @IdFamilia int
	set @IdFamilia = ( select IDFAMILIA from PERIODO_PERSONA_FAMILIA where IDPERSONA=@IdPersona);

	select * from FAMILIA where IDFAMILIA=@IdFamilia;

	commit;
	Print 'Exito';
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaFichasLogros]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaFichasLogros]
@Orientador int,
@Anio int,
@Mes int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int, AsisteSoloAlTaller varchar(50),DesarrollaAutonomoActividad varchar(50),EmiteLibrementeCriterio varchar(50),AdoptaPosesOCriterios varchar(50),SeIntegraConOtrosNinos varchar(50),SolicitaAyudaAlAdulto varchar(50),EsRespetuosoYTolerante varchar(50),EmpiezayTerminaLaActividad varchar(50),ResuelveLasActividades varchar(50),SigueLasIndicacionesDadas varchar(50));
	declare @R2 table ( a int identity (1,1),AsisteSoloAlTaller varchar(50), IdPersona1 int, Codigo varchar(50), Apellido varchar(50), Nombre varchar(50), Fecha varchar(50), Genero bit);
	declare @R3 table ( b int identity (1,1),DesarrollaAutonomoActividad varchar(50), IdPersona2 int);
	declare @R4 table ( c int identity (1,1), EmiteLibrementeCriterio varchar(50), IdPersona3 int);
	declare @R5 table ( d int identity (1,1), AdoptaPosesOCriterios varchar(50), IdPersona4 int);
	declare @R6 table ( e int identity (1,1), SeIntegraConOtrosNinos varchar(50), IdPersona5 int);
	declare @R7 table ( f int identity (1,1), SolicitaAyudaAlAdulto varchar(50), IdPersona6 int);
	declare @R8 table ( g int identity (1,1), EsRespetuosoYTolerante varchar(50), IdPersona7 int);
	declare @R9 table ( h int identity (1,1), EmpiezayTerminaLaActividad varchar(50), IdPersona8 int);
	declare @R10 table ( i int identity (1,1), ResuelveLasActividades varchar(50), IdPersona9 int);
	declare @R11 table ( j int identity (1,1), SigueLasIndicacionesDadas varchar(50), IdPersona10 int);

	if @Mes = 4 or @Mes = 6 or @Mes = 9 or @Mes = 11
	begin
	
	insert into @R2(IdPersona1, AsisteSoloAlTaller) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE 
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 254 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R3( IdPersona2,DesarrollaAutonomoActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 255 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R4( IdPersona3, EmiteLibrementeCriterio) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 256 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R5(IdPersona4, AdoptaPosesOCriterios) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 257 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R6(IdPersona5,SeIntegraConOtrosNinos) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 258 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R7(IdPersona6,SolicitaAyudaAlAdulto) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 259 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R8(IdPersona7,EsRespetuosoYTolerante) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 260 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R9(IdPersona8,EmpiezayTerminaLaActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 261 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R10(IdPersona9,ResuelveLasActividades) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 262 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R11(IdPersona10,SigueLasIndicacionesDadas) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 263 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);
	end
	else if @Mes = 1 or @Mes = 3 or @Mes = 5 or @Mes = 7 or @Mes = 8 or @Mes = 10 or @Mes = 12
	begin
	insert into @R2(IdPersona1, AsisteSoloAlTaller) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE 
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 254 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R3( IdPersona2,DesarrollaAutonomoActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 255 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R4( IdPersona3, EmiteLibrementeCriterio) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 256 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R5(IdPersona4, AdoptaPosesOCriterios) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 257 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R6(IdPersona5,SeIntegraConOtrosNinos) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 258 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R7(IdPersona6,SolicitaAyudaAlAdulto) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 259 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R8(IdPersona7,EsRespetuosoYTolerante) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 260 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R9(IdPersona8,EmpiezayTerminaLaActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 261 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R10(IdPersona9,ResuelveLasActividades) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 262 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R11(IdPersona10,SigueLasIndicacionesDadas) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 263 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);
	end
	else 
	begin
	insert into @R2(IdPersona1, AsisteSoloAlTaller) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE 
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 254 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R3( IdPersona2,DesarrollaAutonomoActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 255 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R4( IdPersona3, EmiteLibrementeCriterio) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 256 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R5(IdPersona4, AdoptaPosesOCriterios) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 257 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R6(IdPersona5,SeIntegraConOtrosNinos) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 258 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R7(IdPersona6,SolicitaAyudaAlAdulto) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 259 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R8(IdPersona7,EsRespetuosoYTolerante) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 260 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R9(IdPersona8,EmpiezayTerminaLaActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 261 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R10(IdPersona9,ResuelveLasActividades) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 262 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R11(IdPersona10,SigueLasIndicacionesDadas) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 263 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);
	end

	insert into @R1(idpersona,AsisteSoloAlTaller, DesarrollaAutonomoActividad, EmiteLibrementeCriterio, AdoptaPosesOCriterios, SeIntegraConOtrosNinos, SolicitaAyudaAlAdulto, EsRespetuosoYTolerante, EmpiezayTerminaLaActividad, ResuelveLasActividades, SigueLasIndicacionesDadas) 
	SELECT IdPersona1,AsisteSoloAlTaller, DesarrollaAutonomoActividad, EmiteLibrementeCriterio, AdoptaPosesOCriterios, SeIntegraConOtrosNinos, SolicitaAyudaAlAdulto, EsRespetuosoYTolerante, EmpiezayTerminaLaActividad, ResuelveLasActividades, SigueLasIndicacionesDadas
	FROM @R2, @R3, @R4, @R5, @R6, @R7, @R8, @R9 ,@R10, @R11	
	where a = b and a=c and a=d and a=e and a=f and a=g and a=h and a=i and a = j;
	SELECT distinct * FROM @R1;   	
        		
	commit;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaFichasLogros2]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaFichasLogros2]
@Orientador int,
@Anio int,
@Mes int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int, AsisteSoloAlTaller varchar(50),DesarrollaAutonomoActividad varchar(50),EmiteLibrementeCriterio varchar(50),AdoptaPosesOCriterios varchar(50),SeIntegraConOtrosNinos varchar(50),SolicitaAyudaAlAdulto varchar(50),EsRespetuosoYTolerante varchar(50),EmpiezayTerminaLaActividad varchar(50),ResuelveLasActividades varchar(50),SigueLasIndicacionesDadas varchar(50));
	declare @R2 table ( a int identity (1,1),AsisteSoloAlTaller varchar(50), IdPersona1 int, Codigo varchar(50), Apellido varchar(50), Nombre varchar(50), Fecha varchar(50), Genero bit);
	declare @R3 table ( b int identity (1,1),DesarrollaAutonomoActividad varchar(50), IdPersona2 int);
	declare @R4 table ( c int identity (1,1), EmiteLibrementeCriterio varchar(50), IdPersona3 int);
	declare @R5 table ( d int identity (1,1), AdoptaPosesOCriterios varchar(50), IdPersona4 int);
	declare @R6 table ( e int identity (1,1), SeIntegraConOtrosNinos varchar(50), IdPersona5 int);
	declare @R7 table ( f int identity (1,1), SolicitaAyudaAlAdulto varchar(50), IdPersona6 int);
	declare @R8 table ( g int identity (1,1), EsRespetuosoYTolerante varchar(50), IdPersona7 int);
	declare @R9 table ( h int identity (1,1), EmpiezayTerminaLaActividad varchar(50), IdPersona8 int);
	declare @R10 table ( i int identity (1,1), ResuelveLasActividades varchar(50), IdPersona9 int);
	declare @R11 table ( j int identity (1,1), SigueLasIndicacionesDadas varchar(50), IdPersona10 int);

	if @Mes = 4 or @Mes = 6 or @Mes = 9 or @Mes = 11
	begin
	
	insert into @R2(IdPersona1, AsisteSoloAlTaller) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE 
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 254 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R3( IdPersona2,DesarrollaAutonomoActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 255 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R4( IdPersona3, EmiteLibrementeCriterio) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 256 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R5(IdPersona4, AdoptaPosesOCriterios) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 257 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R6(IdPersona5,SeIntegraConOtrosNinos) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 258 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R7(IdPersona6,SolicitaAyudaAlAdulto) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 259 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R8(IdPersona7,EsRespetuosoYTolerante) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 260 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R9(IdPersona8,EmpiezayTerminaLaActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 261 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R10(IdPersona9,ResuelveLasActividades) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 262 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);

	insert into @R11(IdPersona10,SigueLasIndicacionesDadas) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 263 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/30/',@Anio);
	end
	else if @Mes = 1 or @Mes = 3 or @Mes = 5 or @Mes = 7 or @Mes = 8 or @Mes = 10 or @Mes = 12
	begin
	insert into @R2(IdPersona1, AsisteSoloAlTaller) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE 
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 254 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R3( IdPersona2,DesarrollaAutonomoActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 255 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R4( IdPersona3, EmiteLibrementeCriterio) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 256 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R5(IdPersona4, AdoptaPosesOCriterios) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 257 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R6(IdPersona5,SeIntegraConOtrosNinos) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 258 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R7(IdPersona6,SolicitaAyudaAlAdulto) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 259 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R8(IdPersona7,EsRespetuosoYTolerante) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 260 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R9(IdPersona8,EmpiezayTerminaLaActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 261 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R10(IdPersona9,ResuelveLasActividades) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 262 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);

	insert into @R11(IdPersona10,SigueLasIndicacionesDadas) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 263 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/31/',@Anio);
	end
	else 
	begin
	insert into @R2(IdPersona1, AsisteSoloAlTaller) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE 
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 254 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R3( IdPersona2,DesarrollaAutonomoActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 255 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R4( IdPersona3, EmiteLibrementeCriterio) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 256 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R5(IdPersona4, AdoptaPosesOCriterios) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 257 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R6(IdPersona5,SeIntegraConOtrosNinos) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 258 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R7(IdPersona6,SolicitaAyudaAlAdulto) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 259 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R8(IdPersona7,EsRespetuosoYTolerante) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 260 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R9(IdPersona8,EmpiezayTerminaLaActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 261 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R10(IdPersona9,ResuelveLasActividades) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 262 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);

	insert into @R11(IdPersona10,SigueLasIndicacionesDadas) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 263 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat(@Mes,'/01/',@Anio) and concat(@Mes,'/28/',@Anio);
	end

	insert into @R1(idpersona,AsisteSoloAlTaller, DesarrollaAutonomoActividad, EmiteLibrementeCriterio, AdoptaPosesOCriterios, SeIntegraConOtrosNinos, SolicitaAyudaAlAdulto, EsRespetuosoYTolerante, EmpiezayTerminaLaActividad, ResuelveLasActividades, SigueLasIndicacionesDadas) 
	SELECT IdPersona1,AsisteSoloAlTaller, DesarrollaAutonomoActividad, EmiteLibrementeCriterio, AdoptaPosesOCriterios, SeIntegraConOtrosNinos, SolicitaAyudaAlAdulto, EsRespetuosoYTolerante, EmpiezayTerminaLaActividad, ResuelveLasActividades, SigueLasIndicacionesDadas
	FROM @R2, @R3, @R4, @R5, @R6, @R7, @R8, @R9 ,@R10, @R11	
	where a = b and a=c and a=d and a=e and a=f and a=g and a=h and a=i and a = j;
	SELECT distinct * FROM @R1;   	
        		
	commit;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaFichasLogros3]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaFichasLogros3]
@Orientador int,
@Anio int,
@Mes int
AS
Begin try
	Begin Transaction
	declare @R1 table (idpersona int, AsisteSoloAlTaller varchar(50),DesarrollaAutonomoActividad varchar(50),EmiteLibrementeCriterio varchar(50),AdoptaPosesOCriterios varchar(50),SeIntegraConOtrosNinos varchar(50),SolicitaAyudaAlAdulto varchar(50),EsRespetuosoYTolerante varchar(50),EmpiezayTerminaLaActividad varchar(50),ResuelveLasActividades varchar(50),SigueLasIndicacionesDadas varchar(50));
	declare @R2 table ( a int identity (1,1),AsisteSoloAlTaller varchar(50), IdPersona1 int, Codigo varchar(50), Apellido varchar(50), Nombre varchar(50), Fecha varchar(50), Genero bit);
	declare @R3 table ( b int identity (1,1),DesarrollaAutonomoActividad varchar(50), IdPersona2 int);
	declare @R4 table ( c int identity (1,1), EmiteLibrementeCriterio varchar(50), IdPersona3 int);
	declare @R5 table ( d int identity (1,1), AdoptaPosesOCriterios varchar(50), IdPersona4 int);
	declare @R6 table ( e int identity (1,1), SeIntegraConOtrosNinos varchar(50), IdPersona5 int);
	declare @R7 table ( f int identity (1,1), SolicitaAyudaAlAdulto varchar(50), IdPersona6 int);
	declare @R8 table ( g int identity (1,1), EsRespetuosoYTolerante varchar(50), IdPersona7 int);
	declare @R9 table ( h int identity (1,1), EmpiezayTerminaLaActividad varchar(50), IdPersona8 int);
	declare @R10 table ( i int identity (1,1), ResuelveLasActividades varchar(50), IdPersona9 int);
	declare @R11 table ( j int identity (1,1), SigueLasIndicacionesDadas varchar(50), IdPersona10 int);

	if @Mes = 4 or @Mes = 6 or @Mes = 9 or @Mes = 11
	begin
	
	insert into @R2(IdPersona1, AsisteSoloAlTaller) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE 
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 254 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('30/',@Mes,'/',@Anio);

	insert into @R3( IdPersona2,DesarrollaAutonomoActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 255 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('30/',@Mes,'/',@Anio);

	insert into @R4( IdPersona3, EmiteLibrementeCriterio) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 256 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('30/',@Mes,'/',@Anio);

	insert into @R5(IdPersona4, AdoptaPosesOCriterios) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 257 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('30/',@Mes,'/',@Anio);

	insert into @R6(IdPersona5,SeIntegraConOtrosNinos) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 258 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('30/',@Mes,'/',@Anio);

	insert into @R7(IdPersona6,SolicitaAyudaAlAdulto) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 259 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('30/',@Mes,'/',@Anio);

	insert into @R8(IdPersona7,EsRespetuosoYTolerante) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 260 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('30/',@Mes,'/',@Anio);

	insert into @R9(IdPersona8,EmpiezayTerminaLaActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 261 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('30/',@Mes,'/',@Anio);

	insert into @R10(IdPersona9,ResuelveLasActividades) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 262 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('30/',@Mes,'/',@Anio);

	insert into @R11(IdPersona10,SigueLasIndicacionesDadas) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 263 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('30/',@Mes,'/',@Anio);
	end
	else if @Mes = 1 or @Mes = 3 or @Mes = 5 or @Mes = 7 or @Mes = 8 or @Mes = 10 or @Mes = 12
	begin
	insert into @R2(IdPersona1, AsisteSoloAlTaller) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE 
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 254 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('31/',@Mes,'/',@Anio);

	insert into @R3( IdPersona2,DesarrollaAutonomoActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 255 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('31/',@Mes,'/',@Anio);

	insert into @R4( IdPersona3, EmiteLibrementeCriterio) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 256 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('31/',@Mes,'/',@Anio);

	insert into @R5(IdPersona4, AdoptaPosesOCriterios) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 257 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('31/',@Mes,'/',@Anio);

	insert into @R6(IdPersona5,SeIntegraConOtrosNinos) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 258 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('31/',@Mes,'/',@Anio);

	insert into @R7(IdPersona6,SolicitaAyudaAlAdulto) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 259 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('31/',@Mes,'/',@Anio);

	insert into @R8(IdPersona7,EsRespetuosoYTolerante) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 260 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('31/',@Mes,'/',@Anio);

	insert into @R9(IdPersona8,EmpiezayTerminaLaActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 261 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('31/',@Mes,'/',@Anio);

	insert into @R10(IdPersona9,ResuelveLasActividades) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 262 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('31/',@Mes,'/',@Anio);

	insert into @R11(IdPersona10,SigueLasIndicacionesDadas) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 263 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('31/',@Mes,'/',@Anio);
	end
	else 
	begin
	insert into @R2(IdPersona1, AsisteSoloAlTaller) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE 
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 254 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('28/',@Mes,'/',@Anio);

	insert into @R3( IdPersona2,DesarrollaAutonomoActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 255 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('28/',@Mes,'/',@Anio);

	insert into @R4( IdPersona3, EmiteLibrementeCriterio) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 256 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('28/',@Mes,'/',@Anio);

	insert into @R5(IdPersona4, AdoptaPosesOCriterios) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 257 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('28/',@Mes,'/',@Anio);

	insert into @R6(IdPersona5,SeIntegraConOtrosNinos) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 258 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('28/',@Mes,'/',@Anio);

	insert into @R7(IdPersona6,SolicitaAyudaAlAdulto) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 259 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('28/',@Mes,'/',@Anio);

	insert into @R8(IdPersona7,EsRespetuosoYTolerante) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 260 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('28/',@Mes,'/',@Anio);

	insert into @R9(IdPersona8,EmpiezayTerminaLaActividad) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 261 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('28/',@Mes,'/',@Anio);

	insert into @R10(IdPersona9,ResuelveLasActividades) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 262 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('28/',@Mes,'/',@Anio);

	insert into @R11(IdPersona10,SigueLasIndicacionesDadas) SELECT DISTINCT RESPUESTA_INDICADOR.IDPERSONA, RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join MENOREDAD on RESPUESTA_INDICADOR.IDPERSONA = MENOREDAD.IDPERSONA
	where RESPUESTA_INDICADOR.IDPREGUNTA = 263 and MENOREDAD.IDORIENTADOR = @Orientador and FECHARESPUESTAINDICADOR between concat('01/',@Mes,'/',@Anio) and concat('28/',@Mes,'/',@Anio);
	end

	insert into @R1(idpersona,AsisteSoloAlTaller, DesarrollaAutonomoActividad, EmiteLibrementeCriterio, AdoptaPosesOCriterios, SeIntegraConOtrosNinos, SolicitaAyudaAlAdulto, EsRespetuosoYTolerante, EmpiezayTerminaLaActividad, ResuelveLasActividades, SigueLasIndicacionesDadas) 
	SELECT IdPersona1,AsisteSoloAlTaller, DesarrollaAutonomoActividad, EmiteLibrementeCriterio, AdoptaPosesOCriterios, SeIntegraConOtrosNinos, SolicitaAyudaAlAdulto, EsRespetuosoYTolerante, EmpiezayTerminaLaActividad, ResuelveLasActividades, SigueLasIndicacionesDadas
	FROM @R2, @R3, @R4, @R5, @R6, @R7, @R8, @R9 ,@R10, @R11	
	where a = b and a=c and a=d and a=e and a=f and a=g and a=h and a=i and a = j;
	SELECT distinct * FROM @R1;   	
        		
	commit;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch










GO
/****** Object:  StoredProcedure [dbo].[ConsultaMadre]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaMadre]
@IdPersona int
AS
Begin try
	Begin Transaction
	declare @IdFamilia int
	set @IdFamilia = ( select IDFAMILIA from PERIODO_PERSONA_FAMILIA where IDPERSONA=@IdPersona);

	declare @IdMama int 
	set @IdMama = (select IDPERSONA from PERIODO_PERSONA_FAMILIA where IDFAMILIA=@IdFamilia and IDPARENTEZCO=2);

	declare @NombreMama varchar(50)
	set @NombreMama = (select PRIMERNOMBREPERSONA from PERSONA where IDPERSONA=@IdMama);

	declare @ApellidoMama varchar(50)
	set @ApellidoMama = (select PRIMERAPELLIDOPERSONA from PERSONA where IDPERSONA=@IdMama);

	declare @Fecha varchar(50)
	set @Fecha = (select FECHANACIMIENTOPERSONA from PERSONA where IDPERSONA=@IdMama);

	select CONCAT(@NombreMama, ' ', @ApellidoMama) as 'NombreMadre', @Fecha as 'FechaNacimiento';
	commit;
	Print 'Exito';
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaNinio]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[ConsultaNinio]
@IdPersona int
AS
Begin try
	Begin Transaction
	select * from PERSONA, PERIODO_PERSONA_FAMILIA, PERSONA_FAMILIA where persona.IDPERSONA = @IdPersona and PERIODO_PERSONA_FAMILIA.IDPERSONA = @IdPersona and PERSONA_FAMILIA.IDPERSONA= @IdPersona;

	commit;
	Print 'Transferencia exitosa :D';
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo en la transferencia :c', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaNinioCompleta]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaNinioCompleta]
@IdPersona int
AS
Begin try
	Begin Transaction
	declare @IdFamilia int
	set @IdFamilia = ( select IDFAMILIA from PERIODO_PERSONA_FAMILIA where IDPERSONA=@IdPersona);

	declare @IdMama int 
	set @IdMama = (select IDPERSONA from PERIODO_PERSONA_FAMILIA where IDFAMILIA=@IdFamilia and IDPARENTEZCO=2);

	declare @IdPapa int 
	set @IdPapa = (select IDPERSONA from PERIODO_PERSONA_FAMILIA where IDFAMILIA=@IdFamilia and IDPARENTEZCO=1);

	select * from PERSONA where persona.IDPERSONA = @IdPersona
	union 
	select * from PERSONA where persona.IDPERSONA = @IdPapa 
	union
	select * from PERSONA where persona.IDPERSONA = @IdMama;

	commit;
	Print 'Transferencia exitosa :D';
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo en la transferencia :c', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaNuevoCuestionario]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaNuevoCuestionario]
@IdPersona int
AS
Begin try
	Begin Transaction

	declare @R1 varchar(50)
	select @R1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=146;

	declare @R2 varchar(50)
	select @R2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=147;

	declare @R3 varchar(50)
	select @R3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=152;

	declare @R4 varchar(50)
	select @R4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=148;
	
	declare @R5 varchar(50)
	select @R5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=149;

	declare @R6 varchar(50)
	select @R6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=150;

	declare @R7 varchar(50)
	select @R7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=151;

	declare @a1 varchar(50)
	select @a1 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=156;

	declare @a2 varchar(50)
	select @a2 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=157;

	declare @a3 varchar(50)
	select @a3 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=158;

	declare @a4 varchar(50)
	select @a4 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=159;

	declare @a5 varchar(50)
	select @a5 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=160;

	declare @a6 varchar(50)
	select @a6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=161;

	declare @b1 varchar(50)
	select @b1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=162;

	declare @b2 varchar(50)
	select @b2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=163;

	declare @b3 varchar(50)
	select @b3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=164;

	declare @b4 varchar(50)
	select @b4 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=165;

	declare @b5 varchar(50)
	select @b5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=166;

	declare @b6 varchar(50)
	select @b6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=167;

	declare @b7 varchar(50)
	select @b7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=168;

	declare @c1 varchar(50)
	select @c1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=169;

	declare @c2 varchar(50)
	select @c2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=170;

	declare @c3 varchar(50)
	select @c3 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=171;

	declare @c4 varchar(50)
	select @c4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=172;

	declare @d1 varchar(50)
	select @d1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=181; 

	declare @d2 varchar(50)
	select @d2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=182; 

	declare @d3 varchar(50)
	select @d3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=184; 

	declare @d4 varchar(50)
	select @d4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=185; 

	declare @e1 varchar(50)
	select @e1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=174; 

	declare @e2 varchar(50)
	select @e2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=178;
	
	declare @e3 varchar(50)
	select @e3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=179;  

	declare @f1 varchar(50)
	select @f1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=187; 

	declare @f2 varchar(50)
	select @f2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=188; 

	declare @f3 varchar(50)
	select @f3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=189; 

	declare @f4 varchar(50)
	select @f4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=190;

	declare @f5 varchar(50)
	select @f5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=191; 

	declare @f6 varchar(50)
	select @f6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=192;
	
	declare @f7 varchar(50)
	select @f7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=193;  

	declare @f8 varchar(50)
	select @f8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=194; 


	select @R1 as 'Familia', @R2 as 'Educador@', @R3 as 'Persona de referencia de la familia', @R4 as 'Grupo', @R5 as 'Asistencia al último taller', @R6 as 'Motivo', @R7 as 'Describir la actitud de bienvenida',
	@a1 as 'Condición general de la casa', @a2 as 'Orden y limpieza del exterior de la casa', @a3 as 'Orden y limpieza del interior de la casa', @a4 as 'Cuidado de la propia persona', @a5 as 'Cuidado del niño-joven',@a6 as 'Observaciones',
	@b1 as '¿Alguien de la familia ha enfermado?', @b2 as '¿Quién?', @b3 as 'Enfermedad', @b4 as 'Acudieron al médico',@b5 as 'En caso de no ir al médico, ¿como se curó?', @b6 as '¿Razón por la que no acudió al médico?', @b7 as '¿Ha superado la enfermedad?',
	@c1 as '¿El niño se ha enfermado alguna vez?', @c2 as 'Enfermedad', @c3 as 'Acudieron al médico', @c4 as 'Situación actual',
	@e1 as '¿Quien?', @e2 as 'Realizan alguna actividad en fin de semana', @e3 as 'Actividad',
	@d1 as '¿Quien 2?', @d2 as '¿Situación actual?', @d3 as '¿Quien 3?', @d4 as '¿Situación actual 2?',
	@f1 as 'Has notado algún cambio extraño en tu hij(a)', @f2 as '¿Cual?', @f3 as '¿Como has actuado ante ese cambio?', @f4 as '¿Alguien mas ha intervenido?', @f5 as '¿Quien?', @f6 as 'Situación actual', @f7 as '¿El niño-joven tiene enamorad(a)?', @f8 as '¿Cuál es su reacción ante esto?';
	COMMIT;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch













GO
/****** Object:  StoredProcedure [dbo].[ConsultaNuevoCuestionario2]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaNuevoCuestionario2]
@IdPersona int
AS
Begin try
	Begin Transaction

	declare @R1 varchar(50)
	select @R1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=195;

	declare @R2 varchar(50)
	select @R2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=196;

	declare @R3 varchar(50)
	select @R3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=197;

	declare @R4 varchar(50)
	select @R4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=198;

	declare @R5 varchar(50)
	select @R5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=199;

	declare @R6 varchar(50)
	select @R6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=200;

	declare @R7 varchar(50)
	select @R7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=202;

	declare @R8 varchar(50)
	select @R8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=203;

	declare @R9 varchar(50)
	select @R9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=204;

	declare @R10 varchar(50)
	select @R10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=205;

	declare @a1 varchar(50)
	select @a1 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=206;

	declare @a2 varchar(50)
	select @a2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=207;

	declare @a3 varchar(50)
	select @a3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=209;

	declare @a4 varchar(50)
	select @a4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=210;

	declare @a5 varchar(50)
	select @a5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=211;

	declare @a6 varchar(50)
	select @a6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=212;

	declare @a7 varchar(50)
	select @a7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=213;

	declare @a8 varchar(50)
	select @a8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=214;

	declare @b1 varchar(50)
	select @b1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=215;

	declare @b2 varchar(50)
	select @b2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=216;

	declare @b3 varchar(50)
	select @b3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=217;

	declare @b4 varchar(50)
	select @b4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=218;

	declare @b5 varchar(50)
	select @b5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=219;

	declare @b6 varchar(50)
	select @b6 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=220;

	declare @b7 varchar(50)
	select @b7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=221;

	declare @b8 varchar(50)
	select @b8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=222;

	declare @b9 varchar(50)
	select @b9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=223;

	declare @b10 varchar(50)
	select @b10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=224;

	declare @c1 varchar(50)
	select @c1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=225;

	declare @c2 varchar(50)
	select @c2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=226;

	declare @c3 varchar(50)
	select @c3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=227;

	declare @c4 varchar(50)
	select @c4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=229;

	declare @c5 varchar(50)
	select @c5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=230;

	declare @c6 varchar(50)
	select @c6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=231;

	declare @c7 varchar(50)
	select @c7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=232;

	declare @c8 varchar(50)
	select @c8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=233;

	declare @c9 varchar(50)
	select @c9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=235;

	declare @d1 varchar(50)
	select @d1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=237;

	declare @d2 varchar(50)
	select @d2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=238;

	declare @d3 varchar(50)
	select @d3 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=239;

	declare @d4 varchar(50)
	select @d4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=240;

	declare @d5 varchar(50)
	select @d5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=241;

	declare @d6 varchar(50)
	select @d6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=243;

	declare @d7 varchar(50)
	select @d7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=244;

	select @R1 as 'Asistencia al último taller', @R2 as 'Motivo', @R3 as '¿El tema tratado fue de su agrado?', @R4 as '¿Por que?', @R5 as '¿Los talleres le resultan útiles?', @R6 as '¿Por que?2', @R7 as '¿Comparte con alguien lo aprendido en el taller?', @R8 as '¿Con quién?', @R9 as 'La reacción', @R10 as 'Alguna sugerencia para mejorar los talleres',
	@a1 as 'Reconoce ser victima de algún tipo de violencia', @a2 as '¿Quien es el agresor?', @a3 as '¿Como ha reaccionado?', @a4 as '¿Ha pedido ayuda?', @a5 as '¿A quién?', @a6 as 'Tipo de ayuda solicitada', @a7 as 'Contra quién ha sido el acto violento', @a8 as 'Pasos que haya dado',
	@b1 as 'Se ha despertado un nuevo interés', @b2 as '¿Cual?', @b3 as '¿En que usa su tiempo libre?', @b4 as '¿Tiene deseo de aprender/emprender algo nuevo?', @b5 as '¿Que?', @b6 as '¿Que impedimentos tiene para hacerlo?', @b7 as 'Le gustaría recibir capacitación', @b8 as '¿Cuenta con un huerto?', @b9 as 'Visita técnica', @b10 as '¿Qué siembra?',
	@c1 as 'El niño-joven asiste al colegio', @c2 as 'Motivo de la inasistencia', @c3 as 'El cumplimiento de las tareas', @c4 as 'Motivo2', @c5 as '¿Que asignatura le gusta más?', @c6 as '¿En qué asignatura tiene dificultades?', @c7 as '¿De qué manera afronta esa dificultad?', @c8 as 'Usted ayuda a realizar las tareas', @c9 as '¿Cual? 2',
	@d1 as 'El niño-joven participa de las propuestas de Fundación Sembrar', @d2 as 'Motivo no participación', @d3 as 'El niño-joven asiste', @d4 as 'Le gusta participar de esos espacios', @d5 as 'Motiv', @d6 as '¿Cua?', @d7 as 'Observaciones Libres';
	COMMIT;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch













GO
/****** Object:  StoredProcedure [dbo].[ConsultaNuevoCuestionario2TODOS]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaNuevoCuestionario2TODOS]
AS
Begin try
	Begin Transaction

	declare @R1 varchar(50)
	select @R1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=195;

	declare @R2 varchar(50)
	select @R2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=196;

	declare @R3 varchar(50)
	select @R3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=197;

	declare @R4 varchar(50)
	select @R4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=198;

	declare @R5 varchar(50)
	select @R5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=199;

	declare @R6 varchar(50)
	select @R6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=200;

	declare @R7 varchar(50)
	select @R7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=202;

	declare @R8 varchar(50)
	select @R8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=203;

	declare @R9 varchar(50)
	select @R9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=204;

	declare @R10 varchar(50)
	select @R10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=205;

	declare @a1 varchar(50)
	select @a1 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=206;

	declare @a2 varchar(50)
	select @a2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=207;

	declare @a3 varchar(50)
	select @a3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=209;

	declare @a4 varchar(50)
	select @a4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=210;

	declare @a5 varchar(50)
	select @a5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=211;

	declare @a6 varchar(50)
	select @a6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=212;

	declare @a7 varchar(50)
	select @a7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=213;

	declare @a8 varchar(50)
	select @a8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=214;

	declare @b1 varchar(50)
	select @b1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=215;

	declare @b2 varchar(50)
	select @b2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=216;

	declare @b3 varchar(50)
	select @b3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=217;

	declare @b4 varchar(50)
	select @b4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=218;

	declare @b5 varchar(50)
	select @b5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=219;

	declare @b6 varchar(50)
	select @b6 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=220;

	declare @b7 varchar(50)
	select @b7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=221;

	declare @b8 varchar(50)
	select @b8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=222;

	declare @b9 varchar(50)
	select @b9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=223;

	declare @b10 varchar(50)
	select @b10 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=224;

	declare @c1 varchar(50)
	select @c1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=225;

	declare @c2 varchar(50)
	select @c2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=226;

	declare @c3 varchar(50)
	select @c3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=227;

	declare @c4 varchar(50)
	select @c4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=229;

	declare @c5 varchar(50)
	select @c5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=230;

	declare @c6 varchar(50)
	select @c6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=231;

	declare @c7 varchar(50)
	select @c7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=232;

	declare @c8 varchar(50)
	select @c8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=233;

	declare @c9 varchar(50)
	select @c9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=235;

	declare @d1 varchar(50)
	select @d1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=237;

	declare @d2 varchar(50)
	select @d2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=238;

	declare @d3 varchar(50)
	select @d3 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=239;

	declare @d4 varchar(50)
	select @d4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=240;

	declare @d5 varchar(50)
	select @d5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=241;

	declare @d6 varchar(50)
	select @d6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=243;

	declare @d7 varchar(50)
	select @d7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=244;

	select @R1 as 'Asistencia al último taller', @R2 as 'Motivo', @R3 as '¿El tema tratado fue de su agrado?', @R4 as '¿Por que?', @R5 as '¿Los talleres le resultan útiles?', @R6 as '¿Por que?2', @R7 as '¿Comparte con alguien lo aprendido en el taller?', @R8 as '¿Con quién?', @R9 as 'La reacción', @R10 as 'Alguna sugerencia para mejorar los talleres',
	@a1 as 'Reconoce ser victima de algún tipo de violencia', @a2 as '¿Quien es el agresor?', @a3 as '¿Como ha reaccionado?', @a4 as '¿Ha pedido ayuda?', @a5 as '¿A quién?', @a6 as 'Tipo de ayuda solicitada', @a7 as 'Contra quién ha sido el acto violento', @a8 as 'Pasos que haya dado',
	@b1 as 'Se ha despertado un nuevo interés', @b2 as '¿Cual?', @b3 as '¿En que usa su tiempo libre?', @b4 as '¿Tiene deseo de aprender/emprender algo nuevo?', @b5 as '¿Que?', @b6 as '¿Que impedimentos tiene para hacerlo?', @b7 as 'Le gustaría recibir capacitación', @b8 as '¿Cuenta con un huerto?', @b9 as 'Visita técnica', @b10 as '¿Qué siembra?',
	@c1 as 'El niño-joven asiste al colegio', @c2 as 'Motivo de la inasistencia', @c3 as 'El cumplimiento de las tareas', @c4 as 'Motivo2', @c5 as '¿Que asignatura le gusta más?', @c6 as '¿En qué asignatura tiene dificultades?', @c7 as '¿De qué manera afronta esa dificultad?', @c8 as 'Usted ayuda a realizar las tareas', @c9 as '¿Cual? 2',
	@d1 as 'El niño-joven participa de las propuestas de Fundación Sembrar', @d2 as 'Motivo no participación', @d3 as 'El niño-joven asiste', @d4 as 'Le gusta participar de esos espacios', @d5 as 'Motiv', @d6 as '¿Cua?', @d7 as 'Observaciones Libres';
	COMMIT;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaNuevoCuestionario3]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaNuevoCuestionario3]
@IdPersona int
AS
Begin try
	Begin Transaction

	declare @R1 varchar(50)
	select @R1 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=154;
	
	declare @R2 varchar(50)
	select @R2 = CONCAT(PRIMERNOMBREPERSONA, ' ' , PRIMERAPELLIDOPERSONA)
	FROM PERSONA where IDPERSONA=@IdPersona;

	declare @R3 varchar(50)
	select @R3 = CODIGOSADMENOREDAD
	FROM MENOREDAD where IDPERSONA=@IdPersona;

	select @R1 as 'Tipo de visita', @R2 as 'Nombre niño-joven', @R3 AS 'Código SAD';
	COMMIT;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaNuevoCuestionario3TODOS]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaNuevoCuestionario3TODOS]
AS
Begin try
	Begin Transaction

	declare @Id int
	select @Id = RESPUESTA_INDICADOR.IDPERSONA
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where RESPUESTA_INDICADOR.IDPREGUNTA=154;

	declare @R1 varchar(50)
	select @R1 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA_INDICADOR.IDRESPUESTA = RESPUESTA.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where RESPUESTA_INDICADOR.IDPREGUNTA=154;
	
	declare @R2 varchar(50)
	select @R2 = CONCAT(PRIMERNOMBREPERSONA, ' ' , PRIMERAPELLIDOPERSONA)
	FROM PERSONA where IDPERSONA = @Id;

	declare @R3 varchar(50)
	select @R3 = CODIGOSADMENOREDAD
	FROM MENOREDAD where IDPERSONA = @Id;;

	select @R1 as 'Tipo de visita', @R2 as 'Nombre niño-joven', @R3 AS 'Código SAD';
	COMMIT;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaNuevoCuestionarioTODOS]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaNuevoCuestionarioTODOS]
AS
Begin try
	Begin Transaction

	declare @R1 varchar(50)
	select @R1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=146;

	declare @R2 varchar(50)
	select @R2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=147;

	declare @R3 varchar(50)
	select @R3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=152;

	declare @R4 varchar(50)
	select @R4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=148;
	
	declare @R5 varchar(50)
	select @R5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=149;

	declare @R6 varchar(50)
	select @R6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=150;

	declare @R7 varchar(50)
	select @R7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=151;

	declare @a1 varchar(50)
	select @a1 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=156;

	declare @a2 varchar(50)
	select @a2 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=157;

	declare @a3 varchar(50)
	select @a3 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=158;

	declare @a4 varchar(50)
	select @a4 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=159;

	declare @a5 varchar(50)
	select @a5 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=160;

	declare @a6 varchar(50)
	select @a6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=161;

	declare @b1 varchar(50)
	select @b1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=162;

	declare @b2 varchar(50)
	select @b2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=163;

	declare @b3 varchar(50)
	select @b3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=164;

	declare @b4 varchar(50)
	select @b4 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=165;

	declare @b5 varchar(50)
	select @b5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=166;

	declare @b6 varchar(50)
	select @b6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=167;

	declare @b7 varchar(50)
	select @b7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=168;

	declare @c1 varchar(50)
	select @c1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=169;

	declare @c2 varchar(50)
	select @c2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=170;

	declare @c3 varchar(50)
	select @c3 = RESPUESTA.NOMBRE
	FROM RESPUESTA_INDICADOR
	inner join RESPUESTA on RESPUESTA.IDRESPUESTA = RESPUESTA_INDICADOR.IDRESPUESTA
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=171;

	declare @c4 varchar(50)
	select @c4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=172;

	declare @d1 varchar(50)
	select @d1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=181; 

	declare @d2 varchar(50)
	select @d2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=182; 

	declare @d3 varchar(50)
	select @d3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=184; 

	declare @d4 varchar(50)
	select @d4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=185; 

	declare @e1 varchar(50)
	select @e1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=174; 

	declare @e2 varchar(50)
	select @e2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=178;
	
	declare @e3 varchar(50)
	select @e3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=179;  

	declare @f1 varchar(50)
	select @f1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=187; 

	declare @f2 varchar(50)
	select @f2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=188; 

	declare @f3 varchar(50)
	select @f3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=189; 

	declare @f4 varchar(50)
	select @f4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=190;

	declare @f5 varchar(50)
	select @f5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=191; 

	declare @f6 varchar(50)
	select @f6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=192;
	
	declare @f7 varchar(50)
	select @f7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=193;  

	declare @f8 varchar(50)
	select @f8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where  RESPUESTA_INDICADOR.IDPREGUNTA=194; 


	select @R1 as 'Familia', @R2 as 'Educador@', @R3 as 'Persona de referencia de la familia', @R4 as 'Grupo', @R5 as 'Asistencia al último taller', @R6 as 'Motivo', @R7 as 'Describir la actitud de bienvenida',
	@a1 as 'Condición general de la casa', @a2 as 'Orden y limpieza del exterior de la casa', @a3 as 'Orden y limpieza del interior de la casa', @a4 as 'Cuidado de la propia persona', @a5 as 'Cuidado del niño-joven',@a6 as 'Observaciones',
	@b1 as '¿Alguien de la familia ha enfermado?', @b2 as '¿Quién?', @b3 as 'Enfermedad', @b4 as 'Acudieron al médico',@b5 as 'En caso de no ir al médico, ¿como se curó?', @b6 as '¿Razón por la que no acudió al médico?', @b7 as '¿Ha superado la enfermedad?',
	@c1 as '¿El niño se ha enfermado alguna vez?', @c2 as 'Enfermedad', @c3 as 'Acudieron al médico', @c4 as 'Situación actual',
	@e1 as '¿Quien?', @e2 as 'Realizan alguna actividad en fin de semana', @e3 as 'Actividad',
	@d1 as '¿Quien 2?', @d2 as '¿Situación actual?', @d3 as '¿Quien 3?', @d4 as '¿Situación actual 2?',
	@f1 as 'Has notado algún cambio extraño en tu hij(a)', @f2 as '¿Cual?', @f3 as '¿Como has actuado ante ese cambio?', @f4 as '¿Alguien mas ha intervenido?', @f5 as '¿Quien?', @f6 as 'Situación actual', @f7 as '¿El niño-joven tiene enamorad(a)?', @f8 as '¿Cuál es su reacción ante esto?';
	COMMIT;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaPadre]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaPadre]
@IdPersona int
AS
Begin try
	Begin Transaction
	declare @IdFamilia int
	set @IdFamilia = ( select IDFAMILIA from PERIODO_PERSONA_FAMILIA where IDPERSONA=@IdPersona);

	declare @IdPapa int 
	set @IdPapa = (select IDPERSONA from PERIODO_PERSONA_FAMILIA where IDFAMILIA=@IdFamilia and IDPARENTEZCO=1);
	
	declare @Nombre varchar(50)
	set @Nombre = (select PRIMERNOMBREPERSONA from PERSONA where IDPERSONA=@IdPapa);

	declare @Apellido varchar(50)
	set @Apellido = (select PRIMERAPELLIDOPERSONA from PERSONA where IDPERSONA=@IdPapa);

	declare @Fecha varchar(50)
	set @Fecha = (select FECHANACIMIENTOPERSONA from PERSONA where IDPERSONA=@IdPapa);

	select CONCAT(@Nombre, ' ', @Apellido) as 'NombreMadre', @Fecha as 'FechaNacimiento';
	
	commit;
	Print 'Exito';
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultarPreguntasCerradasPorObjetivo]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultarPreguntasCerradasPorObjetivo]
@IdProceso int
AS
Begin try
	Begin Transaction	
	declare @UltimaFecha date
	select @UltimaFecha = MAX(FECHASOLUCIONCUESTIONARIO) from SOLUCIONCUESTIONARIO where IDPROCESO=@IdProceso;

	select DISTINCT proceso.IDPROCESO, NOMBREPROCESO, NOMBREOBJETIVO, PERSONA.IDPERSONA, PERSONA.PRIMERNOMBREPERSONA, PERSONA.PRIMERAPELLIDOPERSONA, PREGUNTA.NOMBREPREGUNTA, TEXTOSOLUCIONCUESTIONARIO from SOLUCIONCUESTIONARIO
	inner join PERSONA on SOLUCIONCUESTIONARIO.IDPERSONA= PERSONA.IDPERSONA
	inner join PREGUNTA on SOLUCIONCUESTIONARIO.IDPREGUNTA = PREGUNTA.IDPREGUNTA
	inner join OBJETIVO on SOLUCIONCUESTIONARIO.IDOBJETIVO = OBJETIVO.IDOBJETIVO
	inner join PROCESO on SOLUCIONCUESTIONARIO.IDPROCESO = PROCESO.IDPROCESO
	inner join PREGUNTASCONPOSIBLESRESPUESTAS on SOLUCIONCUESTIONARIO.IDPREGUNTA = PREGUNTASCONPOSIBLESRESPUESTAS.IDPREGUNTA
	inner join INDICADOR on SOLUCIONCUESTIONARIO.IDINDICADOR = INDICADOR.IDINDICADOR
	where SOLUCIONCUESTIONARIO.IDPROCESO=@IdProceso and ESTADOOBJETIVO = 1 and ESTADOPREGUNTA = 1 and ESTADOPROCESO = 1 and INDICADOR.ESTADO =1 and FECHASOLUCIONCUESTIONARIO = @UltimaFecha;
	commit;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch


GO
/****** Object:  StoredProcedure [dbo].[ConsultarPreguntasCerradasPorObjetivoO]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultarPreguntasCerradasPorObjetivoO]
@IdProceso int,
@IdOrientador int
AS
Begin try
	Begin Transaction
	declare @UltimaFecha date
	select @UltimaFecha = MAX(FECHASOLUCIONCUESTIONARIO) from SOLUCIONCUESTIONARIO where IDPROCESO=@IdProceso;
	
	select DISTINCT proceso.IDPROCESO, NOMBREPROCESO, NOMBREOBJETIVO, PERSONA.IDPERSONA, PERSONA.PRIMERNOMBREPERSONA, PERSONA.PRIMERAPELLIDOPERSONA, PREGUNTA.NOMBREPREGUNTA, TEXTOSOLUCIONCUESTIONARIO from SOLUCIONCUESTIONARIO
	inner join PERSONA on SOLUCIONCUESTIONARIO.IDPERSONA= PERSONA.IDPERSONA
	inner join PREGUNTA on SOLUCIONCUESTIONARIO.IDPREGUNTA = PREGUNTA.IDPREGUNTA
	inner join OBJETIVO on SOLUCIONCUESTIONARIO.IDOBJETIVO = OBJETIVO.IDOBJETIVO
	inner join PROCESO on SOLUCIONCUESTIONARIO.IDPROCESO = PROCESO.IDPROCESO
	inner join INDICADOR on SOLUCIONCUESTIONARIO.IDINDICADOR = INDICADOR.IDINDICADOR
	inner join PREGUNTASCONPOSIBLESRESPUESTAS on SOLUCIONCUESTIONARIO.IDPREGUNTA = PREGUNTASCONPOSIBLESRESPUESTAS.IDPREGUNTA
	inner join ORIENTADORACARGODEPROCESOENPERIODO on SOLUCIONCUESTIONARIO.IDPROCESO = ORIENTADORACARGODEPROCESOENPERIODO.IDPROCESO
	where SOLUCIONCUESTIONARIO.IDPROCESO=@IdProceso and ORIENTADORACARGODEPROCESOENPERIODO.IDORIENTADOR = @IdOrientador and
	ESTADOOBJETIVO = 1 and ESTADOPREGUNTA = 1 and ESTADOPROCESO = 1 and INDICADOR.ESTADO =1 and FECHASOLUCIONCUESTIONARIO = @UltimaFecha;
	commit;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch


GO
/****** Object:  StoredProcedure [dbo].[ConsultarPreguntasRespuestasPorObjetivo]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultarPreguntasRespuestasPorObjetivo]
@IdProceso int,
@IdPersona int
AS
Begin try
	Begin Transaction

	declare @UltimaFecha date
	select @UltimaFecha = MAX(FECHASOLUCIONCUESTIONARIO) from SOLUCIONCUESTIONARIO where IDPROCESO=@IdProceso;

	select SOLUCIONCUESTIONARIO.IDPREGUNTA,FECHASOLUCIONCUESTIONARIO, proceso.IDPROCESO, NOMBREPROCESO, NOMBREOBJETIVO, PERSONA.IDPERSONA, concat(PERSONA.PRIMERNOMBREPERSONA,' ', PERSONA.PRIMERAPELLIDOPERSONA) as NOMBRE, NOMBREINDICADOR,PREGUNTA.NOMBREPREGUNTA, TEXTOSOLUCIONCUESTIONARIO from SOLUCIONCUESTIONARIO
	inner join PERSONA on SOLUCIONCUESTIONARIO.IDPERSONA= PERSONA.IDPERSONA
	inner join PREGUNTA on SOLUCIONCUESTIONARIO.IDPREGUNTA = PREGUNTA.IDPREGUNTA
	inner join OBJETIVO on SOLUCIONCUESTIONARIO.IDOBJETIVO = OBJETIVO.IDOBJETIVO
	inner join PROCESO on SOLUCIONCUESTIONARIO.IDPROCESO = PROCESO.IDPROCESO
	inner join INDICADOR on SOLUCIONCUESTIONARIO.IDINDICADOR = INDICADOR.IDINDICADOR
	where PERSONA.IDPERSONA=@IdPersona and SOLUCIONCUESTIONARIO.IDPROCESO=@IdProceso and ESTADOOBJETIVO = 1 and ESTADOPREGUNTA = 1 and ESTADOPROCESO = 1 and INDICADOR.ESTADO =1 and FECHASOLUCIONCUESTIONARIO = @UltimaFecha
	order by FECHASOLUCIONCUESTIONARIO desc;
	commit;
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch





GO
/****** Object:  StoredProcedure [dbo].[ConsultarPreguntasRespuestasPorObjetivoTodos]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultarPreguntasRespuestasPorObjetivoTodos]
@IdProceso int
AS
Begin try
	Begin Transaction
	
	declare @UltimaFecha date
	select @UltimaFecha = MAX(FECHASOLUCIONCUESTIONARIO) from SOLUCIONCUESTIONARIO where IDPROCESO=@IdProceso;

	select SOLUCIONCUESTIONARIO.IDPREGUNTA,FECHASOLUCIONCUESTIONARIO, proceso.IDPROCESO, NOMBREPROCESO, NOMBREOBJETIVO, PERSONA.IDPERSONA, concat(PERSONA.PRIMERNOMBREPERSONA,' ', PERSONA.PRIMERAPELLIDOPERSONA) as NOMBRE, NOMBREINDICADOR,PREGUNTA.NOMBREPREGUNTA, TEXTOSOLUCIONCUESTIONARIO from SOLUCIONCUESTIONARIO
	inner join PERSONA on SOLUCIONCUESTIONARIO.IDPERSONA= PERSONA.IDPERSONA
	inner join PREGUNTA on SOLUCIONCUESTIONARIO.IDPREGUNTA = PREGUNTA.IDPREGUNTA
	inner join OBJETIVO on SOLUCIONCUESTIONARIO.IDOBJETIVO = OBJETIVO.IDOBJETIVO
	inner join PROCESO on SOLUCIONCUESTIONARIO.IDPROCESO = PROCESO.IDPROCESO
	inner join INDICADOR on SOLUCIONCUESTIONARIO.IDINDICADOR = INDICADOR.IDINDICADOR
	where SOLUCIONCUESTIONARIO.IDPROCESO=@IdProceso and ESTADOOBJETIVO = 1 and ESTADOPREGUNTA = 1 and ESTADOPROCESO = 1 and INDICADOR.ESTADO =1 and FECHASOLUCIONCUESTIONARIO = @UltimaFecha
	order by SOLUCIONCUESTIONARIO.IDPERSONA desc;
	commit;
	
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch








GO
/****** Object:  StoredProcedure [dbo].[ConsultasAdicionalesNinio]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultasAdicionalesNinio]
@IdPersona int
AS
Begin try
	Begin Transaction
	select * from MenorEdad where IDPERSONA = @IdPersona;
	commit;
	Print 'Transferencia exitosa :D';
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo en la transferencia :c', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaSituacionViolencia]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConsultaSituacionViolencia]
@IdPersona int
AS
Begin try
	Begin Transaction

	declare @R1 varchar(50)
	select @R1 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=134;

	declare @R2 varchar(50)
	select @R2 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=136;

	declare @R3 varchar(50)
	select @R3 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=137;

	declare @R4 varchar(50)
	select @R4 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=138;

	declare @R5 varchar(50)
	select @R5 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=139;

	declare @R6 varchar(50)
	select @R6 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=141;

	declare @R7 varchar(50)
	select @R7 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=142;

	declare @R8 varchar(50)
	select @R8 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=144;

	declare @R9 varchar(50)
	select @R9 = RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where IDPERSONA=@IdPersona AND RESPUESTA_INDICADOR.IDPREGUNTA=145;
	
	select @R1 as '¿Con que frecuencia se dan esos episodios?', @R2 as '¿La principal  causa para empezar ese conflicto?', @R3 AS '¿Normalmente quien inicia el conflicto?',
	@R4 as 'Otros', @R5 as 'Los hijos han presenciado estos conflictos', @R6 as '¿Ha buscado algún tipo de ayuda?', @R7 as 'Otra', @R8 as 'Con qué frecuencia', @R9 as 'Ante esta situación. ¿qué piensa hacer?';
	COMMIT;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[ConsultaSituacionViolenciaTODOS]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ConsultaSituacionViolenciaTODOS]
AS
Begin try
	Begin Transaction

	declare @R1 table (Pregunta varchar(50), IdPersona1 int, Respuesta varchar(50));
	declare @R2 table (Respuesta varchar(50));

	insert into @R2(Respuesta) SELECT distinct RESPUESTATEXTOS
	FROM RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA= RESPUESTA_INDICADOR.IDPREGUNTA
	where RESPUESTA_INDICADOR.IDINDICADOR = 20 AND RESPUESTA_INDICADOR.IDPERSONA=28;

	insert into @R1(Pregunta, IdPersona1, Respuesta) SELECT distinct  PREGUNTA.NOMBRE,  IDPERSONA, Respuesta
	FROM @R2, RESPUESTA_INDICADOR
	inner join PREGUNTA on PREGUNTA.IDPREGUNTA = RESPUESTA_INDICADOR.IDPREGUNTA
	where RESPUESTA_INDICADOR.IDINDICADOR = 20 AND RESPUESTA_INDICADOR.IDPERSONA = 28;

	SELECT * FROM @R1; 	
	commit;
	Print 'Exito';
	
End try
Begin Catch
	ROLLBACK;
	RAISERROR('Fallo', 16,9);
End Catch












GO
/****** Object:  StoredProcedure [dbo].[sp_LogrosporPersona]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[sp_LogrosporPersona] 

AS
BEGIN
	 SELECT PREGUNTA.NOMBRE as Pregunta, 
	 INDICADOR.NOMBREINDICADOR as Indicador, 
	 RESPUESTA_INDICADOR.IDRESPUESTA as Respuesta, 
	 PERSONA.PRIMERNOMBREPERSONA as Persona, 
	 RESPUESTA_INDICADOR.FECHARESPUESTAINDICADOR as Fecha, 
	 RESPUESTA_INDICADOR.RESPUESTATEXTOS  as RespuestaTexto
	 FROM RESPUESTA_INDICADOR INNER JOIN PREGUNTA 
	 ON RESPUESTA_INDICADOR.IDPREGUNTA = PREGUNTA.IDPREGUNTA INNER JOIN INDICADOR 
	 ON RESPUESTA_INDICADOR.IDINDICADOR = INDICADOR.IDINDICADOR INNER JOIN PERSONA 
	 ON RESPUESTA_INDICADOR.IDPERSONA = PERSONA.IDPERSONA 
END











GO
/****** Object:  StoredProcedure [dbo].[sp_Mod]    Script Date: 22/02/2018 8:51:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Mod]
@LUGARNACIMIENTOPERSONA varchar(50)
AS BEGIN
	BEGIN TRANSACTION;
BEGIN TRY
UPDATE PERSONA SET FECHANACIMIENTOPERSONA= DATEADD(YEAR,3,FECHANACIMIENTOPERSONA)  WHERE LUGARNACIMIENTOPERSONA = @LUGARNACIMIENTOPERSONA;
SELECT 1/0;
COMMIT TRANSACTION;
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION;
	RAISERROR('ERROR',16,1)
END CATCH;
END





















GO
USE [master]
GO
ALTER DATABASE [Sembrar2] SET  READ_WRITE 
GO
