USE [Reservaciones]
GO
/****** Object:  Table [dbo].[Asientos]    Script Date: 07/01/2019 09:48:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asientos](
	[IdAsiento] [int] NOT NULL,
	[IdPasajeros] [int] NOT NULL,
 CONSTRAINT [PK_Asientos] PRIMARY KEY CLUSTERED 
(
	[IdAsiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pasajeros]    Script Date: 07/01/2019 09:48:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pasajeros](
	[IdPasajero] [int] NOT NULL,
	[NombrePasajero] [nvarchar](100) NOT NULL,
	[IdAsiento] [int] NOT NULL,
 CONSTRAINT [PK_Pasajeros] PRIMARY KEY CLUSTERED 
(
	[IdPasajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Asientos]  WITH CHECK ADD  CONSTRAINT [FK_Asientos_Pasajeros] FOREIGN KEY([IdPasajeros])
REFERENCES [dbo].[Pasajeros] ([IdPasajero])
GO
ALTER TABLE [dbo].[Asientos] CHECK CONSTRAINT [FK_Asientos_Pasajeros]
GO
ALTER TABLE [dbo].[Pasajeros]  WITH CHECK ADD  CONSTRAINT [FK_Pasajeros_Asientos] FOREIGN KEY([IdAsiento])
REFERENCES [dbo].[Asientos] ([IdAsiento])
GO
ALTER TABLE [dbo].[Pasajeros] CHECK CONSTRAINT [FK_Pasajeros_Asientos]
GO
