USE [CrimeDW]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [CrimeDW].[Source_Data_Staging](
	[Source_StagingID] [int] IDENTITY(1,1) NOT NULL,
	[Source_RowID] [int] NULL,
	[State] [varchar](50) NULL,
	[StateID] [int] NULL,
	[City] [varchar](100) NULL,
	[CityID] [int] NULL,
	[Year] [int] NULL,
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
	[Source_StagingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


