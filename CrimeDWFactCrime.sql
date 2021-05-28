USE [CrimeDW]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [CrimeDW].[FactCrime](
	[CrimeID] [int] IDENTITY(1,1) NOT NULL,
	[Source_RowID] [int] NULL,
	[CityID] [int] NULL,
	[YearID] [int] NULL,
	[Population] [int] NULL,
	[ViolentCrime] [int] NULL,
	[MurderAndNonEgligentManslaughter] [int] NULL,
	[ForcibleRape] [int] NULL,
	[Robbery] [int] NULL,
	[AggravatedAssault] [int] NULL,
	[PropertyCrime] [int] NULL,
	[Buglary] [int] NULL,
	[LarcenyTheft] [int] NULL,
	[MotorVehicleTheft] [int] NULL,
	[Arson] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CrimeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [CrimeDW].[FactCrime]  WITH CHECK ADD  CONSTRAINT [FK_CityID] FOREIGN KEY([CityID])
REFERENCES [CrimeDW].[DimCity] ([CityID])
GO

ALTER TABLE [CrimeDW].[FactCrime] CHECK CONSTRAINT [FK_CityID]
GO

ALTER TABLE [CrimeDW].[FactCrime]  WITH CHECK ADD  CONSTRAINT [FK_YearID] FOREIGN KEY([YearID])
REFERENCES [CrimeDW].[DimYear] ([YearID])
GO

ALTER TABLE [CrimeDW].[FactCrime] CHECK CONSTRAINT [FK_YearID]
GO


