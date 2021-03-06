USE [master]
GO
/****** Object:  Database [DELIVERY]    Script Date: 16/05/2019 21:47:00 ******/
CREATE DATABASE [DELIVERY]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DELIVERY', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DELIVERY.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DELIVERY_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DELIVERY_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DELIVERY] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DELIVERY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DELIVERY] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DELIVERY] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DELIVERY] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DELIVERY] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DELIVERY] SET ARITHABORT OFF 
GO
ALTER DATABASE [DELIVERY] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DELIVERY] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DELIVERY] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DELIVERY] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DELIVERY] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DELIVERY] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DELIVERY] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DELIVERY] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DELIVERY] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DELIVERY] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DELIVERY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DELIVERY] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DELIVERY] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DELIVERY] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DELIVERY] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DELIVERY] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DELIVERY] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DELIVERY] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DELIVERY] SET  MULTI_USER 
GO
ALTER DATABASE [DELIVERY] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DELIVERY] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DELIVERY] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DELIVERY] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DELIVERY] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DELIVERY] SET QUERY_STORE = OFF
GO
USE [DELIVERY]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [DELIVERY]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 16/05/2019 21:47:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[CPF] [varchar](14) NULL,
	[RG] [varchar](12) NULL,
	[Bairro] [varchar](50) NULL,
	[Telefone] [varchar](11) NULL,
	[Data_Nasc] [datetime] NULL,
	[CEP] [varchar](9) NULL,
	[Endereco] [varchar](255) NULL,
	[Num_Endereco] [int] NULL,
	[Cidade] [varchar](50) NULL,
	[UF] [varchar](2) NULL,
	[Complemento] [varchar](255) NULL,
	[Nome] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[bloqueado] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPRESA]    Script Date: 16/05/2019 21:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPRESA](
	[IdEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[Nome_Fantasia] [varchar](100) NULL,
	[Razao_Social] [varchar](100) NULL,
	[CNPJ] [varchar](18) NULL,
	[email] [varchar](50) NULL,
	[Telefone] [varchar](11) NULL,
	[CEP] [varchar](9) NULL,
	[Endereco] [varchar](255) NULL,
	[UF] [varchar](2) NULL,
	[Num_Endereco] [int] NULL,
	[Bairro] [varchar](50) NULL,
	[Cidade] [varchar](50) NULL,
	[Complemento] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FUNCIONARIO]    Script Date: 16/05/2019 21:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FUNCIONARIO](
	[IdFuncionario] [int] IDENTITY(1,1) NOT NULL,
	[CPF] [varchar](14) NULL,
	[RG] [varchar](12) NULL,
	[Bairro] [varchar](50) NULL,
	[Telefone] [varchar](11) NULL,
	[Data_Nasc] [datetime] NULL,
	[CEP] [varchar](9) NULL,
	[Endereco] [varchar](255) NULL,
	[Num_Endereco] [int] NULL,
	[Cidade] [varchar](50) NULL,
	[UF] [varchar](2) NULL,
	[Complemento] [varchar](255) NULL,
	[Nome] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Ativo] [varchar](1) NULL,
	[IdEmpresa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFuncionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PEDIDO]    Script Date: 16/05/2019 21:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEDIDO](
	[IdPedido] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Num_Pedido] [int] NULL,
	[IdCliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STATUSPEDIDO]    Script Date: 16/05/2019 21:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STATUSPEDIDO](
	[IdSatusPedido] [int] IDENTITY(1,1) NOT NULL,
	[IdPedido] [int] NOT NULL,
	[Status_Pedido] [int] NULL,
	[Data_Pedido] [datetime] NULL,
	[Data_Entrega] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSatusPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 16/05/2019 21:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[IdFuncionario] [int] NULL,
	[Usuario] [varchar](16) NULL,
	[Senha] [varchar](16) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FUNCIONARIO]  WITH CHECK ADD FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[EMPRESA] ([IdEmpresa])
GO
ALTER TABLE [dbo].[PEDIDO]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[CLIENTE] ([IdCliente])
GO
ALTER TABLE [dbo].[PEDIDO]  WITH CHECK ADD FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[USUARIO] ([IdUsuario])
GO
ALTER TABLE [dbo].[STATUSPEDIDO]  WITH CHECK ADD FOREIGN KEY([IdPedido])
REFERENCES [dbo].[PEDIDO] ([IdPedido])
GO
ALTER TABLE [dbo].[USUARIO]  WITH CHECK ADD FOREIGN KEY([IdFuncionario])
REFERENCES [dbo].[FUNCIONARIO] ([IdFuncionario])
GO
/****** Object:  StoredProcedure [dbo].[SP_CLIENTE]    Script Date: 16/05/2019 21:47:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_CLIENTE] (@idCliente    INT,    
                                 @CPF          VARCHAR(14),    
                                 @RG           VARCHAR(12),    
                                 @Bairro       VARCHAR(50),    
                                 @Telefone     VARCHAR(11),    
                                 @Data_Nasc    DATETIME,    
                                 @CEP          VARCHAR(9),    
                                 @Endereco     VARCHAR(255),    
                                 @Num_Endereco INT,     
                                 @Cidade       VARCHAR(50),    
                                 @UF           VARCHAR(2),    
                                 @Complemento  VARCHAR(255),    
                                 @Nome         VARCHAR(50),    
                                 @Email        VARCHAR(50),    
                                 @bloqueado    VARCHAR(1),    
                                 @operacao     VARCHAR(1)) AS    
 BEGIN     
  -- SELECT    
  IF (@operacao = 'S')    
  BEGIN    
   IF (@idCliente IS NULL)    
   BEGIN    
    SELECT * FROM   dbo.CLIENTE     
   END    
   ELSE IF (@idCliente IS NOT NULL)    
     BEGIN    
        SELECT * FROM dbo.CLIENTE WHERE  IdCliente = @idCliente    
     END    
  END    
    
    
  -- INSERT     
  IF (@operacao = 'I')    
  BEGIN    
   INSERT INTO dbo.CLIENTE (CPF,RG,Bairro,Telefone,Data_Nasc,CEP,Endereco,Num_Endereco,Cidade,UF,Complemento,Nome,Email,bloqueado)    
   VALUES (@CPF,@RG,@Bairro,@Telefone,@Data_Nasc,@CEP,@Endereco,@Num_Endereco, @Cidade,@UF,@Complemento,@Nome,@Email,@bloqueado)    
  END    
    
    
  -- UPDATE     
  IF (@operacao = 'U')    
  BEGIN    
   UPDATE  dbo.CLIENTE    
   SET     CPF          = @CPF,    
        RG           = @RG,    
        Bairro       = @Bairro,    
        Telefone     = @Telefone,    
        Data_Nasc    = @Data_Nasc,    
        CEP          = @CEP,    
        Endereco     = @Endereco,    
        Num_Endereco = @Num_Endereco,     
        Cidade       = @Cidade,    
        UF           = @UF,    
        Complemento  = @Complemento,    
        Nome         = @Nome,    
        Email        = @Email,    
        bloqueado    = @bloqueado    
   WHERE IdCliente = @idCliente    
  END    
    
  -- DELETE    
  IF (@operacao = 'D')    
  BEGIN    
   DELETE dbo.CLIENTE    
   FROM   dbo.CLIENTE    
   WHERE  IdCliente = @idCliente    
  END    
    
 END
GO
USE [master]
GO
ALTER DATABASE [DELIVERY] SET  READ_WRITE 
GO
