USE [WOQ_DMS_New]
GO
/****** Object:  Schema [admin]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [admin]
GO
/****** Object:  Schema [contract]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [contract]
GO
/****** Object:  Schema [dashboard]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [dashboard]
GO
/****** Object:  Schema [Fleet]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [Fleet]
GO
/****** Object:  Schema [log]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [log]
GO
/****** Object:  Schema [Lomo]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [Lomo]
GO
/****** Object:  Schema [lpg]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [lpg]
GO
/****** Object:  Schema [lpgordering]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [lpgordering]
GO
/****** Object:  Schema [lv]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [lv]
GO
/****** Object:  Schema [notify]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [notify]
GO
/****** Object:  Schema [ordering]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [ordering]
GO
/****** Object:  Schema [orders]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [orders]
GO
/****** Object:  Schema [psorder]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [psorder]
GO
/****** Object:  Schema [report]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [report]
GO
/****** Object:  Schema [staging]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [staging]
GO
/****** Object:  Schema [sticker]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [sticker]
GO
/****** Object:  Schema [supply]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [supply]
GO
/****** Object:  Schema [tank]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE SCHEMA [tank]
GO
/****** Object:  UserDefinedTableType [dbo].[PsPlaningUDT]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE TYPE [dbo].[PsPlaningUDT] AS TABLE(
	[ID] [bigint] NULL,
	[SITEID] [int] NOT NULL,
	[ShiftId] [tinyint] NOT NULL,
	[ShiftDate] [date] NOT NULL,
	[Shift_StartTime] [datetime] NOT NULL,
	[Shift_EndTime] [datetime] NOT NULL,
	[ProductId] [tinyint] NOT NULL,
	[No_ofload] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [Fleet].[FleetInfo]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE TYPE [Fleet].[FleetInfo] AS TABLE(
	[Id] [int] NULL,
	[FleetType] [varchar](20) NULL,
	[FleetId] [smallint] NULL,
	[RequestNo] [varchar](20) NULL,
	[AssignedFleetType] [varchar](20) NULL,
	[AssignedFleetId] [varchar](20) NULL,
	[RequiredActionId] [smallint] NULL,
	[NewFleetType] [varchar](20) NULL,
	[NewFleetId] [smallint] NULL,
	[Comments] [nvarchar](255) NULL,
	[FolderPath] [nvarchar](100) NULL,
	[ModifiedBy] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [lpgordering].[SiteTankType]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE TYPE [lpgordering].[SiteTankType] AS TABLE(
	[TankId] [int] NULL,
	[Level] [tinyint] NULL
)
GO
/****** Object:  UserDefinedTableType [ordering].[NewOrders]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE TYPE [ordering].[NewOrders] AS TABLE(
	[ShiftId] [int] NULL,
	[NoOfLoad] [int] NULL,
	[ProductId] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [supply].[PSContacts]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE TYPE [supply].[PSContacts] AS TABLE(
	[Id] [int] NULL,
	[SiteId] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[PositionId] [smallint] NULL,
	[Mobile1] [varchar](10) NULL,
	[Mobile2] [varchar](10) NULL,
	[Telephone1] [varchar](10) NULL,
	[Telephone2] [varchar](10) NULL,
	[EmailId] [varchar](320) NULL,
	[ModifiedBy] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [supply].[PSDetail]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE TYPE [supply].[PSDetail] AS TABLE(
	[SiteId] [int] NOT NULL,
	[PSLocation] [nvarchar](50) NULL,
	[OwnershipId] [smallint] NULL,
	[TypeId] [smallint] NULL,
	[OperationalStatusId] [smallint] NULL,
	[StatusId] [smallint] NULL,
	[PoBox] [nvarchar](10) NULL,
	[PIN] [nvarchar](10) NULL,
	[KarhamaNo] [varchar](20) NULL,
	[StreetName] [nvarchar](100) NULL,
	[Area] [nvarchar](100) NULL,
	[ZoneCode] [nvarchar](10) NULL,
	[CreatedBy] [int] NOT NULL,
	[Lat] [float] NULL,
	[Long] [float] NULL,
	[Distance] [float] NULL,
	[DistanceCategoryId] [float] NULL,
	[RequireGatePass] [bit] NULL
)
GO
/****** Object:  UserDefinedTableType [supply].[PSShifts]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE TYPE [supply].[PSShifts] AS TABLE(
	[Id] [int] NULL,
	[SiteId] [int] NOT NULL,
	[ShiftName] [nvarchar](100) NULL,
	[ShiftStartTime] [datetime] NULL,
	[ShiftEndTime] [datetime] NULL,
	[ModifiedBy] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [supply].[PSTanks]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE TYPE [supply].[PSTanks] AS TABLE(
	[Id] [int] NULL,
	[SiteId] [int] NOT NULL,
	[ProductId] [smallint] NOT NULL,
	[Capacity] [varchar](10) NOT NULL,
	[XCoordinates] [numeric](18, 6) NULL,
	[YCoordinates] [numeric](18, 6) NULL,
	[isActive] [bit] NULL,
	[ModifiedBy] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [supply].[PSTripDuration]    Script Date: 12/17/2016 12:34:21 PM ******/
CREATE TYPE [supply].[PSTripDuration] AS TABLE(
	[Id] [int] NULL,
	[SiteId] [int] NOT NULL,
	[DepotId] [tinyint] NOT NULL,
	[ShiftId] [tinyint] NOT NULL,
	[ProductId] [smallint] NULL,
	[TripDuration] [time](7) NOT NULL,
	[ModifiedBy] [int] NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[AppendParentPath]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[AppendParentPath]
(
	@parent hierarchyid = null
)
RETURNS varchar(max) AS
Begin       
    Declare @result varchar(max), @newid uniqueidentifier

    SELECT @newid = new_id FROM dbo.getNewID; 

    SELECT @result = ISNULL(@parent.ToString(), '/') +
                     convert(varchar(20), convert(bigint, substring(convert(binary(16), @newid), 1, 6))) + '.' +
                     convert(varchar(20), convert(bigint, substring(convert(binary(16), @newid), 7, 6))) + '.' +
                     convert(varchar(20), convert(bigint, substring(convert(binary(16), @newid), 13, 4))) + '/'     
    RETURN @result 
End

GO
/****** Object:  UserDefinedFunction [dbo].[GetSystemUser]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetSystemUser]
(
	
)
RETURNS int
AS
BEGIN

	Declare @SystemUserId int = 0

	Select
		@SystemUserId = a.UId
	From
		AspNetUsers a
	Where
		a.Email = 'system@woqod.com.qa' 

	return @SystemUserId


END

GO
/****** Object:  UserDefinedFunction [dbo].[SendEmail]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[SendEmail](@Ids [nvarchar](max), @apiBaseAddress [nvarchar](max), @apiUrl [nvarchar](max))
RETURNS [nvarchar](max) WITH EXECUTE AS CALLER
AS 
EXTERNAL NAME [DMSDatabaseProject].[UserDefinedFunctions].[SendEmail]
GO
/****** Object:  UserDefinedFunction [dbo].[SplitString]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SplitString]
(    
      @Input NVARCHAR(MAX),
      @Character CHAR(1)
)
RETURNS @Output TABLE (
      Item NVARCHAR(1000)
)
AS
BEGIN
      DECLARE @StartIndex INT, @EndIndex INT
 
      SET @StartIndex = 1
      IF SUBSTRING(@Input, LEN(@Input) - 1, LEN(@Input)) <> @Character
      BEGIN
            SET @Input = @Input + @Character
      END
 
      WHILE CHARINDEX(@Character, @Input) > 0
      BEGIN
            SET @EndIndex = CHARINDEX(@Character, @Input)
           
            INSERT INTO @Output(Item)
            SELECT SUBSTRING(@Input, @StartIndex, @EndIndex - 1)
           
            SET @Input = SUBSTRING(@Input, @EndIndex + 1, LEN(@Input))
      END
 
      RETURN
END
GO
/****** Object:  UserDefinedFunction [lpgordering].[CalculateEstimatedQuantity]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [lpgordering].[CalculateEstimatedQuantity]
(
	@MaximumCapacity tinyint = 80
	, @Level tinyint = 50
	, @Volume decimal(8, 2)
)
RETURNS decimal(8, 2)
AS
BEGIN

	Declare @returnValue decimal(8, 2) = 0

	if (@Level < @MaximumCapacity)
	Begin
		Select
			@returnValue = ((@MaximumCapacity - @Level) / 100.0) * @Volume
	End

	return @returnValue

END

GO
/****** Object:  Table [admin].[EmailIds]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [admin].[EmailIds](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmailIds] [varchar](100) NOT NULL,
	[CreatedOn] [datetime] NULL,
 CONSTRAINT [PK_EmailIds] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [admin].[Shifts_ToExclude]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [admin].[Shifts_ToExclude](
	[ShiftId] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[AccountMatchCode]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[AccountMatchCode](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[MatchCode] [nvarchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AccountMatchCode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[AccountOpening]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[AccountOpening](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ShortName] [nvarchar](100) NOT NULL,
	[CustomerName] [nvarchar](200) NOT NULL,
	[Telephone] [varchar](15) NOT NULL,
	[Fax] [varchar](15) NOT NULL,
	[POBox] [varchar](15) NOT NULL,
	[CRValidity] [datetime] NOT NULL,
	[SiteLocation] [nvarchar](50) NOT NULL,
	[DateOfLastSiteVisit] [datetime] NOT NULL,
	[OnRoad] [decimal](8, 2) NOT NULL,
	[OffRoad] [decimal](8, 2) NOT NULL,
	[Zone] [nvarchar](50) NOT NULL,
	[ProjectName] [nvarchar](100) NOT NULL,
	[ProjectDescription] [nvarchar](250) NULL,
	[ProjectStartDate] [datetime] NOT NULL,
	[ProjectEndDate] [datetime] NULL,
	[IsTentative] [bit] NOT NULL,
	[ProjectClassification] [nvarchar](100) NOT NULL,
	[ProjectClassificationId] [int] NOT NULL,
	[Product] [nvarchar](100) NOT NULL,
	[ProductNeededId] [int] NOT NULL,
	[PricingCommitteeApprovalDate] [datetime] NOT NULL,
	[MinimumMonthlyConsumption] [bigint] NOT NULL,
	[MaximumMonthlyConsumption] [bigint] NOT NULL,
	[PricingCategory] [nvarchar](50) NOT NULL,
	[CostPerLitre] [decimal](5, 2) NOT NULL,
	[OnRoadTransportPerLitre] [decimal](5, 2) NOT NULL,
	[OffRoadTransportPerLitre] [decimal](5, 2) NOT NULL,
	[ServiceChargePerLitre] [decimal](5, 2) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AccountOpening] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[AccountOpeningResources]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[AccountOpeningResources](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AccountOpeningResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[Agenda]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[Agenda](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AgendaName] [nvarchar](100) NOT NULL,
	[MeetingDate] [datetime] NOT NULL,
	[Remarks] [nvarchar](250) NULL,
	[isUpdated] [bit] NULL,
	[isVerified] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Agenda] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[AgendaContracts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[AgendaContracts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AgendaId] [bigint] NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ResultTypeId] [smallint] NULL,
	[PricingCategoryId] [smallint] NULL,
	[Remarks] [nvarchar](250) NULL,
	[VerifyResultTypeId] [smallint] NULL,
	[VerificationRemarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AgendaContracts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[AgendaPricingCategory]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[AgendaPricingCategory](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[PricingCategory] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AgendaPricingCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[AgendaResultType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[AgendaResultType](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[ResultType] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AgendaResultType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[ApplicantType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[ApplicantType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ApplicantType_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[AtachmentCheckList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[AtachmentCheckList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentAttach] [nvarchar](100) NOT NULL,
	[OrderId] [int] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AtachmentCheckList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[BankGuranteeDocuments]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[BankGuranteeDocuments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_BankGuranteeDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[BatchContracts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[BatchContracts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BatchId] [bigint] NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ResultTypeId] [smallint] NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_BatchContracts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[BatchResultType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[BatchResultType](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[ResultType] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_BatchResultType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[BGContractDocs]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[BGContractDocs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_BGContractDocs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[ContactType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[ContactType](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_ContactType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[ContractAddress]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[ContractAddress](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[AddressLine1] [nvarchar](100) NULL,
	[AddressLine2] [nvarchar](100) NULL,
	[Area] [nvarchar](100) NULL,
	[CountryId] [smallint] NULL,
	[CityId] [smallint] NULL,
	[isActive] [bit] NULL,
	[POBox] [varchar](10) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ContractAddress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[ContractContacts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[ContractContacts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[DesignationId] [smallint] NULL,
	[TypeId] [smallint] NULL,
	[Landline] [varchar](15) NULL,
	[Mobile] [varchar](15) NULL,
	[Fax] [varchar](15) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ContractContacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[ContractException]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[ContractException](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NULL,
	[StageId] [int] NOT NULL,
	[SubStageId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ContractException] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[ContractorType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[ContractorType](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
 CONSTRAINT [PK_ContractorType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[CRClassification]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[CRClassification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Classification] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CRClassification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[CrResources]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[CrResources](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CrNodeId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CrResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[Designation]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[Designation](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[DocumentsToBeUploaded]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[DocumentsToBeUploaded](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IResourceId] [uniqueidentifier] NOT NULL,
	[FileName] [nvarchar](250) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DocumentsToBeUploaded] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[DocumentType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[DocumentType](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DocumentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[FinInsConfDoc]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[FinInsConfDoc](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_FinInsConfDoc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[LegalBatch]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[LegalBatch](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BatchName] [nvarchar](100) NOT NULL,
	[Remarks] [nvarchar](250) NULL,
	[isUpdated] [bit] NULL,
	[isVerified] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LegalBatch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[MobilizedTank]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[MobilizedTank](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[TankId] [bigint] NOT NULL,
	[Lat] [decimal](10, 7) NULL,
	[Long] [decimal](10, 7) NULL,
	[Remarks] [nvarchar](200) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_MobilizedTank] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[MonthlyConsumptionDetails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[MonthlyConsumptionDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[Value] [bigint] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MonthlyConsumptionDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[OffRoadTransportationCost]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[OffRoadTransportationCost](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[DistanceFrom] [decimal](18, 2) NOT NULL,
	[DistanceTo] [decimal](18, 2) NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[ValidTo] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_OffRoadTransportationCost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[OnRoadTransportCost]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[OnRoadTransportCost](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[DistanceFrom] [decimal](18, 2) NOT NULL,
	[DistanceTo] [decimal](18, 2) NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[ValidTo] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_OnRoadTransportCost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[PricingCategoryPriceList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[PricingCategoryPriceList](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[PricingCategoryId] [smallint] NOT NULL,
	[CostPerLitre] [decimal](18, 2) NULL,
	[ValidFrom] [datetime] NOT NULL,
	[ValidTo] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PricingCategoryPriceList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[ProductNeeded]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[ProductNeeded](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ProductNeeded] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[ProjectClassification]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[ProjectClassification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Classification] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_ProjectClassification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[ScheduledVisits]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[ScheduledVisits](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Reference] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[ProjectName] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[SubmissionDate] [nvarchar](50) NULL,
	[InspectionDate] [nvarchar](50) NULL,
	[Inspector] [nvarchar](50) NULL,
 CONSTRAINT [PK_ScheduledVisits] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[ScheduleList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[ScheduleList](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [bigint] NOT NULL,
	[InchargeId] [bigint] NOT NULL,
	[VisitDate] [date] NOT NULL,
	[Remarks] [nvarchar](max) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_ScheduleList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [contract].[Site]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[Site](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustId] [int] NULL,
	[CustomerName] [nvarchar](200) NULL,
	[ContractorTypeId] [smallint] NULL,
	[StageId] [int] NULL,
	[SubStageId] [int] NULL,
	[Code] [varchar](25) NULL,
	[ProdNeededId] [int] NULL,
	[MinAvgConsumption] [bigint] NULL,
	[MaxAvgConsumption] [bigint] NULL,
	[SupplyToTypeId] [int] NULL,
	[PricingCommiteeRemarks] [nvarchar](200) NULL,
	[UserRemarks] [nvarchar](200) NULL,
	[FolderPath] [nvarchar](100) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Site] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SiteAttachmentCheckList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SiteAttachmentCheckList](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[AttachmentId] [int] NULL,
	[OtherAttachmentType] [nvarchar](200) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteAttachmentCheckList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SiteCRAnalysis]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SiteCRAnalysis](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ApplicantTypeId] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[ArabicName] [nvarchar](100) NULL,
	[ClassificationId] [int] NULL,
	[NatureId] [int] NULL,
	[NationalityId] [smallint] NULL,
	[CR_ID_Number] [nvarchar](100) NULL,
	[CR_ID_Validity] [datetime] NULL,
	[ParentId] [bigint] NULL,
	[IsIndividual] [bit] NULL,
	[IsEstablishment] [bit] NULL,
	[IsPrivateShareholding] [bit] NULL,
	[IsPublicShareholding] [bit] NULL,
	[IsCompany] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteCRAnalysis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SiteDocuments]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SiteDocuments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[SiteAttachmentChecklistId] [bigint] NULL,
	[Remarks] [nvarchar](100) NULL,
	[isDeleted] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SiteInspectionType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SiteInspectionType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteInspectionType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SiteProjectDetails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SiteProjectDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ContractorTypeId] [smallint] NULL,
	[ProjectName] [nvarchar](100) NULL,
	[ProjectLocation] [nvarchar](100) NULL,
	[ProjectDescription] [nvarchar](200) NULL,
	[ProjectClassificationId] [int] NULL,
	[ProjectStartDate] [datetime] NULL,
	[IsTentative] [bit] NULL,
	[ProjectEndDate] [datetime] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteProjectDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SiteStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SiteStatus](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[StageId] [int] NOT NULL,
	[SubStageId] [int] NOT NULL,
	[isEnabled] [bit] NOT NULL,
	[isRejected] [bit] NULL,
	[Remarks] [nvarchar](250) NULL,
	[RejectedBy] [int] NULL,
	[RejectedOn] [datetime] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SiteVerification]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SiteVerification](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ApproveAppSubmission] [bit] NULL,
	[ApproveCRAnalysis] [bit] NULL,
	[ApproveUploadedDocuments] [bit] NULL,
	[ApproveSiteVisitReport] [bit] NULL,
	[AppSubmissionRemark] [nvarchar](250) NULL,
	[CRAnalysisRemark] [nvarchar](250) NULL,
	[UploadDocumentsRemark] [nvarchar](250) NULL,
	[SiteVisitReportRemark] [nvarchar](250) NULL,
	[PricingCommitteeRemarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteVerify] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SiteVisitAddresses]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SiteVisitAddresses](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteVisitReportId] [bigint] NOT NULL,
	[AddressLine1] [nvarchar](100) NULL,
	[AddressLine2] [nvarchar](100) NULL,
	[Area] [nvarchar](100) NULL,
	[CountryId] [smallint] NULL,
	[CityId] [smallint] NULL,
	[isActive] [bit] NULL,
	[POBox] [varchar](10) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteVisitAddresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SiteVisitProjectDetails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SiteVisitProjectDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteVisitReportId] [bigint] NOT NULL,
	[ContractorTypeId] [smallint] NULL,
	[ProjectName] [nvarchar](100) NULL,
	[ProjectLocation] [nvarchar](100) NULL,
	[ProjectDescription] [nvarchar](200) NULL,
	[ProjectClassificationId] [int] NULL,
	[ProjectStartDate] [datetime] NULL,
	[IsTentative] [bit] NULL,
	[ProjectEndDate] [datetime] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteVisitProjectDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SiteVisitReport]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SiteVisitReport](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ScheduleId] [bigint] NOT NULL,
	[ApplicantName] [nvarchar](250) NOT NULL,
	[Location] [nvarchar](100) NOT NULL,
	[DateOfVisit] [datetime] NOT NULL,
	[Lat] [float] NULL,
	[Long] [float] NULL,
	[SiteZoneId] [int] NULL,
	[OnRoad] [float] NULL,
	[OffRoad] [float] NULL,
	[ContractorTypeId] [smallint] NOT NULL,
	[SupplyToTypeId] [smallint] NOT NULL,
	[BundwallRemarks] [nvarchar](250) NULL,
	[StorageTankLocation] [nvarchar](250) NULL,
	[FireExtinguisher] [nvarchar](250) NULL,
	[RoadTankerCapacity] [nvarchar](250) NULL,
	[RoadTankerAccess] [nvarchar](250) NULL,
	[RoadCondition] [nvarchar](250) NULL,
	[FillingPoints] [nvarchar](250) NULL,
	[CustomerAvailableEquipment] [nvarchar](250) NULL,
	[SiteVisitComments] [nvarchar](250) NULL,
	[BulkRemarks] [nvarchar](250) NULL,
	[SiteInspectionTypeId] [tinyint] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteVisitReport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SiteVisitReportContacts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SiteVisitReportContacts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteVisitReportId] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[DesignationId] [smallint] NULL,
	[TypeId] [smallint] NULL,
	[Landline] [varchar](15) NULL,
	[Mobile] [varchar](15) NULL,
	[Fax] [varchar](15) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteVisitReportContacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SiteVisitResources]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SiteVisitResources](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteVisitReportId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteVisitResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SiteVisitSupplyToDetails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SiteVisitSupplyToDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteVisitReportId] [bigint] NOT NULL,
	[NumberOfStorageTanks] [int] NULL,
	[StorageTankTypeId] [int] NULL,
	[VesselName] [nvarchar](100) NULL,
	[Capacity] [bigint] NULL,
	[Remarks] [nvarchar](200) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteVisitSupplyToDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SiteZones]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SiteZones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_SiteZones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[Stage]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[Stage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Stage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[StorageTankPriceList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[StorageTankPriceList](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[CapacityFrom] [bigint] NOT NULL,
	[CapacityTo] [bigint] NOT NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StorageTankPriceList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[StorageTankType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[StorageTankType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](25) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_StorageTankType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SubStage]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SubStage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StageId] [int] NOT NULL,
	[Description] [varchar](100) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SubStage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SupplyTo]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SupplyTo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SupplyTo_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[SupplyToDetails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[SupplyToDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[NumberOfStorageTanks] [int] NULL,
	[StorageTankTypeId] [int] NULL,
	[VesselName] [nvarchar](100) NULL,
	[Capacity] [bigint] NULL,
	[Remarks] [nvarchar](200) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SupplyToDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[TankConfDocuments]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[TankConfDocuments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_TankConfDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[Type]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[Type](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[UnScheduledVisits]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[UnScheduledVisits](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Reference] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[ProjectName] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[SubmissionDate] [nvarchar](50) NULL,
 CONSTRAINT [PK_UnScheduledVisits] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[WoqodSupplier]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[WoqodSupplier](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_WoqodSupplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[WoqodTank]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[WoqodTank](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ChasisNumber] [varchar](50) NOT NULL,
	[ManufacturingDate] [datetime] NOT NULL,
	[DateReceived] [datetime] NOT NULL,
	[ReceivedAgainstPO] [varchar](100) NOT NULL,
	[Capacity] [bigint] NOT NULL,
	[TypeId] [tinyint] NOT NULL,
	[SuplierId] [tinyint] NOT NULL,
	[DeliveryNoteNumber] [varchar](50) NOT NULL,
	[InvoiceNumber] [varchar](50) NOT NULL,
	[PriceOfTank] [varchar](20) NOT NULL,
	[OerationalStatusId] [tinyint] NOT NULL,
	[WoqodTankNumber] [varchar](15) NOT NULL,
	[StatusId] [tinyint] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_WoqodTank] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [contract].[WoqodTankType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [contract].[WoqodTankType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_WoqodTankType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Action]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Action](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ModuleId] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Prefix] [varchar](100) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Action] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Action] UNIQUE NONCLUSTERED 
(
	[Prefix] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Address]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[AddressLine1] [nvarchar](80) NOT NULL,
	[AddressLine2] [nvarchar](80) NULL,
	[Area] [nvarchar](25) NOT NULL,
	[CityId] [smallint] NOT NULL,
	[CountryId] [smallint] NOT NULL,
	[POBox] [nvarchar](8) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicationContactDetails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationContactDetails](
	[ApplicationID] [int] NOT NULL,
	[ContactDetailsID] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationContactDetails] PRIMARY KEY CLUSTERED 
(
	[ApplicationID] ASC,
	[ContactDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppointmentDiary]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppointmentDiary](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[SomeImportantKey] [int] NOT NULL,
	[DateTimeScheduled] [datetime] NOT NULL,
	[AppointmentLength] [int] NOT NULL,
	[StatusENUM] [int] NOT NULL,
 CONSTRAINT [PK_ConsultantBookings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nchar](256) NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[StaffNo] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Department] [nvarchar](max) NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_AspNetUsers] UNIQUE NONCLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EmpId] [int] NOT NULL,
	[AttendanceDate] [date] NOT NULL,
	[AttendanceStatusId] [tinyint] NOT NULL,
	[color] [varchar](10) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AttendanceStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceStatus](
	[Id] [tinyint] NOT NULL,
	[Description] [varchar](20) NOT NULL,
	[Code] [varchar](5) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AttendanceStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Auditlog]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auditlog](
	[Id] [uniqueidentifier] NOT NULL,
	[userid] [nvarchar](128) NOT NULL,
	[eventdateutc] [datetime] NOT NULL,
	[eventtype] [char](1) NOT NULL,
	[tablename] [nvarchar](100) NOT NULL,
	[recordid] [nvarchar](100) NOT NULL,
	[columnname] [nvarchar](100) NOT NULL,
	[originalvalue] [nvarchar](max) NULL,
	[newvalue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AuditLog] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[backup_tbl]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[backup_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectCode] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[MatchCode] [varchar](50) NOT NULL,
	[CustNo] [int] NULL,
	[SiteNo] [int] NULL,
	[X] [varchar](50) NULL,
	[Y] [varchar](50) NULL,
	[Distance] [decimal](4, 1) NULL,
	[LOMO_xPos] [int] NULL,
	[LOMO_yPos] [int] NULL,
	[LOMO_xGeoDec] [int] NULL,
	[LOMO_yGeoDec] [int] NULL,
	[LOMO_xPosMG5] [int] NULL,
	[LOMO_yPosMG5] [int] NULL,
	[CUST_NAME] [varchar](50) NULL,
	[SHORT_NAME] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[backupload]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[backupload](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[ProductId] [tinyint] NOT NULL,
	[LoadCapacity] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[MarkAsDelete] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChecklistCategory]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChecklistCategory](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[Remarks] [varchar](250) NOT NULL,
 CONSTRAINT [PK_ChecklistCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChecklistEntry]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChecklistEntry](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[CheckListId] [smallint] NOT NULL,
	[Comments] [nvarchar](250) NULL,
	[ReviewComments] [varchar](250) NULL,
 CONSTRAINT [PK_ChecklistEntry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChecklistEntrySteps]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChecklistEntrySteps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NULL,
	[ChecklistEntryId] [int] NOT NULL,
	[ChecklistStepsId] [int] NOT NULL,
	[ResultId] [tinyint] NOT NULL,
	[ActionDone] [varchar](100) NULL,
	[Remarks] [varchar](250) NULL,
 CONSTRAINT [PK_ChecklistEntrySteps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CheckListMaster]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckListMaster](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Remarks] [varchar](500) NULL,
	[CategoryId] [smallint] NOT NULL,
 CONSTRAINT [PK_CheckList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChecklistSteps]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChecklistSteps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CheckListId] [smallint] NOT NULL,
	[Text] [varchar](250) NOT NULL,
	[SNo] [decimal](4, 2) NOT NULL,
 CONSTRAINT [PK_ChecklistSteps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChecklistStepsResult]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChecklistStepsResult](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NOT NULL,
	[Alias] [varchar](10) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chr]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chr](
	[custno] [int] NULL,
	[moddate] [datetime] NULL,
	[who] [varchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](80) NULL,
	[CountryId] [smallint] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Client]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[LomoID] [int] NOT NULL,
	[ClientName] [varchar](50) NULL,
	[ClientNameLong] [varchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[FirstName] [nvarchar](40) NOT NULL,
	[LastName] [nvarchar](40) NULL,
	[Email] [nvarchar](25) NULL,
	[Landline] [varchar](12) NULL,
	[Mobile] [varchar](12) NOT NULL,
	[Fax] [varchar](12) NULL,
	[Notify] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactDetails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Mobile] [varchar](12) NOT NULL,
	[Office] [varchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[Fax] [varchar](12) NULL,
	[POBox] [nvarchar](8) NULL,
	[Designation] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
 CONSTRAINT [PK_ContactDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contract]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[Id] [int] IDENTITY(1000,1) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[CRN] [varchar](20) NULL,
	[Remarks] [nvarchar](500) NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContractApplicantType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractApplicantType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](25) NOT NULL,
 CONSTRAINT [PK_ApplicantType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContractChecklistEntrySteps]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractChecklistEntrySteps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ChecklistEntryId] [int] NOT NULL,
	[ChecklistStepsId] [int] NOT NULL,
	[ResultId] [bit] NOT NULL,
 CONSTRAINT [PK_ContractChecklistEntrySteps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContractClassification]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractClassification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[num] [float] NULL,
 CONSTRAINT [PK_ContractClassification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContractContacts_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractContacts_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[DesignationId] [smallint] NULL,
	[TypeId] [smallint] NULL,
	[Landline] [varchar](15) NULL,
	[Mobile] [varchar](15) NULL,
	[Fax] [varchar](15) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ContractContacts_Log_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContractCustomerVisit]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractCustomerVisit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[ContractId] [int] NULL,
	[ContactId] [int] NOT NULL,
	[ChecklistId] [int] NULL,
	[VisitType] [tinyint] NOT NULL,
	[Remarks] [nvarchar](500) NULL,
	[IsExistingCustomer] [bit] NOT NULL,
	[CustomerNo] [int] NULL,
	[CustomerName] [nvarchar](250) NULL,
	[RemarksCompany] [nvarchar](500) NULL,
 CONSTRAINT [PK_ContractCustomerVisit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContractCustomerVisitType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractCustomerVisitType](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](15) NOT NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_ContractCustomerVisitType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContractSubDetails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractSubDetails](
	[ParentId] [int] NOT NULL,
	[DieselRequired] [bit] NULL,
	[Minimum] [int] NULL,
	[Maximum] [int] NULL,
	[ProjectName] [nvarchar](100) NULL,
	[ProjectLocation] [nvarchar](100) NULL,
	[StartDate] [date] NULL,
	[Enddate] [date] NULL,
	[WOQODStorageTank] [bit] NULL,
	[Quantity1] [int] NULL,
	[Capacity1] [int] NULL,
	[Quantity2] [int] NULL,
	[Capacity2] [int] NULL,
	[Quantity3] [int] NULL,
	[Capacity3] [int] NULL,
	[DIRECTTOEQUIPMENT] [bit] NULL,
	[DIRECTRemarks] [nvarchar](250) NULL,
	[DIRECTTOVESSEL] [bit] NULL,
	[VesselName] [nvarchar](250) NULL,
 CONSTRAINT [PK_ContractSubDetails] PRIMARY KEY CLUSTERED 
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContractSubDetailsV3]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractSubDetailsV3](
	[ParentId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[Minimum] [int] NULL,
	[Maximum] [int] NULL,
	[SupplyToId] [int] NULL,
	[Quantity1] [int] NULL,
	[Capacity1] [int] NULL,
	[Type1] [nvarchar](50) NULL,
	[Remarks1] [nvarchar](50) NULL,
	[Quantity2] [int] NULL,
	[Capacity2] [int] NULL,
	[Type2] [nvarchar](50) NULL,
	[Remarks2] [nvarchar](50) NULL,
	[Quantity3] [int] NULL,
	[Capacity3] [int] NULL,
	[Type3] [nvarchar](50) NULL,
	[Remarks3] [nvarchar](50) NULL,
	[VesselName] [nvarchar](250) NULL,
	[VesselCapacity] [int] NULL,
	[VesselRemarks] [nvarchar](250) NULL,
	[DIRECTRemarks] [nvarchar](250) NULL,
 CONSTRAINT [PK_ContractSubDetailsV3] PRIMARY KEY CLUSTERED 
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContractSubmission]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractSubmission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContractId] [int] NULL,
	[ApplicantId] [int] NULL,
	[DocumentChecklistId] [int] NULL,
	[IsExisting] [bit] NOT NULL,
	[CustomerNo] [int] NULL,
	[CustomerName] [nvarchar](250) NULL,
	[ApplicantTypeId] [int] NULL,
	[OwnerClassId] [int] NULL,
	[MainConClassId] [int] NULL,
	[ApplicantClassId] [int] NULL,
	[MainContractorName] [nvarchar](250) NULL,
	[ProjectOwnerName] [nvarchar](250) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
 CONSTRAINT [PK_ContractSubmission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContractSubmissionV3]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContractSubmissionV3](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsExisting] [bit] NOT NULL,
	[CustomerNo] [int] NULL,
	[CustomerName] [nvarchar](250) NULL,
	[DocumentChecklistId] [int] NULL,
	[ContractId] [int] NULL,
	[ProjectName] [nvarchar](100) NULL,
	[ProjectLocation] [nvarchar](100) NULL,
	[StartDate] [date] NULL,
	[Enddate] [date] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
 CONSTRAINT [PK_ContractSubmissionV3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [smallint] NOT NULL,
	[ISO] [char](2) NOT NULL,
	[Name] [varchar](80) NOT NULL,
	[NiceName] [varchar](80) NULL,
	[ISO3] [char](3) NULL,
	[NumCode] [smallint] NULL,
	[PhoneCode] [smallint] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerAddress]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAddress](
	[CustomerID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
 CONSTRAINT [PK_CustomerAddress] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerCategoryERP]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCategoryERP](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[Description] [varchar](100) NULL,
	[AllowImport] [bit] NOT NULL,
	[LPGAllowImport] [bit] NOT NULL,
	[CategoryCode] [varchar](10) NULL,
 CONSTRAINT [PK_CustomerCategoryERP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerContact]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerContact](
	[CustomerID] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
 CONSTRAINT [PK_CustomerContact] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CustomerERP]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerERP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportedOn] [datetime] NOT NULL,
	[CUST_NUMBER] [int] NOT NULL,
	[SITE_NUMBER] [int] NULL,
	[NAME] [nvarchar](250) NOT NULL,
	[CUST_STATUS] [varchar](1) NULL,
	[SITE_STATUS] [varchar](1) NULL,
	[ADDRESS] [nvarchar](500) NULL,
	[COUNTRY] [varchar](20) NULL,
	[SITE_USE_CODE] [varchar](25) NULL,
	[LOCATION] [varchar](100) NULL,
	[SITE_USE_STATUS] [varchar](1) NULL,
	[PRIMARY_FLAG] [varchar](1) NULL,
	[CategoryID] [smallint] NULL,
 CONSTRAINT [PK_CustomerERP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DocumentChecklistEntry]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentChecklistEntry](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Others] [nvarchar](250) NULL,
 CONSTRAINT [PK_DocumentChecklistEntry] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DocumentChecklistMaster]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentChecklistMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [varchar](250) NOT NULL,
 CONSTRAINT [PK_ContractDocumentChecklist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DocumentLib]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentLib](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[Title] [nchar](50) NULL,
	[Description] [nchar](250) NULL,
	[FileName] [nchar](50) NOT NULL,
	[FileType] [varchar](50) NOT NULL,
	[Extension] [varchar](10) NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_DocumentLib] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DocumentStore]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ARITHABORT ON
GO
CREATE TABLE [dbo].[DocumentStore] AS FILETABLE ON [PRIMARY] FILESTREAM_ON [DMS_FS]
WITH
(
FILETABLE_DIRECTORY = N'DocumentStore', FILETABLE_COLLATE_FILENAME = SQL_Latin1_General_CP1_CI_AS
)

GO
/****** Object:  Table [dbo].[EmpAttachments]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpAttachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[FileName] [nvarchar](500) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EmpAttachments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpDrivingLicense]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpDrivingLicense](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[DrivingLicenceType] [smallint] NULL,
	[LicenseID] [varchar](50) NULL,
	[IssueDate] [date] NULL,
	[ExpiryDate] [date] NULL,
	[CountryOfOrgin] [smallint] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EmpDrivingLicense] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpEmergencyContact]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpEmergencyContact](
	[EmployeeId] [int] NOT NULL,
	[Contact_person_name] [varchar](150) NULL,
	[Mobile1] [varchar](20) NULL,
	[Mobile2] [varchar](20) NULL,
	[Landline] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EmpEmergencyContact_1] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpGatePass]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpGatePass](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[GatePassType] [smallint] NULL,
	[GatePassID] [varchar](50) NULL,
	[IssueDate] [date] NULL,
	[ExpiryDate] [date] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EmpGatePass] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpHomeCountryContacts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpHomeCountryContacts](
	[EmployeeId] [int] NOT NULL,
	[PropertyID] [varchar](50) NULL,
	[Street_Name] [varchar](150) NULL,
	[City] [varchar](100) NULL,
	[Area_Zone] [varchar](100) NULL,
	[Country] [smallint] NULL,
	[Mobile1] [varchar](20) NULL,
	[Mobile2] [varchar](20) NULL,
	[Landline] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EmpHomeCountryContacts] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpLanguage]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpLanguage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[Language] [smallint] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EmpLanguage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpLocalContacts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpLocalContacts](
	[EmployeeId] [int] NOT NULL,
	[PropertyID] [varchar](50) NULL,
	[Street_Name] [varchar](150) NULL,
	[City] [varchar](100) NULL,
	[Area_Zone] [varchar](100) NULL,
	[Country] [smallint] NULL,
	[Mobile1] [varchar](20) NULL,
	[Mobile2] [varchar](20) NULL,
	[Landline] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EmpLocalContacts_1] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StaffId] [varchar](10) NOT NULL,
	[JobCode] [char](5) NOT NULL,
	[Position] [smallint] NULL,
	[FullName] [nvarchar](200) NOT NULL,
	[Location] [smallint] NULL,
	[Employer] [smallint] NULL,
	[JoiningDate] [datetime] NULL,
	[Nationality] [smallint] NULL,
	[Country] [smallint] NULL,
	[QatarID] [varchar](20) NULL,
	[ExpiryDate] [date] NULL,
	[DateOfBirth] [date] NULL,
	[BloodGroup] [smallint] NULL,
	[EmployeeType] [smallint] NULL,
	[Gender] [smallint] NULL,
	[Section] [smallint] NULL,
	[ShiftId] [tinyint] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeProfilePicture]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeProfilePicture](
	[EmployeeId] [int] NOT NULL,
	[basesistyfour] [nvarchar](max) NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_EmployeeProfilePicture] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[Code] [char](1) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_EmployeeType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmpUniforms]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpUniforms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[UniformsType] [smallint] NULL,
	[Size] [smallint] NULL,
	[Quantity] [varchar](3) NULL,
	[IssueDate] [date] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EmpUniforms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Geo_Backup]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Geo_Backup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectCode] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[MatchCode] [varchar](50) NOT NULL,
	[CustNo] [int] NULL,
	[SiteNo] [int] NULL,
	[X] [varchar](50) NULL,
	[Y] [varchar](50) NULL,
	[Distance] [decimal](4, 1) NULL,
	[LOMO_xPos] [int] NULL,
	[LOMO_yPos] [int] NULL,
	[LOMO_xGeoDec] [int] NULL,
	[LOMO_yGeoDec] [int] NULL,
	[LOMO_xPosMG5] [int] NULL,
	[LOMO_yPosMG5] [int] NULL,
	[CUST_NAME] [varchar](50) NULL,
	[SHORT_NAME] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GeoLocation]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeoLocation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_GeoLocation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lock]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Lock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LockTable]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LockTable](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Value] [varchar](100) NULL,
	[Data] [int] NULL,
 CONSTRAINT [PK_LockTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Module]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Module](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[Controller] [varchar](25) NULL,
	[Action] [varchar](25) NULL,
	[isParent] [bit] NULL,
	[icon] [varchar](25) NULL,
	[ParentId] [int] NULL,
	[Prefix] [varchar](20) NULL,
	[OrderId] [smallint] NULL,
	[SubOrderId] [smallint] NULL,
	[isVisible] [bit] NOT NULL,
	[isActive] [bit] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_Module] UNIQUE NONCLUSTERED 
(
	[Prefix] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MST_Depot]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MST_Depot](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[DepotName] [varchar](100) NOT NULL,
	[IsValidForSupply] [bit] NOT NULL,
	[isArchived] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_MST_Depot] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MST_Lookups]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MST_Lookups](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Type_Name] [varchar](100) NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[Description] [varchar](200) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[Modifiedby] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_MST_Lookups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MST_LookupsValues]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MST_LookupsValues](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[MST_LookupId] [tinyint] NOT NULL,
	[Value] [varchar](50) NOT NULL,
	[SortOrder] [tinyint] NOT NULL,
	[Prefix] [varchar](20) NULL,
	[MST_LookupsValuesId] [smallint] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[Modifiedby] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_MST_LookupsValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MySiteVisits]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MySiteVisits](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Reference] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[ProjectName] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[ScheduleDate] [nvarchar](50) NULL,
	[Inspector] [nvarchar](50) NULL,
	[VisitType] [nchar](8) NULL,
 CONSTRAINT [PK_MySiteVisits] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MySiteVisitsCompleted]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MySiteVisitsCompleted](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Reference] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[ProjectName] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[ScheduleDate] [nvarchar](50) NULL,
	[Inspector] [nvarchar](50) NULL,
	[Status] [nchar](8) NULL,
	[VisitType] [nchar](8) NULL,
 CONSTRAINT [PK_MySiteVisitsCompleted] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](20) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Prefix] [varchar](100) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleModules]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleModules](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ModuleId] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_RoleModules] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiteAddress]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteAddress](
	[SiteID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
 CONSTRAINT [PK_SiteAddress] PRIMARY KEY CLUSTERED 
(
	[SiteID] ASC,
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiteContact]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteContact](
	[SiteID] [int] NOT NULL,
	[ContactID] [int] NOT NULL,
 CONSTRAINT [PK_SiteContact] PRIMARY KEY CLUSTERED 
(
	[SiteID] ASC,
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiteGeoLocation]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteGeoLocation](
	[SiteID] [int] NOT NULL,
	[GeographyID] [int] NOT NULL,
 CONSTRAINT [PK_SiteGeography] PRIMARY KEY CLUSTERED 
(
	[SiteID] ASC,
	[GeographyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SitesERP]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SitesERP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ImportedOn] [datetime] NOT NULL,
	[CUST_NUMBER] [int] NOT NULL,
	[SITE_NUMBER] [int] NOT NULL,
	[NAME] [nvarchar](250) NOT NULL,
	[CUST_STATUS] [varchar](1) NOT NULL,
	[SITE_STATUS] [varchar](1) NOT NULL,
	[ADDRESS] [nvarchar](500) NOT NULL,
	[COUNTRY] [varchar](20) NOT NULL,
	[SITE_USE_CODE] [varchar](25) NOT NULL,
	[LOCATION] [varchar](100) NOT NULL,
	[SITE_USE_STATUS] [varchar](1) NOT NULL,
	[PRIMARY_FLAG] [varchar](1) NOT NULL,
	[CategoryID] [smallint] NOT NULL,
	[ClientID] [tinyint] NULL,
 CONSTRAINT [PK_SitesERP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SitesLPG]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SitesLPG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ImportedOn] [datetime] NOT NULL,
	[CUSTOMER_NUMBER] [nvarchar](30) NOT NULL,
	[SITE_NUMBER] [nvarchar](30) NOT NULL,
	[CUSTOMER_NAME] [nvarchar](360) NOT NULL,
	[CUST_STATUS] [nvarchar](1) NOT NULL,
	[SITE_STATUS] [nvarchar](1) NOT NULL,
	[CUST_ADDR] [nvarchar](4000) NULL,
	[COUNTRY] [nvarchar](60) NOT NULL,
	[SITE_USE_CODE] [nvarchar](30) NOT NULL,
	[LOCATION] [nvarchar](40) NOT NULL,
	[SITE_USE_STATUS] [nvarchar](1) NULL,
	[PRIMARY_FLAG] [nvarchar](1) NULL,
	[CATEGORY_ID] [smallint] NOT NULL,
	[ProjectCode] [varchar](20) NULL,
	[ProjectSubCode] [varchar](50) NULL,
 CONSTRAINT [PK_SitesLPG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STG_LPG]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STG_LPG](
	[ProjectCode] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[MatchCode] [varchar](50) NOT NULL,
	[X] [varchar](50) NULL,
	[Y] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SupplyTo]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplyTo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NULL,
 CONSTRAINT [PK_SupplyTo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[Data] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_2]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_2](
	[Value] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_3]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_3](
	[Value] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tank]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tank](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TankNo] [varchar](50) NULL,
	[ChassisNo] [nchar](10) NULL,
	[Capacity] [int] NOT NULL,
	[TypeID] [smallint] NOT NULL,
	[StatusID] [smallint] NOT NULL,
	[OpStatusID] [smallint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
 CONSTRAINT [PK_Tank] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TankFinancials]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TankFinancials](
	[TankID] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](128) NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](128) NULL,
	[DateOfManufacture] [date] NULL,
	[DateReceived] [date] NOT NULL,
	[ReceivedPO] [varchar](50) NULL,
	[SupplierID] [smallint] NOT NULL,
	[DeliveryNo] [varchar](50) NULL,
	[InvoiceNo] [varchar](50) NULL,
	[Price] [int] NULL,
 CONSTRAINT [PK_TankFinancials] PRIMARY KEY CLUSTERED 
(
	[TankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TankOpStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TankOpStatus](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](10) NOT NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_TankOpStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TankStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TankStatus](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](15) NOT NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_TankStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TankSupplier]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TankSupplier](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](15) NOT NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_TankSupplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TankTypes]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TankTypes](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](15) NOT NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_TankType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAction]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[URMId] [bigint] NOT NULL,
	[ActionId] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_UserAction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRoleModules]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoleModules](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[ModuleId] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_UserRoleModules] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Wissam -Excel]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wissam -Excel](
	[Serial] [varchar](50) NULL,
	[Staff ID] [varchar](50) NULL,
	[Staff Full Name] [varchar](50) NULL,
	[Job Code] [varchar](50) NULL,
	[Employer] [varchar](50) NULL,
	[Nationality Category] [varchar](50) NULL,
	[Nationality] [varchar](50) NULL,
	[Joining Date] [varchar](50) NULL,
	[Date of Birth] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[Driving License Type] [varchar](50) NULL,
	[Driving License Validity] [varchar](50) NULL,
	[Days Remaining Until Expiry] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Mobile no  1] [varchar](50) NULL,
	[Mobile no  2] [varchar](50) NULL,
	[Off Day 1] [varchar](50) NULL,
	[Off Day 2] [varchar](50) NULL,
	[Annual Leave Days] [varchar](50) NULL,
	[Planned Annual Leave Start Date] [varchar](50) NULL,
	[Planned Annual Leave End Date] [varchar](50) NULL,
	[Expected Date of Return] [varchar](50) NULL,
	[Duration of planned annual leave] [varchar](50) NULL,
	[Unplanned Balance] [varchar](50) NULL,
	[Actual Annual Leave Start Date] [varchar](50) NULL,
	[Actual Annual Leave End Date] [varchar](50) NULL,
	[Actual Return Date] [varchar](50) NULL,
	[Actual Annual Leave Duration] [varchar](50) NULL,
	[Actual Balance] [varchar](50) NULL,
	[Sick Leave Days] [varchar](50) NULL,
	[Sick Leave Balance] [varchar](50) NULL,
	[Absent with Permission] [varchar](50) NULL,
	[ Balance Absent with Permission] [varchar](50) NULL,
	[Absent without Permission 1] [varchar](50) NULL,
	[Absent without Permission 2] [varchar](50) NULL,
	[Absent without Permission 3] [varchar](50) NULL,
	[Attention Letter Date] [varchar](50) NULL,
	[Warning Letter 1 Date] [varchar](50) NULL,
	[Warning Letter 2 Date] [varchar](50) NULL,
	[Warning Letter 3 Date] [varchar](50) NULL,
	[Product] [varchar](50) NULL,
	[Shift] [varchar](50) NULL,
	[Vehicle] [varchar](50) NULL,
	[Tanker] [varchar](50) NULL,
	[No  of Trips] [varchar](50) NULL,
	[Defined Score per Shift] [varchar](50) NULL,
	[Defined Monthly Score] [varchar](50) NULL,
	[Actual Monthly Score] [varchar](50) NULL,
	[Mandatory Trainings Name] [varchar](50) NULL,
	[Mandatory Trainings Date] [varchar](50) NULL,
	[Other Required Trainings Name] [varchar](50) NULL,
	[Other Required Trainings Date] [varchar](50) NULL,
	[Language 1] [varchar](50) NULL,
	[Language 2] [varchar](50) NULL,
	[Language 3] [varchar](50) NULL,
	[Remarks] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [Fleet].[DET_FleetCompartments]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Fleet].[DET_FleetCompartments](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[FleetId] [smallint] NOT NULL,
	[Compartment] [varchar](50) NULL,
	[Capacity] [decimal](18, 2) NULL,
	[ProductGroup] [smallint] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_FleetCompartments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Fleet].[DET_FleetGatePass]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Fleet].[DET_FleetGatePass](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[FleetId] [smallint] NOT NULL,
	[GatePassType] [smallint] NULL,
	[GatePassID] [varchar](50) NULL,
	[IssueDate] [date] NULL,
	[ExpiryDate] [date] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DET_MST_FleetGatePass] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Fleet].[DET_FleetMaintenance]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Fleet].[DET_FleetMaintenance](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[FleetId] [smallint] NOT NULL,
	[PMInterval] [varchar](50) NULL,
	[PMDueDate] [date] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DET_FleetMaintenance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Fleet].[DET_FleetServiceRequest_Resources]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Fleet].[DET_FleetServiceRequest_Resources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FleetRequestId] [int] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DET_FleetServiceRequest_Resources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Fleet].[DET_MSTFleetAttachments]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Fleet].[DET_MSTFleetAttachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FleetId] [smallint] NOT NULL,
	[FileName] [nvarchar](500) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DET_MSTFleetAttachments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Fleet].[LOG_Fleet_ServiceRequests]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Fleet].[LOG_Fleet_ServiceRequests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FrId] [int] NOT NULL,
	[StatusId] [smallint] NOT NULL,
	[Comment] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Log_Fleet_ServiceRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Fleet].[MST_Fleet]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Fleet].[MST_Fleet](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[FleetName] [nvarchar](10) NULL,
	[RegNo] [varchar](50) NULL,
	[RegExpiryDate] [date] NULL,
	[Status] [smallint] NULL,
	[EngineNumber] [varchar](50) NULL,
	[ChassisNumber] [varchar](50) NULL,
	[Weight] [decimal](18, 2) NULL,
	[Manufacturer] [smallint] NULL,
	[ModelType] [smallint] NULL,
	[ModelYear] [smallint] NULL,
	[DriveTrain] [smallint] NULL,
	[ParkSlot] [varchar](50) NULL,
	[PumpAvaliability] [smallint] NULL,
	[FleetType] [smallint] NULL,
	[Section] [smallint] NULL,
	[ParentId] [smallint] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_MST_Fleet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Fleet].[MST_Fleet_ServiceRequests]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Fleet].[MST_Fleet_ServiceRequests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RequestNo] [varchar](10) NOT NULL,
	[RequestDate] [datetime] NOT NULL,
	[FleetId] [smallint] NOT NULL,
	[FleetTypeId] [smallint] NULL,
	[AssignedFleetId] [smallint] NULL,
	[AssignedFleetTypeId] [smallint] NULL,
	[RequiredActionId] [smallint] NULL,
	[FSCStatusId] [smallint] NULL,
	[FSCDate] [datetime] NULL,
	[AcceptanceDate] [datetime] NULL,
	[NewFleetId] [smallint] NULL,
	[NewFleetTypeId] [smallint] NULL,
	[Comments] [nvarchar](250) NULL,
	[FSCComments] [nvarchar](250) NULL,
	[FolderPath] [nvarchar](100) NULL,
	[MarkAsDeleted] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_MST_Fleet_ServiceRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[ActionActivityLog]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[ActionActivityLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityTypeId] [smallint] NOT NULL,
	[ActivityBy] [int] NOT NULL,
	[ActivityOn] [datetime] NOT NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_ActionActivityLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [log].[ActivityLog]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[ActivityLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ActivityTypeId] [smallint] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ActivityLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[ActivityType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[ActivityType](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Prefix] [varchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ActivityType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[Agenda_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[Agenda_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[AgendaName] [nvarchar](100) NOT NULL,
	[MeetingDate] [datetime] NOT NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Agenda_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[AgendaContracts_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[AgendaContracts_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NULL,
	[AgendaActivity] [tinyint] NULL,
	[AgendaId] [bigint] NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ResultTypeId] [smallint] NULL,
	[PricingCategoryId] [smallint] NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AgendaContracts_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[AppError]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[AppError](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [varchar](250) NOT NULL,
	[ErrorCode] [varchar](10) NULL,
	[ErrorTypeId] [tinyint] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AppError] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[AppErrorType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[AppErrorType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AppErrorType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[BankGuranteeDocuments_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[BankGuranteeDocuments_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_BankGuranteeDocuments_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[BankGuranteePrintLog]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[BankGuranteePrintLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_BankGuranteePrintLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[BankGuranteeRemark_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[BankGuranteeRemark_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityId] [bigint] NOT NULL,
	[Remark] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_BankGuranteeRemark_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[BatchContracts_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[BatchContracts_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NULL,
	[BatchActivity] [tinyint] NULL,
	[BatchId] [bigint] NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ResultTypeId] [smallint] NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_BatchContracts_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[BGContractDocs_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[BGContractDocs_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_BGontractDocs_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[BGContractRemarks_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[BGContractRemarks_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityId] [bigint] NOT NULL,
	[Remark] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_BGContractRemarks_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[ContractAddress_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[ContractAddress_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[AddressLine1] [nvarchar](100) NULL,
	[AddressLine2] [nvarchar](100) NULL,
	[Area] [nvarchar](100) NULL,
	[CountryId] [smallint] NULL,
	[CityId] [smallint] NULL,
	[isActive] [bit] NULL,
	[POBox] [varchar](10) NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_ContractAddress_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[ContractContacts_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[ContractContacts_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[DesignationId] [smallint] NULL,
	[TypeId] [smallint] NULL,
	[Landline] [varchar](15) NULL,
	[Mobile] [varchar](15) NULL,
	[Fax] [varchar](15) NULL,
	[isActive] [bit] NOT NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_ContractContacts_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[EventNotification_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[EventNotification_Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[EventTypeId] [tinyint] NOT NULL,
	[Subject] [nvarchar](250) NULL,
	[Template] [nvarchar](max) NOT NULL,
	[NotifyEntityTypeId] [tinyint] NULL,
	[MailingListId] [tinyint] NULL,
	[MailingListCCId] [tinyint] NULL,
	[isSplit] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_EventNotification_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [log].[ExceptionLog]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[ExceptionLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Namespace_Name] [varchar](250) NULL,
	[Class_name] [varchar](250) NULL,
	[Method_name] [varchar](250) NULL,
	[Exceptionhtml] [nvarchar](max) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ExceptionLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [log].[FinalInsConfDocs_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[FinalInsConfDocs_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_FinalInsConfDocs_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[FinalInsConfRemark_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[FinalInsConfRemark_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityId] [bigint] NOT NULL,
	[Remark] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_FinalInsConfRemark_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[LegalBatch_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[LegalBatch_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[BatchName] [nvarchar](100) NOT NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LegalBatch_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[LPGOrderPlanning_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[LPGOrderPlanning_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TranNo] [varchar](20) NOT NULL,
	[SiteId] [int] NOT NULL,
	[RequiredOn] [datetime] NOT NULL,
	[ExpectedQty] [decimal](8, 2) NOT NULL,
	[Comments] [nvarchar](255) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
 CONSTRAINT [PK_LPGOrderPlanning_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[LPGOrderTanks_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[LPGOrderTanks_Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TranNo] [varchar](20) NULL,
	[OrderId] [int] NOT NULL,
	[TankId] [int] NOT NULL,
	[Level] [tinyint] NOT NULL,
	[ExpectedDeliveredQty] [decimal](8, 2) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [log].[MonthlyConsumptionDetails_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[MonthlyConsumptionDetails_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[Value] [bigint] NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_MonthlyConsumptionDetails_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[OrderPlanning_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[OrderPlanning_Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TranNo] [varchar](20) NOT NULL,
	[SiteId] [int] NOT NULL,
	[ProductId] [tinyint] NOT NULL,
	[ShiftId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[NoOfLoad] [tinyint] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
 CONSTRAINT [PK_OrderPlanning_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[PortalUser_Notification_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[PortalUser_Notification_Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PortalUserId] [int] NOT NULL,
	[AcceptedDate] [datetime] NULL,
 CONSTRAINT [PK_PortalUser_Notification_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[PSPlaning_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[PSPlaning_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PsplaningId] [bigint] NULL,
	[SITEID] [int] NULL,
	[ShiftId] [tinyint] NULL,
	[ShiftDate] [date] NULL,
	[Shift_StartTime] [datetime] NULL,
	[Shift_EndTime] [datetime] NULL,
	[ProductId] [tinyint] NULL,
	[Noofload_old] [int] NULL,
	[Noofload_New] [int] NULL,
	[CreateDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[Type] [tinyint] NULL,
	[ActionDate] [datetime] NULL,
	[ActionBy] [int] NULL,
 CONSTRAINT [PK_PSPlaning_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[ScheduleList_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[ScheduleList_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NULL,
	[ApplicationId] [bigint] NULL,
	[InchargeId] [bigint] NULL,
	[VisitDate] [date] NULL,
	[Remarks] [nvarchar](max) NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_ScheduleList_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [log].[Site_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[Site_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NULL,
	[CustId] [int] NULL,
	[CustomerName] [nvarchar](200) NULL,
	[ContractorTypeId] [smallint] NULL,
	[StageId] [int] NULL,
	[SubStageId] [int] NULL,
	[Code] [varchar](25) NULL,
	[ProdNeededId] [int] NULL,
	[MinAvgConsumption] [bigint] NULL,
	[MaxAvgConsumption] [bigint] NULL,
	[SupplyToTypeId] [int] NULL,
	[PricingCommiteeRemarks] [nvarchar](200) NULL,
	[UserRemarks] [nvarchar](200) NULL,
	[FolderPath] [nvarchar](100) NULL,
	[isActive] [bit] NOT NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_Site_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[SiteAgenda_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SiteAgenda_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[AgendaId] [bigint] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteAgenda_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[SiteAttachmentCheckList_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SiteAttachmentCheckList_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[AttachmentId] [int] NULL,
	[OtherAttachmentType] [nvarchar](200) NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_SiteAttachmentCheckList_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[SiteCRAnalysis_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SiteCRAnalysis_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ApplicantTypeId] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[ArabicName] [nvarchar](100) NULL,
	[ClassificationId] [int] NULL,
	[NatureId] [int] NULL,
	[NationalityId] [smallint] NULL,
	[CR_ID_Number] [nvarchar](100) NULL,
	[CR_ID_Validity] [datetime] NULL,
	[ParentId] [bigint] NULL,
	[IsIndividual] [bit] NULL,
	[IsEstablishment] [bit] NULL,
	[IsPrivateShareholding] [bit] NULL,
	[IsPublicShareholding] [bit] NULL,
	[IsCompany] [bit] NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_SiteCRAnalysis_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[SiteDocuments_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SiteDocuments_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NULL,
	[SiteId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[SiteAttachmentChecklist] [nvarchar](250) NULL,
	[Remarks] [nvarchar](100) NULL,
	[isDeleted] [bit] NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_SiteDocuments_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[SiteLegalBatch_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SiteLegalBatch_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[BatchId] [bigint] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteLegalBatch_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[SiteProjectDetails_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SiteProjectDetails_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ContractorTypeId] [smallint] NULL,
	[ProjectName] [nvarchar](100) NULL,
	[ProjectLocation] [nvarchar](100) NULL,
	[ProjectDescription] [nvarchar](200) NULL,
	[ProjectClassificationId] [int] NULL,
	[ProjectStartDate] [datetime] NULL,
	[IsTentative] [bit] NULL,
	[ProjectEndDate] [datetime] NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_SiteProjectDetails_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[SiteStatus_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SiteStatus_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NULL,
	[ApplicationId] [bigint] NULL,
	[IsRejected] [bit] NULL,
	[Remarks] [nvarchar](max) NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_SiteStatus_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [log].[SiteVerification_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SiteVerification_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityId] [bigint] NOT NULL,
	[ApproveAppSubmission] [bit] NULL,
	[ApproveCRAnalysis] [bit] NULL,
	[ApproveUploadedDocuments] [bit] NULL,
	[ApproveSiteVisitReport] [bit] NULL,
	[AppSubmissionRemark] [nvarchar](250) NULL,
	[CRAnalysisRemark] [nvarchar](250) NULL,
	[UploadDocumentsRemark] [nvarchar](250) NULL,
	[SiteVisitReportRemark] [nvarchar](250) NULL,
	[PricingCommitteeRemarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_SiteVerification_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[SiteVisitAddresses_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SiteVisitAddresses_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[SiteVisitReportId] [bigint] NOT NULL,
	[AddressLine1] [nvarchar](100) NULL,
	[AddressLine2] [nvarchar](100) NULL,
	[Area] [nvarchar](100) NULL,
	[CountryId] [smallint] NULL,
	[CityId] [smallint] NULL,
	[isActive] [bit] NULL,
	[POBox] [varchar](10) NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_SiteVisitAddresses_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[SiteVisitProjectDetails_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SiteVisitProjectDetails_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[SiteVisitReportId] [bigint] NOT NULL,
	[ContractorTypeId] [smallint] NULL,
	[ProjectName] [nvarchar](100) NULL,
	[ProjectLocation] [nvarchar](100) NULL,
	[ProjectDescription] [nvarchar](200) NULL,
	[ProjectClassificationId] [int] NULL,
	[ProjectStartDate] [datetime] NULL,
	[IsTentative] [bit] NULL,
	[ProjectEndDate] [datetime] NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_SiteVisitProjectDetails_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[SiteVisitReport_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SiteVisitReport_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ScheduleId] [bigint] NOT NULL,
	[ApplicantName] [nvarchar](250) NOT NULL,
	[Location] [nvarchar](100) NOT NULL,
	[DateOfVisit] [datetime] NOT NULL,
	[Lat] [float] NULL,
	[Long] [float] NULL,
	[SiteZoneId] [int] NULL,
	[OnRoad] [float] NULL,
	[OffRoad] [float] NULL,
	[ContractorTypeId] [smallint] NOT NULL,
	[SupplyToTypeId] [smallint] NOT NULL,
	[BundwallRemarks] [nvarchar](250) NULL,
	[StorageTankLocation] [nvarchar](250) NULL,
	[FireExtinguisher] [nvarchar](250) NULL,
	[RoadTankerCapacity] [nvarchar](250) NULL,
	[RoadTankerAccess] [nvarchar](250) NULL,
	[RoadCondition] [nvarchar](250) NULL,
	[FillingPoints] [nvarchar](250) NULL,
	[CustomerAvailableEquipment] [nvarchar](250) NULL,
	[SiteVisitComments] [nvarchar](250) NULL,
	[BulkRemarks] [nvarchar](250) NULL,
	[SiteInspectionTypeId] [tinyint] NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_SiteVisitReport_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[SiteVisitReportContacts_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SiteVisitReportContacts_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[SiteVisitReportId] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[DesignationId] [smallint] NULL,
	[TypeId] [smallint] NULL,
	[Landline] [varchar](15) NULL,
	[Mobile] [varchar](15) NULL,
	[Fax] [varchar](15) NULL,
	[isActive] [bit] NOT NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_SiteVisitReportContacts_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[SiteVisitResources_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SiteVisitResources_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[SiteVisitReportId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_SiteVisitResources_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[SiteVisitSupplyToDetails_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SiteVisitSupplyToDetails_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[SiteVisitReportId] [bigint] NOT NULL,
	[NumberOfStorageTanks] [int] NULL,
	[VesselName] [nvarchar](100) NULL,
	[StorageTankTypeId] [int] NULL,
	[Capacity] [bigint] NULL,
	[Remarks] [nvarchar](200) NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_SiteVisitSupplyToDetails_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[SupplyToDetails_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[SupplyToDetails_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogId] [bigint] NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[NumberOfStorageTanks] [int] NULL,
	[StorageTankTypeId] [int] NULL,
	[VesselName] [nvarchar](100) NULL,
	[Capacity] [bigint] NULL,
	[Remarks] [nvarchar](200) NULL,
	[LoggedBy] [int] NULL,
	[LoggedOn] [datetime] NULL,
 CONSTRAINT [PK_SupplyToDetails_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[TankConfDocs_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[TankConfDocs_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_TankConfDocs_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [log].[TankConfRemark_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [log].[TankConfRemark_Log](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityId] [bigint] NOT NULL,
	[Remark] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_TankConfRemark_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[Contractor]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[Contractor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Company] [nvarchar](50) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[Phone] [varchar](8) NOT NULL,
	[Mobile] [varchar](8) NOT NULL,
	[Fax] [varchar](8) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[LastLogin] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Contractor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[InstallationAction]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[InstallationAction](
	[Id] [tinyint] NOT NULL,
	[EnumId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_InstallationAction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[InstallationStage]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[InstallationStage](
	[Id] [tinyint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_InstallationStage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[InstallationType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[InstallationType](
	[Id] [tinyint] NOT NULL,
	[_Type] [varchar](50) NOT NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_InstallationType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[LPG_Geo]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[LPG_Geo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjectCode] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[MatchCode] [varchar](50) NULL,
	[CustNo] [int] NULL,
	[SiteNo] [int] NULL,
	[X] [varchar](50) NULL,
	[Y] [varchar](50) NULL,
	[Distance] [decimal](4, 1) NULL,
	[PricingCategoryId] [tinyint] NULL,
	[LOMO_xPos] [int] NULL,
	[LOMO_yPos] [int] NULL,
	[LOMO_xGeoDec] [int] NULL,
	[LOMO_yGeoDec] [int] NULL,
	[LOMO_xPosMG5] [int] NULL,
	[LOMO_yPosMG5] [int] NULL,
	[CUST_NAME] [varchar](100) NULL,
	[SHORT_NAME] [varchar](50) NULL,
 CONSTRAINT [PK_LPG_Geo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[LpgPricingCategory]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[LpgPricingCategory](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[PricingCategory] [varchar](10) NOT NULL,
 CONSTRAINT [PK_LpgPricingCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[SiteCategory]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[SiteCategory](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_LPG_SiteCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[SiteInstallation]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[SiteInstallation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [tinyint] NOT NULL,
	[ProjectCode] [varchar](20) NOT NULL,
	[ProjectSubCode] [varchar](50) NULL,
	[ContractorId] [int] NULL,
	[CustomersName] [varchar](150) NULL,
	[ContactPerson] [varchar](150) NULL,
	[Telephone_MobileNo] [varchar](15) NULL,
	[Fax] [varchar](15) NULL,
	[TankCapacity] [int] NULL,
	[TankTypeId] [tinyint] NULL,
	[Quantity] [int] NULL,
	[InstallationTypeId] [tinyint] NULL,
	[MonthlyConsumption_ByContractor] [int] NULL,
	[QuantityReqto_beDelivered] [int] NULL,
	[TankerCapacityInMtTonId] [tinyint] NULL,
	[Location] [varchar](100) NULL,
	[Latitude] [numeric](9, 6) NULL,
	[Longitude] [numeric](9, 6) NULL,
	[DistanceGoogle] [numeric](5, 2) NULL,
	[DistanceManual] [numeric](5, 2) NULL,
	[TranportZoneID] [tinyint] NULL,
	[Remarks] [text] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[MarkAsDelete] [bit] NOT NULL,
	[InstallationStageId] [int] NULL,
 CONSTRAINT [PK_SiteInstallation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [lpg].[SiteInstallationFiles]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[SiteInstallationFiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteInstallationId] [int] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_SiteInstallationFiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[SiteInstallationFilesStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[SiteInstallationFilesStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteInstallationId] [int] NULL,
	[Batchname] [uniqueidentifier] NULL,
	[FileName] [nvarchar](100) NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NULL,
	[isSaved] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_SiteInstallationFilesstatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[SiteInstallationStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[SiteInstallationStatus](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteInstallationId] [int] NOT NULL,
	[InstallationStageId] [tinyint] NOT NULL,
	[InstallationActionId] [tinyint] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_SiteInstallationStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[SiteInstallationTankerCapacity]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[SiteInstallationTankerCapacity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteInstallationId] [int] NOT NULL,
	[TankerCapacityInMtTonId] [tinyint] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_SiteInstallationTankerCapacity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[SiteInstallationTanks]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[SiteInstallationTanks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteInstallationId] [int] NOT NULL,
	[NoOfStorage] [tinyint] NOT NULL,
	[Capacity] [int] NOT NULL,
	[TankTypeId] [tinyint] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_SiteInstallationTanks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[Staging_Distance]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[Staging_Distance](
	[CustNo] [varchar](50) NULL,
	[SiteNo] [varchar](50) NULL,
	[Project code] [varchar](50) NULL,
	[X] [varchar](50) NULL,
	[Y] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[TankerCapacityInMtTon]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[TankerCapacityInMtTon](
	[Id] [tinyint] NOT NULL,
	[Mtton] [varchar](50) NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_TankerCapacityInMtTon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[TankType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[TankType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[_Type] [varchar](50) NOT NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_TankType_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpg].[TransportZone]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpg].[TransportZone](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Zone] [varchar](10) NOT NULL,
	[StartKM] [numeric](5, 2) NOT NULL,
	[EndKM] [numeric](5, 2) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_TransportZone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpgordering].[DET_LPG_Tran]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpgordering].[DET_LPG_Tran](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TranNo] [bigint] NOT NULL,
	[ActionId] [tinyint] NOT NULL,
	[OrderIds] [varchar](max) NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_DET_LPG_Tran_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [lpgordering].[DET_LPGSite_OrderSettings]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpgordering].[DET_LPGSite_OrderSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[TimeLimit] [smallint] NOT NULL,
	[UpdateElapsedTime] [int] NOT NULL,
	[CheckCreditLimit] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DET_LPGSite_OrderSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpgordering].[LPGOrderPlanning]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpgordering].[LPGOrderPlanning](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[RequiredOn] [datetime] NOT NULL,
	[Comments] [nvarchar](255) NULL,
	[ExpectedQty] [decimal](8, 2) NOT NULL,
	[IsProcessed] [bit] NOT NULL,
	[isUrgent] [bit] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_LPGOrderPlanning] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpgordering].[LPGOrderTanks]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpgordering].[LPGOrderTanks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[TankId] [int] NOT NULL,
	[Level] [tinyint] NOT NULL,
	[ExpectedDeliveredQty] [decimal](8, 2) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LPGOrderTanks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpgordering].[LPGSiteTanks]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpgordering].[LPGSiteTanks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[TankName] [nvarchar](50) NOT NULL,
	[Volume] [int] NULL,
	[Location] [nvarchar](50) NULL,
	[Comment] [nvarchar](50) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LPGSiteTanks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpgordering].[MST_LPG_Order]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpgordering].[MST_LPG_Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TranNo] [bigint] NOT NULL,
	[OrderItemNo] [varchar](20) NOT NULL,
	[OrderPlanningId] [int] NOT NULL,
	[SiteId] [int] NOT NULL,
	[ProductId] [tinyint] NOT NULL,
	[Description] [varchar](200) NULL,
	[Quantity] [int] NOT NULL,
	[BoxId] [smallint] NULL,
	[LomoBoxId] [smallint] NULL,
	[LomoOrderId] [int] NULL,
	[LomoOrderNum] [varchar](11) NULL,
	[OrderedFor] [datetime] NOT NULL,
	[Remarks] [nvarchar](200) NULL,
	[OrderTypeId] [tinyint] NULL,
	[StatusId] [tinyint] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MST_LPG_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpgordering].[MST_LPG_Products]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpgordering].[MST_LPG_Products](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[ProductDescription] [nvarchar](200) NOT NULL,
	[LomoProductId] [tinyint] NULL,
	[ERPProductId] [int] NOT NULL,
	[ERPName] [nvarchar](50) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MST_LPG_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpgordering].[MST_LPGOrderSettings]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpgordering].[MST_LPGOrderSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SettingName] [varchar](100) NOT NULL,
	[SettingCode] [char](2) NOT NULL,
	[SettingValue] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_MST_LPGOrderSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpgordering].[PortalUserCustomer]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpgordering].[PortalUserCustomer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PortalUserId] [int] NOT NULL,
	[CustId] [int] NOT NULL,
	[hasAccessToAll] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PortalUserCustomer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lpgordering].[PortalUserLPGSites]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lpgordering].[PortalUserLPGSites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PortalCustId] [int] NOT NULL,
	[SiteId] [int] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PortalUserLPGSites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[DistributionType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[DistributionType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[DistributionType] [varchar](100) NOT NULL,
	[DistibutionTypeAr] [nvarchar](100) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_DistributionType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LeasedVehicle]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LeasedVehicle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LvNumber] [nvarchar](50) NULL,
	[ChasisNumber] [nvarchar](50) NOT NULL,
	[PurchaseOrder] [nvarchar](50) NOT NULL,
	[MaterialRequisition] [nvarchar](50) NOT NULL,
	[SupplierId] [tinyint] NOT NULL,
	[SupplierDelivery] [nvarchar](50) NOT NULL,
	[SupplierInvoice] [nvarchar](50) NOT NULL,
	[DateOfReceiving] [datetime] NOT NULL,
	[Certificate] [nvarchar](50) NOT NULL,
	[WOQODTankEquipmentNumber] [nvarchar](50) NULL,
	[EngineNumber] [varchar](50) NULL,
	[ParkingSlot] [nvarchar](10) NULL,
	[CapacityId] [tinyint] NOT NULL,
	[StatusId] [tinyint] NOT NULL,
	[isAvailable] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LeasedVehicle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LeasedVehicleDocuments]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LeasedVehicleDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LvId] [int] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LeasedVehicleDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LeasedVehicleStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LeasedVehicleStatus](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LeasedVehicleStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LeasedVehicleSupplier]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LeasedVehicleSupplier](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[SuplierName] [nvarchar](250) NOT NULL,
	[Alias] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LeasedVehicleSupplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvApplicableRates]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvApplicableRates](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[DurationText] [nvarchar](200) NOT NULL,
	[MonthlyRental] [int] NOT NULL,
	[MonthlyRentalText] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LvApplicableRates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvApprovedContractAttachments]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvApprovedContractAttachments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LvApprovedContractId] [int] NOT NULL,
	[AttachmentId] [smallint] NULL,
	[OtherAttachmentType] [nvarchar](200) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LApprovedContractAttachments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvApprovedContractDocuments]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvApprovedContractDocuments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LvApprovedContractId] [int] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[LvAttachmentChecklistId] [int] NULL,
	[Remarks] [nvarchar](100) NULL,
	[isDeleted] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LvApprovedContractDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvApprovedContracts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvApprovedContracts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LvContractId] [int] NULL,
	[LvContractTypeId] [tinyint] NOT NULL,
	[LvCustomerTypeId] [tinyint] NOT NULL,
	[ContractName] [nvarchar](100) NULL,
	[ContractCode] [varchar](25) NULL,
	[TelNo] [varchar](15) NULL,
	[FaxNo] [varchar](15) NULL,
	[POBoxNo] [varchar](15) NULL,
	[EmailId] [varchar](320) NULL,
	[ProjectName] [nvarchar](50) NULL,
	[ProjectLocation] [nvarchar](50) NULL,
	[ProjectDescription] [nvarchar](250) NULL,
	[BuyerProjectDescription] [nvarchar](250) NULL,
	[ProjectClassificationId] [int] NULL,
	[ProjectStartDate] [date] NULL,
	[ProjectEndDate] [date] NULL,
	[ProjectIsTentative] [bit] NULL,
	[MinAvgConsumption] [bigint] NULL,
	[MaxAvgConsumption] [bigint] NULL,
	[LPOwnerName] [nvarchar](50) NULL,
	[LPMainContName] [nvarchar](50) NULL,
	[DistributionTypeId] [tinyint] NULL,
	[AccountNumber] [nvarchar](25) NULL,
	[Location] [nvarchar](50) NULL,
	[NoOfTanksRequired] [tinyint] NULL,
	[DistibutionTypeId] [tinyint] NULL,
	[LeaseStartDate] [date] NULL,
	[LeaseEndDate] [date] NULL,
	[ServingSiteLocations] [nvarchar](250) NULL,
	[LesseeName] [nvarchar](100) NULL,
	[LesseeCapacity] [nvarchar](50) NULL,
	[CoverSheetRemarks] [nvarchar](250) NULL,
	[ContractRemarks] [nvarchar](250) NULL,
	[DriverNationalityId] [smallint] NULL,
	[DriverIdNo] [varchar](25) NULL,
	[NameOfSponsor] [nvarchar](120) NULL,
	[NameOfDriver] [nvarchar](120) NULL,
	[DurationId] [tinyint] NULL,
	[FolderPath] [nvarchar](100) NULL,
	[isActive] [bit] NOT NULL,
	[SubOrderId] [tinyint] NULL,
	[LvApplicableRateId] [tinyint] NULL,
	[LeasedVehicleId] [int] NULL,
	[ActualStartDate] [datetime] NULL,
	[ActualEndDate] [datetime] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LvApprovedContracts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvApprovedContractStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvApprovedContractStatus](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LvApprovedContractId] [int] NOT NULL,
	[LvStageId] [smallint] NOT NULL,
	[LvSubStageId] [smallint] NOT NULL,
	[isEnabled] [bit] NOT NULL,
	[isRejected] [bit] NULL,
	[Remarks] [nvarchar](250) NULL,
	[RejectedBy] [int] NULL,
	[RejectedOn] [datetime] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LvApprovedContractStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvAttachment]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvAttachment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LvContractId] [int] NOT NULL,
	[AttachmentId] [smallint] NULL,
	[OtherAttachmentType] [nvarchar](200) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LvAttachment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvAttachmentCheckList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvAttachmentCheckList](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[DocumentAttach] [nvarchar](100) NOT NULL,
	[OrderId] [int] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LvAttachmentCheckList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LVCapacity]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LVCapacity](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Capacity] [int] NOT NULL,
	[TextValue] [varchar](10) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_LVCapacity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvContract]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvContract](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NULL,
	[LvContractTypeId] [tinyint] NOT NULL,
	[LvCustomerTypeId] [tinyint] NOT NULL,
	[ContractName] [nvarchar](100) NULL,
	[ContractCode] [varchar](25) NULL,
	[TelNo] [varchar](15) NULL,
	[FaxNo] [varchar](15) NULL,
	[POBoxNo] [varchar](15) NULL,
	[EmailId] [varchar](320) NULL,
	[ProjectName] [nvarchar](50) NULL,
	[ProjectLocation] [nvarchar](50) NULL,
	[ProjectDescription] [nvarchar](250) NULL,
	[BuyerProjectDescription] [nvarchar](250) NULL,
	[ProjectClassificationId] [int] NULL,
	[ProjectStartDate] [date] NULL,
	[ProjectEndDate] [date] NULL,
	[ProjectIsTentative] [bit] NULL,
	[MinAvgConsumption] [bigint] NULL,
	[MaxAvgConsumption] [bigint] NULL,
	[LPOwnerName] [nvarchar](50) NULL,
	[LPMainContName] [nvarchar](50) NULL,
	[AccountNumber] [nvarchar](25) NULL,
	[Location] [nvarchar](50) NULL,
	[NoOfTanksRequired] [tinyint] NULL,
	[NoOfApprovedTanks] [tinyint] NULL,
	[DistributionTypeId] [tinyint] NULL,
	[LeaseStartDate] [date] NULL,
	[LeaseEndDate] [date] NULL,
	[ServingSiteLocations] [nvarchar](250) NULL,
	[LesseeName] [nvarchar](100) NULL,
	[LesseeCapacity] [nvarchar](50) NULL,
	[CoverSheetRemarks] [nvarchar](250) NULL,
	[ContractRemarks] [nvarchar](250) NULL,
	[FolderPath] [nvarchar](100) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LvContract] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvContractStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvContractStatus](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LvContractId] [int] NOT NULL,
	[LvStageId] [smallint] NOT NULL,
	[LvSubStageId] [smallint] NOT NULL,
	[isEnabled] [bit] NOT NULL,
	[isRejected] [bit] NULL,
	[Remarks] [nvarchar](250) NULL,
	[RejectedBy] [int] NULL,
	[RejectedOn] [datetime] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LvContractStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvContractType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvContractType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[ContractType] [varchar](50) NOT NULL,
	[ContractTypeAr] [nvarchar](50) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LvContractType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvCustomerType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvCustomerType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[CustomerType] [varchar](100) NOT NULL,
	[CustomerTypeAr] [nvarchar](100) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LvCustomerType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvDocuments]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvDocuments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LvContractId] [int] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[LvAttachmentChecklistId] [int] NULL,
	[Remarks] [nvarchar](100) NULL,
	[isDeleted] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LvDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvDuration]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvDuration](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[DurationOfContract] [varchar](100) NOT NULL,
	[MonthlyRental] [varchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LvDuration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LVLeaseDocuments]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LVLeaseDocuments](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LvApprovedContractId] [int] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[Remarks] [nvarchar](100) NULL,
	[isDeleted] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LVLeaseDocuments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvStage]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvStage](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LvStage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[LvSubStage]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[LvSubStage](
	[Id] [smallint] NOT NULL,
	[LvStageId] [smallint] NOT NULL,
	[Description] [varchar](100) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LvSubStage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [lv].[Setting]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [lv].[Setting](
	[NumberValue] [tinyint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [notify].[EmailLog]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [notify].[EmailLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmailTo] [varchar](max) NULL,
	[EmailCC] [varchar](max) NULL,
	[EmailBCC] [varchar](max) NULL,
	[EmailFrom] [varchar](50) NULL,
	[EmailSubject] [nvarchar](1000) NULL,
	[EmailBody] [nvarchar](max) NULL,
	[EmailStatusId] [tinyint] NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_EmailLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [notify].[EmailNotification]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [notify].[EmailNotification](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EmailIds] [nvarchar](max) NOT NULL,
	[Subject] [nvarchar](250) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[SentOn] [datetime] NOT NULL,
 CONSTRAINT [PK_EmailNotification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [notify].[EmailStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [notify].[EmailStatus](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Status] [varchar](50) NULL,
	[Code] [char](1) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_EmailStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_EmailStatus] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [notify].[Event]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [notify].[Event](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ActionId] [int] NOT NULL,
	[EventName] [nvarchar](250) NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [notify].[EventNotification]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [notify].[EventNotification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[EventTypeId] [tinyint] NOT NULL,
	[Subject] [nvarchar](250) NULL,
	[Template] [nvarchar](max) NOT NULL,
	[NotifyEntityTypeId] [tinyint] NULL,
	[MailingListId] [tinyint] NULL,
	[MailingListCCId] [tinyint] NULL,
	[isSplit] [bit] NOT NULL,
	[Prefix] [varchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MailTo] [varchar](max) NULL,
	[MailCC] [varchar](max) NULL,
	[MailBcc] [varchar](max) NULL,
	[isEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_EventNotification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_EventNotification] UNIQUE NONCLUSTERED 
(
	[Prefix] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [notify].[EventType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [notify].[EventType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_EventType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [notify].[MailingList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [notify].[MailingList](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_MailingList] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [notify].[MailingListEmailIds]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [notify].[MailingListEmailIds](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MailingListId] [smallint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[EmailId] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_MailingListEmailIds] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [notify].[NotifyEntityType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [notify].[NotifyEntityType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_NotifyEntityType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [notify].[SMSNotification]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [notify].[SMSNotification](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](15) NOT NULL,
	[Message] [nvarchar](320) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[SentOn] [datetime] NULL,
 CONSTRAINT [PK_SMSNotification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[DET_Customer_StorageTanks]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[DET_Customer_StorageTanks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustId] [int] NOT NULL,
	[SerialNo] [varchar](10) NOT NULL,
	[ChasisNo] [varchar](10) NOT NULL,
	[Capacity] [int] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_DET_Customer_StorageTanks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[DET_CustSite_Products]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[DET_CustSite_Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustNo] [int] NOT NULL,
	[SiteNo] [int] NOT NULL,
	[ProductId] [smallint] NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DET_Site_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[DET_OrderItem_Config]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[DET_OrderItem_Config](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderItemId] [int] NOT NULL,
	[ConfigEventTypeId] [tinyint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_DET_OrderItem_Config] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[DET_OrderItems]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[DET_OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[OrderItemNo] [varchar](20) NOT NULL,
	[DeliveryNo] [varchar](20) NOT NULL,
	[Description] [varchar](200) NULL,
	[StorageTankId] [int] NULL,
	[ProductId] [tinyint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[BoxId] [smallint] NOT NULL,
	[OrderedFor] [datetime] NOT NULL,
	[Remarks] [nvarchar](200) NULL,
	[StatusId] [tinyint] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_DET_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[DET_PortalUser_Notification]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[DET_PortalUser_Notification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PortalUserId] [int] NOT NULL,
	[NotificationId] [int] NOT NULL,
	[hasAccepted] [bit] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DET_PortalUser_Notification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[DET_Section_Products]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[DET_Section_Products](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[SectionId] [tinyint] NOT NULL,
	[ProductId] [tinyint] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_DET_Section_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[DET_Shift_Actions]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[DET_Shift_Actions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShiftId] [int] NOT NULL,
	[MasterShiftId] [tinyint] NULL,
	[ActionId] [tinyint] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_DET_Shift_Actions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[DET_Shift_Box_Lomo]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[DET_Shift_Box_Lomo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShiftId] [tinyint] NOT NULL,
	[BoxId] [smallint] NOT NULL,
	[LomoBoxId] [smallint] NOT NULL,
	[LomoBoxName] [varchar](100) NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_DET_Shift_Box_Lomo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[DET_Shift_Vehicles]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[DET_Shift_Vehicles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionId] [tinyint] NOT NULL,
	[ShiftDetailId] [int] NOT NULL,
	[VehicleId] [int] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_DET_Shift_Vehicles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[DET_ShiftOrders]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[DET_ShiftOrders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionId] [tinyint] NOT NULL,
	[OrderItemId] [int] NOT NULL,
	[ShiftDetailId] [int] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_DET_ShiftOrders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[DET_Shifts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[DET_Shifts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionId] [tinyint] NOT NULL,
	[ShiftName] [nvarchar](100) NOT NULL,
	[ShiftDay] [datetime] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[StartedOn] [datetime] NULL,
	[EndedOn] [datetime] NULL,
	[ShiftStatusId] [tinyint] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_DET_Shifts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[DET_SiteProducts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[DET_SiteProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[ProductId] [tinyint] NOT NULL,
	[LoadCapacity] [int] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DET_SiteProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[ERP_CustSites]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[ERP_CustSites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustId] [int] NOT NULL,
	[CustomerName] [nvarchar](250) NOT NULL,
	[SiteNum] [int] NOT NULL,
	[SiteName] [nvarchar](250) NOT NULL,
	[MatchCode] [varchar](21) NULL,
	[CUST_NUMBER] [int] NOT NULL,
	[SITE_NUMBER] [int] NOT NULL,
	[Area] [varchar](100) NOT NULL,
	[Street] [int] NULL,
	[SectionId] [int] NOT NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_ERP_CustSites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[LicenseType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[LicenseType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LicenseType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_Action]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_Action](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MST_Action] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_Box]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_Box](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[SectionId] [tinyint] NOT NULL,
	[BoxName] [varchar](100) NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MST_Box] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_ConfigType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_ConfigType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[ConfigTypeName] [varchar](20) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MST_ConfigType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_DMS_Order]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_DMS_Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderItemNo] [varchar](20) NOT NULL,
	[SiteId] [int] NOT NULL,
	[Description] [varchar](200) NULL,
	[StorageTankId] [int] NULL,
	[ProductId] [tinyint] NULL,
	[Quantity] [int] NOT NULL,
	[BoxId] [smallint] NOT NULL,
	[LomoBoxId] [smallint] NULL,
	[LomoOrderId] [int] NULL,
	[LomoOrderNum] [varchar](11) NULL,
	[OrderedFor] [datetime] NOT NULL,
	[ShiftId] [int] NULL,
	[Remarks] [nvarchar](200) NULL,
	[OrderTypeId] [tinyint] NULL,
	[StatusId] [tinyint] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MST_DMS_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_ElapsedTime]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_ElapsedTime](
	[ElapsedTime] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_Orders]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionId] [tinyint] NOT NULL,
	[CustomerRefNo] [varchar](20) NOT NULL,
	[OrderNo] [varchar](20) NOT NULL,
	[TerminalId] [tinyint] NOT NULL,
	[BoxId] [smallint] NOT NULL,
	[CustId] [int] NOT NULL,
	[MatchCode] [varchar](21) NOT NULL,
	[OrderedFor] [datetime] NULL,
	[Remarks] [nvarchar](200) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MST_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_OrderStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_OrderStatus](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [varchar](20) NOT NULL,
	[Code] [char](2) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MST_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_OrderType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_OrderType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MST_OrderType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_Portal_Notification]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_Portal_Notification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[SortOrder] [smallint] NOT NULL,
	[Caption] [nvarchar](40) NULL,
	[MST_Portal_NotificationCategoryId] [tinyint] NULL,
	[NotificationDate] [date] NULL,
	[Remarks] [nvarchar](500) NULL,
	[MarkAsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_MST_Portal_Notification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_Portal_NotificationCategory]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_Portal_NotificationCategory](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_MST_NotificationCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_Products]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_Products](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[ProductDescription] [nvarchar](200) NOT NULL,
	[LomoProductId] [tinyint] NULL,
	[ERPProductId] [int] NOT NULL,
	[ERPName] [nvarchar](50) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MST_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_Section]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_Section](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[SectionName] [varchar](100) NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MST_Section] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_SettingsQuantity]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_SettingsQuantity](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Value] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Iterations] [tinyint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_MST_SettingsQuantity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_Shift]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_Shift](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[SectionId] [tinyint] NOT NULL,
	[ShiftName] [varchar](50) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[SortOrder] [tinyint] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MST_Shift] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_ShiftStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_ShiftStatus](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[ShiftStatus] [varchar](20) NOT NULL,
	[Code] [char](1) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MST_ShiftStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[MST_Terminal]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[MST_Terminal](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[TerminalName] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_MST_Terminal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[OrderPlanning]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[OrderPlanning](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[ProductId] [tinyint] NOT NULL,
	[ShiftId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[NoOfLoad] [tinyint] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_OrderPlanning] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[PSOrderMap]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[PSOrderMap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [tinyint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CUST_NUMBER] [int] NOT NULL,
	[SITE_NUMBER] [int] NOT NULL,
	[ShiftNo] [tinyint] NOT NULL,
	[ShiftDate] [date] NOT NULL,
	[ApprovedBy] [varchar](100) NOT NULL,
	[ApprovedOn] [datetime] NOT NULL,
	[OrderTaskId] [int] NOT NULL,
	[IsSuccessfull] [bit] NOT NULL,
	[LomoOrderId] [int] NULL,
	[OrderNo] [varchar](11) NULL,
	[Result] [varchar](100) NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PSOrderMap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[STG_Batch]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[STG_Batch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsExported] [bit] NOT NULL,
	[ExportStatusId] [tinyint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ExportedOn] [datetime] NULL,
	[ExportedBy] [int] NULL,
 CONSTRAINT [PK_STG_Batch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ordering].[STG_Orders]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[STG_Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[MatchCode] [varchar](50) NULL,
	[DeliveryDate] [datetime] NULL,
	[Product] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[CustomerRef] [varchar](50) NULL,
	[Remark] [text] NULL,
	[STG_BatchId] [int] NOT NULL,
	[BoxId] [smallint] NOT NULL,
	[SiteNum] [int] NULL,
	[CustNum] [int] NULL,
	[LomoDate] [datetime] NULL,
	[LomoProductId] [int] NULL,
	[LomoQuantity] [int] NULL,
	[LomoOrderId] [int] NULL,
	[LomoOrderNum] [varchar](11) NULL,
	[LomoRemarks] [nvarchar](200) NULL,
	[ExportStatusId] [tinyint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
 CONSTRAINT [PK_STG_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [ordering].[STG_Site_Productz]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ordering].[STG_Site_Productz](
	[CustNo] [int] NOT NULL,
	[SiteNo] [int] NOT NULL,
	[ProductId] [tinyint] NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[CompartmentSizes]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[CompartmentSizes](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[CompSize] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CompartmentSizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[Orderlog]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[Orderlog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[ProductId] [tinyint] NOT NULL,
	[OrderedQty] [int] NOT NULL,
	[DeliveredQty] [int] NULL,
	[RequestedOn] [datetime] NULL,
	[ShiftId] [int] NULL,
	[TankId] [int] NULL,
	[LPO] [nvarchar](100) NULL,
	[OrderNum] [numeric](12, 0) NULL,
	[DeliveryNum] [numeric](12, 0) NULL,
	[StatusId] [tinyint] NULL,
	[DeliveryStatus] [tinyint] NULL,
	[OrderSourceId] [tinyint] NULL,
	[isDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[Action] [tinyint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[OrderMap]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[OrderMap](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NULL,
	[LomoOrderId] [bigint] NULL,
	[LomoOrderNumber] [varchar](10) NULL,
	[LomoResult] [varchar](100) NULL,
	[OrderSourceId] [tinyint] NOT NULL,
	[IsDone] [bit] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreateOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LOMO_OrderMap] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[Orders]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[ProductId] [tinyint] NOT NULL,
	[OrderedQty] [int] NOT NULL,
	[DeliveredQty] [int] NULL,
	[RequestedOn] [datetime] NULL,
	[ShiftId] [int] NULL,
	[TankId] [int] NULL,
	[LPO] [nvarchar](100) NULL,
	[OrderNum] [numeric](12, 0) NULL,
	[DeliveryNum] [numeric](12, 0) NULL,
	[StatusId] [tinyint] NULL,
	[DeliveryStatus] [tinyint] NULL,
	[OrderSourceId] [tinyint] NULL,
	[isDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
 CONSTRAINT [PK_LOMO_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[OrderSource]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[OrderSource](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[OrderSource] [varchar](50) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_OrderSource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[OrderStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[OrderStatus](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [varchar](50) NOT NULL,
	[ShortCode] [char](2) NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[OrderTasks]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[OrderTasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateParam] [date] NULL,
	[ShiftNo] [int] NOT NULL,
	[TaskCodeId] [tinyint] NOT NULL,
	[TaskCount] [smallint] NOT NULL,
	[TaskCompletedCount] [smallint] NULL,
	[IsDone] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_OrderTasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [DateParam] UNIQUE NONCLUSTERED 
(
	[DateParam] ASC,
	[ShiftNo] ASC,
	[TaskCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[PortalLogType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[PortalLogType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[LogType] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PortalLogType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[PortalUser_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[PortalUser_Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PortalUserId] [int] NOT NULL,
	[IpAddress] [varchar](15) NOT NULL,
	[LogType] [tinyint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PortalUser_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[PortalUserEmails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[PortalUserEmails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PortalUserId] [int] NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PortalUserEmails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [orders].[PortalUsers]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[PortalUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustNum] [int] NULL,
	[FullName] [nvarchar](320) NOT NULL,
	[EmailId] [varchar](320) NOT NULL,
	[Password] [nvarchar](320) NULL,
	[MobileNum] [varchar](15) NOT NULL,
	[LandlineNum] [varchar](15) NULL,
	[Attempts] [tinyint] NULL,
	[ChangePassword] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[isArchived] [bit] NOT NULL,
	[isLocked] [bit] NOT NULL,
	[hasAccepted] [bit] NOT NULL,
	[hasAccessToAllSites] [bit] NOT NULL,
	[IpAddress] [varchar](15) NULL,
	[Supply] [bit] NULL,
	[Bulk] [bit] NULL,
	[LpgBulk] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PortalUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[PortalUserSites]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[PortalUserSites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PortalUserId] [int] NOT NULL,
	[SiteId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PortalUserSites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[Productz]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[Productz](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name_En] [nvarchar](50) NULL,
	[Name_Ar] [nvarchar](50) NULL,
	[LongName_En] [nvarchar](100) NULL,
	[LongName_Ar] [nvarchar](100) NULL,
	[Unit] [nvarchar](10) NULL,
	[Density] [decimal](18, 15) NULL,
	[Code] [nvarchar](3) NULL,
	[SortOrder] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[MarkAsDelete] [bit] NOT NULL,
	[LomoProductId] [tinyint] NULL,
 CONSTRAINT [PK_Product_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[PSPlaningOnline]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[PSPlaningOnline](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PSPlaningId] [bigint] NOT NULL,
	[Noloads] [int] NOT NULL,
	[IsApproved] [bit] NOT NULL,
	[ModifiedOn_Portal] [datetime] NOT NULL,
	[ModifiedBy_Portal] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_PSPlaningOnline] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[PSPlanning]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[PSPlanning](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SITEID] [int] NULL,
	[ProductId] [tinyint] NULL,
	[Quantity] [int] NULL,
	[No_ofload] [tinyint] NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Trip_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[Shift]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[Shift](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShiftDate] [date] NOT NULL,
	[Shift#] [tinyint] NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[Remarks] [text] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_ShiftOperatin] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [orders].[ShiftMaster]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[ShiftMaster](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Shift#] [tinyint] NOT NULL,
	[Name_En] [nvarchar](50) NULL,
	[Shift_Start] [datetime] NULL,
	[Shift_End] [datetime] NULL,
	[SortOrder] [tinyint] NULL,
	[StartOffset] [tinyint] NULL,
	[EndOffset] [tinyint] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_shift] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[ShiftSetting]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[ShiftSetting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Shift#] [int] NOT NULL,
	[minutes] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_ShiftSetting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[Status]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[Status](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name_En] [nvarchar](20) NOT NULL,
	[Name_Ar] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[MarkAsDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Status_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[STG_Site_Productz]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[STG_Site_Productz](
	[CustNo] [int] NOT NULL,
	[SiteNo] [int] NOT NULL,
	[ProductId] [smallint] NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [orders].[TaskCode]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [orders].[TaskCode](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Code] [char](4) NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreaatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_TaskCode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [report].[Reports]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [report].[Reports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[SsrsName] [varchar](100) NULL,
	[Description] [varchar](max) NULL,
	[SortOrder] [tinyint] NOT NULL,
	[Path] [varchar](200) NULL,
	[fontawesome] [varchar](50) NOT NULL,
	[ForeGroundColor] [nvarchar](10) NULL,
	[BackGroundColor] [nvarchar](10) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[MarkAsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [staging].[CustomerERPs]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [staging].[CustomerERPs](
	[ImportedOn] [datetime] NOT NULL,
	[CUSTOMER_NUMBER] [nvarchar](30) NOT NULL,
	[SITE_NUMBER] [nvarchar](30) NOT NULL,
	[CUSTOMER_NAME] [nvarchar](360) NOT NULL,
	[CUST_STATUS] [nvarchar](1) NOT NULL,
	[SITE_STATUS] [nvarchar](1) NOT NULL,
	[CUST_ADDR] [nvarchar](4000) NULL,
	[COUNTRY] [nvarchar](60) NOT NULL,
	[SITE_USE_CODE] [nvarchar](30) NOT NULL,
	[LOCATION] [nvarchar](40) NOT NULL,
	[SITE_USE_STATUS] [nvarchar](1) NULL,
	[PRIMARY_FLAG] [nvarchar](1) NULL,
	[CategoryID] [smallint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [staging].[SitesERPs]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [staging].[SitesERPs](
	[CustomerID] [int] NOT NULL,
	[ImportedOn] [datetime] NOT NULL,
	[CUSTOMER_NUMBER] [nvarchar](30) NOT NULL,
	[SITE_NUMBER] [nvarchar](30) NOT NULL,
	[CUSTOMER_NAME] [nvarchar](360) NOT NULL,
	[CUST_STATUS] [nvarchar](1) NOT NULL,
	[SITE_STATUS] [nvarchar](1) NOT NULL,
	[CUST_ADDR] [nvarchar](4000) NULL,
	[COUNTRY] [nvarchar](60) NOT NULL,
	[SITE_USE_CODE] [nvarchar](30) NOT NULL,
	[LOCATION] [nvarchar](40) NOT NULL,
	[SITE_USE_STATUS] [nvarchar](1) NULL,
	[PRIMARY_FLAG] [nvarchar](1) NULL,
	[CATEGORY_ID] [smallint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [sticker].[StickerInventory]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sticker].[StickerInventory](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PurchaseOrder] [nvarchar](50) NULL,
	[MaterialRequisition] [nvarchar](50) NULL,
	[DateOfReceiving] [datetime] NOT NULL,
	[SupplierId] [smallint] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StickerInventory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [sticker].[StickerInventoryDetails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sticker].[StickerInventoryDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StickerInventoryId] [bigint] NOT NULL,
	[StickerTypeId] [tinyint] NOT NULL,
	[Rate] [decimal](8, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[TotalCost] [decimal](10, 2) NOT NULL,
	[Remarks] [nvarchar](200) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StickerInventoryDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [sticker].[StickerResources]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sticker].[StickerResources](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StickerInventoryId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StickerResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [sticker].[StickerSupplier]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sticker].[StickerSupplier](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](100) NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StickerSupplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [sticker].[StickerType]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sticker].[StickerType](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[StickerType] [nvarchar](100) NOT NULL,
	[OrderId] [tinyint] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Sticker] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [supply].[DET_PetrolStations]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supply].[DET_PetrolStations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[PSLocation] [nvarchar](50) NULL,
	[OwnershipId] [smallint] NULL,
	[TypeId] [smallint] NULL,
	[OperationalStatusId] [smallint] NULL,
	[StatusId] [smallint] NULL,
	[PoBox] [nvarchar](10) NULL,
	[PIN] [nvarchar](10) NULL,
	[KarhamaNo] [varchar](20) NULL,
	[StreetName] [nvarchar](100) NULL,
	[Area] [nvarchar](100) NULL,
	[ZoneCode] [nvarchar](10) NULL,
	[Lat] [float] NULL,
	[Long] [float] NULL,
	[Distance] [float] NULL,
	[DistanceCategoryId] [smallint] NULL,
	[FolderPath] [nvarchar](100) NULL,
	[RequireGatePass] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DET_PetrolStations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [supply].[DET_Site_AvailableServices]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supply].[DET_Site_AvailableServices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[AvailableServiceId] [smallint] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DET_Site_AvailableServices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [supply].[DET_Site_Contacts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supply].[DET_Site_Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[PositionId] [smallint] NULL,
	[Mobile1CC] [varchar](5) NULL,
	[Mobile1] [varchar](10) NULL,
	[Mobile2CC] [varchar](5) NULL,
	[Mobile2] [varchar](10) NULL,
	[Telephone1CC] [varchar](5) NULL,
	[Telephone1] [varchar](10) NULL,
	[Telephone2CC] [varchar](5) NULL,
	[Telephone2] [varchar](10) NULL,
	[EmailId] [varchar](320) NULL,
	[isDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DET_Site_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [supply].[DET_Site_Depot_Durations]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supply].[DET_Site_Depot_Durations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[DepotId] [tinyint] NOT NULL,
	[ShiftId] [tinyint] NOT NULL,
	[ProductId] [smallint] NOT NULL,
	[TripDuration] [time](7) NULL,
	[isDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DET_Site_Depot_Shifts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [supply].[DET_Site_GatePassRequirements]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supply].[DET_Site_GatePassRequirements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[GPRId] [smallint] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DET_Site_GatePassRequirements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [supply].[DET_Site_Products]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supply].[DET_Site_Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[ProductId] [smallint] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DET_Site_Products_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [supply].[DET_Site_Resources]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supply].[DET_Site_Resources](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[Remarks] [nvarchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DET_Site_Resources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [supply].[DET_Site_Shifts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supply].[DET_Site_Shifts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[ShiftName] [nvarchar](100) NOT NULL,
	[ShiftStartTime] [time](7) NOT NULL,
	[ShiftEndTime] [time](7) NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[Modifiedby] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DET_Site_Shifts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [supply].[DET_Site_Tanks]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supply].[DET_Site_Tanks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SiteId] [int] NOT NULL,
	[ProductId] [smallint] NULL,
	[Capacity] [varchar](10) NULL,
	[XCoordinates] [numeric](18, 6) NULL,
	[YCoordinates] [numeric](18, 6) NULL,
	[isActive] [bit] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DET_Site_Tanks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tank].[JobCardResources]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tank].[JobCardResources](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobCardId] [bigint] NOT NULL,
	[FileName] [nvarchar](100) NOT NULL,
	[FileExtension] [varchar](5) NULL,
	[ResourceId] [uniqueidentifier] NOT NULL,
	[isDeleted] [bit] NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_JobCardResources] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tank].[StorageTank]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tank].[StorageTank](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TankNumber] [nvarchar](50) NULL,
	[ChasisNumber] [nvarchar](50) NOT NULL,
	[PurchaseOrder] [nvarchar](50) NOT NULL,
	[MaterialRequisition] [nvarchar](50) NOT NULL,
	[SupplierId] [tinyint] NOT NULL,
	[SupplierDelivery] [nvarchar](50) NOT NULL,
	[SupplierInvoice] [nvarchar](50) NOT NULL,
	[DateOfReceiving] [datetime] NOT NULL,
	[Certificate] [nvarchar](50) NOT NULL,
	[WOQODTankEquipmentNumber] [nvarchar](50) NULL,
	[ParkingSlot] [nvarchar](10) NULL,
	[JobCardId] [bigint] NULL,
	[CapacityId] [tinyint] NOT NULL,
	[TankStrucTypeId] [tinyint] NULL,
	[TankWallTypeId] [tinyint] NOT NULL,
	[StatusId] [tinyint] NOT NULL,
	[isAvailable] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StorageTank] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tank].[StorageTankCapacity]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tank].[StorageTankCapacity](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Capacity] [bigint] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StorageTankCapacity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tank].[StorageTankContractor]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tank].[StorageTankContractor](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Contractor] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StorageTankContractor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tank].[StorageTankJobCard]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tank].[StorageTankJobCard](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobCard] [nvarchar](20) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[Vehicle] [nvarchar](7) NOT NULL,
	[ContractorId] [tinyint] NOT NULL,
	[DriverName] [nvarchar](100) NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StorageTankJobCard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tank].[StorageTankStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tank].[StorageTankStatus](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StorageTankStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tank].[StorageTankStickers]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tank].[StorageTankStickers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StorageTankId] [bigint] NOT NULL,
	[StickerTypeId] [tinyint] NOT NULL,
	[Quantity] [tinyint] NOT NULL,
	[Remarks] [nvarchar](100) NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StorageTankStickers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tank].[StorageTankStructure]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tank].[StorageTankStructure](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[StructureType] [nvarchar](100) NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StorageTankStructure] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tank].[StorageTankSupplier]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tank].[StorageTankSupplier](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[SuplierName] [nvarchar](250) NOT NULL,
	[Alias] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StorageTankSupplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [tank].[StorageTankWall]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tank].[StorageTankWall](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[PhysicalStructure] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StorageTankPhyStruc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[getNewID]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[getNewID] as select newid() as new_id 
GO
/****** Object:  View [dbo].[View_ApplicationForApproval]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ApplicationForApproval]
AS
SELECT        a.Id, a.CustomerName, a.Code, b.ProjectName, b.ProjectLocation
FROM            contract.Site AS a INNER JOIN
                         contract.SiteProjectDetails AS b ON a.Id = b.SiteId AND a.ContractorTypeId = b.ContractorTypeId

GO
/****** Object:  View [dbo].[View_Customers]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Customers]
AS
SELECT        A.ID, A.ImportedOn, A.CUST_NUMBER, A.SITE_NUMBER, A.NAME, CASE WHEN ([CUST_STATUS] = 'A' AND [SITE_STATUS] = 'A' AND [SITE_USE_STATUS] = 'A') THEN 'Active' ELSE 'Inactive' END AS CStatus, 
                         A.ADDRESS, A.COUNTRY, A.LOCATION, B.Name AS Category
FROM            dbo.CustomerERP AS A LEFT OUTER JOIN
                         dbo.CustomerCategoryERP AS B ON A.CategoryID = B.ID

GO
/****** Object:  View [dbo].[View_MyTasks]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[View_MyTasks]
AS
	Select
		a.Id, c.Id as SiteId, a.VisitDate, c.CustomerName, c.Code, d.ProjectName, d.ProjectLocation, a.InchargeId, 1 as IsInitial
	From
		[contract].[ScheduleList] a
	Inner Join
		[contract].SiteStatus b
	On
		a.ApplicationId = b.SiteId and b.StageId = 2 and b.SubStageId = 5 and b.isEnabled = 1
	Inner Join
		[contract].[Site] c
	On
		a.ApplicationId = c.Id
	Inner Join
		[contract].SiteProjectDetails d
	On
		a.ApplicationId = d.SiteId and c.ContractorTypeId = d.ContractorTypeId

	union all

	Select
		a.Id, a.SiteId, a.VisitDate, a.CustomerName, a.Code, a.ProjectName, a.ProjectLocation, a.InchargeId, a.IsInitial
	From
	(

		Select
			a.Id, c.Id as SiteId, a.VisitDate, c.CustomerName, c.Code, d.ProjectName, d.ProjectLocation, a.InchargeId, 0 as IsInitial
			, ROW_NUMBER() over (partition by c.Id order by a.CreatedOn desc) as Rank
		From
			[contract].[ScheduleList] a
		Inner Join
			[contract].SiteStatus b
		On
			a.ApplicationId = b.SiteId and b.StageId = 5 and b.SubStageId = 17 and b.isEnabled = 1
		Inner Join
			[contract].[Site] c
		On
			a.ApplicationId = c.Id
		Inner Join
			[contract].SiteProjectDetails d
		On
			a.ApplicationId = d.SiteId and c.ContractorTypeId = d.ContractorTypeId
	) a		
	Where
		a.Rank = 1


GO
/****** Object:  View [dbo].[View_MyTasks_Completed]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[View_MyTasks_Completed]
AS
	Select
		a.Id, c.Id as SiteId, a.VisitDate, c.CustomerName, c.Code, d.ProjectName, d.ProjectLocation, a.InchargeId, 1 as IsInitial
	From
		[contract].[ScheduleList] a
	Inner Join
		[contract].SiteStatus b
	On
		a.ApplicationId = b.SiteId and b.StageId = 2 and b.SubStageId = 6 and b.isEnabled = 1
	Inner Join
		[contract].[Site] c
	On
		a.ApplicationId = c.Id
	Inner Join
		[contract].SiteProjectDetails d
	On
		a.ApplicationId = d.SiteId and c.ContractorTypeId = d.ContractorTypeId

	union all

	Select
		a.Id, a.SiteId, a.VisitDate, a.CustomerName, a.Code, a.ProjectName, a.ProjectLocation, a.InchargeId, a.IsInitial
	From
	(

		Select
			a.Id, c.Id as SiteId, a.VisitDate, c.CustomerName, c.Code, d.ProjectName, d.ProjectLocation, a.InchargeId, 0 as IsInitial
			, ROW_NUMBER() over (partition by c.Id order by a.CreatedOn desc) as Rank
		From
			[contract].[ScheduleList] a
		Inner Join
			[contract].SiteStatus b
		On
			a.ApplicationId = b.SiteId and b.StageId = 5 and b.SubStageId = 18 and b.isEnabled = 1
		Inner Join
			[contract].[Site] c
		On
			a.ApplicationId = c.Id
		Inner Join
			[contract].SiteProjectDetails d
		On
			a.ApplicationId = d.SiteId and c.ContractorTypeId = d.ContractorTypeId
	) a		
	Where
		a.Rank = 1






GO
/****** Object:  View [dbo].[View_ReviewSiteVisitList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[View_ReviewSiteVisitList]
AS

	SELECT
		a.Id, a.CustomerName, a.Code, a.CreatedOn, b.ProjectName, b.ProjectLocation, d.VisitDate, d.Remarks, d.ApplicationId, d.InchargeId, e.FullName, 1 as IsInitial
	FROM
		[contract].[Site] a
	Inner Join
		[contract].[ScheduleList] d
	On
		a.Id = d.ApplicationId
	Inner Join
		[contract].SiteStatus c
	On
		a.Id = c.SiteId and c.StageId = 2 and c.SubStageId = 6 and c.isEnabled = 1
	Left Join
		[contract].SiteProjectDetails b
	ON
		a.Id = b.SiteId and a.ContractorTypeId = b.ContractorTypeId
	Left Join
		dbo.AspNetUsers e
	On
		d.InchargeId = e.UId

	union all

	Select
		a.Id, a.CustomerName, a.Code, a.CreatedOn, a.ProjectName, a.ProjectLocation, a.VisitDate, a.Remarks, a.ApplicationId, a.InchargeId, a.FullName, a.IsInitial
	From
	(
		SELECT
			a.Id, a.CustomerName, a.Code, a.CreatedOn, b.ProjectName, b.ProjectLocation, d.VisitDate, d.Remarks, d.ApplicationId, d.InchargeId, e.FullName, 0 as IsInitial
			, ROW_NUMBER() over (partition by c.Id order by a.CreatedOn desc) as Rank
		FROM
			[contract].[Site] a
		Inner Join
			[contract].[ScheduleList] d
		On
			a.Id = d.ApplicationId
		Inner Join
			[contract].SiteStatus c
		On
			a.Id = c.SiteId and c.StageId = 5 and c.SubStageId = 18 and c.isEnabled = 1
		Left Join
			[contract].SiteProjectDetails b
		ON
			a.Id = b.SiteId and a.ContractorTypeId = b.ContractorTypeId
		Left Join
			dbo.AspNetUsers e
		On
			d.InchargeId = e.UId
	) a
	Where
		a.Rank = 1





GO
/****** Object:  View [dbo].[View_ScheduledList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[View_ScheduledList]
AS
	SELECT
		d.Id, a.CustomerName, a.Code, a.CreatedOn, b.ProjectName, 
        b.ProjectLocation, d.VisitDate, d.Remarks, d.ApplicationId, d.InchargeId, 
        e.FullName, 1 as IsInitial
	FROM
		[contract].ScheduleList d
	INNER JOIN                       
		[contract].Site a  
	ON
		d.ApplicationId = a.Id 
	Inner Join
		[contract].SiteStatus c
	On
		a.Id = c.SiteId and c.StageId = 2 and c.SubStageId = 5 and c.isEnabled = 1
	LEFT JOIN
		contract.SiteProjectDetails b
	ON
		a.Id = b.SiteId AND a.ContractorTypeId = b.ContractorTypeId
	INNER JOIN
        dbo.AspNetUsers e
	ON
		d.InchargeId = e.UId

	union all

	Select
		a.Id, a.CustomerName, a.Code, a.CreatedOn, a.ProjectName
		, a.ProjectLocation, a.VisitDate, a.Remarks, a.ApplicationId, a.InchargeId
		, a.FullName, 0 as IsInitial 
	From
	(
		SELECT
			d.Id, a.CustomerName, a.Code, a.CreatedOn, b.ProjectName,
			b.ProjectLocation, d.VisitDate, d.Remarks, d.ApplicationId, d.InchargeId, 
			e.FullName, row_number() over( partition by d.ApplicationId order by d.VisitDate desc) as OrderId
		FROM
			[contract].ScheduleList d
		INNER JOIN                       
			[contract].Site a  
		ON
			d.ApplicationId = a.Id 
		Inner Join
			[contract].SiteStatus c
		On
			a.Id = c.SiteId and c.StageId = 5 and c.SubStageId = 17 and c.isEnabled = 1
		LEFT JOIN
			[contract].SiteProjectDetails b
		ON
			a.Id = b.SiteId AND a.ContractorTypeId = b.ContractorTypeId
		INNER JOIN
			dbo.AspNetUsers e
		ON
			d.InchargeId = e.UId
	) a
	Where
		a.OrderId = 1



GO
/****** Object:  View [dbo].[View_Sites]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Sites]
AS
SELECT        A.ID, A.ImportedOn, A.CUST_NUMBER, A.SITE_NUMBER, A.NAME, CASE WHEN ([CUST_STATUS] = 'A' AND [SITE_STATUS] = 'A' AND [SITE_USE_STATUS] = 'A') THEN 'Active' ELSE 'Inactive' END AS CStatus, 
                         A.ADDRESS, A.COUNTRY, A.LOCATION, B.Name AS Category, A.CustomerID
FROM            dbo.SitesERP AS A LEFT OUTER JOIN
                         dbo.CustomerCategoryERP AS B ON A.CategoryID = B.ID

GO
/****** Object:  View [dbo].[View_StorageTankDetailed]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_StorageTankDetailed]
AS
SELECT        dbo.Tank.ID, dbo.Tank.TankNo, dbo.Tank.ChassisNo, dbo.Tank.Capacity, dbo.TankTypes.Name AS Type, dbo.TankStatus.Name AS Status, dbo.TankOpStatus.Name AS OpStatus, 
                         dbo.TankFinancials.DateOfManufacture, dbo.TankFinancials.DateReceived, dbo.TankFinancials.ReceivedPO, dbo.TankFinancials.DeliveryNo, dbo.TankFinancials.InvoiceNo, dbo.TankFinancials.Price, 
                         dbo.TankSupplier.Name AS Supplier
FROM            dbo.Tank INNER JOIN
                         dbo.TankFinancials ON dbo.Tank.ID = dbo.TankFinancials.TankID INNER JOIN
                         dbo.TankOpStatus ON dbo.Tank.OpStatusID = dbo.TankOpStatus.ID INNER JOIN
                         dbo.TankStatus ON dbo.Tank.StatusID = dbo.TankStatus.ID INNER JOIN
                         dbo.TankTypes ON dbo.Tank.TypeID = dbo.TankTypes.ID INNER JOIN
                         dbo.TankSupplier ON dbo.TankFinancials.SupplierID = dbo.TankSupplier.ID

GO
/****** Object:  View [dbo].[View_StorageTanks]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_StorageTanks]
AS
SELECT        dbo.Tank.ID, dbo.Tank.TankNo, dbo.Tank.ChassisNo, dbo.Tank.Capacity, dbo.TankTypes.Name AS Type, dbo.TankStatus.Name AS Status, dbo.TankOpStatus.Name AS OpStatus
FROM            dbo.Tank INNER JOIN
                         dbo.TankOpStatus ON dbo.Tank.OpStatusID = dbo.TankOpStatus.ID INNER JOIN
                         dbo.TankStatus ON dbo.Tank.StatusID = dbo.TankStatus.ID INNER JOIN
                         dbo.TankTypes ON dbo.Tank.TypeID = dbo.TankTypes.ID

GO
/****** Object:  View [dbo].[View_UnScheduledSiteVisits]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[View_UnScheduledSiteVisits]
AS

	--Declare @SiteInspectionStageId tinyint = 2, @ScheduleSubStageId tinyint = 4
	--, @FinalInspectionStageId tinyint = 5, @FinalInspectionSchedulingSubStageId tinyint = 16

	SELECT
		a.Id, a.CustomerName, a.Code, a.CreatedOn, b.ProjectName, b.ProjectLocation, 1 as IsInitial
	FROM
		[contract].Site a
	Inner Join
		[contract].SiteStatus c
	On
		a.Id = c.SiteId and c.StageId = 2 and c.SubStageId = 4 and c.isEnabled = 1
	LEFT JOIN
		[contract].SiteProjectDetails b
	ON
		a.Id = b.SiteId AND a.ContractorTypeId = b.ContractorTypeId
	Left Join
		[Contract].SiteStatus d
	On
		a.Id = d.SiteId and d.StageId = 1 and d.isRejected = 1 and d.isEnabled = 1
	Where
		d.Id is null

	union all

	SELECT
		a.Id, a.CustomerName, a.Code, a.CreatedOn, b.ProjectName, b.ProjectLocation, 0 as IsInitial
	FROM
		[contract].Site a
	Inner Join
		[contract].SiteStatus c
	On
		a.Id = c.SiteId and c.StageId = 5 and c.SubStageId = 16 and c.isEnabled = 1
	LEFT JOIN
		[contract].SiteProjectDetails b
	ON
		a.Id = b.SiteId AND a.ContractorTypeId = b.ContractorTypeId






GO
/****** Object:  View [log].[ActivityLog_Computed]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE View [log].[ActivityLog_Computed] 
As

Select
	a.Id, a.SiteId, a.ActivityTypeId, a.CreatedBy, a.CreatedOn
	, Sum(Case When a.VersionId is null then 0 else 1 end) as VersionCount
	, Sum(Case When a.VersionId is null then 0 else 1 end) + 1 as VersionCount_Computed
	, b.[Type] as ActivityType, c.FullName
From
(
	Select
		a.Id, a.SiteId, a.ActivityTypeId, a.CreatedBy, a.CreatedOn, b.Id as VersionId
	From
		[log].ActivityLog a
	Left Join
		[log].ActivityLog b
	On
		a.SiteId = b.SiteId and a.ActivityTypeId = b.ActivityTypeId and a.Id > b.Id
	
) a
Left Join
	[log].ActivityType b
On
	a.ActivityTypeId = b.Id
Left Join
	dbo.AspNetUsers c
On
	b.CreatedBy = c.UId
Group By
	a.Id, a.SiteId, a.ActivityTypeId, a.CreatedBy, a.CreatedOn, b.[Type], c.FullName

	

	




GO
/****** Object:  View [lpgordering].[VW_BulkLPG_Site_Product_UnitPrice]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE View [lpgordering].[VW_BulkLPG_Site_Product_UnitPrice]
As
(

	Select
		d.Id as SiteId, a.LomoProductId, a.Id as ProductId, a.ERPProductId, isnull(c.Unit_Price, 0) as UnitPrice--, c.Unit_Price
	From
		SitesLPG d
	Inner Join
		[lpgordering].MST_LPG_Products a
	On
		a.LomoProductId = 1 -- BulkLPG
	Left Join
		[10.0.68.27].[WOQ_Credit_Limit].[dbo].[WOQOD_CUSTOMER_PRICES_CUST_V] c
	On
		a.ERPProductId = c.Product_Id and c.Customer_Number = d.CUSTOMER_NUMBER and c.Site_Number = d.SITE_NUMBER
	--Where
	--	a.SiteId = @SiteId
)

--GO





GO
/****** Object:  View [lpgordering].[VW_LPGPortal_Cust_Sites]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE View [lpgordering].[VW_LPGPortal_Cust_Sites]
As
(
	Select
		a.Id as PortalUserId, a.EmailId, a.FullName, d.CUST_NUMBER, c.SITE_NUMBER
		, d.ID as CustId, d.NAME as CustomerName, c.ID as SiteId, c.CUSTOMER_NAME as SiteName
		, c.LOCATION as SiteLocation
	From
		[orders].[PortalUsers] a
	Inner Join
		[lpgordering].PortalUserCustomer e
	On
		a.Id = e.PortalUserId
	Inner Join
		CustomerERP d
	On
		e.CustId = d.ID
	Left Join
		[lpgordering].[PortalUserLPGSites] b
	On
		e.hasAccessToAll = 0 and e.Id = b.PortalCustId and b.isActive = 1
	Left Join
		dbo.SitesLPG c
	On
		(e.hasAccessToAll = 1 and c.CustomerID = d.ID) or (e.hasAccessToAll = 0 and b.SiteId = c.ID)
	Where
		a.isActive = 1 and d.ID is not null and c.ID is not null
)


GO
/****** Object:  View [ordering].[VW_All_Orders]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [ordering].[VW_All_Orders]
As
(
	Select
		a.Id as OrderItemId, a.OrderId, a.ProductId, c.ProductName, a.Quantity, a.Remarks, d.Area, b.CustomerRefNo, b.OrderNo
		, a.OrderItemNo, a.OrderedFor, b.MatchCode, d.CustomerName, d.SiteName, a.BoxId, a.StatusId, f.OrderStatus, a.DeliveryNo
		, a.CreatedOn, a.CreatedBy, a.ModifiedOn, a.ModifiedBy, b.SectionId, e.FullName as LastUpdatedBy
	From
		[ordering].[DET_OrderItems] a
	Inner Join
		[ordering].[MST_Orders] b
	On
		a.OrderId = b.Id and b.isActive = 1
	Inner Join
		[ordering].[MST_Products] c
	On
		a.ProductId = c.Id and c.isActive = 1
	Inner Join
		[ordering].[ERP_CustSites] d
	On
		b.MatchCode = d.MatchCode
	Inner Join
		[dbo].[AspNetUsers] e
	On
		a.ModifiedBy = e.UId
	Inner Join
		[ordering].[MST_OrderStatus] f
	On
		a.StatusId = f.Id
	Where
		a.isActive = 1
)
GO
/****** Object:  View [ordering].[VW_Order_Item_Product_Cust]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE View [ordering].[VW_Order_Item_Product_Cust]
As
(
	Select
		a.Id as OrderItemId, a.OrderId, a.ProductId, c.ProductName, a.Quantity, a.Remarks
		, a.OrderItemNo, a.OrderedFor, b.MatchCode, d.CustomerName, d.SiteName
	From
		[ordering].[DET_OrderItems] a
	Inner Join
		[ordering].[MST_Orders] b
	On
		a.OrderId = b.Id and b.isActive = 1
	Inner Join
		[ordering].[MST_Products] c
	On
		a.ProductId = c.Id and c.isActive = 1
	Inner Join
		[ordering].[ERP_CustSites] d
	On
		b.MatchCode = d.MatchCode
)

GO
/****** Object:  View [ordering].[VW_Orders_To_Assign]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE View [ordering].[VW_Orders_To_Assign]
As
(
	Select
		a.Id as OrderItemId, a.OrderId, a.ProductId, c.ProductName, a.Quantity, a.Remarks
		, a.OrderItemNo, a.OrderedFor, b.MatchCode, d.CustomerName, d.SiteName, a.BoxId
		, a.CreatedOn, a.CreatedBy, a.ModifiedOn, a.ModifiedBy, b.SectionId, e.FullName as LastUpdatedBy
	From
		[ordering].[DET_OrderItems] a
	Inner Join
		[ordering].[MST_Orders] b
	On
		a.OrderId = b.Id and b.isActive = 1
	Inner Join
		[ordering].[MST_Products] c
	On
		a.ProductId = c.Id and c.isActive = 1
	Inner Join
		[ordering].[ERP_CustSites] d
	On
		b.MatchCode = d.MatchCode
	Inner Join
		[dbo].[AspNetUsers] e
	On
		a.ModifiedBy = e.UId
	Where
		a.StatusId in (1, 2)
)





GO
/****** Object:  View [ordering].[VW_Planned_Orders]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [ordering].[VW_Planned_Orders]
As
(

	Select
		a.SiteId, b.ShiftDay
	From
		[ordering].[OrderPlanning] a 
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id


)
GO
/****** Object:  View [ordering].[VW_Site_Product_UnitPrice]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [ordering].[VW_Site_Product_UnitPrice]
As
(
	Select
		a.SiteId, a.ProductId as LomoProductId, b.Id as ProductId, b.ERPProductId, isnull(c.Unit_Price, 0) as UnitPrice
	From
		[ordering].[DET_SiteProducts] a
	Inner Join
		[ordering].[MST_Products] b
	On
		a.ProductId = b.LomoProductId
	Inner Join
		SitesERP d
	On
		a.SiteId = d.ID
	Left Join
		[10.0.68.11].[WOQ_Credit_Limit].[dbo].[WOQOD_CUSTOMER_PRICES_CUST_V] c
	On
		b.ERPProductId = c.Product_Id and c.Customer_Number = d.CUST_NUMBER and c.Site_Number = d.SITE_NUMBER
	--Where
	--	a.SiteId = @SiteId
)

GO
ALTER TABLE [contract].[AccountMatchCode] ADD  CONSTRAINT [DF_AccountMatchCode_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[AccountOpening] ADD  CONSTRAINT [DF_AccountOpening_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[Agenda] ADD  CONSTRAINT [DF_Agenda_isUpdated]  DEFAULT ((0)) FOR [isUpdated]
GO
ALTER TABLE [contract].[Agenda] ADD  CONSTRAINT [DF_Agenda_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[Agenda] ADD  CONSTRAINT [DF_Agenda_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[AgendaContracts] ADD  CONSTRAINT [DF_AgendaContracts_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[AgendaContracts] ADD  CONSTRAINT [DF_AgendaContracts_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[AgendaPricingCategory] ADD  CONSTRAINT [DF_AgendaPricingCategory_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[AgendaPricingCategory] ADD  CONSTRAINT [DF_AgendaPricingCategory_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[AgendaResultType] ADD  CONSTRAINT [DF_AgendaResultType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[AgendaResultType] ADD  CONSTRAINT [DF_AgendaResultType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[ApplicantType] ADD  CONSTRAINT [DF_ApplicantType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[ApplicantType] ADD  CONSTRAINT [DF_ApplicantType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[AtachmentCheckList] ADD  CONSTRAINT [DF_AtachmentCheckList_CreatedOn_1]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[AtachmentCheckList] ADD  CONSTRAINT [DF_AtachmentCheckList_CreatedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[BankGuranteeDocuments] ADD  CONSTRAINT [DF_BankGuranteeDocuments_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [contract].[BankGuranteeDocuments] ADD  CONSTRAINT [DF_BankGuranteeDocuments_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[BatchContracts] ADD  CONSTRAINT [DF_BatchContracts_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[BatchContracts] ADD  CONSTRAINT [DF_BatchContracts_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[BatchResultType] ADD  CONSTRAINT [DF_BatchResultType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[BatchResultType] ADD  CONSTRAINT [DF_BatchResultType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[BGContractDocs] ADD  CONSTRAINT [DF_BGContractDocs_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [contract].[BGContractDocs] ADD  CONSTRAINT [DF_BGContractDocs_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[ContactType] ADD  CONSTRAINT [DF_ContactType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[ContactType] ADD  CONSTRAINT [DF_ContactType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[ContactType] ADD  CONSTRAINT [DF_ContactType_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [contract].[ContractAddress] ADD  CONSTRAINT [DF_ContractAddress_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[ContractAddress] ADD  CONSTRAINT [DF_ContractAddress_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[ContractContacts] ADD  CONSTRAINT [DF_ContractContacts_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [contract].[ContractContacts] ADD  CONSTRAINT [DF_ContractContacts_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[ContractContacts] ADD  CONSTRAINT [DF_ContractContacts_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[ContractException] ADD  CONSTRAINT [DF_ContractException_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[ContractException] ADD  CONSTRAINT [DF_ContractException_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[ContractorType] ADD  CONSTRAINT [DF_ContractorType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[ContractorType] ADD  CONSTRAINT [DF_ContractorType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[ContractorType] ADD  CONSTRAINT [DF_ContractorType_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [contract].[CRClassification] ADD  CONSTRAINT [DF_CRClassification_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[CRClassification] ADD  CONSTRAINT [DF_CRClassification_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[CrResources] ADD  CONSTRAINT [DF_CrResources_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [contract].[CrResources] ADD  CONSTRAINT [DF_CrResources_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[CrResources] ADD  CONSTRAINT [DF_CrResources_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[Designation] ADD  CONSTRAINT [DF_Designation_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[Designation] ADD  CONSTRAINT [DF_Designation_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[Designation] ADD  CONSTRAINT [DF_Designation_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [contract].[DocumentType] ADD  CONSTRAINT [DF_DocumentType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[DocumentType] ADD  CONSTRAINT [DF_DocumentType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[FinInsConfDoc] ADD  CONSTRAINT [DF_FinInsConfDoc_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [contract].[FinInsConfDoc] ADD  CONSTRAINT [DF_FinInsConfDoc_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[LegalBatch] ADD  CONSTRAINT [DF_LegalBatch_isUpdated]  DEFAULT ((0)) FOR [isUpdated]
GO
ALTER TABLE [contract].[LegalBatch] ADD  CONSTRAINT [DF_LegalBatch_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[LegalBatch] ADD  CONSTRAINT [DF_LegalBatch_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[MobilizedTank] ADD  CONSTRAINT [DF_MobilizedTank_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[MobilizedTank] ADD  CONSTRAINT [DF_MobilizedTank_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[MonthlyConsumptionDetails] ADD  CONSTRAINT [DF_MonthlyConsumptionDetails_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[MonthlyConsumptionDetails] ADD  CONSTRAINT [DF_MonthlyConsumptionDetails_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[OffRoadTransportationCost] ADD  CONSTRAINT [DF_OffRoadTransportationCost_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[OffRoadTransportationCost] ADD  CONSTRAINT [DF_OffRoadTransportationCost_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[OnRoadTransportCost] ADD  CONSTRAINT [DF_OnRoadTransportCost_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[OnRoadTransportCost] ADD  CONSTRAINT [DF_OnRoadTransportCost_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[PricingCategoryPriceList] ADD  CONSTRAINT [DF_PricingCategoryPriceList_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[PricingCategoryPriceList] ADD  CONSTRAINT [DF_PricingCategoryPriceList_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[ProductNeeded] ADD  CONSTRAINT [DF_ProductNeeded_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[ProductNeeded] ADD  CONSTRAINT [DF_ProductNeeded_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[ProjectClassification] ADD  CONSTRAINT [DF_ProjectClassification_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[ProjectClassification] ADD  CONSTRAINT [DF_ProjectClassification_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[ProjectClassification] ADD  CONSTRAINT [DF_ProjectClassification_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [contract].[ScheduleList] ADD  CONSTRAINT [DF_ScheduleList_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[ScheduleList] ADD  CONSTRAINT [DF_ScheduleList_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[Site] ADD  CONSTRAINT [DF_Site_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [contract].[Site] ADD  CONSTRAINT [DF_Site_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[Site] ADD  CONSTRAINT [DF_Site_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SiteAttachmentCheckList] ADD  CONSTRAINT [DF_SiteAttachmentCheckList_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SiteAttachmentCheckList] ADD  CONSTRAINT [DF_SiteAttachmentCheckList_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SiteCRAnalysis] ADD  CONSTRAINT [DF_SiteCRAnalysis_IsIndividual]  DEFAULT ((0)) FOR [IsIndividual]
GO
ALTER TABLE [contract].[SiteCRAnalysis] ADD  CONSTRAINT [DF_SiteCRAnalysis_IsEstablishment]  DEFAULT ((0)) FOR [IsEstablishment]
GO
ALTER TABLE [contract].[SiteCRAnalysis] ADD  CONSTRAINT [DF_SiteCRAnalysis_IsPrivateShareholding]  DEFAULT ((0)) FOR [IsPrivateShareholding]
GO
ALTER TABLE [contract].[SiteCRAnalysis] ADD  CONSTRAINT [DF_SiteCRAnalysis_IsPublicShareholding]  DEFAULT ((0)) FOR [IsPublicShareholding]
GO
ALTER TABLE [contract].[SiteCRAnalysis] ADD  CONSTRAINT [DF_SiteCRAnalysis_IsCompany]  DEFAULT ((0)) FOR [IsCompany]
GO
ALTER TABLE [contract].[SiteCRAnalysis] ADD  CONSTRAINT [DF_SiteCRAnalysis_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SiteCRAnalysis] ADD  CONSTRAINT [DF_SiteCRAnalysis_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SiteDocuments] ADD  CONSTRAINT [DF_SiteDocuments_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [contract].[SiteDocuments] ADD  CONSTRAINT [DF_SiteDocuments_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SiteDocuments] ADD  CONSTRAINT [DF_SiteDocuments_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SiteInspectionType] ADD  CONSTRAINT [DF_SiteInspectionType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SiteProjectDetails] ADD  CONSTRAINT [DF_SiteProjectDetails_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SiteProjectDetails] ADD  CONSTRAINT [DF_SiteProjectDetails_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SiteStatus] ADD  CONSTRAINT [DF_SiteStatus_isEnabled]  DEFAULT ((1)) FOR [isEnabled]
GO
ALTER TABLE [contract].[SiteStatus] ADD  CONSTRAINT [DF_SiteStatus_isRejected]  DEFAULT ((0)) FOR [isRejected]
GO
ALTER TABLE [contract].[SiteStatus] ADD  CONSTRAINT [DF_SiteStatus_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SiteStatus] ADD  CONSTRAINT [DF_SiteStatus_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SiteVerification] ADD  CONSTRAINT [DF_SiteVerify_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SiteVerification] ADD  CONSTRAINT [DF_SiteVerify_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SiteVisitAddresses] ADD  CONSTRAINT [DF_SiteVisitAddresses_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SiteVisitAddresses] ADD  CONSTRAINT [DF_SiteVisitAddresses_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SiteVisitProjectDetails] ADD  CONSTRAINT [DF_SiteVisitProjectDetails_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SiteVisitProjectDetails] ADD  CONSTRAINT [DF_SiteVisitProjectDetails_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SiteVisitReport] ADD  CONSTRAINT [DF_SiteVisitReport_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SiteVisitReport] ADD  CONSTRAINT [DF_SiteVisitReport_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SiteVisitReportContacts] ADD  CONSTRAINT [DF_SiteVisitReportContacts_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [contract].[SiteVisitReportContacts] ADD  CONSTRAINT [DF_SiteVisitReportContacts_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SiteVisitReportContacts] ADD  CONSTRAINT [DF_SiteVisitReportContacts_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SiteVisitResources] ADD  CONSTRAINT [DF_SiteVisitResources_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [contract].[SiteVisitResources] ADD  CONSTRAINT [DF_SiteVisitResources_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SiteVisitResources] ADD  CONSTRAINT [DF_SiteVisitResources_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SiteVisitSupplyToDetails] ADD  CONSTRAINT [DF_SiteVisitSupplyToDetails_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SiteVisitSupplyToDetails] ADD  CONSTRAINT [DF_SiteVisitSupplyToDetails_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SiteZones] ADD  CONSTRAINT [DF_SiteZones_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SiteZones] ADD  CONSTRAINT [DF_SiteZones_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SiteZones] ADD  CONSTRAINT [DF_SiteZones_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [contract].[Stage] ADD  CONSTRAINT [DF_Stage_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[Stage] ADD  CONSTRAINT [DF_Stage_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[StorageTankPriceList] ADD  CONSTRAINT [DF_StorageTankPriceList_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[StorageTankPriceList] ADD  CONSTRAINT [DF_StorageTankPriceList_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[StorageTankType] ADD  CONSTRAINT [DF_StorageTankType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[StorageTankType] ADD  CONSTRAINT [DF_StorageTankType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[StorageTankType] ADD  CONSTRAINT [DF_StorageTankType_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [contract].[SubStage] ADD  CONSTRAINT [DF_SubStage_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SubStage] ADD  CONSTRAINT [DF_SubStage_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SupplyTo] ADD  CONSTRAINT [DF_SupplyTo_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SupplyTo] ADD  CONSTRAINT [DF_SupplyTo_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[SupplyToDetails] ADD  CONSTRAINT [DF_SupplyToDetails_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[SupplyToDetails] ADD  CONSTRAINT [DF_SupplyToDetails_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[TankConfDocuments] ADD  CONSTRAINT [DF_TankConfDocuments_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [contract].[TankConfDocuments] ADD  CONSTRAINT [DF_TankConfDocuments_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[Type] ADD  CONSTRAINT [DF_Type_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[Type] ADD  CONSTRAINT [DF_Type_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[Type] ADD  CONSTRAINT [DF_Type_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [contract].[WoqodSupplier] ADD  CONSTRAINT [DF_WoqodSupplier_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[WoqodSupplier] ADD  CONSTRAINT [DF_WoqodSupplier_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[WoqodTank] ADD  CONSTRAINT [DF_WoqodTank_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[WoqodTank] ADD  CONSTRAINT [DF_WoqodTank_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[WoqodTankType] ADD  CONSTRAINT [DF_WoqodTankType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [contract].[WoqodTankType] ADD  CONSTRAINT [DF_WoqodTankType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Action] ADD  CONSTRAINT [DF_Action_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Action] ADD  CONSTRAINT [DF_Action_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF_Address_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AppointmentDiary] ADD  CONSTRAINT [DF_AppointmentDiary_StatusENUM]  DEFAULT ((0)) FOR [StatusENUM]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF_AspNetUsers_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ContractContacts_Log] ADD  CONSTRAINT [DF_ContractContacts_Log_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[ContractContacts_Log] ADD  CONSTRAINT [DF_ContractContacts_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ContractContacts_Log] ADD  CONSTRAINT [DF_ContractContacts_Log_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[CustomerCategoryERP] ADD  CONSTRAINT [DF_CustomerCategoryERP_Import]  DEFAULT ((0)) FOR [AllowImport]
GO
ALTER TABLE [dbo].[CustomerCategoryERP] ADD  CONSTRAINT [DF_CustomerCategoryERP_LPGAllowImport]  DEFAULT ((0)) FOR [LPGAllowImport]
GO
ALTER TABLE [dbo].[EmpAttachments] ADD  CONSTRAINT [DF_EmpAttachments_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[EmpAttachments] ADD  CONSTRAINT [DF_EmpAttachments_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[EmpAttachments] ADD  CONSTRAINT [DF_Table_4_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [dbo].[EmpDrivingLicense] ADD  CONSTRAINT [DF_EmpDrivingLicense_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [dbo].[EmpEmergencyContact] ADD  CONSTRAINT [DF_EmpEmergencyContact_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [dbo].[EmpGatePass] ADD  CONSTRAINT [DF_EmpGatePass_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[EmpGatePass] ADD  CONSTRAINT [DF_EmpGatePass_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[EmpGatePass] ADD  CONSTRAINT [DF_EmpGatePass_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [dbo].[EmpHomeCountryContacts] ADD  CONSTRAINT [DF_EmpHomeCountryAddress_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [dbo].[EmpLanguage] ADD  CONSTRAINT [DF_EmpLanguage_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[EmpLanguage] ADD  CONSTRAINT [DF_EmpLanguage_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[EmpLanguage] ADD  CONSTRAINT [DF_EmpLanguage_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [dbo].[EmpLocalContacts] ADD  CONSTRAINT [DF_EmpLocalContacts_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [dbo].[EmployeeProfilePicture] ADD  CONSTRAINT [DF_EmployeeProfilePicture_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[EmployeeType] ADD  CONSTRAINT [DF_EmployeeType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[EmployeeType] ADD  CONSTRAINT [DF_EmployeeType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[EmpUniforms] ADD  CONSTRAINT [DF_EmpUniforms_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[EmpUniforms] ADD  CONSTRAINT [DF_EmpUniforms_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[EmpUniforms] ADD  CONSTRAINT [DF_EmpUniforms_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [dbo].[GeoLocation] ADD  CONSTRAINT [DF_GeoLocation_CreatedBy]  DEFAULT ((55)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[GeoLocation] ADD  CONSTRAINT [DF_GeoLocation_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[GeoLocation] ADD  CONSTRAINT [DF_GeoLocation_ModifiedBy]  DEFAULT ((55)) FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[GeoLocation] ADD  CONSTRAINT [DF_GeoLocation_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[GeoLocation] ADD  CONSTRAINT [DF_GeoLocation_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF_Module_isParent]  DEFAULT ((0)) FOR [isParent]
GO
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF_Module_isVisible]  DEFAULT ((1)) FOR [isVisible]
GO
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF_Module_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF_Module_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[MST_Depot] ADD  CONSTRAINT [DF_Table_4_isDeleted]  DEFAULT ((0)) FOR [isArchived]
GO
ALTER TABLE [dbo].[MST_Depot] ADD  CONSTRAINT [DF_MST_Depot_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[MST_Depot] ADD  CONSTRAINT [DF_MST_Depot_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[MST_Lookups] ADD  CONSTRAINT [DF_MST_Lookups_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[MST_Lookups] ADD  CONSTRAINT [DF_MST_Lookups_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[MST_Lookups] ADD  CONSTRAINT [DF_MST_Lookups_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [dbo].[MST_LookupsValues] ADD  CONSTRAINT [DF_MST_LookupsValues_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[MST_LookupsValues] ADD  CONSTRAINT [DF_MST_LookupsValues_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[MST_LookupsValues] ADD  CONSTRAINT [DF_MST_LookupsValues_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[RoleModules] ADD  CONSTRAINT [DF_RoleModules_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[RoleModules] ADD  CONSTRAINT [DF_RoleModules_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Tank] ADD  CONSTRAINT [DF_Tank_Capacity]  DEFAULT ((0)) FOR [Capacity]
GO
ALTER TABLE [dbo].[UserAction] ADD  CONSTRAINT [DF_UserAction_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UserAction] ADD  CONSTRAINT [DF_UserAction_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[UserRoleModules] ADD  CONSTRAINT [DF_UserRoleModules_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UserRoleModules] ADD  CONSTRAINT [DF_UserRoleModules_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [Fleet].[DET_FleetCompartments] ADD  CONSTRAINT [DF_FleetCompartments_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [Fleet].[DET_FleetCompartments] ADD  CONSTRAINT [DF_FleetCompartments_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [Fleet].[DET_FleetCompartments] ADD  CONSTRAINT [DF_FleetCompartments_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [Fleet].[DET_FleetGatePass] ADD  CONSTRAINT [DF_DET_MST_FleetGatePass_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [Fleet].[DET_FleetGatePass] ADD  CONSTRAINT [DF_DET_MST_FleetGatePass_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [Fleet].[DET_FleetGatePass] ADD  CONSTRAINT [DF_DET_MST_FleetGatePass_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [Fleet].[DET_FleetMaintenance] ADD  CONSTRAINT [DF_DET_MST_FleetMaintenance_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [Fleet].[DET_FleetMaintenance] ADD  CONSTRAINT [DF_DET_MST_FleetMaintenance_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [Fleet].[DET_FleetMaintenance] ADD  CONSTRAINT [DF_DET_MST_FleetMaintenance_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [Fleet].[DET_FleetServiceRequest_Resources] ADD  CONSTRAINT [DF_DET_FleetServiceRequest_Resources_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [Fleet].[DET_FleetServiceRequest_Resources] ADD  CONSTRAINT [DF_DET_FleetServiceRequest_Resources_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [Fleet].[DET_FleetServiceRequest_Resources] ADD  CONSTRAINT [DF_DET_FleetServiceRequest_Resources_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [Fleet].[DET_MSTFleetAttachments] ADD  CONSTRAINT [DF_DET_MSTFleetAttachments_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [Fleet].[DET_MSTFleetAttachments] ADD  CONSTRAINT [DF_DET_MSTFleetAttachments_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [Fleet].[DET_MSTFleetAttachments] ADD  CONSTRAINT [DF_DET_MSTFleetAttachments_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [Fleet].[LOG_Fleet_ServiceRequests] ADD  CONSTRAINT [DF_Log_Fleet_ServiceRequests_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [Fleet].[MST_Fleet] ADD  CONSTRAINT [DF_MST_Fleet_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [Fleet].[MST_Fleet] ADD  CONSTRAINT [DF_MST_Fleet_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [Fleet].[MST_Fleet] ADD  CONSTRAINT [DF_MST_Fleet_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [Fleet].[MST_Fleet_ServiceRequests] ADD  CONSTRAINT [DF_MST_Fleet_ServiceRequests_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [Fleet].[MST_Fleet_ServiceRequests] ADD  CONSTRAINT [DF_MST_Fleet_ServiceRequests_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [log].[ActivityLog] ADD  CONSTRAINT [DF_ActivityLog_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[ActivityType] ADD  CONSTRAINT [DF_ActivityType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[ActivityType] ADD  CONSTRAINT [DF_ActivityType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [log].[Agenda_Log] ADD  CONSTRAINT [DF_Agenda_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[AgendaContracts_Log] ADD  CONSTRAINT [DF_AgendaContracts_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[AppError] ADD  CONSTRAINT [DF_AppError_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[BankGuranteeDocuments_Log] ADD  CONSTRAINT [DF_BankGuranteeDocuments_Log_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [log].[BankGuranteeDocuments_Log] ADD  CONSTRAINT [DF_BankGuranteeDocuments_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[BankGuranteePrintLog] ADD  CONSTRAINT [DF_BankGuranteePrintLog_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [log].[BankGuranteePrintLog] ADD  CONSTRAINT [DF_BankGuranteePrintLog_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[BankGuranteeRemark_Log] ADD  CONSTRAINT [DF_BankGuranteeRemark_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[BatchContracts_Log] ADD  CONSTRAINT [DF_BatchContracts_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[BGContractDocs_Log] ADD  CONSTRAINT [DF_BGontractDocs_Log_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [log].[BGContractDocs_Log] ADD  CONSTRAINT [DF_BGontractDocs_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[BGContractRemarks_Log] ADD  CONSTRAINT [DF_BGContractRemarks_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[ContractAddress_Log] ADD  CONSTRAINT [DF_ContractAddress_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[ContractContacts_Log] ADD  CONSTRAINT [DF_ContractContacts_Log_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [log].[ContractContacts_Log] ADD  CONSTRAINT [DF_ContractContacts_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[EventNotification_Log] ADD  CONSTRAINT [DF_EventNotification_Log_isSplit]  DEFAULT ((0)) FOR [isSplit]
GO
ALTER TABLE [log].[EventNotification_Log] ADD  CONSTRAINT [DF_EventNotification_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[ExceptionLog] ADD  CONSTRAINT [DF_ExceptionLog_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[FinalInsConfDocs_Log] ADD  CONSTRAINT [DF_FinalInsConfDocs_Log_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [log].[FinalInsConfDocs_Log] ADD  CONSTRAINT [DF_FinalInsConfDocs_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[FinalInsConfRemark_Log] ADD  CONSTRAINT [DF_FinalInsConfRemark_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[LegalBatch_Log] ADD  CONSTRAINT [DF_LegalBatch_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[LPGOrderPlanning_Log] ADD  CONSTRAINT [DF_LPGOrderPlanning_Log_ExpectedQty]  DEFAULT ((0)) FOR [ExpectedQty]
GO
ALTER TABLE [log].[LPGOrderPlanning_Log] ADD  CONSTRAINT [DF_LPGOrderPlanning_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[LPGOrderTanks_Log] ADD  CONSTRAINT [DF_LPGOrderTanks_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[MonthlyConsumptionDetails_Log] ADD  CONSTRAINT [DF_MonthlyConsumptionDetails_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[OrderPlanning_Log] ADD  CONSTRAINT [DF_OrderPlanning_Log_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [log].[OrderPlanning_Log] ADD  CONSTRAINT [DF_OrderPlanning_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[ScheduleList_Log] ADD  CONSTRAINT [DF_ScheduleList_Log_CreatedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[Site_Log] ADD  CONSTRAINT [DF_Site_Log_isActive_1]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [log].[Site_Log] ADD  CONSTRAINT [DF_Site_Log_LoggedOn_1]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[SiteAgenda_Log] ADD  CONSTRAINT [DF_SiteAgendaLog_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[SiteAttachmentCheckList_Log] ADD  CONSTRAINT [DF_SiteAttachmentCheckList_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[SiteCRAnalysis_Log] ADD  CONSTRAINT [DF_SiteCRAnalysis_Log_IsIndividual]  DEFAULT ((0)) FOR [IsIndividual]
GO
ALTER TABLE [log].[SiteCRAnalysis_Log] ADD  CONSTRAINT [DF_SiteCRAnalysis_Log_IsEstablishment]  DEFAULT ((0)) FOR [IsEstablishment]
GO
ALTER TABLE [log].[SiteCRAnalysis_Log] ADD  CONSTRAINT [DF_SiteCRAnalysis_Log_IsPrivateShareholding]  DEFAULT ((0)) FOR [IsPrivateShareholding]
GO
ALTER TABLE [log].[SiteCRAnalysis_Log] ADD  CONSTRAINT [DF_SiteCRAnalysis_Log_IsPublicShareholding]  DEFAULT ((0)) FOR [IsPublicShareholding]
GO
ALTER TABLE [log].[SiteCRAnalysis_Log] ADD  CONSTRAINT [DF_SiteCRAnalysis_Log_IsCompany]  DEFAULT ((0)) FOR [IsCompany]
GO
ALTER TABLE [log].[SiteCRAnalysis_Log] ADD  CONSTRAINT [DF_SiteCRAnalysis_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[SiteDocuments_Log] ADD  CONSTRAINT [DF_SiteDocuments_Log_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [log].[SiteDocuments_Log] ADD  CONSTRAINT [DF_SiteDocuments_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[SiteLegalBatch_Log] ADD  CONSTRAINT [DF_SiteLegalBatch_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[SiteProjectDetails_Log] ADD  CONSTRAINT [DF_SiteProjectDetails_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[SiteStatus_Log] ADD  CONSTRAINT [DF_SiteStatus_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[SiteVerification_Log] ADD  CONSTRAINT [DF_SiteVerification_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[SiteVisitAddresses_Log] ADD  CONSTRAINT [DF_SiteVisitAddresses_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[SiteVisitProjectDetails_Log] ADD  CONSTRAINT [DF_SiteVisitProjectDetails_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[SiteVisitReport_Log] ADD  CONSTRAINT [DF_SiteVisitReport_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[SiteVisitReportContacts_Log] ADD  CONSTRAINT [DF_SiteVisitReportContacts_Log_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [log].[SiteVisitReportContacts_Log] ADD  CONSTRAINT [DF_SiteVisitReportContacts_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[SiteVisitResources_Log] ADD  CONSTRAINT [DF_SiteVisitResources_Log_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [log].[SiteVisitResources_Log] ADD  CONSTRAINT [DF_SiteVisitResources_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[SiteVisitSupplyToDetails_Log] ADD  CONSTRAINT [DF_SiteVisitSupplyToDetails_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[SupplyToDetails_Log] ADD  CONSTRAINT [DF_SupplyToDetails_Log_LoggedOn]  DEFAULT (getdate()) FOR [LoggedOn]
GO
ALTER TABLE [log].[TankConfDocs_Log] ADD  CONSTRAINT [DF_TankConfDocs_Log_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [log].[TankConfDocs_Log] ADD  CONSTRAINT [DF_TankConfDocs_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [log].[TankConfRemark_Log] ADD  CONSTRAINT [DF_TankConfRemark_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lpg].[Contractor] ADD  CONSTRAINT [DF_Contractor_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [lpg].[InstallationStage] ADD  CONSTRAINT [DF_InstallationStage_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [lpg].[InstallationType] ADD  CONSTRAINT [DF_InstallationType_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [lpg].[SiteCategory] ADD  CONSTRAINT [DF_SiteCategory_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [lpg].[SiteInstallation] ADD  CONSTRAINT [DF_SiteInstallation_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lpg].[SiteInstallation] ADD  CONSTRAINT [DF_SiteInstallation_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lpg].[SiteInstallation] ADD  CONSTRAINT [DF_SiteInstallation_IsActive]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [lpg].[SiteInstallationFiles] ADD  CONSTRAINT [DF_SiteInstallationFiles_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [lpg].[SiteInstallationFiles] ADD  CONSTRAINT [DF_SiteInstallationFiles_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [lpg].[SiteInstallationFilesStatus] ADD  CONSTRAINT [DF_SiteInstallationFilesstatusstatus_isSaved]  DEFAULT ((0)) FOR [isSaved]
GO
ALTER TABLE [lpg].[SiteInstallationFilesStatus] ADD  CONSTRAINT [DF_SiteInstallationFilesstatusstatus_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [lpg].[SiteInstallationTankerCapacity] ADD  CONSTRAINT [DF_SiteInstallationTankerCapacity_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [lpg].[SiteInstallationTanks] ADD  CONSTRAINT [DF_SiteInstallationTanks_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [lpg].[TankerCapacityInMtTon] ADD  CONSTRAINT [DF_TankerCapacityInMtTon_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [lpg].[TankType] ADD  CONSTRAINT [DF_TankType_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [lpg].[TransportZone] ADD  CONSTRAINT [DF_TransportZone_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [lpgordering].[DET_LPG_Tran] ADD  CONSTRAINT [DF_DET_LPG_Tran_isActive_1]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [lpgordering].[DET_LPG_Tran] ADD  CONSTRAINT [DF_DET_LPG_Tran_CreatedOn_1]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lpgordering].[DET_LPG_Tran] ADD  CONSTRAINT [DF_DET_LPG_Tran_ModifiedOn_1]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lpgordering].[DET_LPGSite_OrderSettings] ADD  CONSTRAINT [DF_DET_LPGSite_OrderSettings_TimeLimit]  DEFAULT ((840)) FOR [TimeLimit]
GO
ALTER TABLE [lpgordering].[DET_LPGSite_OrderSettings] ADD  CONSTRAINT [DF_DET_LPGSite_OrderSettings_UpdateElapsedTime]  DEFAULT ((120)) FOR [UpdateElapsedTime]
GO
ALTER TABLE [lpgordering].[DET_LPGSite_OrderSettings] ADD  CONSTRAINT [DF_DET_LPGSite_OrderSettings_CheckCreditLimit]  DEFAULT ((1)) FOR [CheckCreditLimit]
GO
ALTER TABLE [lpgordering].[DET_LPGSite_OrderSettings] ADD  CONSTRAINT [DF_DET_LPGSite_OrderSettings_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lpgordering].[DET_LPGSite_OrderSettings] ADD  CONSTRAINT [DF_DET_LPGSite_OrderSettings_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lpgordering].[LPGOrderPlanning] ADD  CONSTRAINT [DF_LPGOrderPlanning_ExpectedQty]  DEFAULT ((0)) FOR [ExpectedQty]
GO
ALTER TABLE [lpgordering].[LPGOrderPlanning] ADD  CONSTRAINT [DF_LPGOrderPlanning_IsProcessed]  DEFAULT ((0)) FOR [IsProcessed]
GO
ALTER TABLE [lpgordering].[LPGOrderPlanning] ADD  CONSTRAINT [DF_LPGOrderPlanning_isUrgent]  DEFAULT ((0)) FOR [isUrgent]
GO
ALTER TABLE [lpgordering].[LPGOrderPlanning] ADD  CONSTRAINT [DF_OrderPlanning_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [lpgordering].[LPGOrderPlanning] ADD  CONSTRAINT [DF_OrderPlanning_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lpgordering].[LPGOrderPlanning] ADD  CONSTRAINT [DF_OrderPlanning_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lpgordering].[LPGOrderTanks] ADD  CONSTRAINT [DF_LPGOrderTanks_ExpectedDeliveredQty]  DEFAULT ((0)) FOR [ExpectedDeliveredQty]
GO
ALTER TABLE [lpgordering].[LPGOrderTanks] ADD  CONSTRAINT [DF_LPGOrderTanks_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lpgordering].[LPGOrderTanks] ADD  CONSTRAINT [DF_LPGOrderTanks_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lpgordering].[LPGSiteTanks] ADD  CONSTRAINT [DF_LPGSiteTanks_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [lpgordering].[LPGSiteTanks] ADD  CONSTRAINT [DF_LPGSiteTanks_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lpgordering].[LPGSiteTanks] ADD  CONSTRAINT [DF_LPGSiteTanks_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lpgordering].[MST_LPG_Order] ADD  CONSTRAINT [DF_MST_LPG_Order_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [lpgordering].[MST_LPG_Order] ADD  CONSTRAINT [DF_MST_LPG_Order_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lpgordering].[MST_LPG_Order] ADD  CONSTRAINT [DF_MST_LPG_Order_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lpgordering].[MST_LPG_Products] ADD  CONSTRAINT [DF_MST_LPG_Products_ERPProductId]  DEFAULT ((0)) FOR [ERPProductId]
GO
ALTER TABLE [lpgordering].[MST_LPG_Products] ADD  CONSTRAINT [DF_MST_LPG_Products_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [lpgordering].[MST_LPG_Products] ADD  CONSTRAINT [DF_MST_LPG_Products_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lpgordering].[MST_LPG_Products] ADD  CONSTRAINT [DF_MST_LPG_Products_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lpgordering].[MST_LPGOrderSettings] ADD  CONSTRAINT [DF_MST_LPGOrderSettings_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lpgordering].[MST_LPGOrderSettings] ADD  CONSTRAINT [DF_MST_LPGOrderSettings_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lpgordering].[PortalUserCustomer] ADD  CONSTRAINT [DF_PortalUserCustomer_hasAccessToAll]  DEFAULT ((0)) FOR [hasAccessToAll]
GO
ALTER TABLE [lpgordering].[PortalUserCustomer] ADD  CONSTRAINT [DF_PortalUserCustomer_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lpgordering].[PortalUserCustomer] ADD  CONSTRAINT [DF_PortalUserCustomer_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lpgordering].[PortalUserLPGSites] ADD  CONSTRAINT [DF_PortalUserLPGSites_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [lpgordering].[PortalUserLPGSites] ADD  CONSTRAINT [DF_PortalUserLPGSites_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lpgordering].[PortalUserLPGSites] ADD  CONSTRAINT [DF_PortalUserLPGSites_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[DistributionType] ADD  CONSTRAINT [DF_DistributionType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[DistributionType] ADD  CONSTRAINT [DF_DistributionType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[DistributionType] ADD  CONSTRAINT [DF_DistributionType_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [lv].[LeasedVehicle] ADD  CONSTRAINT [DF_LeasedVehicle_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LeasedVehicle] ADD  CONSTRAINT [DF_LeasedVehicle_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LeasedVehicleDocuments] ADD  CONSTRAINT [DF_LeasedVehicleDocuments_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [lv].[LeasedVehicleDocuments] ADD  CONSTRAINT [DF_LeasedVehicleDocuments_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LeasedVehicleDocuments] ADD  CONSTRAINT [DF_LeasedVehicleDocuments_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LeasedVehicleStatus] ADD  CONSTRAINT [DF_LeasedVehicleStatus_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LeasedVehicleStatus] ADD  CONSTRAINT [DF_LeasedVehicleStatus_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LeasedVehicleSupplier] ADD  CONSTRAINT [DF_LeasedVehicleSupplier_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LeasedVehicleSupplier] ADD  CONSTRAINT [DF_LeasedVehicleSupplier_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LvApplicableRates] ADD  CONSTRAINT [DF_LvApplicableRates_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvApplicableRates] ADD  CONSTRAINT [DF_LvApplicableRates_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LvApprovedContractAttachments] ADD  CONSTRAINT [DF_LApprovedContractAttachments_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvApprovedContractAttachments] ADD  CONSTRAINT [DF_LApprovedContractAttachments_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LvApprovedContractDocuments] ADD  CONSTRAINT [DF_LvApprovedContractDocuments_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [lv].[LvApprovedContractDocuments] ADD  CONSTRAINT [DF_LvApprovedContractDocuments_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvApprovedContractDocuments] ADD  CONSTRAINT [DF_LvApprovedContractDocuments_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LvApprovedContracts] ADD  CONSTRAINT [DF_LvApprovedContracts_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvApprovedContracts] ADD  CONSTRAINT [DF_LvApprovedContracts_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LvApprovedContractStatus] ADD  CONSTRAINT [DF_LvApprovedContractStatus_isEnabled]  DEFAULT ((1)) FOR [isEnabled]
GO
ALTER TABLE [lv].[LvApprovedContractStatus] ADD  CONSTRAINT [DF_LvApprovedContractStatus_isRejected]  DEFAULT ((0)) FOR [isRejected]
GO
ALTER TABLE [lv].[LvApprovedContractStatus] ADD  CONSTRAINT [DF_LvApprovedContractStatus_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvApprovedContractStatus] ADD  CONSTRAINT [DF_LvApprovedContractStatus_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LvAttachment] ADD  CONSTRAINT [DF_LvAttachment_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvAttachment] ADD  CONSTRAINT [DF_LvAttachment_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LvAttachmentCheckList] ADD  CONSTRAINT [DF_LvAttachmentCheckList_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvAttachmentCheckList] ADD  CONSTRAINT [DF_LvAttachmentCheckList_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LVCapacity] ADD  CONSTRAINT [DF_LVCapacity_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LVCapacity] ADD  CONSTRAINT [DF_LVCapacity_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LVCapacity] ADD  CONSTRAINT [DF_LVCapacity_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [lv].[LvContract] ADD  CONSTRAINT [DF_LvContract_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvContract] ADD  CONSTRAINT [DF_LvContract_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LvContractStatus] ADD  CONSTRAINT [DF_LvContractStatus_isEnabled]  DEFAULT ((1)) FOR [isEnabled]
GO
ALTER TABLE [lv].[LvContractStatus] ADD  CONSTRAINT [DF_LvContractStatus_isRejected]  DEFAULT ((0)) FOR [isRejected]
GO
ALTER TABLE [lv].[LvContractStatus] ADD  CONSTRAINT [DF_LvContractStatus_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvContractStatus] ADD  CONSTRAINT [DF_LvContractStatus_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LvContractType] ADD  CONSTRAINT [DF_LvContractType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvContractType] ADD  CONSTRAINT [DF_LvContractType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LvCustomerType] ADD  CONSTRAINT [DF_LvCustomerType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvCustomerType] ADD  CONSTRAINT [DF_LvCustomerType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LvDocuments] ADD  CONSTRAINT [DF_LvDocuments_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [lv].[LvDocuments] ADD  CONSTRAINT [DF_LvDocuments_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvDocuments] ADD  CONSTRAINT [DF_LvDocuments_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LvDuration] ADD  CONSTRAINT [DF_LvDuration_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvDuration] ADD  CONSTRAINT [DF_LvDuration_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LVLeaseDocuments] ADD  CONSTRAINT [DF_LVLeaseDocuments_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [lv].[LVLeaseDocuments] ADD  CONSTRAINT [DF_LVLeaseDocuments_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LVLeaseDocuments] ADD  CONSTRAINT [DF_LVLeaseDocuments_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LvStage] ADD  CONSTRAINT [DF_LvStage_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvStage] ADD  CONSTRAINT [DF_LvStage_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [lv].[LvSubStage] ADD  CONSTRAINT [DF_LvSubStage_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [lv].[LvSubStage] ADD  CONSTRAINT [DF_LvSubStage_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [notify].[EmailLog] ADD  CONSTRAINT [DF_EmailLog_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [notify].[EmailLog] ADD  CONSTRAINT [DF_EmailLog_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [notify].[EmailStatus] ADD  CONSTRAINT [DF_EmailStatus_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [notify].[Event] ADD  CONSTRAINT [DF_Event_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [notify].[Event] ADD  CONSTRAINT [DF_Event_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [notify].[Event] ADD  CONSTRAINT [DF_Event_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [notify].[EventNotification] ADD  CONSTRAINT [DF_EventNotification_isSplit]  DEFAULT ((0)) FOR [isSplit]
GO
ALTER TABLE [notify].[EventNotification] ADD  CONSTRAINT [DF_EventNotification_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [notify].[EventNotification] ADD  CONSTRAINT [DF_EventNotification_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [notify].[EventNotification] ADD  CONSTRAINT [DF_EventNotification_isEnables]  DEFAULT ((1)) FOR [isEnabled]
GO
ALTER TABLE [notify].[EventType] ADD  CONSTRAINT [DF_EventType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [notify].[EventType] ADD  CONSTRAINT [DF_EventType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [notify].[MailingList] ADD  CONSTRAINT [DF_MailingList_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [notify].[MailingList] ADD  CONSTRAINT [DF_MailingList_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [notify].[MailingListEmailIds] ADD  CONSTRAINT [DF_MailingListEmailIds_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [notify].[MailingListEmailIds] ADD  CONSTRAINT [DF_MailingListEmailIds_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [notify].[NotifyEntityType] ADD  CONSTRAINT [DF_NotifyEntityType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [notify].[NotifyEntityType] ADD  CONSTRAINT [DF_NotifyEntityType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[DET_Customer_StorageTanks] ADD  CONSTRAINT [DF_DET_Customer_StorageTanks_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[DET_Customer_StorageTanks] ADD  CONSTRAINT [DF_DET_Customer_StorageTanks_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[DET_Customer_StorageTanks] ADD  CONSTRAINT [DF_DET_Customer_StorageTanks_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[DET_CustSite_Products] ADD  CONSTRAINT [DF_DET_Site_Products_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[DET_CustSite_Products] ADD  CONSTRAINT [DF_DET_Site_Products_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[DET_CustSite_Products] ADD  CONSTRAINT [DF_DET_Site_Products_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[DET_OrderItem_Config] ADD  CONSTRAINT [DF_DET_OrderItem_Config_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[DET_OrderItem_Config] ADD  CONSTRAINT [DF_DET_OrderItem_Config_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[DET_OrderItems] ADD  CONSTRAINT [DF_DET_OrderItems_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[DET_OrderItems] ADD  CONSTRAINT [DF_DET_OrderItems_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[DET_OrderItems] ADD  CONSTRAINT [DF_DET_OrderItems_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[DET_PortalUser_Notification] ADD  CONSTRAINT [DF_DET_PortalUser_Notification_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [ordering].[DET_PortalUser_Notification] ADD  CONSTRAINT [DF_DET_PortalUser_Notification_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[DET_Section_Products] ADD  CONSTRAINT [DF_DET_Section_Products_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[DET_Section_Products] ADD  CONSTRAINT [DF_DET_Section_Products_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[DET_Section_Products] ADD  CONSTRAINT [DF_DET_Section_Products_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[DET_Shift_Actions] ADD  CONSTRAINT [DF_DET_Shift_Actions_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[DET_Shift_Actions] ADD  CONSTRAINT [DF_DET_Shift_Actions_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[DET_Shift_Actions] ADD  CONSTRAINT [DF_DET_Shift_Actions_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[DET_Shift_Box_Lomo] ADD  CONSTRAINT [DF_DET_Shift_Box_Lomo_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[DET_Shift_Box_Lomo] ADD  CONSTRAINT [DF_DET_Shift_Box_Lomo_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[DET_Shift_Box_Lomo] ADD  CONSTRAINT [DF_DET_Shift_Box_Lomo_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[DET_Shift_Vehicles] ADD  CONSTRAINT [DF_DET_Shift_Vehicles_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[DET_Shift_Vehicles] ADD  CONSTRAINT [DF_DET_Shift_Vehicles_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[DET_Shift_Vehicles] ADD  CONSTRAINT [DF_DET_Shift_Vehicles_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[DET_ShiftOrders] ADD  CONSTRAINT [DF_DET_ShiftOrders_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[DET_ShiftOrders] ADD  CONSTRAINT [DF_DET_ShiftOrders_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[DET_ShiftOrders] ADD  CONSTRAINT [DF_DET_ShiftOrders_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[DET_Shifts] ADD  CONSTRAINT [DF_DET_Shifts_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[DET_Shifts] ADD  CONSTRAINT [DF_DET_Shifts_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[DET_Shifts] ADD  CONSTRAINT [DF_DET_Shifts_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[DET_SiteProducts] ADD  CONSTRAINT [DF_DET_SiteProducts_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [ordering].[DET_SiteProducts] ADD  CONSTRAINT [DF_DET_SiteProducts_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[DET_SiteProducts] ADD  CONSTRAINT [DF_DET_SiteProducts_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[ERP_CustSites] ADD  CONSTRAINT [DF_ERP_CustSites_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[LicenseType] ADD  CONSTRAINT [DF_LicenseType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[LicenseType] ADD  CONSTRAINT [DF_LicenseType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[MST_Action] ADD  CONSTRAINT [DF_MST_Action_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[MST_Action] ADD  CONSTRAINT [DF_MST_Action_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[MST_Action] ADD  CONSTRAINT [DF_MST_Action_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[MST_Box] ADD  CONSTRAINT [DF_MST_Box_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[MST_Box] ADD  CONSTRAINT [DF_MST_Box_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[MST_Box] ADD  CONSTRAINT [DF_MST_Box_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[MST_ConfigType] ADD  CONSTRAINT [DF_MST_ConfigType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[MST_ConfigType] ADD  CONSTRAINT [DF_MST_ConfigType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[MST_DMS_Order] ADD  CONSTRAINT [DF_MST_DMS_Order_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[MST_DMS_Order] ADD  CONSTRAINT [DF_MST_DMS_Order_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[MST_DMS_Order] ADD  CONSTRAINT [DF_MST_DMS_Order_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[MST_Orders] ADD  CONSTRAINT [DF_MST_Orders_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[MST_Orders] ADD  CONSTRAINT [DF_MST_Orders_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[MST_Orders] ADD  CONSTRAINT [DF_MST_Orders_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[MST_OrderStatus] ADD  CONSTRAINT [DF_MST_OrderStatus_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[MST_OrderStatus] ADD  CONSTRAINT [DF_MST_OrderStatus_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[MST_OrderStatus] ADD  CONSTRAINT [DF_MST_OrderStatus_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[MST_OrderType] ADD  CONSTRAINT [DF_MST_OrderType_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[MST_OrderType] ADD  CONSTRAINT [DF_MST_OrderType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[MST_OrderType] ADD  CONSTRAINT [DF_MST_OrderType_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[MST_Portal_Notification] ADD  CONSTRAINT [DF_MST_Portal_Notification_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [ordering].[MST_Portal_Notification] ADD  CONSTRAINT [DF_MST_Portal_Notification_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[MST_Portal_Notification] ADD  CONSTRAINT [DF_MST_Portal_Notification_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[MST_Products] ADD  CONSTRAINT [DF_MST_Products_ERPProductId]  DEFAULT ((0)) FOR [ERPProductId]
GO
ALTER TABLE [ordering].[MST_Products] ADD  CONSTRAINT [DF_MST_Products_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[MST_Products] ADD  CONSTRAINT [DF_MST_Products_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[MST_Products] ADD  CONSTRAINT [DF_MST_Products_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[MST_Section] ADD  CONSTRAINT [DF_MST_Section_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[MST_Section] ADD  CONSTRAINT [DF_MST_Section_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[MST_Section] ADD  CONSTRAINT [DF_MST_Section_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[MST_SettingsQuantity] ADD  CONSTRAINT [DF_MST_SettingsQuantity_Iterations]  DEFAULT ((3)) FOR [Iterations]
GO
ALTER TABLE [ordering].[MST_SettingsQuantity] ADD  CONSTRAINT [DF_MST_SettingsQuantity_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[MST_SettingsQuantity] ADD  CONSTRAINT [DF_MST_SettingsQuantity_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[MST_SettingsQuantity] ADD  CONSTRAINT [DF_MST_SettingsQuantity_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [ordering].[MST_Shift] ADD  CONSTRAINT [DF_MST_Shift_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[MST_Shift] ADD  CONSTRAINT [DF_MST_Shift_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[MST_Shift] ADD  CONSTRAINT [DF_MST_Shift_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[MST_ShiftStatus] ADD  CONSTRAINT [DF_MST_ShiftStatus_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[MST_ShiftStatus] ADD  CONSTRAINT [DF_MST_ShiftStatus_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[MST_ShiftStatus] ADD  CONSTRAINT [DF_MST_ShiftStatus_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[MST_Terminal] ADD  CONSTRAINT [DF_MST_Terminal_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [ordering].[MST_Terminal] ADD  CONSTRAINT [DF_MST_Terminal_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[MST_Terminal] ADD  CONSTRAINT [DF_MST_Terminal_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[OrderPlanning] ADD  CONSTRAINT [DF_OrderPlanning_isDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [ordering].[OrderPlanning] ADD  CONSTRAINT [DF_OrderPlanning_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[OrderPlanning] ADD  CONSTRAINT [DF_OrderPlanning_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ordering].[PSOrderMap] ADD  CONSTRAINT [DF_PSOrderMap_IsSuccessfull]  DEFAULT ((0)) FOR [IsSuccessfull]
GO
ALTER TABLE [ordering].[PSOrderMap] ADD  CONSTRAINT [DF_PSOrderMap_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[STG_Batch] ADD  CONSTRAINT [DF_STG_Batch_IsExported]  DEFAULT ((0)) FOR [IsExported]
GO
ALTER TABLE [ordering].[STG_Batch] ADD  CONSTRAINT [DF_STG_Batch_ExportStatus]  DEFAULT ((2)) FOR [ExportStatusId]
GO
ALTER TABLE [ordering].[STG_Batch] ADD  CONSTRAINT [DF_STG_Batch_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ordering].[STG_Orders] ADD  CONSTRAINT [DF_STG_Orders_BoxId]  DEFAULT ((190)) FOR [BoxId]
GO
ALTER TABLE [ordering].[STG_Orders] ADD  CONSTRAINT [DF_STG_Orders_ExportStatus]  DEFAULT ((2)) FOR [ExportStatusId]
GO
ALTER TABLE [ordering].[STG_Orders] ADD  CONSTRAINT [DF_STG_Orders_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [orders].[CompartmentSizes] ADD  CONSTRAINT [DF_CompartmentSizes_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [orders].[CompartmentSizes] ADD  CONSTRAINT [DF_CompartmentSizes_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [orders].[OrderMap] ADD  CONSTRAINT [DF_OrderMap_IsDone]  DEFAULT ((0)) FOR [IsDone]
GO
ALTER TABLE [orders].[OrderMap] ADD  CONSTRAINT [DF_LOMO_OrderMap_MarkAsDelete]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [orders].[OrderMap] ADD  CONSTRAINT [DF_OrderMap_CreateOn]  DEFAULT (getdate()) FOR [CreateOn]
GO
ALTER TABLE [orders].[OrderMap] ADD  CONSTRAINT [DF_OrderMap_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [orders].[Orders] ADD  CONSTRAINT [DF_Orders_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [orders].[Orders] ADD  CONSTRAINT [DF_Orders_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [orders].[Orders] ADD  CONSTRAINT [DF_Orders_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [orders].[OrderSource] ADD  CONSTRAINT [DF_OrderSource_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [orders].[OrderTasks] ADD  CONSTRAINT [DF_OrderTasks_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [orders].[PortalLogType] ADD  CONSTRAINT [DF_PortalLogType_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [orders].[PortalUser_Log] ADD  CONSTRAINT [DF_PortalUser_Log_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [orders].[PortalUserEmails] ADD  CONSTRAINT [DF_PortalUserEmails_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [orders].[PortalUsers] ADD  CONSTRAINT [DF_PortalUsers_ChangePassword]  DEFAULT ((0)) FOR [ChangePassword]
GO
ALTER TABLE [orders].[PortalUsers] ADD  CONSTRAINT [DF_PortalUsers_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [orders].[PortalUsers] ADD  CONSTRAINT [DF_PortalUsers_isArchived]  DEFAULT ((0)) FOR [isArchived]
GO
ALTER TABLE [orders].[PortalUsers] ADD  CONSTRAINT [DF_PortalUsers_isLocked]  DEFAULT ((0)) FOR [isLocked]
GO
ALTER TABLE [orders].[PortalUsers] ADD  CONSTRAINT [DF_PortalUsers_hasAccepted]  DEFAULT ((0)) FOR [hasAccepted]
GO
ALTER TABLE [orders].[PortalUsers] ADD  CONSTRAINT [DF_PortalUsers_hasAccessToAllSites]  DEFAULT ((0)) FOR [hasAccessToAllSites]
GO
ALTER TABLE [orders].[PortalUsers] ADD  CONSTRAINT [DF_PortalUsers_Supply]  DEFAULT ((1)) FOR [Supply]
GO
ALTER TABLE [orders].[PortalUsers] ADD  CONSTRAINT [DF_PortalUsers_Bulk]  DEFAULT ((0)) FOR [Bulk]
GO
ALTER TABLE [orders].[PortalUsers] ADD  CONSTRAINT [DF_PortalUsers_LpgBulk]  DEFAULT ((0)) FOR [LpgBulk]
GO
ALTER TABLE [orders].[PortalUsers] ADD  CONSTRAINT [DF_PortalUsers_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [orders].[PortalUsers] ADD  CONSTRAINT [DF_PortalUsers_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [orders].[PortalUserSites] ADD  CONSTRAINT [DF_PortalUserSites_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [orders].[PortalUserSites] ADD  CONSTRAINT [DF_PortalUserSites_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [orders].[Productz] ADD  CONSTRAINT [DF_Products_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [orders].[PSPlaningOnline] ADD  CONSTRAINT [DF_PSPlaningOnline_IsApproved]  DEFAULT ((0)) FOR [IsApproved]
GO
ALTER TABLE [orders].[PSPlaningOnline] ADD  CONSTRAINT [DF_PSPlaningOnline_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [orders].[PSPlanning] ADD  CONSTRAINT [DF_PSPlaning_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [orders].[Shift] ADD  CONSTRAINT [DF_ShiftOperatin_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [orders].[ShiftMaster] ADD  CONSTRAINT [DF_shift_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [orders].[ShiftSetting] ADD  CONSTRAINT [DF_ShiftSetting_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [orders].[Status] ADD  CONSTRAINT [DF_LOMO_Status_MarkAsDelete]  DEFAULT ((0)) FOR [MarkAsDelete]
GO
ALTER TABLE [orders].[TaskCode] ADD  CONSTRAINT [DF_TaskCode_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [orders].[TaskCode] ADD  CONSTRAINT [DF_TaskCode_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [report].[Reports] ADD  CONSTRAINT [DF_Reports_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [report].[Reports] ADD  CONSTRAINT [DF_Reports_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [report].[Reports] ADD  CONSTRAINT [DF_Reports_MarkAsDeleted]  DEFAULT ((0)) FOR [MarkAsDeleted]
GO
ALTER TABLE [sticker].[StickerInventory] ADD  CONSTRAINT [DF_StickerInventory_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [sticker].[StickerInventory] ADD  CONSTRAINT [DF_StickerInventory_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sticker].[StickerInventory] ADD  CONSTRAINT [DF_StickerInventory_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sticker].[StickerInventoryDetails] ADD  CONSTRAINT [DF_StickerInventoryDetails_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sticker].[StickerInventoryDetails] ADD  CONSTRAINT [DF_StickerInventoryDetails_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sticker].[StickerResources] ADD  CONSTRAINT [DF_StickerResources_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [sticker].[StickerResources] ADD  CONSTRAINT [DF_StickerResources_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sticker].[StickerResources] ADD  CONSTRAINT [DF_StickerResources_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sticker].[StickerSupplier] ADD  CONSTRAINT [DF_StickerSupplier_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [sticker].[StickerSupplier] ADD  CONSTRAINT [DF_StickerSupplier_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sticker].[StickerSupplier] ADD  CONSTRAINT [DF_StickerSupplier_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sticker].[StickerType] ADD  CONSTRAINT [DF_Sticker_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [sticker].[StickerType] ADD  CONSTRAINT [DF_Sticker_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sticker].[StickerType] ADD  CONSTRAINT [DF_Sticker_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [supply].[DET_PetrolStations] ADD  CONSTRAINT [DF_DET_PetrolStations_RequireGatePass]  DEFAULT ((0)) FOR [RequireGatePass]
GO
ALTER TABLE [supply].[DET_PetrolStations] ADD  CONSTRAINT [DF_DET_PetrolStations_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [supply].[DET_PetrolStations] ADD  CONSTRAINT [DF_DET_PetrolStations_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [supply].[DET_Site_AvailableServices] ADD  CONSTRAINT [DF_DET_Site_AvailableServices_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [supply].[DET_Site_AvailableServices] ADD  CONSTRAINT [DF_DET_Site_AvailableServices_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [supply].[DET_Site_Contacts] ADD  CONSTRAINT [DF_DET_Site_Contacts_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [supply].[DET_Site_Contacts] ADD  CONSTRAINT [DF_DET_Site_Contacts_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [supply].[DET_Site_Contacts] ADD  CONSTRAINT [DF_DET_Site_Contacts_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [supply].[DET_Site_Depot_Durations] ADD  CONSTRAINT [DF_DET_Site_Depot_Durations_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [supply].[DET_Site_Depot_Durations] ADD  CONSTRAINT [DF_DET_Site_Depot_Shifts_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [supply].[DET_Site_Depot_Durations] ADD  CONSTRAINT [DF_DET_Site_Depot_Shifts_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [supply].[DET_Site_GatePassRequirements] ADD  CONSTRAINT [DF_DET_Site_GatePassRequirements_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [supply].[DET_Site_GatePassRequirements] ADD  CONSTRAINT [DF_DET_Site_GatePassRequirements_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [supply].[DET_Site_Products] ADD  CONSTRAINT [DF_DET_Site_Products_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [supply].[DET_Site_Products] ADD  CONSTRAINT [DF_DET_Site_Products_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [supply].[DET_Site_Resources] ADD  CONSTRAINT [DF_DET_Site_Resources_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [supply].[DET_Site_Resources] ADD  CONSTRAINT [DF_DET_Site_Resources_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [supply].[DET_Site_Resources] ADD  CONSTRAINT [DF_DET_Site_Resources_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [supply].[DET_Site_Shifts] ADD  CONSTRAINT [DF_DET_Site_Shifts_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [supply].[DET_Site_Shifts] ADD  CONSTRAINT [DF_DET_Site_Shifts_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [supply].[DET_Site_Shifts] ADD  CONSTRAINT [DF_DET_Site_Shifts_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [supply].[DET_Site_Tanks] ADD  CONSTRAINT [DF_DET_Site_Tanks_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [supply].[DET_Site_Tanks] ADD  CONSTRAINT [DF_DET_Site_Tanks_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [supply].[DET_Site_Tanks] ADD  CONSTRAINT [DF_DET_Site_Tanks_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [supply].[DET_Site_Tanks] ADD  CONSTRAINT [DF_DET_Site_Tanks_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [tank].[JobCardResources] ADD  CONSTRAINT [DF_JobCardResources_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [tank].[JobCardResources] ADD  CONSTRAINT [DF_JobCardResources_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [tank].[JobCardResources] ADD  CONSTRAINT [DF_JobCardResources_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [tank].[StorageTank] ADD  CONSTRAINT [DF_StorageTank_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [tank].[StorageTank] ADD  CONSTRAINT [DF_StorageTank_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [tank].[StorageTankCapacity] ADD  CONSTRAINT [DF_StorageTankCapacity_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [tank].[StorageTankCapacity] ADD  CONSTRAINT [DF_StorageTankCapacity_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [tank].[StorageTankContractor] ADD  CONSTRAINT [DF_StorageTankContractor_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [tank].[StorageTankContractor] ADD  CONSTRAINT [DF_StorageTankContractor_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [tank].[StorageTankJobCard] ADD  CONSTRAINT [DF_StorageTankJobCard_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [tank].[StorageTankJobCard] ADD  CONSTRAINT [DF_StorageTankJobCard_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [tank].[StorageTankStatus] ADD  CONSTRAINT [DF_StorageTankStatus_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [tank].[StorageTankStatus] ADD  CONSTRAINT [DF_StorageTankStatus_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [tank].[StorageTankStickers] ADD  CONSTRAINT [DF_StorageTankStickers_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [tank].[StorageTankStickers] ADD  CONSTRAINT [DF_StorageTankStickers_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [tank].[StorageTankStructure] ADD  CONSTRAINT [DF_StorageTankStructure_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [tank].[StorageTankStructure] ADD  CONSTRAINT [DF_StorageTankStructure_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [tank].[StorageTankStructure] ADD  CONSTRAINT [DF_StorageTankStructure_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [tank].[StorageTankSupplier] ADD  CONSTRAINT [DF_StorageTankSupplier_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [tank].[StorageTankSupplier] ADD  CONSTRAINT [DF_StorageTankSupplier_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [tank].[StorageTankWall] ADD  CONSTRAINT [DF_StorageTankPhyStruc_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [tank].[StorageTankWall] ADD  CONSTRAINT [DF_StorageTankPhyStruc_ModifiedOn]  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [contract].[AccountOpening]  WITH CHECK ADD  CONSTRAINT [FK_AccountOpening_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[AccountOpening] CHECK CONSTRAINT [FK_AccountOpening_AspNetUsers]
GO
ALTER TABLE [contract].[AccountOpening]  WITH CHECK ADD  CONSTRAINT [FK_AccountOpening_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[AccountOpening] CHECK CONSTRAINT [FK_AccountOpening_Site]
GO
ALTER TABLE [contract].[AccountOpeningResources]  WITH CHECK ADD  CONSTRAINT [FK_AccountOpeningResources_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[AccountOpeningResources] CHECK CONSTRAINT [FK_AccountOpeningResources_AspNetUsers]
GO
ALTER TABLE [contract].[AccountOpeningResources]  WITH CHECK ADD  CONSTRAINT [FK_AccountOpeningResources_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[AccountOpeningResources] CHECK CONSTRAINT [FK_AccountOpeningResources_Site]
GO
ALTER TABLE [contract].[Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Agenda_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[Agenda] CHECK CONSTRAINT [FK_Agenda_AspNetUsers]
GO
ALTER TABLE [contract].[Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Agenda_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[Agenda] CHECK CONSTRAINT [FK_Agenda_AspNetUsers1]
GO
ALTER TABLE [contract].[AgendaContracts]  WITH CHECK ADD  CONSTRAINT [FK_AgendaContracts_Agenda] FOREIGN KEY([AgendaId])
REFERENCES [contract].[Agenda] ([Id])
GO
ALTER TABLE [contract].[AgendaContracts] CHECK CONSTRAINT [FK_AgendaContracts_Agenda]
GO
ALTER TABLE [contract].[AgendaContracts]  WITH CHECK ADD  CONSTRAINT [FK_AgendaContracts_AgendaPricingCategory] FOREIGN KEY([PricingCategoryId])
REFERENCES [contract].[AgendaPricingCategory] ([Id])
GO
ALTER TABLE [contract].[AgendaContracts] CHECK CONSTRAINT [FK_AgendaContracts_AgendaPricingCategory]
GO
ALTER TABLE [contract].[AgendaContracts]  WITH CHECK ADD  CONSTRAINT [FK_AgendaContracts_AgendaResultType] FOREIGN KEY([ResultTypeId])
REFERENCES [contract].[AgendaResultType] ([Id])
GO
ALTER TABLE [contract].[AgendaContracts] CHECK CONSTRAINT [FK_AgendaContracts_AgendaResultType]
GO
ALTER TABLE [contract].[AgendaContracts]  WITH CHECK ADD  CONSTRAINT [FK_AgendaContracts_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[AgendaContracts] CHECK CONSTRAINT [FK_AgendaContracts_Site]
GO
ALTER TABLE [contract].[BankGuranteeDocuments]  WITH CHECK ADD  CONSTRAINT [FK_BankGuranteeDocuments_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[BankGuranteeDocuments] CHECK CONSTRAINT [FK_BankGuranteeDocuments_AspNetUsers]
GO
ALTER TABLE [contract].[BankGuranteeDocuments]  WITH CHECK ADD  CONSTRAINT [FK_BankGuranteeDocuments_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[BankGuranteeDocuments] CHECK CONSTRAINT [FK_BankGuranteeDocuments_Site]
GO
ALTER TABLE [contract].[BatchContracts]  WITH CHECK ADD  CONSTRAINT [FK_BatchContracts_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[BatchContracts] CHECK CONSTRAINT [FK_BatchContracts_AspNetUsers]
GO
ALTER TABLE [contract].[BatchContracts]  WITH CHECK ADD  CONSTRAINT [FK_BatchContracts_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[BatchContracts] CHECK CONSTRAINT [FK_BatchContracts_AspNetUsers1]
GO
ALTER TABLE [contract].[BatchContracts]  WITH CHECK ADD  CONSTRAINT [FK_BatchContracts_LegalBatch] FOREIGN KEY([BatchId])
REFERENCES [contract].[LegalBatch] ([Id])
GO
ALTER TABLE [contract].[BatchContracts] CHECK CONSTRAINT [FK_BatchContracts_LegalBatch]
GO
ALTER TABLE [contract].[BatchContracts]  WITH CHECK ADD  CONSTRAINT [FK_BatchContracts_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[BatchContracts] CHECK CONSTRAINT [FK_BatchContracts_Site]
GO
ALTER TABLE [contract].[BatchResultType]  WITH CHECK ADD  CONSTRAINT [FK_BatchResultType_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[BatchResultType] CHECK CONSTRAINT [FK_BatchResultType_AspNetUsers]
GO
ALTER TABLE [contract].[BatchResultType]  WITH CHECK ADD  CONSTRAINT [FK_BatchResultType_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[BatchResultType] CHECK CONSTRAINT [FK_BatchResultType_AspNetUsers1]
GO
ALTER TABLE [contract].[BGContractDocs]  WITH CHECK ADD  CONSTRAINT [FK_BGContractDocs_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[BGContractDocs] CHECK CONSTRAINT [FK_BGContractDocs_AspNetUsers]
GO
ALTER TABLE [contract].[BGContractDocs]  WITH CHECK ADD  CONSTRAINT [FK_BGContractDocs_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[BGContractDocs] CHECK CONSTRAINT [FK_BGContractDocs_Site]
GO
ALTER TABLE [contract].[ContactType]  WITH CHECK ADD  CONSTRAINT [FK_ContactType_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[ContactType] CHECK CONSTRAINT [FK_ContactType_AspNetUsers]
GO
ALTER TABLE [contract].[ContactType]  WITH CHECK ADD  CONSTRAINT [FK_ContactType_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[ContactType] CHECK CONSTRAINT [FK_ContactType_AspNetUsers1]
GO
ALTER TABLE [contract].[ContractAddress]  WITH CHECK ADD  CONSTRAINT [FK_ContractAddress_ContractAddress] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [contract].[ContractAddress] CHECK CONSTRAINT [FK_ContractAddress_ContractAddress]
GO
ALTER TABLE [contract].[ContractAddress]  WITH CHECK ADD  CONSTRAINT [FK_ContractAddress_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [contract].[ContractAddress] CHECK CONSTRAINT [FK_ContractAddress_Country]
GO
ALTER TABLE [contract].[ContractAddress]  WITH CHECK ADD  CONSTRAINT [FK_ContractAddress_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[ContractAddress] CHECK CONSTRAINT [FK_ContractAddress_Site]
GO
ALTER TABLE [contract].[ContractContacts]  WITH CHECK ADD  CONSTRAINT [FK_ContractContacts_ContractContacts] FOREIGN KEY([TypeId])
REFERENCES [contract].[Type] ([Id])
GO
ALTER TABLE [contract].[ContractContacts] CHECK CONSTRAINT [FK_ContractContacts_ContractContacts]
GO
ALTER TABLE [contract].[ContractContacts]  WITH CHECK ADD  CONSTRAINT [FK_ContractContacts_Designation] FOREIGN KEY([DesignationId])
REFERENCES [contract].[Designation] ([Id])
GO
ALTER TABLE [contract].[ContractContacts] CHECK CONSTRAINT [FK_ContractContacts_Designation]
GO
ALTER TABLE [contract].[ContractContacts]  WITH CHECK ADD  CONSTRAINT [FK_ContractContacts_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[ContractContacts] CHECK CONSTRAINT [FK_ContractContacts_Site]
GO
ALTER TABLE [contract].[ContractException]  WITH CHECK ADD  CONSTRAINT [FK_ContractException_Stage] FOREIGN KEY([StageId])
REFERENCES [contract].[Stage] ([Id])
GO
ALTER TABLE [contract].[ContractException] CHECK CONSTRAINT [FK_ContractException_Stage]
GO
ALTER TABLE [contract].[ContractException]  WITH CHECK ADD  CONSTRAINT [FK_ContractException_SubStage] FOREIGN KEY([SubStageId])
REFERENCES [contract].[SubStage] ([Id])
GO
ALTER TABLE [contract].[ContractException] CHECK CONSTRAINT [FK_ContractException_SubStage]
GO
ALTER TABLE [contract].[ContractorType]  WITH CHECK ADD  CONSTRAINT [FK_ContractorType_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[ContractorType] CHECK CONSTRAINT [FK_ContractorType_AspNetUsers]
GO
ALTER TABLE [contract].[ContractorType]  WITH CHECK ADD  CONSTRAINT [FK_ContractorType_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[ContractorType] CHECK CONSTRAINT [FK_ContractorType_AspNetUsers1]
GO
ALTER TABLE [contract].[CrResources]  WITH CHECK ADD  CONSTRAINT [FK_CrResources_SiteCRAnalysis] FOREIGN KEY([CrNodeId])
REFERENCES [contract].[SiteCRAnalysis] ([Id])
GO
ALTER TABLE [contract].[CrResources] CHECK CONSTRAINT [FK_CrResources_SiteCRAnalysis]
GO
ALTER TABLE [contract].[Designation]  WITH CHECK ADD  CONSTRAINT [FK_Designation_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[Designation] CHECK CONSTRAINT [FK_Designation_AspNetUsers]
GO
ALTER TABLE [contract].[Designation]  WITH CHECK ADD  CONSTRAINT [FK_Designation_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[Designation] CHECK CONSTRAINT [FK_Designation_AspNetUsers1]
GO
ALTER TABLE [contract].[DocumentsToBeUploaded]  WITH CHECK ADD  CONSTRAINT [FK_DocumentsToBeUploaded_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[DocumentsToBeUploaded] CHECK CONSTRAINT [FK_DocumentsToBeUploaded_AspNetUsers]
GO
ALTER TABLE [contract].[LegalBatch]  WITH CHECK ADD  CONSTRAINT [FK_LegalBatch_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[LegalBatch] CHECK CONSTRAINT [FK_LegalBatch_AspNetUsers]
GO
ALTER TABLE [contract].[LegalBatch]  WITH CHECK ADD  CONSTRAINT [FK_LegalBatch_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[LegalBatch] CHECK CONSTRAINT [FK_LegalBatch_AspNetUsers1]
GO
ALTER TABLE [contract].[MobilizedTank]  WITH CHECK ADD  CONSTRAINT [FK_MobilizedTank_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[MobilizedTank] CHECK CONSTRAINT [FK_MobilizedTank_Site]
GO
ALTER TABLE [contract].[MobilizedTank]  WITH CHECK ADD  CONSTRAINT [FK_MobilizedTank_StorageTank] FOREIGN KEY([TankId])
REFERENCES [tank].[StorageTank] ([Id])
GO
ALTER TABLE [contract].[MobilizedTank] CHECK CONSTRAINT [FK_MobilizedTank_StorageTank]
GO
ALTER TABLE [contract].[MonthlyConsumptionDetails]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyConsumptionDetails_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[MonthlyConsumptionDetails] CHECK CONSTRAINT [FK_MonthlyConsumptionDetails_Site]
GO
ALTER TABLE [contract].[OffRoadTransportationCost]  WITH CHECK ADD  CONSTRAINT [FK_OffRoadTransportationCost_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[OffRoadTransportationCost] CHECK CONSTRAINT [FK_OffRoadTransportationCost_AspNetUsers]
GO
ALTER TABLE [contract].[OffRoadTransportationCost]  WITH CHECK ADD  CONSTRAINT [FK_OffRoadTransportationCost_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[OffRoadTransportationCost] CHECK CONSTRAINT [FK_OffRoadTransportationCost_AspNetUsers1]
GO
ALTER TABLE [contract].[OnRoadTransportCost]  WITH CHECK ADD  CONSTRAINT [FK_OnRoadTransportCost_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[OnRoadTransportCost] CHECK CONSTRAINT [FK_OnRoadTransportCost_AspNetUsers]
GO
ALTER TABLE [contract].[OnRoadTransportCost]  WITH CHECK ADD  CONSTRAINT [FK_OnRoadTransportCost_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[OnRoadTransportCost] CHECK CONSTRAINT [FK_OnRoadTransportCost_AspNetUsers1]
GO
ALTER TABLE [contract].[PricingCategoryPriceList]  WITH CHECK ADD  CONSTRAINT [FK_PricingCategoryPriceList_AgendaPricingCategory] FOREIGN KEY([PricingCategoryId])
REFERENCES [contract].[AgendaPricingCategory] ([Id])
GO
ALTER TABLE [contract].[PricingCategoryPriceList] CHECK CONSTRAINT [FK_PricingCategoryPriceList_AgendaPricingCategory]
GO
ALTER TABLE [contract].[PricingCategoryPriceList]  WITH CHECK ADD  CONSTRAINT [FK_PricingCategoryPriceList_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[PricingCategoryPriceList] CHECK CONSTRAINT [FK_PricingCategoryPriceList_AspNetUsers]
GO
ALTER TABLE [contract].[PricingCategoryPriceList]  WITH CHECK ADD  CONSTRAINT [FK_PricingCategoryPriceList_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[PricingCategoryPriceList] CHECK CONSTRAINT [FK_PricingCategoryPriceList_AspNetUsers1]
GO
ALTER TABLE [contract].[ProjectClassification]  WITH CHECK ADD  CONSTRAINT [FK_ProjectClassification_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[ProjectClassification] CHECK CONSTRAINT [FK_ProjectClassification_AspNetUsers]
GO
ALTER TABLE [contract].[ProjectClassification]  WITH CHECK ADD  CONSTRAINT [FK_ProjectClassification_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[ProjectClassification] CHECK CONSTRAINT [FK_ProjectClassification_AspNetUsers1]
GO
ALTER TABLE [contract].[Site]  WITH CHECK ADD  CONSTRAINT [FK_Site_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[Site] CHECK CONSTRAINT [FK_Site_AspNetUsers]
GO
ALTER TABLE [contract].[Site]  WITH CHECK ADD  CONSTRAINT [FK_Site_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[Site] CHECK CONSTRAINT [FK_Site_AspNetUsers1]
GO
ALTER TABLE [contract].[Site]  WITH CHECK ADD  CONSTRAINT [FK_Site_ContractorType] FOREIGN KEY([ContractorTypeId])
REFERENCES [contract].[ContractorType] ([Id])
GO
ALTER TABLE [contract].[Site] CHECK CONSTRAINT [FK_Site_ContractorType]
GO
ALTER TABLE [contract].[Site]  WITH CHECK ADD  CONSTRAINT [FK_Site_ProductNeeded] FOREIGN KEY([ProdNeededId])
REFERENCES [contract].[ProductNeeded] ([Id])
GO
ALTER TABLE [contract].[Site] CHECK CONSTRAINT [FK_Site_ProductNeeded]
GO
ALTER TABLE [contract].[Site]  WITH CHECK ADD  CONSTRAINT [FK_Site_Stage] FOREIGN KEY([StageId])
REFERENCES [contract].[Stage] ([Id])
GO
ALTER TABLE [contract].[Site] CHECK CONSTRAINT [FK_Site_Stage]
GO
ALTER TABLE [contract].[Site]  WITH CHECK ADD  CONSTRAINT [FK_Site_SubStage] FOREIGN KEY([SubStageId])
REFERENCES [contract].[SubStage] ([Id])
GO
ALTER TABLE [contract].[Site] CHECK CONSTRAINT [FK_Site_SubStage]
GO
ALTER TABLE [contract].[Site]  WITH CHECK ADD  CONSTRAINT [FK_Site_SupplyTo] FOREIGN KEY([SupplyToTypeId])
REFERENCES [contract].[SupplyTo] ([Id])
GO
ALTER TABLE [contract].[Site] CHECK CONSTRAINT [FK_Site_SupplyTo]
GO
ALTER TABLE [contract].[SiteAttachmentCheckList]  WITH CHECK ADD  CONSTRAINT [FK_SiteAttachmentCheckList_AtachmentCheckList] FOREIGN KEY([AttachmentId])
REFERENCES [contract].[AtachmentCheckList] ([Id])
GO
ALTER TABLE [contract].[SiteAttachmentCheckList] CHECK CONSTRAINT [FK_SiteAttachmentCheckList_AtachmentCheckList]
GO
ALTER TABLE [contract].[SiteAttachmentCheckList]  WITH CHECK ADD  CONSTRAINT [FK_SiteAttachmentCheckList_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[SiteAttachmentCheckList] CHECK CONSTRAINT [FK_SiteAttachmentCheckList_Site]
GO
ALTER TABLE [contract].[SiteCRAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_SiteCRAnalysis_ApplicantType] FOREIGN KEY([ApplicantTypeId])
REFERENCES [contract].[ApplicantType] ([Id])
GO
ALTER TABLE [contract].[SiteCRAnalysis] CHECK CONSTRAINT [FK_SiteCRAnalysis_ApplicantType]
GO
ALTER TABLE [contract].[SiteCRAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_SiteCRAnalysis_CRClassification] FOREIGN KEY([ClassificationId])
REFERENCES [contract].[CRClassification] ([Id])
GO
ALTER TABLE [contract].[SiteCRAnalysis] CHECK CONSTRAINT [FK_SiteCRAnalysis_CRClassification]
GO
ALTER TABLE [contract].[SiteCRAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_SiteCRAnalysis_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[SiteCRAnalysis] CHECK CONSTRAINT [FK_SiteCRAnalysis_Site]
GO
ALTER TABLE [contract].[SiteCRAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_SiteCRAnalysis_SiteCRAnalysis] FOREIGN KEY([NationalityId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [contract].[SiteCRAnalysis] CHECK CONSTRAINT [FK_SiteCRAnalysis_SiteCRAnalysis]
GO
ALTER TABLE [contract].[SiteDocuments]  WITH CHECK ADD  CONSTRAINT [FK_SiteDocuments_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[SiteDocuments] CHECK CONSTRAINT [FK_SiteDocuments_Site]
GO
ALTER TABLE [contract].[SiteDocuments]  WITH CHECK ADD  CONSTRAINT [FK_SiteDocuments_SiteDocuments] FOREIGN KEY([SiteAttachmentChecklistId])
REFERENCES [contract].[SiteAttachmentCheckList] ([Id])
GO
ALTER TABLE [contract].[SiteDocuments] CHECK CONSTRAINT [FK_SiteDocuments_SiteDocuments]
GO
ALTER TABLE [contract].[SiteInspectionType]  WITH CHECK ADD  CONSTRAINT [FK_SiteInspectionType_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[SiteInspectionType] CHECK CONSTRAINT [FK_SiteInspectionType_AspNetUsers]
GO
ALTER TABLE [contract].[SiteProjectDetails]  WITH CHECK ADD  CONSTRAINT [FK_SiteProjectDetails_ProjectClassification] FOREIGN KEY([ProjectClassificationId])
REFERENCES [contract].[ProjectClassification] ([Id])
GO
ALTER TABLE [contract].[SiteProjectDetails] CHECK CONSTRAINT [FK_SiteProjectDetails_ProjectClassification]
GO
ALTER TABLE [contract].[SiteProjectDetails]  WITH CHECK ADD  CONSTRAINT [FK_SiteProjectDetails_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[SiteProjectDetails] CHECK CONSTRAINT [FK_SiteProjectDetails_Site]
GO
ALTER TABLE [contract].[SiteProjectDetails]  WITH CHECK ADD  CONSTRAINT [FK_SiteProjectDetails_SiteProjectDetails] FOREIGN KEY([ContractorTypeId])
REFERENCES [contract].[ContractorType] ([Id])
GO
ALTER TABLE [contract].[SiteProjectDetails] CHECK CONSTRAINT [FK_SiteProjectDetails_SiteProjectDetails]
GO
ALTER TABLE [contract].[SiteStatus]  WITH CHECK ADD  CONSTRAINT [FK_SiteStatus_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[SiteStatus] CHECK CONSTRAINT [FK_SiteStatus_AspNetUsers]
GO
ALTER TABLE [contract].[SiteStatus]  WITH CHECK ADD  CONSTRAINT [FK_SiteStatus_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[SiteStatus] CHECK CONSTRAINT [FK_SiteStatus_AspNetUsers1]
GO
ALTER TABLE [contract].[SiteStatus]  WITH CHECK ADD  CONSTRAINT [FK_SiteStatus_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[SiteStatus] CHECK CONSTRAINT [FK_SiteStatus_Site]
GO
ALTER TABLE [contract].[SiteStatus]  WITH CHECK ADD  CONSTRAINT [FK_SiteStatus_Stage] FOREIGN KEY([StageId])
REFERENCES [contract].[Stage] ([Id])
GO
ALTER TABLE [contract].[SiteStatus] CHECK CONSTRAINT [FK_SiteStatus_Stage]
GO
ALTER TABLE [contract].[SiteStatus]  WITH CHECK ADD  CONSTRAINT [FK_SiteStatus_SubStage] FOREIGN KEY([SubStageId])
REFERENCES [contract].[SubStage] ([Id])
GO
ALTER TABLE [contract].[SiteStatus] CHECK CONSTRAINT [FK_SiteStatus_SubStage]
GO
ALTER TABLE [contract].[SiteVerification]  WITH CHECK ADD  CONSTRAINT [FK_SiteVerify_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[SiteVerification] CHECK CONSTRAINT [FK_SiteVerify_Site]
GO
ALTER TABLE [contract].[SiteVisitAddresses]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitAddresses_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [contract].[SiteVisitAddresses] CHECK CONSTRAINT [FK_SiteVisitAddresses_City]
GO
ALTER TABLE [contract].[SiteVisitAddresses]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitAddresses_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [contract].[SiteVisitAddresses] CHECK CONSTRAINT [FK_SiteVisitAddresses_Country]
GO
ALTER TABLE [contract].[SiteVisitAddresses]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitAddresses_SiteVisitReport] FOREIGN KEY([SiteVisitReportId])
REFERENCES [contract].[SiteVisitReport] ([Id])
GO
ALTER TABLE [contract].[SiteVisitAddresses] CHECK CONSTRAINT [FK_SiteVisitAddresses_SiteVisitReport]
GO
ALTER TABLE [contract].[SiteVisitProjectDetails]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitProjectDetails_ContractorType] FOREIGN KEY([ContractorTypeId])
REFERENCES [contract].[ContractorType] ([Id])
GO
ALTER TABLE [contract].[SiteVisitProjectDetails] CHECK CONSTRAINT [FK_SiteVisitProjectDetails_ContractorType]
GO
ALTER TABLE [contract].[SiteVisitProjectDetails]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitProjectDetails_ProjectClassification] FOREIGN KEY([ProjectClassificationId])
REFERENCES [contract].[ProjectClassification] ([Id])
GO
ALTER TABLE [contract].[SiteVisitProjectDetails] CHECK CONSTRAINT [FK_SiteVisitProjectDetails_ProjectClassification]
GO
ALTER TABLE [contract].[SiteVisitProjectDetails]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitProjectDetails_SiteVisitReport] FOREIGN KEY([SiteVisitReportId])
REFERENCES [contract].[SiteVisitReport] ([Id])
GO
ALTER TABLE [contract].[SiteVisitProjectDetails] CHECK CONSTRAINT [FK_SiteVisitProjectDetails_SiteVisitReport]
GO
ALTER TABLE [contract].[SiteVisitReport]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReport_ScheduleList] FOREIGN KEY([ScheduleId])
REFERENCES [contract].[ScheduleList] ([Id])
GO
ALTER TABLE [contract].[SiteVisitReport] CHECK CONSTRAINT [FK_SiteVisitReport_ScheduleList]
GO
ALTER TABLE [contract].[SiteVisitReport]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReport_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[SiteVisitReport] CHECK CONSTRAINT [FK_SiteVisitReport_Site]
GO
ALTER TABLE [contract].[SiteVisitReport]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReport_SiteInspectionType] FOREIGN KEY([SiteInspectionTypeId])
REFERENCES [contract].[SiteInspectionType] ([Id])
GO
ALTER TABLE [contract].[SiteVisitReport] CHECK CONSTRAINT [FK_SiteVisitReport_SiteInspectionType]
GO
ALTER TABLE [contract].[SiteVisitReport]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReport_SiteVisitReport] FOREIGN KEY([ContractorTypeId])
REFERENCES [contract].[ContractorType] ([Id])
GO
ALTER TABLE [contract].[SiteVisitReport] CHECK CONSTRAINT [FK_SiteVisitReport_SiteVisitReport]
GO
ALTER TABLE [contract].[SiteVisitReport]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReport_SiteZones] FOREIGN KEY([SiteZoneId])
REFERENCES [contract].[SiteZones] ([Id])
GO
ALTER TABLE [contract].[SiteVisitReport] CHECK CONSTRAINT [FK_SiteVisitReport_SiteZones]
GO
ALTER TABLE [contract].[SiteVisitReportContacts]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReportContacts_Designation] FOREIGN KEY([DesignationId])
REFERENCES [contract].[Designation] ([Id])
GO
ALTER TABLE [contract].[SiteVisitReportContacts] CHECK CONSTRAINT [FK_SiteVisitReportContacts_Designation]
GO
ALTER TABLE [contract].[SiteVisitReportContacts]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReportContacts_SiteVisitReport] FOREIGN KEY([SiteVisitReportId])
REFERENCES [contract].[SiteVisitReport] ([Id])
GO
ALTER TABLE [contract].[SiteVisitReportContacts] CHECK CONSTRAINT [FK_SiteVisitReportContacts_SiteVisitReport]
GO
ALTER TABLE [contract].[SiteVisitReportContacts]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReportContacts_Type] FOREIGN KEY([TypeId])
REFERENCES [contract].[Type] ([Id])
GO
ALTER TABLE [contract].[SiteVisitReportContacts] CHECK CONSTRAINT [FK_SiteVisitReportContacts_Type]
GO
ALTER TABLE [contract].[SiteVisitSupplyToDetails]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitSupplyToDetails_SiteVisitReport] FOREIGN KEY([SiteVisitReportId])
REFERENCES [contract].[SiteVisitReport] ([Id])
GO
ALTER TABLE [contract].[SiteVisitSupplyToDetails] CHECK CONSTRAINT [FK_SiteVisitSupplyToDetails_SiteVisitReport]
GO
ALTER TABLE [contract].[SiteVisitSupplyToDetails]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitSupplyToDetails_StorageTankType] FOREIGN KEY([StorageTankTypeId])
REFERENCES [contract].[StorageTankType] ([Id])
GO
ALTER TABLE [contract].[SiteVisitSupplyToDetails] CHECK CONSTRAINT [FK_SiteVisitSupplyToDetails_StorageTankType]
GO
ALTER TABLE [contract].[SiteZones]  WITH CHECK ADD  CONSTRAINT [FK_SiteZones_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[SiteZones] CHECK CONSTRAINT [FK_SiteZones_AspNetUsers]
GO
ALTER TABLE [contract].[SiteZones]  WITH CHECK ADD  CONSTRAINT [FK_SiteZones_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[SiteZones] CHECK CONSTRAINT [FK_SiteZones_AspNetUsers1]
GO
ALTER TABLE [contract].[StorageTankPriceList]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankPriceList_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[StorageTankPriceList] CHECK CONSTRAINT [FK_StorageTankPriceList_AspNetUsers]
GO
ALTER TABLE [contract].[StorageTankPriceList]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankPriceList_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[StorageTankPriceList] CHECK CONSTRAINT [FK_StorageTankPriceList_AspNetUsers1]
GO
ALTER TABLE [contract].[StorageTankType]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankType_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[StorageTankType] CHECK CONSTRAINT [FK_StorageTankType_AspNetUsers]
GO
ALTER TABLE [contract].[StorageTankType]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankType_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[StorageTankType] CHECK CONSTRAINT [FK_StorageTankType_AspNetUsers1]
GO
ALTER TABLE [contract].[SupplyToDetails]  WITH CHECK ADD  CONSTRAINT [FK_SupplyToDetails_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[SupplyToDetails] CHECK CONSTRAINT [FK_SupplyToDetails_Site]
GO
ALTER TABLE [contract].[SupplyToDetails]  WITH CHECK ADD  CONSTRAINT [FK_SupplyToDetails_StorageTankType] FOREIGN KEY([StorageTankTypeId])
REFERENCES [contract].[StorageTankType] ([Id])
GO
ALTER TABLE [contract].[SupplyToDetails] CHECK CONSTRAINT [FK_SupplyToDetails_StorageTankType]
GO
ALTER TABLE [contract].[TankConfDocuments]  WITH CHECK ADD  CONSTRAINT [FK_TankConfDocuments_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[TankConfDocuments] CHECK CONSTRAINT [FK_TankConfDocuments_AspNetUsers]
GO
ALTER TABLE [contract].[TankConfDocuments]  WITH CHECK ADD  CONSTRAINT [FK_TankConfDocuments_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [contract].[TankConfDocuments] CHECK CONSTRAINT [FK_TankConfDocuments_Site]
GO
ALTER TABLE [contract].[Type]  WITH CHECK ADD  CONSTRAINT [FK_Type_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[Type] CHECK CONSTRAINT [FK_Type_AspNetUsers]
GO
ALTER TABLE [contract].[Type]  WITH CHECK ADD  CONSTRAINT [FK_Type_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[Type] CHECK CONSTRAINT [FK_Type_AspNetUsers1]
GO
ALTER TABLE [contract].[WoqodSupplier]  WITH CHECK ADD  CONSTRAINT [FK_WoqodSupplier_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[WoqodSupplier] CHECK CONSTRAINT [FK_WoqodSupplier_AspNetUsers]
GO
ALTER TABLE [contract].[WoqodSupplier]  WITH CHECK ADD  CONSTRAINT [FK_WoqodSupplier_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[WoqodSupplier] CHECK CONSTRAINT [FK_WoqodSupplier_AspNetUsers1]
GO
ALTER TABLE [contract].[WoqodTank]  WITH CHECK ADD  CONSTRAINT [FK_WoqodTank_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[WoqodTank] CHECK CONSTRAINT [FK_WoqodTank_AspNetUsers]
GO
ALTER TABLE [contract].[WoqodTank]  WITH CHECK ADD  CONSTRAINT [FK_WoqodTank_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[WoqodTank] CHECK CONSTRAINT [FK_WoqodTank_AspNetUsers1]
GO
ALTER TABLE [contract].[WoqodTankType]  WITH CHECK ADD  CONSTRAINT [FK_WoqodTankType_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[WoqodTankType] CHECK CONSTRAINT [FK_WoqodTankType_AspNetUsers]
GO
ALTER TABLE [contract].[WoqodTankType]  WITH CHECK ADD  CONSTRAINT [FK_WoqodTankType_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [contract].[WoqodTankType] CHECK CONSTRAINT [FK_WoqodTankType_AspNetUsers1]
GO
ALTER TABLE [dbo].[Action]  WITH CHECK ADD  CONSTRAINT [FK_Action_Module] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Module] ([Id])
GO
ALTER TABLE [dbo].[Action] CHECK CONSTRAINT [FK_Action_Module]
GO
ALTER TABLE [dbo].[Address]  WITH NOCHECK ADD  CONSTRAINT [FK_Address_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[Address] NOCHECK CONSTRAINT [FK_Address_City]
GO
ALTER TABLE [dbo].[Address]  WITH NOCHECK ADD  CONSTRAINT [FK_Address_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[Address] NOCHECK CONSTRAINT [FK_Address_Country]
GO
ALTER TABLE [dbo].[ApplicationContactDetails]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationContactDetails_ContactDetails] FOREIGN KEY([ContactDetailsID])
REFERENCES [dbo].[ContactDetails] ([ID])
GO
ALTER TABLE [dbo].[ApplicationContactDetails] CHECK CONSTRAINT [FK_ApplicationContactDetails_ContactDetails]
GO
ALTER TABLE [dbo].[ApplicationContactDetails]  WITH CHECK ADD  CONSTRAINT [FK_ApplicationContactDetails_ContractSubmissionV3] FOREIGN KEY([ApplicationID])
REFERENCES [dbo].[ContractSubmissionV3] ([Id])
GO
ALTER TABLE [dbo].[ApplicationContactDetails] CHECK CONSTRAINT [FK_ApplicationContactDetails_ContractSubmissionV3]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_AspNetUsers]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_AspNetUsers1]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_AttendanceStatus] FOREIGN KEY([AttendanceStatusId])
REFERENCES [dbo].[AttendanceStatus] ([Id])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_AttendanceStatus]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Employee] FOREIGN KEY([EmpId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Employee]
GO
ALTER TABLE [dbo].[AttendanceStatus]  WITH CHECK ADD  CONSTRAINT [FK_AttendanceStatus_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[AttendanceStatus] CHECK CONSTRAINT [FK_AttendanceStatus_AspNetUsers]
GO
ALTER TABLE [dbo].[AttendanceStatus]  WITH CHECK ADD  CONSTRAINT [FK_AttendanceStatus_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[AttendanceStatus] CHECK CONSTRAINT [FK_AttendanceStatus_AspNetUsers1]
GO
ALTER TABLE [dbo].[ChecklistEntry]  WITH CHECK ADD  CONSTRAINT [FK_ChecklistEntry_CheckListMaster] FOREIGN KEY([CheckListId])
REFERENCES [dbo].[CheckListMaster] ([Id])
GO
ALTER TABLE [dbo].[ChecklistEntry] CHECK CONSTRAINT [FK_ChecklistEntry_CheckListMaster]
GO
ALTER TABLE [dbo].[ChecklistEntrySteps]  WITH NOCHECK ADD  CONSTRAINT [FK_ChecklistEntrySteps_ChecklistEntry] FOREIGN KEY([ChecklistEntryId])
REFERENCES [dbo].[ChecklistEntry] ([Id])
GO
ALTER TABLE [dbo].[ChecklistEntrySteps] NOCHECK CONSTRAINT [FK_ChecklistEntrySteps_ChecklistEntry]
GO
ALTER TABLE [dbo].[ChecklistEntrySteps]  WITH NOCHECK ADD  CONSTRAINT [FK_ChecklistEntrySteps_ChecklistSteps] FOREIGN KEY([ChecklistStepsId])
REFERENCES [dbo].[ChecklistSteps] ([Id])
GO
ALTER TABLE [dbo].[ChecklistEntrySteps] NOCHECK CONSTRAINT [FK_ChecklistEntrySteps_ChecklistSteps]
GO
ALTER TABLE [dbo].[ChecklistEntrySteps]  WITH NOCHECK ADD  CONSTRAINT [FK_ChecklistEntrySteps_ChecklistStepsResult] FOREIGN KEY([ResultId])
REFERENCES [dbo].[ChecklistStepsResult] ([Id])
GO
ALTER TABLE [dbo].[ChecklistEntrySteps] NOCHECK CONSTRAINT [FK_ChecklistEntrySteps_ChecklistStepsResult]
GO
ALTER TABLE [dbo].[CheckListMaster]  WITH CHECK ADD  CONSTRAINT [FK_CheckListMaster_ChecklistCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ChecklistCategory] ([Id])
GO
ALTER TABLE [dbo].[CheckListMaster] CHECK CONSTRAINT [FK_CheckListMaster_ChecklistCategory]
GO
ALTER TABLE [dbo].[ChecklistSteps]  WITH CHECK ADD  CONSTRAINT [FK_ChecklistSteps_CheckListMaster] FOREIGN KEY([CheckListId])
REFERENCES [dbo].[CheckListMaster] ([Id])
GO
ALTER TABLE [dbo].[ChecklistSteps] CHECK CONSTRAINT [FK_ChecklistSteps_CheckListMaster]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Country]
GO
ALTER TABLE [dbo].[ContractChecklistEntrySteps]  WITH CHECK ADD  CONSTRAINT [FK_ContractChecklistEntrySteps_DocumentChecklistEntry] FOREIGN KEY([ChecklistEntryId])
REFERENCES [dbo].[DocumentChecklistEntry] ([Id])
GO
ALTER TABLE [dbo].[ContractChecklistEntrySteps] CHECK CONSTRAINT [FK_ContractChecklistEntrySteps_DocumentChecklistEntry]
GO
ALTER TABLE [dbo].[ContractChecklistEntrySteps]  WITH CHECK ADD  CONSTRAINT [FK_ContractChecklistEntrySteps_DocumentChecklistMaster] FOREIGN KEY([ChecklistStepsId])
REFERENCES [dbo].[DocumentChecklistMaster] ([Id])
GO
ALTER TABLE [dbo].[ContractChecklistEntrySteps] CHECK CONSTRAINT [FK_ContractChecklistEntrySteps_DocumentChecklistMaster]
GO
ALTER TABLE [dbo].[ContractCustomerVisit]  WITH NOCHECK ADD  CONSTRAINT [FK_ContractCustomerVisit_ChecklistEntry] FOREIGN KEY([ChecklistId])
REFERENCES [dbo].[ChecklistEntry] ([Id])
GO
ALTER TABLE [dbo].[ContractCustomerVisit] NOCHECK CONSTRAINT [FK_ContractCustomerVisit_ChecklistEntry]
GO
ALTER TABLE [dbo].[ContractCustomerVisit]  WITH NOCHECK ADD  CONSTRAINT [FK_ContractCustomerVisit_Contact] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Contact] ([ID])
GO
ALTER TABLE [dbo].[ContractCustomerVisit] NOCHECK CONSTRAINT [FK_ContractCustomerVisit_Contact]
GO
ALTER TABLE [dbo].[ContractCustomerVisit]  WITH NOCHECK ADD  CONSTRAINT [FK_ContractCustomerVisit_Contract] FOREIGN KEY([ContractId])
REFERENCES [dbo].[Contract] ([Id])
GO
ALTER TABLE [dbo].[ContractCustomerVisit] NOCHECK CONSTRAINT [FK_ContractCustomerVisit_Contract]
GO
ALTER TABLE [dbo].[ContractCustomerVisit]  WITH NOCHECK ADD  CONSTRAINT [FK_ContractCustomerVisit_ContractCustomerVisitType] FOREIGN KEY([VisitType])
REFERENCES [dbo].[ContractCustomerVisitType] ([ID])
GO
ALTER TABLE [dbo].[ContractCustomerVisit] NOCHECK CONSTRAINT [FK_ContractCustomerVisit_ContractCustomerVisitType]
GO
ALTER TABLE [dbo].[ContractSubDetails]  WITH CHECK ADD  CONSTRAINT [FK_ContractSubDetails_ContractSubmission] FOREIGN KEY([ParentId])
REFERENCES [dbo].[ContractSubmission] ([Id])
GO
ALTER TABLE [dbo].[ContractSubDetails] CHECK CONSTRAINT [FK_ContractSubDetails_ContractSubmission]
GO
ALTER TABLE [dbo].[ContractSubDetailsV3]  WITH CHECK ADD  CONSTRAINT [FK_ContractSubDetailsV3_ContractSubmissionV31] FOREIGN KEY([ParentId])
REFERENCES [dbo].[ContractSubmissionV3] ([Id])
GO
ALTER TABLE [dbo].[ContractSubDetailsV3] CHECK CONSTRAINT [FK_ContractSubDetailsV3_ContractSubmissionV31]
GO
ALTER TABLE [dbo].[ContractSubDetailsV3]  WITH CHECK ADD  CONSTRAINT [FK_ContractSubDetailsV3_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ContractSubDetailsV3] CHECK CONSTRAINT [FK_ContractSubDetailsV3_Product]
GO
ALTER TABLE [dbo].[ContractSubDetailsV3]  WITH CHECK ADD  CONSTRAINT [FK_ContractSubDetailsV3_SupplyTo] FOREIGN KEY([SupplyToId])
REFERENCES [dbo].[SupplyTo] ([Id])
GO
ALTER TABLE [dbo].[ContractSubDetailsV3] CHECK CONSTRAINT [FK_ContractSubDetailsV3_SupplyTo]
GO
ALTER TABLE [dbo].[ContractSubmission]  WITH CHECK ADD  CONSTRAINT [FK_ContractSubmission_Contact] FOREIGN KEY([ApplicantId])
REFERENCES [dbo].[Contact] ([ID])
GO
ALTER TABLE [dbo].[ContractSubmission] CHECK CONSTRAINT [FK_ContractSubmission_Contact]
GO
ALTER TABLE [dbo].[ContractSubmission]  WITH CHECK ADD  CONSTRAINT [FK_ContractSubmission_Contract] FOREIGN KEY([ContractId])
REFERENCES [dbo].[Contract] ([Id])
GO
ALTER TABLE [dbo].[ContractSubmission] CHECK CONSTRAINT [FK_ContractSubmission_Contract]
GO
ALTER TABLE [dbo].[ContractSubmission]  WITH CHECK ADD  CONSTRAINT [FK_ContractSubmission_ContractApplicantType] FOREIGN KEY([ApplicantTypeId])
REFERENCES [dbo].[ContractApplicantType] ([Id])
GO
ALTER TABLE [dbo].[ContractSubmission] CHECK CONSTRAINT [FK_ContractSubmission_ContractApplicantType]
GO
ALTER TABLE [dbo].[ContractSubmission]  WITH CHECK ADD  CONSTRAINT [FK_ContractSubmission_ContractClassification] FOREIGN KEY([OwnerClassId])
REFERENCES [dbo].[ContractClassification] ([Id])
GO
ALTER TABLE [dbo].[ContractSubmission] CHECK CONSTRAINT [FK_ContractSubmission_ContractClassification]
GO
ALTER TABLE [dbo].[ContractSubmission]  WITH CHECK ADD  CONSTRAINT [FK_ContractSubmission_ContractClassification1] FOREIGN KEY([MainConClassId])
REFERENCES [dbo].[ContractClassification] ([Id])
GO
ALTER TABLE [dbo].[ContractSubmission] CHECK CONSTRAINT [FK_ContractSubmission_ContractClassification1]
GO
ALTER TABLE [dbo].[ContractSubmission]  WITH CHECK ADD  CONSTRAINT [FK_ContractSubmission_ContractClassification2] FOREIGN KEY([ApplicantClassId])
REFERENCES [dbo].[ContractClassification] ([Id])
GO
ALTER TABLE [dbo].[ContractSubmission] CHECK CONSTRAINT [FK_ContractSubmission_ContractClassification2]
GO
ALTER TABLE [dbo].[ContractSubmission]  WITH CHECK ADD  CONSTRAINT [FK_ContractSubmission_DocumentChecklistEntry] FOREIGN KEY([DocumentChecklistId])
REFERENCES [dbo].[DocumentChecklistEntry] ([Id])
GO
ALTER TABLE [dbo].[ContractSubmission] CHECK CONSTRAINT [FK_ContractSubmission_DocumentChecklistEntry]
GO
ALTER TABLE [dbo].[ContractSubmissionV3]  WITH CHECK ADD  CONSTRAINT [FK_ContractSubmissionV3_Contract] FOREIGN KEY([ContractId])
REFERENCES [dbo].[Contract] ([Id])
GO
ALTER TABLE [dbo].[ContractSubmissionV3] CHECK CONSTRAINT [FK_ContractSubmissionV3_Contract]
GO
ALTER TABLE [dbo].[ContractSubmissionV3]  WITH CHECK ADD  CONSTRAINT [FK_ContractSubmissionV3_DocumentChecklistEntry] FOREIGN KEY([DocumentChecklistId])
REFERENCES [dbo].[DocumentChecklistEntry] ([Id])
GO
ALTER TABLE [dbo].[ContractSubmissionV3] CHECK CONSTRAINT [FK_ContractSubmissionV3_DocumentChecklistEntry]
GO
ALTER TABLE [dbo].[CustomerAddress]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAddress_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([ID])
GO
ALTER TABLE [dbo].[CustomerAddress] CHECK CONSTRAINT [FK_CustomerAddress_Address]
GO
ALTER TABLE [dbo].[CustomerAddress]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAddress_CustomerERP] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerERP] ([ID])
GO
ALTER TABLE [dbo].[CustomerAddress] CHECK CONSTRAINT [FK_CustomerAddress_CustomerERP]
GO
ALTER TABLE [dbo].[CustomerContact]  WITH NOCHECK ADD  CONSTRAINT [FK_CustomerContact_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ID])
GO
ALTER TABLE [dbo].[CustomerContact] NOCHECK CONSTRAINT [FK_CustomerContact_Contact]
GO
ALTER TABLE [dbo].[CustomerContact]  WITH NOCHECK ADD  CONSTRAINT [FK_CustomerContact_CustomerERP] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerERP] ([ID])
GO
ALTER TABLE [dbo].[CustomerContact] NOCHECK CONSTRAINT [FK_CustomerContact_CustomerERP]
GO
ALTER TABLE [dbo].[CustomerERP]  WITH CHECK ADD  CONSTRAINT [FK_CustomerERP_CustomerCategoryERP] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CustomerCategoryERP] ([ID])
GO
ALTER TABLE [dbo].[CustomerERP] CHECK CONSTRAINT [FK_CustomerERP_CustomerCategoryERP]
GO
ALTER TABLE [dbo].[EmpAttachments]  WITH CHECK ADD  CONSTRAINT [FK_EmpAttachments_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpAttachments] CHECK CONSTRAINT [FK_EmpAttachments_AspNetUsers]
GO
ALTER TABLE [dbo].[EmpAttachments]  WITH CHECK ADD  CONSTRAINT [FK_EmpAttachments_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpAttachments] CHECK CONSTRAINT [FK_EmpAttachments_AspNetUsers1]
GO
ALTER TABLE [dbo].[EmpAttachments]  WITH CHECK ADD  CONSTRAINT [FK_EmpAttachments_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[EmpAttachments] CHECK CONSTRAINT [FK_EmpAttachments_Employee]
GO
ALTER TABLE [dbo].[EmpDrivingLicense]  WITH CHECK ADD  CONSTRAINT [FK_EmpDrivingLicense_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpDrivingLicense] CHECK CONSTRAINT [FK_EmpDrivingLicense_AspNetUsers]
GO
ALTER TABLE [dbo].[EmpDrivingLicense]  WITH CHECK ADD  CONSTRAINT [FK_EmpDrivingLicense_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpDrivingLicense] CHECK CONSTRAINT [FK_EmpDrivingLicense_AspNetUsers1]
GO
ALTER TABLE [dbo].[EmpDrivingLicense]  WITH CHECK ADD  CONSTRAINT [FK_EmpDrivingLicense_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[EmpDrivingLicense] CHECK CONSTRAINT [FK_EmpDrivingLicense_Employee]
GO
ALTER TABLE [dbo].[EmpDrivingLicense]  WITH CHECK ADD  CONSTRAINT [FK_EmpDrivingLicense_MST_LookupsValues] FOREIGN KEY([DrivingLicenceType])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[EmpDrivingLicense] CHECK CONSTRAINT [FK_EmpDrivingLicense_MST_LookupsValues]
GO
ALTER TABLE [dbo].[EmpDrivingLicense]  WITH CHECK ADD  CONSTRAINT [FK_EmpDrivingLicense_MST_LookupsValues1] FOREIGN KEY([CountryOfOrgin])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[EmpDrivingLicense] CHECK CONSTRAINT [FK_EmpDrivingLicense_MST_LookupsValues1]
GO
ALTER TABLE [dbo].[EmpEmergencyContact]  WITH CHECK ADD  CONSTRAINT [FK_EmpEmergencyContact_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpEmergencyContact] CHECK CONSTRAINT [FK_EmpEmergencyContact_AspNetUsers]
GO
ALTER TABLE [dbo].[EmpEmergencyContact]  WITH CHECK ADD  CONSTRAINT [FK_EmpEmergencyContact_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpEmergencyContact] CHECK CONSTRAINT [FK_EmpEmergencyContact_AspNetUsers1]
GO
ALTER TABLE [dbo].[EmpEmergencyContact]  WITH CHECK ADD  CONSTRAINT [FK_EmpEmergencyContact_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[EmpEmergencyContact] CHECK CONSTRAINT [FK_EmpEmergencyContact_Employee]
GO
ALTER TABLE [dbo].[EmpGatePass]  WITH CHECK ADD  CONSTRAINT [FK_EmpGatePass_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpGatePass] CHECK CONSTRAINT [FK_EmpGatePass_AspNetUsers]
GO
ALTER TABLE [dbo].[EmpGatePass]  WITH CHECK ADD  CONSTRAINT [FK_EmpGatePass_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpGatePass] CHECK CONSTRAINT [FK_EmpGatePass_AspNetUsers1]
GO
ALTER TABLE [dbo].[EmpGatePass]  WITH CHECK ADD  CONSTRAINT [FK_EmpGatePass_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[EmpGatePass] CHECK CONSTRAINT [FK_EmpGatePass_Employee]
GO
ALTER TABLE [dbo].[EmpGatePass]  WITH CHECK ADD  CONSTRAINT [FK_EmpGatePass_MST_LookupsValues] FOREIGN KEY([GatePassType])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[EmpGatePass] CHECK CONSTRAINT [FK_EmpGatePass_MST_LookupsValues]
GO
ALTER TABLE [dbo].[EmpHomeCountryContacts]  WITH CHECK ADD  CONSTRAINT [FK_EmpHomeCountryAddress_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpHomeCountryContacts] CHECK CONSTRAINT [FK_EmpHomeCountryAddress_AspNetUsers]
GO
ALTER TABLE [dbo].[EmpHomeCountryContacts]  WITH CHECK ADD  CONSTRAINT [FK_EmpHomeCountryAddress_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpHomeCountryContacts] CHECK CONSTRAINT [FK_EmpHomeCountryAddress_AspNetUsers1]
GO
ALTER TABLE [dbo].[EmpHomeCountryContacts]  WITH CHECK ADD  CONSTRAINT [FK_EmpHomeCountryAddress_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[EmpHomeCountryContacts] CHECK CONSTRAINT [FK_EmpHomeCountryAddress_Employee]
GO
ALTER TABLE [dbo].[EmpHomeCountryContacts]  WITH CHECK ADD  CONSTRAINT [FK_EmpHomeCountryAddress_MST_LookupsValues] FOREIGN KEY([Country])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[EmpHomeCountryContacts] CHECK CONSTRAINT [FK_EmpHomeCountryAddress_MST_LookupsValues]
GO
ALTER TABLE [dbo].[EmpLanguage]  WITH CHECK ADD  CONSTRAINT [FK_EmpLanguage_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpLanguage] CHECK CONSTRAINT [FK_EmpLanguage_AspNetUsers]
GO
ALTER TABLE [dbo].[EmpLanguage]  WITH CHECK ADD  CONSTRAINT [FK_EmpLanguage_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpLanguage] CHECK CONSTRAINT [FK_EmpLanguage_AspNetUsers1]
GO
ALTER TABLE [dbo].[EmpLanguage]  WITH CHECK ADD  CONSTRAINT [FK_EmpLanguage_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[EmpLanguage] CHECK CONSTRAINT [FK_EmpLanguage_Employee]
GO
ALTER TABLE [dbo].[EmpLanguage]  WITH CHECK ADD  CONSTRAINT [FK_EmpLanguage_MST_LookupsValues] FOREIGN KEY([Language])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[EmpLanguage] CHECK CONSTRAINT [FK_EmpLanguage_MST_LookupsValues]
GO
ALTER TABLE [dbo].[EmpLocalContacts]  WITH CHECK ADD  CONSTRAINT [FK_EmpLocalContacts_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpLocalContacts] CHECK CONSTRAINT [FK_EmpLocalContacts_AspNetUsers]
GO
ALTER TABLE [dbo].[EmpLocalContacts]  WITH CHECK ADD  CONSTRAINT [FK_EmpLocalContacts_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpLocalContacts] CHECK CONSTRAINT [FK_EmpLocalContacts_AspNetUsers1]
GO
ALTER TABLE [dbo].[EmpLocalContacts]  WITH CHECK ADD  CONSTRAINT [FK_EmpLocalContacts_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[EmpLocalContacts] CHECK CONSTRAINT [FK_EmpLocalContacts_Employee]
GO
ALTER TABLE [dbo].[EmpLocalContacts]  WITH CHECK ADD  CONSTRAINT [FK_EmpLocalContacts_MST_LookupsValues] FOREIGN KEY([Country])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[EmpLocalContacts] CHECK CONSTRAINT [FK_EmpLocalContacts_MST_LookupsValues]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_AspNetUsers]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_AspNetUsers1]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_MST_LookupsValues] FOREIGN KEY([Position])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_MST_LookupsValues]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_MST_LookupsValues1] FOREIGN KEY([Location])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_MST_LookupsValues1]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_MST_LookupsValues2] FOREIGN KEY([Employer])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_MST_LookupsValues2]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_MST_LookupsValues3] FOREIGN KEY([Nationality])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_MST_LookupsValues3]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_MST_LookupsValues4] FOREIGN KEY([Country])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_MST_LookupsValues4]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_MST_LookupsValues5] FOREIGN KEY([EmployeeType])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_MST_LookupsValues5]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_MST_LookupsValues6] FOREIGN KEY([Gender])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_MST_LookupsValues6]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_MST_LookupsValues7] FOREIGN KEY([Section])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_MST_LookupsValues7]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_MST_LookupsValues8] FOREIGN KEY([BloodGroup])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_MST_LookupsValues8]
GO
ALTER TABLE [dbo].[EmployeeProfilePicture]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeProfilePicture_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmployeeProfilePicture] CHECK CONSTRAINT [FK_EmployeeProfilePicture_AspNetUsers1]
GO
ALTER TABLE [dbo].[EmployeeProfilePicture]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeProfilePicture_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[EmployeeProfilePicture] CHECK CONSTRAINT [FK_EmployeeProfilePicture_Employee]
GO
ALTER TABLE [dbo].[EmpUniforms]  WITH CHECK ADD  CONSTRAINT [FK_EmpUniforms_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpUniforms] CHECK CONSTRAINT [FK_EmpUniforms_AspNetUsers]
GO
ALTER TABLE [dbo].[EmpUniforms]  WITH CHECK ADD  CONSTRAINT [FK_EmpUniforms_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[EmpUniforms] CHECK CONSTRAINT [FK_EmpUniforms_AspNetUsers1]
GO
ALTER TABLE [dbo].[EmpUniforms]  WITH CHECK ADD  CONSTRAINT [FK_EmpUniforms_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[EmpUniforms] CHECK CONSTRAINT [FK_EmpUniforms_Employee]
GO
ALTER TABLE [dbo].[EmpUniforms]  WITH CHECK ADD  CONSTRAINT [FK_EmpUniforms_MST_LookupsValues] FOREIGN KEY([UniformsType])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[EmpUniforms] CHECK CONSTRAINT [FK_EmpUniforms_MST_LookupsValues]
GO
ALTER TABLE [dbo].[GeoLocation]  WITH CHECK ADD  CONSTRAINT [FK_GeoLocation_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[GeoLocation] CHECK CONSTRAINT [FK_GeoLocation_AspNetUsers]
GO
ALTER TABLE [dbo].[GeoLocation]  WITH CHECK ADD  CONSTRAINT [FK_GeoLocation_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[GeoLocation] CHECK CONSTRAINT [FK_GeoLocation_AspNetUsers1]
GO
ALTER TABLE [dbo].[MST_Lookups]  WITH CHECK ADD  CONSTRAINT [FK_MST_Lookups_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[MST_Lookups] CHECK CONSTRAINT [FK_MST_Lookups_AspNetUsers]
GO
ALTER TABLE [dbo].[MST_Lookups]  WITH CHECK ADD  CONSTRAINT [FK_MST_Lookups_AspNetUsers1] FOREIGN KEY([Modifiedby])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[MST_Lookups] CHECK CONSTRAINT [FK_MST_Lookups_AspNetUsers1]
GO
ALTER TABLE [dbo].[MST_LookupsValues]  WITH CHECK ADD  CONSTRAINT [FK_MST_LookupsValues_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[MST_LookupsValues] CHECK CONSTRAINT [FK_MST_LookupsValues_AspNetUsers]
GO
ALTER TABLE [dbo].[MST_LookupsValues]  WITH CHECK ADD  CONSTRAINT [FK_MST_LookupsValues_AspNetUsers1] FOREIGN KEY([Modifiedby])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[MST_LookupsValues] CHECK CONSTRAINT [FK_MST_LookupsValues_AspNetUsers1]
GO
ALTER TABLE [dbo].[MST_LookupsValues]  WITH CHECK ADD  CONSTRAINT [FK_MST_LookupsValues_MST_Lookups] FOREIGN KEY([MST_LookupId])
REFERENCES [dbo].[MST_Lookups] ([Id])
GO
ALTER TABLE [dbo].[MST_LookupsValues] CHECK CONSTRAINT [FK_MST_LookupsValues_MST_Lookups]
GO
ALTER TABLE [dbo].[MST_LookupsValues]  WITH CHECK ADD  CONSTRAINT [FK_MST_LookupsValues_MST_LookupsValues] FOREIGN KEY([MST_LookupsValuesId])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [dbo].[MST_LookupsValues] CHECK CONSTRAINT [FK_MST_LookupsValues_MST_LookupsValues]
GO
ALTER TABLE [dbo].[RoleModules]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleModules_Module] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Module] ([Id])
GO
ALTER TABLE [dbo].[RoleModules] NOCHECK CONSTRAINT [FK_RoleModules_Module]
GO
ALTER TABLE [dbo].[RoleModules]  WITH NOCHECK ADD  CONSTRAINT [FK_RoleModules_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[RoleModules] NOCHECK CONSTRAINT [FK_RoleModules_Role]
GO
ALTER TABLE [dbo].[SiteAddress]  WITH NOCHECK ADD  CONSTRAINT [FK_SiteAddress_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([ID])
GO
ALTER TABLE [dbo].[SiteAddress] NOCHECK CONSTRAINT [FK_SiteAddress_Address]
GO
ALTER TABLE [dbo].[SiteAddress]  WITH NOCHECK ADD  CONSTRAINT [FK_SiteAddress_SitesERP] FOREIGN KEY([SiteID])
REFERENCES [dbo].[SitesERP] ([ID])
GO
ALTER TABLE [dbo].[SiteAddress] NOCHECK CONSTRAINT [FK_SiteAddress_SitesERP]
GO
ALTER TABLE [dbo].[SiteContact]  WITH NOCHECK ADD  CONSTRAINT [FK_SiteContact_Contact] FOREIGN KEY([ContactID])
REFERENCES [dbo].[Contact] ([ID])
GO
ALTER TABLE [dbo].[SiteContact] NOCHECK CONSTRAINT [FK_SiteContact_Contact]
GO
ALTER TABLE [dbo].[SiteContact]  WITH NOCHECK ADD  CONSTRAINT [FK_SiteContact_SitesERP] FOREIGN KEY([SiteID])
REFERENCES [dbo].[SitesERP] ([ID])
GO
ALTER TABLE [dbo].[SiteContact] NOCHECK CONSTRAINT [FK_SiteContact_SitesERP]
GO
ALTER TABLE [dbo].[SiteGeoLocation]  WITH NOCHECK ADD  CONSTRAINT [FK_SiteGeoLocation_GeoLocation] FOREIGN KEY([GeographyID])
REFERENCES [dbo].[GeoLocation] ([ID])
GO
ALTER TABLE [dbo].[SiteGeoLocation] NOCHECK CONSTRAINT [FK_SiteGeoLocation_GeoLocation]
GO
ALTER TABLE [dbo].[SiteGeoLocation]  WITH NOCHECK ADD  CONSTRAINT [FK_SiteGeoLocation_SitesERP] FOREIGN KEY([SiteID])
REFERENCES [dbo].[SitesERP] ([ID])
GO
ALTER TABLE [dbo].[SiteGeoLocation] NOCHECK CONSTRAINT [FK_SiteGeoLocation_SitesERP]
GO
ALTER TABLE [dbo].[SitesERP]  WITH NOCHECK ADD  CONSTRAINT [FK_SitesERP_CustomerCategoryERP] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CustomerCategoryERP] ([ID])
GO
ALTER TABLE [dbo].[SitesERP] NOCHECK CONSTRAINT [FK_SitesERP_CustomerCategoryERP]
GO
ALTER TABLE [dbo].[SitesERP]  WITH NOCHECK ADD  CONSTRAINT [FK_SitesERP_CustomerERP] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerERP] ([ID])
GO
ALTER TABLE [dbo].[SitesERP] NOCHECK CONSTRAINT [FK_SitesERP_CustomerERP]
GO
ALTER TABLE [dbo].[SitesLPG]  WITH CHECK ADD  CONSTRAINT [FK_SitesLPG_CustomerERP] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CustomerERP] ([ID])
GO
ALTER TABLE [dbo].[SitesLPG] CHECK CONSTRAINT [FK_SitesLPG_CustomerERP]
GO
ALTER TABLE [dbo].[TankFinancials]  WITH NOCHECK ADD  CONSTRAINT [FK_TankFinancials_Tank] FOREIGN KEY([TankID])
REFERENCES [dbo].[Tank] ([ID])
GO
ALTER TABLE [dbo].[TankFinancials] NOCHECK CONSTRAINT [FK_TankFinancials_Tank]
GO
ALTER TABLE [dbo].[TankFinancials]  WITH NOCHECK ADD  CONSTRAINT [FK_TankFinancials_TankSupplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[TankSupplier] ([ID])
GO
ALTER TABLE [dbo].[TankFinancials] NOCHECK CONSTRAINT [FK_TankFinancials_TankSupplier]
GO
ALTER TABLE [dbo].[UserAction]  WITH NOCHECK ADD  CONSTRAINT [FK_UserAction_Action] FOREIGN KEY([ActionId])
REFERENCES [dbo].[Action] ([Id])
GO
ALTER TABLE [dbo].[UserAction] NOCHECK CONSTRAINT [FK_UserAction_Action]
GO
ALTER TABLE [dbo].[UserAction]  WITH NOCHECK ADD  CONSTRAINT [FK_UserAction_UserRoleModules] FOREIGN KEY([URMId])
REFERENCES [dbo].[UserRoleModules] ([Id])
GO
ALTER TABLE [dbo].[UserAction] NOCHECK CONSTRAINT [FK_UserAction_UserRoleModules]
GO
ALTER TABLE [dbo].[UserRoleModules]  WITH NOCHECK ADD  CONSTRAINT [FK_UserRoleModules_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [dbo].[UserRoleModules] NOCHECK CONSTRAINT [FK_UserRoleModules_AspNetUsers]
GO
ALTER TABLE [dbo].[UserRoleModules]  WITH NOCHECK ADD  CONSTRAINT [FK_UserRoleModules_Module] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Module] ([Id])
GO
ALTER TABLE [dbo].[UserRoleModules] NOCHECK CONSTRAINT [FK_UserRoleModules_Module]
GO
ALTER TABLE [dbo].[UserRoleModules]  WITH NOCHECK ADD  CONSTRAINT [FK_UserRoleModules_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserRoleModules] NOCHECK CONSTRAINT [FK_UserRoleModules_Role]
GO
ALTER TABLE [Fleet].[DET_FleetCompartments]  WITH CHECK ADD  CONSTRAINT [FK_FleetCompartments_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [Fleet].[DET_FleetCompartments] CHECK CONSTRAINT [FK_FleetCompartments_AspNetUsers]
GO
ALTER TABLE [Fleet].[DET_FleetCompartments]  WITH CHECK ADD  CONSTRAINT [FK_FleetCompartments_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [Fleet].[DET_FleetCompartments] CHECK CONSTRAINT [FK_FleetCompartments_AspNetUsers1]
GO
ALTER TABLE [Fleet].[DET_FleetCompartments]  WITH CHECK ADD  CONSTRAINT [FK_FleetCompartments_MST_Fleet] FOREIGN KEY([FleetId])
REFERENCES [Fleet].[MST_Fleet] ([Id])
GO
ALTER TABLE [Fleet].[DET_FleetCompartments] CHECK CONSTRAINT [FK_FleetCompartments_MST_Fleet]
GO
ALTER TABLE [Fleet].[DET_FleetCompartments]  WITH CHECK ADD  CONSTRAINT [FK_FleetCompartments_MST_LookupsValues] FOREIGN KEY([ProductGroup])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [Fleet].[DET_FleetCompartments] CHECK CONSTRAINT [FK_FleetCompartments_MST_LookupsValues]
GO
ALTER TABLE [Fleet].[DET_FleetGatePass]  WITH CHECK ADD  CONSTRAINT [FK_DET_MST_FleetGatePass_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [Fleet].[DET_FleetGatePass] CHECK CONSTRAINT [FK_DET_MST_FleetGatePass_AspNetUsers]
GO
ALTER TABLE [Fleet].[DET_FleetGatePass]  WITH CHECK ADD  CONSTRAINT [FK_DET_MST_FleetGatePass_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [Fleet].[DET_FleetGatePass] CHECK CONSTRAINT [FK_DET_MST_FleetGatePass_AspNetUsers1]
GO
ALTER TABLE [Fleet].[DET_FleetGatePass]  WITH CHECK ADD  CONSTRAINT [FK_DET_MST_FleetGatePass_MST_Fleet] FOREIGN KEY([FleetId])
REFERENCES [Fleet].[MST_Fleet] ([Id])
GO
ALTER TABLE [Fleet].[DET_FleetGatePass] CHECK CONSTRAINT [FK_DET_MST_FleetGatePass_MST_Fleet]
GO
ALTER TABLE [Fleet].[DET_FleetGatePass]  WITH CHECK ADD  CONSTRAINT [FK_DET_MST_FleetGatePass_MST_LookupsValues] FOREIGN KEY([GatePassType])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [Fleet].[DET_FleetGatePass] CHECK CONSTRAINT [FK_DET_MST_FleetGatePass_MST_LookupsValues]
GO
ALTER TABLE [Fleet].[DET_FleetMaintenance]  WITH CHECK ADD  CONSTRAINT [FK_DET_FleetMaintenance_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [Fleet].[DET_FleetMaintenance] CHECK CONSTRAINT [FK_DET_FleetMaintenance_AspNetUsers]
GO
ALTER TABLE [Fleet].[DET_FleetMaintenance]  WITH CHECK ADD  CONSTRAINT [FK_DET_FleetMaintenance_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [Fleet].[DET_FleetMaintenance] CHECK CONSTRAINT [FK_DET_FleetMaintenance_AspNetUsers1]
GO
ALTER TABLE [Fleet].[DET_FleetMaintenance]  WITH CHECK ADD  CONSTRAINT [FK_DET_FleetMaintenance_MST_Fleet] FOREIGN KEY([FleetId])
REFERENCES [Fleet].[MST_Fleet] ([Id])
GO
ALTER TABLE [Fleet].[DET_FleetMaintenance] CHECK CONSTRAINT [FK_DET_FleetMaintenance_MST_Fleet]
GO
ALTER TABLE [Fleet].[DET_MSTFleetAttachments]  WITH CHECK ADD  CONSTRAINT [FK_DET_MSTFleetAttachments_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [Fleet].[DET_MSTFleetAttachments] CHECK CONSTRAINT [FK_DET_MSTFleetAttachments_AspNetUsers]
GO
ALTER TABLE [Fleet].[DET_MSTFleetAttachments]  WITH CHECK ADD  CONSTRAINT [FK_DET_MSTFleetAttachments_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [Fleet].[DET_MSTFleetAttachments] CHECK CONSTRAINT [FK_DET_MSTFleetAttachments_AspNetUsers1]
GO
ALTER TABLE [Fleet].[DET_MSTFleetAttachments]  WITH CHECK ADD  CONSTRAINT [FK_DET_MSTFleetAttachments_MST_Fleet] FOREIGN KEY([FleetId])
REFERENCES [Fleet].[MST_Fleet] ([Id])
GO
ALTER TABLE [Fleet].[DET_MSTFleetAttachments] CHECK CONSTRAINT [FK_DET_MSTFleetAttachments_MST_Fleet]
GO
ALTER TABLE [Fleet].[MST_Fleet]  WITH CHECK ADD  CONSTRAINT [FK_MST_Fleet_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [Fleet].[MST_Fleet] CHECK CONSTRAINT [FK_MST_Fleet_AspNetUsers]
GO
ALTER TABLE [Fleet].[MST_Fleet]  WITH CHECK ADD  CONSTRAINT [FK_MST_Fleet_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [Fleet].[MST_Fleet] CHECK CONSTRAINT [FK_MST_Fleet_AspNetUsers1]
GO
ALTER TABLE [Fleet].[MST_Fleet]  WITH CHECK ADD  CONSTRAINT [FK_MST_Fleet_MST_Fleet] FOREIGN KEY([ParentId])
REFERENCES [Fleet].[MST_Fleet] ([Id])
GO
ALTER TABLE [Fleet].[MST_Fleet] CHECK CONSTRAINT [FK_MST_Fleet_MST_Fleet]
GO
ALTER TABLE [Fleet].[MST_Fleet]  WITH CHECK ADD  CONSTRAINT [FK_MST_Fleet_MST_LookupsValues] FOREIGN KEY([Status])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [Fleet].[MST_Fleet] CHECK CONSTRAINT [FK_MST_Fleet_MST_LookupsValues]
GO
ALTER TABLE [Fleet].[MST_Fleet]  WITH CHECK ADD  CONSTRAINT [FK_MST_Fleet_MST_LookupsValues1] FOREIGN KEY([Manufacturer])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [Fleet].[MST_Fleet] CHECK CONSTRAINT [FK_MST_Fleet_MST_LookupsValues1]
GO
ALTER TABLE [Fleet].[MST_Fleet]  WITH CHECK ADD  CONSTRAINT [FK_MST_Fleet_MST_LookupsValues2] FOREIGN KEY([ModelType])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [Fleet].[MST_Fleet] CHECK CONSTRAINT [FK_MST_Fleet_MST_LookupsValues2]
GO
ALTER TABLE [Fleet].[MST_Fleet]  WITH CHECK ADD  CONSTRAINT [FK_MST_Fleet_MST_LookupsValues3] FOREIGN KEY([DriveTrain])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [Fleet].[MST_Fleet] CHECK CONSTRAINT [FK_MST_Fleet_MST_LookupsValues3]
GO
ALTER TABLE [Fleet].[MST_Fleet]  WITH CHECK ADD  CONSTRAINT [FK_MST_Fleet_MST_LookupsValues4] FOREIGN KEY([FleetType])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [Fleet].[MST_Fleet] CHECK CONSTRAINT [FK_MST_Fleet_MST_LookupsValues4]
GO
ALTER TABLE [Fleet].[MST_Fleet]  WITH CHECK ADD  CONSTRAINT [FK_MST_Fleet_MST_LookupsValues5] FOREIGN KEY([PumpAvaliability])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [Fleet].[MST_Fleet] CHECK CONSTRAINT [FK_MST_Fleet_MST_LookupsValues5]
GO
ALTER TABLE [Fleet].[MST_Fleet]  WITH CHECK ADD  CONSTRAINT [FK_MST_Fleet_MST_LookupsValues6] FOREIGN KEY([Section])
REFERENCES [dbo].[MST_LookupsValues] ([Id])
GO
ALTER TABLE [Fleet].[MST_Fleet] CHECK CONSTRAINT [FK_MST_Fleet_MST_LookupsValues6]
GO
ALTER TABLE [log].[ActionActivityLog]  WITH CHECK ADD  CONSTRAINT [FK_ActionActivityLog_ActivityType] FOREIGN KEY([ActivityTypeId])
REFERENCES [log].[ActivityType] ([Id])
GO
ALTER TABLE [log].[ActionActivityLog] CHECK CONSTRAINT [FK_ActionActivityLog_ActivityType]
GO
ALTER TABLE [log].[ActionActivityLog]  WITH CHECK ADD  CONSTRAINT [FK_ActionActivityLog_AspNetUsers] FOREIGN KEY([ActivityBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[ActionActivityLog] CHECK CONSTRAINT [FK_ActionActivityLog_AspNetUsers]
GO
ALTER TABLE [log].[ActivityLog]  WITH CHECK ADD  CONSTRAINT [FK_ActivityLog_ActivityType] FOREIGN KEY([ActivityTypeId])
REFERENCES [log].[ActivityType] ([Id])
GO
ALTER TABLE [log].[ActivityLog] CHECK CONSTRAINT [FK_ActivityLog_ActivityType]
GO
ALTER TABLE [log].[ActivityLog]  WITH CHECK ADD  CONSTRAINT [FK_ActivityLog_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[ActivityLog] CHECK CONSTRAINT [FK_ActivityLog_AspNetUsers]
GO
ALTER TABLE [log].[ActivityLog]  WITH CHECK ADD  CONSTRAINT [FK_ActivityLog_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [log].[ActivityLog] CHECK CONSTRAINT [FK_ActivityLog_Site]
GO
ALTER TABLE [log].[AgendaContracts_Log]  WITH CHECK ADD  CONSTRAINT [FK_AgendaContracts_Log_Agenda_Log] FOREIGN KEY([AgendaId])
REFERENCES [log].[Agenda_Log] ([Id])
GO
ALTER TABLE [log].[AgendaContracts_Log] CHECK CONSTRAINT [FK_AgendaContracts_Log_Agenda_Log]
GO
ALTER TABLE [log].[AgendaContracts_Log]  WITH CHECK ADD  CONSTRAINT [FK_AgendaContracts_Log_Site_Log] FOREIGN KEY([SiteId])
REFERENCES [log].[Site_Log] ([Id])
GO
ALTER TABLE [log].[AgendaContracts_Log] CHECK CONSTRAINT [FK_AgendaContracts_Log_Site_Log]
GO
ALTER TABLE [log].[AppError]  WITH CHECK ADD  CONSTRAINT [FK_AppError_AppError] FOREIGN KEY([Id])
REFERENCES [log].[AppError] ([Id])
GO
ALTER TABLE [log].[AppError] CHECK CONSTRAINT [FK_AppError_AppError]
GO
ALTER TABLE [log].[AppError]  WITH CHECK ADD  CONSTRAINT [FK_AppError_AppErrorType] FOREIGN KEY([ErrorTypeId])
REFERENCES [log].[AppErrorType] ([Id])
GO
ALTER TABLE [log].[AppError] CHECK CONSTRAINT [FK_AppError_AppErrorType]
GO
ALTER TABLE [log].[AppError]  WITH CHECK ADD  CONSTRAINT [FK_AppError_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[AppError] CHECK CONSTRAINT [FK_AppError_AspNetUsers]
GO
ALTER TABLE [log].[AppErrorType]  WITH CHECK ADD  CONSTRAINT [FK_AppErrorType_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[AppErrorType] CHECK CONSTRAINT [FK_AppErrorType_AspNetUsers]
GO
ALTER TABLE [log].[BankGuranteeDocuments_Log]  WITH CHECK ADD  CONSTRAINT [FK_BankGuranteeDocuments_Log_ActivityLog] FOREIGN KEY([ActivityId])
REFERENCES [log].[ActivityLog] ([Id])
GO
ALTER TABLE [log].[BankGuranteeDocuments_Log] CHECK CONSTRAINT [FK_BankGuranteeDocuments_Log_ActivityLog]
GO
ALTER TABLE [log].[BankGuranteeDocuments_Log]  WITH CHECK ADD  CONSTRAINT [FK_BankGuranteeDocuments_Log_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[BankGuranteeDocuments_Log] CHECK CONSTRAINT [FK_BankGuranteeDocuments_Log_AspNetUsers]
GO
ALTER TABLE [log].[BankGuranteePrintLog]  WITH CHECK ADD  CONSTRAINT [FK_BankGuranteePrintLog_ActivityLog] FOREIGN KEY([ActivityId])
REFERENCES [log].[ActivityLog] ([Id])
GO
ALTER TABLE [log].[BankGuranteePrintLog] CHECK CONSTRAINT [FK_BankGuranteePrintLog_ActivityLog]
GO
ALTER TABLE [log].[BankGuranteePrintLog]  WITH CHECK ADD  CONSTRAINT [FK_BankGuranteePrintLog_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[BankGuranteePrintLog] CHECK CONSTRAINT [FK_BankGuranteePrintLog_AspNetUsers]
GO
ALTER TABLE [log].[BankGuranteeRemark_Log]  WITH CHECK ADD  CONSTRAINT [FK_BankGuranteeRemark_Log_ActivityLog] FOREIGN KEY([ActivityId])
REFERENCES [log].[ActivityLog] ([Id])
GO
ALTER TABLE [log].[BankGuranteeRemark_Log] CHECK CONSTRAINT [FK_BankGuranteeRemark_Log_ActivityLog]
GO
ALTER TABLE [log].[BankGuranteeRemark_Log]  WITH CHECK ADD  CONSTRAINT [FK_BankGuranteeRemark_Log_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[BankGuranteeRemark_Log] CHECK CONSTRAINT [FK_BankGuranteeRemark_Log_AspNetUsers]
GO
ALTER TABLE [log].[BatchContracts_Log]  WITH CHECK ADD  CONSTRAINT [FK_BatchContracts_Log_LegalBatch_Log] FOREIGN KEY([BatchId])
REFERENCES [log].[LegalBatch_Log] ([Id])
GO
ALTER TABLE [log].[BatchContracts_Log] CHECK CONSTRAINT [FK_BatchContracts_Log_LegalBatch_Log]
GO
ALTER TABLE [log].[BatchContracts_Log]  WITH CHECK ADD  CONSTRAINT [FK_BatchContracts_Log_Site] FOREIGN KEY([SiteId])
REFERENCES [log].[Site_Log] ([Id])
GO
ALTER TABLE [log].[BatchContracts_Log] CHECK CONSTRAINT [FK_BatchContracts_Log_Site]
GO
ALTER TABLE [log].[BGContractDocs_Log]  WITH CHECK ADD  CONSTRAINT [FK_BGontractDocs_Log_ActivityLog] FOREIGN KEY([ActivityId])
REFERENCES [log].[ActivityLog] ([Id])
GO
ALTER TABLE [log].[BGContractDocs_Log] CHECK CONSTRAINT [FK_BGontractDocs_Log_ActivityLog]
GO
ALTER TABLE [log].[BGContractDocs_Log]  WITH CHECK ADD  CONSTRAINT [FK_BGontractDocs_Log_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[BGContractDocs_Log] CHECK CONSTRAINT [FK_BGontractDocs_Log_AspNetUsers]
GO
ALTER TABLE [log].[BGContractRemarks_Log]  WITH CHECK ADD  CONSTRAINT [FK_BGContractRemarks_Log_ActivityLog] FOREIGN KEY([ActivityId])
REFERENCES [log].[ActivityLog] ([Id])
GO
ALTER TABLE [log].[BGContractRemarks_Log] CHECK CONSTRAINT [FK_BGContractRemarks_Log_ActivityLog]
GO
ALTER TABLE [log].[BGContractRemarks_Log]  WITH CHECK ADD  CONSTRAINT [FK_BGContractRemarks_Log_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[BGContractRemarks_Log] CHECK CONSTRAINT [FK_BGContractRemarks_Log_AspNetUsers]
GO
ALTER TABLE [log].[ContractAddress_Log]  WITH CHECK ADD  CONSTRAINT [FK_ContractAddress_Log_ContractAddress] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [log].[ContractAddress_Log] CHECK CONSTRAINT [FK_ContractAddress_Log_ContractAddress]
GO
ALTER TABLE [log].[ContractAddress_Log]  WITH CHECK ADD  CONSTRAINT [FK_ContractAddress_Log_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [log].[ContractAddress_Log] CHECK CONSTRAINT [FK_ContractAddress_Log_Country]
GO
ALTER TABLE [log].[ContractAddress_Log]  WITH CHECK ADD  CONSTRAINT [FK_ContractAddress_Log_Site_Log] FOREIGN KEY([SiteId])
REFERENCES [log].[Site_Log] ([Id])
GO
ALTER TABLE [log].[ContractAddress_Log] CHECK CONSTRAINT [FK_ContractAddress_Log_Site_Log]
GO
ALTER TABLE [log].[ContractContacts_Log]  WITH CHECK ADD  CONSTRAINT [FK_ContractContacts_Log_ContractContacts] FOREIGN KEY([TypeId])
REFERENCES [contract].[Type] ([Id])
GO
ALTER TABLE [log].[ContractContacts_Log] CHECK CONSTRAINT [FK_ContractContacts_Log_ContractContacts]
GO
ALTER TABLE [log].[ContractContacts_Log]  WITH CHECK ADD  CONSTRAINT [FK_ContractContacts_Log_Designation] FOREIGN KEY([DesignationId])
REFERENCES [contract].[Designation] ([Id])
GO
ALTER TABLE [log].[ContractContacts_Log] CHECK CONSTRAINT [FK_ContractContacts_Log_Designation]
GO
ALTER TABLE [log].[ContractContacts_Log]  WITH CHECK ADD  CONSTRAINT [FK_ContractContacts_Log_Site_Log] FOREIGN KEY([SiteId])
REFERENCES [log].[Site_Log] ([Id])
GO
ALTER TABLE [log].[ContractContacts_Log] CHECK CONSTRAINT [FK_ContractContacts_Log_Site_Log]
GO
ALTER TABLE [log].[ExceptionLog]  WITH CHECK ADD  CONSTRAINT [FK_ExceptionLog_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[ExceptionLog] CHECK CONSTRAINT [FK_ExceptionLog_AspNetUsers]
GO
ALTER TABLE [log].[LegalBatch_Log]  WITH CHECK ADD  CONSTRAINT [FK_LegalBatch_Log_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[LegalBatch_Log] CHECK CONSTRAINT [FK_LegalBatch_Log_AspNetUsers]
GO
ALTER TABLE [log].[MonthlyConsumptionDetails_Log]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyConsumptionDetails_Log_Site_Log] FOREIGN KEY([SiteId])
REFERENCES [log].[Site_Log] ([Id])
GO
ALTER TABLE [log].[MonthlyConsumptionDetails_Log] CHECK CONSTRAINT [FK_MonthlyConsumptionDetails_Log_Site_Log]
GO
ALTER TABLE [log].[Site_Log]  WITH CHECK ADD  CONSTRAINT [FK_Site_Log_AspNetUsers] FOREIGN KEY([LoggedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[Site_Log] CHECK CONSTRAINT [FK_Site_Log_AspNetUsers]
GO
ALTER TABLE [log].[Site_Log]  WITH CHECK ADD  CONSTRAINT [FK_Site_Log_ContractorType] FOREIGN KEY([ContractorTypeId])
REFERENCES [contract].[ContractorType] ([Id])
GO
ALTER TABLE [log].[Site_Log] CHECK CONSTRAINT [FK_Site_Log_ContractorType]
GO
ALTER TABLE [log].[Site_Log]  WITH CHECK ADD  CONSTRAINT [FK_Site_Log_ProductNeeded] FOREIGN KEY([ProdNeededId])
REFERENCES [contract].[ProductNeeded] ([Id])
GO
ALTER TABLE [log].[Site_Log] CHECK CONSTRAINT [FK_Site_Log_ProductNeeded]
GO
ALTER TABLE [log].[Site_Log]  WITH CHECK ADD  CONSTRAINT [FK_Site_Log_Stage] FOREIGN KEY([StageId])
REFERENCES [contract].[Stage] ([Id])
GO
ALTER TABLE [log].[Site_Log] CHECK CONSTRAINT [FK_Site_Log_Stage]
GO
ALTER TABLE [log].[Site_Log]  WITH CHECK ADD  CONSTRAINT [FK_Site_Log_SubStage] FOREIGN KEY([SubStageId])
REFERENCES [contract].[SubStage] ([Id])
GO
ALTER TABLE [log].[Site_Log] CHECK CONSTRAINT [FK_Site_Log_SubStage]
GO
ALTER TABLE [log].[Site_Log]  WITH CHECK ADD  CONSTRAINT [FK_Site_Log_SupplyTo] FOREIGN KEY([SupplyToTypeId])
REFERENCES [contract].[SupplyTo] ([Id])
GO
ALTER TABLE [log].[Site_Log] CHECK CONSTRAINT [FK_Site_Log_SupplyTo]
GO
ALTER TABLE [log].[SiteAgenda_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteAgenda_Log_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[SiteAgenda_Log] CHECK CONSTRAINT [FK_SiteAgenda_Log_AspNetUsers]
GO
ALTER TABLE [log].[SiteAgenda_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteAgendaLog_ActivityLog] FOREIGN KEY([LogId])
REFERENCES [log].[ActivityLog] ([Id])
GO
ALTER TABLE [log].[SiteAgenda_Log] CHECK CONSTRAINT [FK_SiteAgendaLog_ActivityLog]
GO
ALTER TABLE [log].[SiteAgenda_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteAgendaLog_Agenda] FOREIGN KEY([AgendaId])
REFERENCES [log].[Agenda_Log] ([Id])
GO
ALTER TABLE [log].[SiteAgenda_Log] CHECK CONSTRAINT [FK_SiteAgendaLog_Agenda]
GO
ALTER TABLE [log].[SiteAttachmentCheckList_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteAttachmentCheckList_Log_AtachmentCheckList] FOREIGN KEY([AttachmentId])
REFERENCES [contract].[AtachmentCheckList] ([Id])
GO
ALTER TABLE [log].[SiteAttachmentCheckList_Log] CHECK CONSTRAINT [FK_SiteAttachmentCheckList_Log_AtachmentCheckList]
GO
ALTER TABLE [log].[SiteAttachmentCheckList_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteAttachmentCheckList_Log_Site_Log] FOREIGN KEY([SiteId])
REFERENCES [log].[Site_Log] ([Id])
GO
ALTER TABLE [log].[SiteAttachmentCheckList_Log] CHECK CONSTRAINT [FK_SiteAttachmentCheckList_Log_Site_Log]
GO
ALTER TABLE [log].[SiteCRAnalysis_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteCRAnalysis_Log_ApplicantType] FOREIGN KEY([ApplicantTypeId])
REFERENCES [contract].[ApplicantType] ([Id])
GO
ALTER TABLE [log].[SiteCRAnalysis_Log] CHECK CONSTRAINT [FK_SiteCRAnalysis_Log_ApplicantType]
GO
ALTER TABLE [log].[SiteCRAnalysis_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteCRAnalysis_Log_CRClassification] FOREIGN KEY([ClassificationId])
REFERENCES [contract].[CRClassification] ([Id])
GO
ALTER TABLE [log].[SiteCRAnalysis_Log] CHECK CONSTRAINT [FK_SiteCRAnalysis_Log_CRClassification]
GO
ALTER TABLE [log].[SiteCRAnalysis_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteCRAnalysis_Log_SiteCRAnalysis_Log] FOREIGN KEY([NationalityId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [log].[SiteCRAnalysis_Log] CHECK CONSTRAINT [FK_SiteCRAnalysis_Log_SiteCRAnalysis_Log]
GO
ALTER TABLE [log].[SiteDocuments_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteDocuments_Log_Site_Log] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [log].[SiteDocuments_Log] CHECK CONSTRAINT [FK_SiteDocuments_Log_Site_Log]
GO
ALTER TABLE [log].[SiteLegalBatch_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteLegalBatch_Log_ActivityLog] FOREIGN KEY([LogId])
REFERENCES [log].[ActivityLog] ([Id])
GO
ALTER TABLE [log].[SiteLegalBatch_Log] CHECK CONSTRAINT [FK_SiteLegalBatch_Log_ActivityLog]
GO
ALTER TABLE [log].[SiteLegalBatch_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteLegalBatch_Log_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[SiteLegalBatch_Log] CHECK CONSTRAINT [FK_SiteLegalBatch_Log_AspNetUsers]
GO
ALTER TABLE [log].[SiteLegalBatch_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteLegalBatch_Log_LegalBatch_Log] FOREIGN KEY([BatchId])
REFERENCES [log].[LegalBatch_Log] ([Id])
GO
ALTER TABLE [log].[SiteLegalBatch_Log] CHECK CONSTRAINT [FK_SiteLegalBatch_Log_LegalBatch_Log]
GO
ALTER TABLE [log].[SiteProjectDetails_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteProjectDetails_Log_ProjectClassification] FOREIGN KEY([ProjectClassificationId])
REFERENCES [contract].[ProjectClassification] ([Id])
GO
ALTER TABLE [log].[SiteProjectDetails_Log] CHECK CONSTRAINT [FK_SiteProjectDetails_Log_ProjectClassification]
GO
ALTER TABLE [log].[SiteProjectDetails_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteProjectDetails_Log_Site_Log] FOREIGN KEY([SiteId])
REFERENCES [log].[Site_Log] ([Id])
GO
ALTER TABLE [log].[SiteProjectDetails_Log] CHECK CONSTRAINT [FK_SiteProjectDetails_Log_Site_Log]
GO
ALTER TABLE [log].[SiteProjectDetails_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteProjectDetails_Log_SiteProjectDetails] FOREIGN KEY([ContractorTypeId])
REFERENCES [contract].[ContractorType] ([Id])
GO
ALTER TABLE [log].[SiteProjectDetails_Log] CHECK CONSTRAINT [FK_SiteProjectDetails_Log_SiteProjectDetails]
GO
ALTER TABLE [log].[SiteVisitAddresses_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitAddresses_Log_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [log].[SiteVisitAddresses_Log] CHECK CONSTRAINT [FK_SiteVisitAddresses_Log_City]
GO
ALTER TABLE [log].[SiteVisitAddresses_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitAddresses_Log_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [log].[SiteVisitAddresses_Log] CHECK CONSTRAINT [FK_SiteVisitAddresses_Log_Country]
GO
ALTER TABLE [log].[SiteVisitAddresses_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitAddresses_Log_SiteVisitReport_Log] FOREIGN KEY([SiteVisitReportId])
REFERENCES [log].[SiteVisitReport_Log] ([Id])
GO
ALTER TABLE [log].[SiteVisitAddresses_Log] CHECK CONSTRAINT [FK_SiteVisitAddresses_Log_SiteVisitReport_Log]
GO
ALTER TABLE [log].[SiteVisitProjectDetails_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitProjectDetails_Log_ContractorType] FOREIGN KEY([ContractorTypeId])
REFERENCES [contract].[ContractorType] ([Id])
GO
ALTER TABLE [log].[SiteVisitProjectDetails_Log] CHECK CONSTRAINT [FK_SiteVisitProjectDetails_Log_ContractorType]
GO
ALTER TABLE [log].[SiteVisitProjectDetails_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitProjectDetails_Log_ProjectClassification] FOREIGN KEY([ProjectClassificationId])
REFERENCES [contract].[ProjectClassification] ([Id])
GO
ALTER TABLE [log].[SiteVisitProjectDetails_Log] CHECK CONSTRAINT [FK_SiteVisitProjectDetails_Log_ProjectClassification]
GO
ALTER TABLE [log].[SiteVisitProjectDetails_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitProjectDetails_Log_SiteVisitReport_Log] FOREIGN KEY([SiteVisitReportId])
REFERENCES [log].[SiteVisitReport_Log] ([Id])
GO
ALTER TABLE [log].[SiteVisitProjectDetails_Log] CHECK CONSTRAINT [FK_SiteVisitProjectDetails_Log_SiteVisitReport_Log]
GO
ALTER TABLE [log].[SiteVisitReport_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReport_Log_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [log].[SiteVisitReport_Log] CHECK CONSTRAINT [FK_SiteVisitReport_Log_Site]
GO
ALTER TABLE [log].[SiteVisitReport_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReport_Log_SiteInspectionType] FOREIGN KEY([SiteInspectionTypeId])
REFERENCES [contract].[SiteInspectionType] ([Id])
GO
ALTER TABLE [log].[SiteVisitReport_Log] CHECK CONSTRAINT [FK_SiteVisitReport_Log_SiteInspectionType]
GO
ALTER TABLE [log].[SiteVisitReport_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReport_Log_SiteVisitReport] FOREIGN KEY([ContractorTypeId])
REFERENCES [contract].[ContractorType] ([Id])
GO
ALTER TABLE [log].[SiteVisitReport_Log] CHECK CONSTRAINT [FK_SiteVisitReport_Log_SiteVisitReport]
GO
ALTER TABLE [log].[SiteVisitReport_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReport_Log_SiteZones] FOREIGN KEY([SiteZoneId])
REFERENCES [contract].[SiteZones] ([Id])
GO
ALTER TABLE [log].[SiteVisitReport_Log] CHECK CONSTRAINT [FK_SiteVisitReport_Log_SiteZones]
GO
ALTER TABLE [log].[SiteVisitReportContacts_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReportContacts_Log_Designation] FOREIGN KEY([DesignationId])
REFERENCES [contract].[Designation] ([Id])
GO
ALTER TABLE [log].[SiteVisitReportContacts_Log] CHECK CONSTRAINT [FK_SiteVisitReportContacts_Log_Designation]
GO
ALTER TABLE [log].[SiteVisitReportContacts_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReportContacts_Log_SiteVisitReport_Log] FOREIGN KEY([SiteVisitReportId])
REFERENCES [log].[SiteVisitReport_Log] ([Id])
GO
ALTER TABLE [log].[SiteVisitReportContacts_Log] CHECK CONSTRAINT [FK_SiteVisitReportContacts_Log_SiteVisitReport_Log]
GO
ALTER TABLE [log].[SiteVisitReportContacts_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitReportContacts_Log_Type] FOREIGN KEY([TypeId])
REFERENCES [contract].[Type] ([Id])
GO
ALTER TABLE [log].[SiteVisitReportContacts_Log] CHECK CONSTRAINT [FK_SiteVisitReportContacts_Log_Type]
GO
ALTER TABLE [log].[SiteVisitSupplyToDetails_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitSupplyToDetails_Log_SiteVisitReport_Log] FOREIGN KEY([SiteVisitReportId])
REFERENCES [log].[SiteVisitReport_Log] ([Id])
GO
ALTER TABLE [log].[SiteVisitSupplyToDetails_Log] CHECK CONSTRAINT [FK_SiteVisitSupplyToDetails_Log_SiteVisitReport_Log]
GO
ALTER TABLE [log].[SiteVisitSupplyToDetails_Log]  WITH CHECK ADD  CONSTRAINT [FK_SiteVisitSupplyToDetails_Log_StorageTankType] FOREIGN KEY([StorageTankTypeId])
REFERENCES [contract].[StorageTankType] ([Id])
GO
ALTER TABLE [log].[SiteVisitSupplyToDetails_Log] CHECK CONSTRAINT [FK_SiteVisitSupplyToDetails_Log_StorageTankType]
GO
ALTER TABLE [log].[SupplyToDetails_Log]  WITH CHECK ADD  CONSTRAINT [FK_SupplyToDetails_Log_Site_Log] FOREIGN KEY([SiteId])
REFERENCES [log].[Site_Log] ([Id])
GO
ALTER TABLE [log].[SupplyToDetails_Log] CHECK CONSTRAINT [FK_SupplyToDetails_Log_Site_Log]
GO
ALTER TABLE [log].[SupplyToDetails_Log]  WITH CHECK ADD  CONSTRAINT [FK_SupplyToDetails_Log_StorageTankType] FOREIGN KEY([StorageTankTypeId])
REFERENCES [contract].[StorageTankType] ([Id])
GO
ALTER TABLE [log].[SupplyToDetails_Log] CHECK CONSTRAINT [FK_SupplyToDetails_Log_StorageTankType]
GO
ALTER TABLE [log].[TankConfDocs_Log]  WITH CHECK ADD  CONSTRAINT [FK_TankConfDocs_Log_ActivityLog] FOREIGN KEY([ActivityId])
REFERENCES [log].[ActivityLog] ([Id])
GO
ALTER TABLE [log].[TankConfDocs_Log] CHECK CONSTRAINT [FK_TankConfDocs_Log_ActivityLog]
GO
ALTER TABLE [log].[TankConfDocs_Log]  WITH CHECK ADD  CONSTRAINT [FK_TankConfDocs_Log_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[TankConfDocs_Log] CHECK CONSTRAINT [FK_TankConfDocs_Log_AspNetUsers]
GO
ALTER TABLE [log].[TankConfRemark_Log]  WITH CHECK ADD  CONSTRAINT [FK_TankConfRemark_Log_ActivityLog] FOREIGN KEY([ActivityId])
REFERENCES [log].[ActivityLog] ([Id])
GO
ALTER TABLE [log].[TankConfRemark_Log] CHECK CONSTRAINT [FK_TankConfRemark_Log_ActivityLog]
GO
ALTER TABLE [log].[TankConfRemark_Log]  WITH CHECK ADD  CONSTRAINT [FK_TankConfRemark_Log_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [log].[TankConfRemark_Log] CHECK CONSTRAINT [FK_TankConfRemark_Log_AspNetUsers]
GO
ALTER TABLE [lpg].[LPG_Geo]  WITH CHECK ADD  CONSTRAINT [FK_LPG_Geo_LpgPricingCategory] FOREIGN KEY([PricingCategoryId])
REFERENCES [lpg].[LpgPricingCategory] ([Id])
GO
ALTER TABLE [lpg].[LPG_Geo] CHECK CONSTRAINT [FK_LPG_Geo_LpgPricingCategory]
GO
ALTER TABLE [lpg].[SiteInstallation]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallation_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpg].[SiteInstallation] CHECK CONSTRAINT [FK_SiteInstallation_AspNetUsers]
GO
ALTER TABLE [lpg].[SiteInstallation]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallation_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpg].[SiteInstallation] CHECK CONSTRAINT [FK_SiteInstallation_AspNetUsers1]
GO
ALTER TABLE [lpg].[SiteInstallation]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallation_Contractor] FOREIGN KEY([ContractorId])
REFERENCES [lpg].[Contractor] ([ID])
GO
ALTER TABLE [lpg].[SiteInstallation] CHECK CONSTRAINT [FK_SiteInstallation_Contractor]
GO
ALTER TABLE [lpg].[SiteInstallation]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallation_InstallationType] FOREIGN KEY([InstallationTypeId])
REFERENCES [lpg].[InstallationType] ([Id])
GO
ALTER TABLE [lpg].[SiteInstallation] CHECK CONSTRAINT [FK_SiteInstallation_InstallationType]
GO
ALTER TABLE [lpg].[SiteInstallation]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallation_SiteCategory] FOREIGN KEY([CategoryID])
REFERENCES [lpg].[SiteCategory] ([Id])
GO
ALTER TABLE [lpg].[SiteInstallation] CHECK CONSTRAINT [FK_SiteInstallation_SiteCategory]
GO
ALTER TABLE [lpg].[SiteInstallation]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallation_TankerCapacityInMtTon] FOREIGN KEY([TankerCapacityInMtTonId])
REFERENCES [lpg].[TankerCapacityInMtTon] ([Id])
GO
ALTER TABLE [lpg].[SiteInstallation] CHECK CONSTRAINT [FK_SiteInstallation_TankerCapacityInMtTon]
GO
ALTER TABLE [lpg].[SiteInstallation]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallation_TankType] FOREIGN KEY([TankTypeId])
REFERENCES [lpg].[TankType] ([Id])
GO
ALTER TABLE [lpg].[SiteInstallation] CHECK CONSTRAINT [FK_SiteInstallation_TankType]
GO
ALTER TABLE [lpg].[SiteInstallation]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallation_TransportZone] FOREIGN KEY([TranportZoneID])
REFERENCES [lpg].[TransportZone] ([Id])
GO
ALTER TABLE [lpg].[SiteInstallation] CHECK CONSTRAINT [FK_SiteInstallation_TransportZone]
GO
ALTER TABLE [lpg].[SiteInstallationFiles]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationFiles_AspNetUsers2] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpg].[SiteInstallationFiles] CHECK CONSTRAINT [FK_SiteInstallationFiles_AspNetUsers2]
GO
ALTER TABLE [lpg].[SiteInstallationFiles]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationFiles_AspNetUsers3] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpg].[SiteInstallationFiles] CHECK CONSTRAINT [FK_SiteInstallationFiles_AspNetUsers3]
GO
ALTER TABLE [lpg].[SiteInstallationFiles]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationFiles_SiteInstallation1] FOREIGN KEY([SiteInstallationId])
REFERENCES [lpg].[SiteInstallation] ([Id])
GO
ALTER TABLE [lpg].[SiteInstallationFiles] CHECK CONSTRAINT [FK_SiteInstallationFiles_SiteInstallation1]
GO
ALTER TABLE [lpg].[SiteInstallationFilesStatus]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationFilesstatusstatus_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpg].[SiteInstallationFilesStatus] CHECK CONSTRAINT [FK_SiteInstallationFilesstatusstatus_AspNetUsers]
GO
ALTER TABLE [lpg].[SiteInstallationFilesStatus]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationFilesstatusstatus_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpg].[SiteInstallationFilesStatus] CHECK CONSTRAINT [FK_SiteInstallationFilesstatusstatus_AspNetUsers1]
GO
ALTER TABLE [lpg].[SiteInstallationFilesStatus]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationFilesstatusstatus_SiteInstallation] FOREIGN KEY([SiteInstallationId])
REFERENCES [lpg].[SiteInstallation] ([Id])
GO
ALTER TABLE [lpg].[SiteInstallationFilesStatus] CHECK CONSTRAINT [FK_SiteInstallationFilesstatusstatus_SiteInstallation]
GO
ALTER TABLE [lpg].[SiteInstallationStatus]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationStatus_InstallationAction] FOREIGN KEY([InstallationActionId])
REFERENCES [lpg].[InstallationAction] ([Id])
GO
ALTER TABLE [lpg].[SiteInstallationStatus] CHECK CONSTRAINT [FK_SiteInstallationStatus_InstallationAction]
GO
ALTER TABLE [lpg].[SiteInstallationStatus]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationStatus_InstallationStage] FOREIGN KEY([InstallationStageId])
REFERENCES [lpg].[InstallationStage] ([Id])
GO
ALTER TABLE [lpg].[SiteInstallationStatus] CHECK CONSTRAINT [FK_SiteInstallationStatus_InstallationStage]
GO
ALTER TABLE [lpg].[SiteInstallationStatus]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationStatus_SiteInstallation] FOREIGN KEY([SiteInstallationId])
REFERENCES [lpg].[SiteInstallation] ([Id])
GO
ALTER TABLE [lpg].[SiteInstallationStatus] CHECK CONSTRAINT [FK_SiteInstallationStatus_SiteInstallation]
GO
ALTER TABLE [lpg].[SiteInstallationTankerCapacity]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationTankerCapacity_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpg].[SiteInstallationTankerCapacity] CHECK CONSTRAINT [FK_SiteInstallationTankerCapacity_AspNetUsers]
GO
ALTER TABLE [lpg].[SiteInstallationTankerCapacity]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationTankerCapacity_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpg].[SiteInstallationTankerCapacity] CHECK CONSTRAINT [FK_SiteInstallationTankerCapacity_AspNetUsers1]
GO
ALTER TABLE [lpg].[SiteInstallationTankerCapacity]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationTankerCapacity_SiteInstallation] FOREIGN KEY([SiteInstallationId])
REFERENCES [lpg].[SiteInstallation] ([Id])
GO
ALTER TABLE [lpg].[SiteInstallationTankerCapacity] CHECK CONSTRAINT [FK_SiteInstallationTankerCapacity_SiteInstallation]
GO
ALTER TABLE [lpg].[SiteInstallationTankerCapacity]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationTankerCapacity_TankerCapacityInMtTon] FOREIGN KEY([TankerCapacityInMtTonId])
REFERENCES [lpg].[TankerCapacityInMtTon] ([Id])
GO
ALTER TABLE [lpg].[SiteInstallationTankerCapacity] CHECK CONSTRAINT [FK_SiteInstallationTankerCapacity_TankerCapacityInMtTon]
GO
ALTER TABLE [lpg].[SiteInstallationTanks]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationTanks_AspNetUsers2] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpg].[SiteInstallationTanks] CHECK CONSTRAINT [FK_SiteInstallationTanks_AspNetUsers2]
GO
ALTER TABLE [lpg].[SiteInstallationTanks]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationTanks_AspNetUsers3] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpg].[SiteInstallationTanks] CHECK CONSTRAINT [FK_SiteInstallationTanks_AspNetUsers3]
GO
ALTER TABLE [lpg].[SiteInstallationTanks]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationTanks_SiteInstallation1] FOREIGN KEY([SiteInstallationId])
REFERENCES [lpg].[SiteInstallation] ([Id])
GO
ALTER TABLE [lpg].[SiteInstallationTanks] CHECK CONSTRAINT [FK_SiteInstallationTanks_SiteInstallation1]
GO
ALTER TABLE [lpg].[SiteInstallationTanks]  WITH CHECK ADD  CONSTRAINT [FK_SiteInstallationTanks_TankType] FOREIGN KEY([TankTypeId])
REFERENCES [lpg].[TankType] ([Id])
GO
ALTER TABLE [lpg].[SiteInstallationTanks] CHECK CONSTRAINT [FK_SiteInstallationTanks_TankType]
GO
ALTER TABLE [lpgordering].[DET_LPGSite_OrderSettings]  WITH CHECK ADD  CONSTRAINT [FK_DET_LPGSite_OrderSettings_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpgordering].[DET_LPGSite_OrderSettings] CHECK CONSTRAINT [FK_DET_LPGSite_OrderSettings_AspNetUsers]
GO
ALTER TABLE [lpgordering].[DET_LPGSite_OrderSettings]  WITH CHECK ADD  CONSTRAINT [FK_DET_LPGSite_OrderSettings_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpgordering].[DET_LPGSite_OrderSettings] CHECK CONSTRAINT [FK_DET_LPGSite_OrderSettings_AspNetUsers1]
GO
ALTER TABLE [lpgordering].[DET_LPGSite_OrderSettings]  WITH CHECK ADD  CONSTRAINT [FK_DET_LPGSite_OrderSettings_SitesLPG] FOREIGN KEY([SiteId])
REFERENCES [dbo].[SitesLPG] ([ID])
GO
ALTER TABLE [lpgordering].[DET_LPGSite_OrderSettings] CHECK CONSTRAINT [FK_DET_LPGSite_OrderSettings_SitesLPG]
GO
ALTER TABLE [lpgordering].[LPGOrderPlanning]  WITH CHECK ADD  CONSTRAINT [FK_OrderPlanning_PortalUsers] FOREIGN KEY([CreatedBy])
REFERENCES [orders].[PortalUsers] ([Id])
GO
ALTER TABLE [lpgordering].[LPGOrderPlanning] CHECK CONSTRAINT [FK_OrderPlanning_PortalUsers]
GO
ALTER TABLE [lpgordering].[LPGOrderPlanning]  WITH CHECK ADD  CONSTRAINT [FK_OrderPlanning_PortalUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [orders].[PortalUsers] ([Id])
GO
ALTER TABLE [lpgordering].[LPGOrderPlanning] CHECK CONSTRAINT [FK_OrderPlanning_PortalUsers1]
GO
ALTER TABLE [lpgordering].[LPGOrderPlanning]  WITH CHECK ADD  CONSTRAINT [FK_OrderPlanning_SitesLPG] FOREIGN KEY([SiteId])
REFERENCES [dbo].[SitesLPG] ([ID])
GO
ALTER TABLE [lpgordering].[LPGOrderPlanning] CHECK CONSTRAINT [FK_OrderPlanning_SitesLPG]
GO
ALTER TABLE [lpgordering].[LPGOrderTanks]  WITH CHECK ADD  CONSTRAINT [FK_LPGOrderTanks_LPGOrderTanks] FOREIGN KEY([OrderId])
REFERENCES [lpgordering].[LPGOrderPlanning] ([Id])
GO
ALTER TABLE [lpgordering].[LPGOrderTanks] CHECK CONSTRAINT [FK_LPGOrderTanks_LPGOrderTanks]
GO
ALTER TABLE [lpgordering].[LPGOrderTanks]  WITH CHECK ADD  CONSTRAINT [FK_LPGOrderTanks_LPGSiteTanks] FOREIGN KEY([TankId])
REFERENCES [lpgordering].[LPGSiteTanks] ([Id])
GO
ALTER TABLE [lpgordering].[LPGOrderTanks] CHECK CONSTRAINT [FK_LPGOrderTanks_LPGSiteTanks]
GO
ALTER TABLE [lpgordering].[LPGOrderTanks]  WITH CHECK ADD  CONSTRAINT [FK_LPGOrderTanks_PortalUsers] FOREIGN KEY([CreatedBy])
REFERENCES [orders].[PortalUsers] ([Id])
GO
ALTER TABLE [lpgordering].[LPGOrderTanks] CHECK CONSTRAINT [FK_LPGOrderTanks_PortalUsers]
GO
ALTER TABLE [lpgordering].[LPGOrderTanks]  WITH CHECK ADD  CONSTRAINT [FK_LPGOrderTanks_PortalUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [orders].[PortalUsers] ([Id])
GO
ALTER TABLE [lpgordering].[LPGOrderTanks] CHECK CONSTRAINT [FK_LPGOrderTanks_PortalUsers1]
GO
ALTER TABLE [lpgordering].[LPGSiteTanks]  WITH CHECK ADD  CONSTRAINT [FK_LPGSiteTanks_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpgordering].[LPGSiteTanks] CHECK CONSTRAINT [FK_LPGSiteTanks_AspNetUsers]
GO
ALTER TABLE [lpgordering].[LPGSiteTanks]  WITH CHECK ADD  CONSTRAINT [FK_LPGSiteTanks_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpgordering].[LPGSiteTanks] CHECK CONSTRAINT [FK_LPGSiteTanks_AspNetUsers1]
GO
ALTER TABLE [lpgordering].[LPGSiteTanks]  WITH CHECK ADD  CONSTRAINT [FK_LPGSiteTanks_SitesLPG] FOREIGN KEY([SiteId])
REFERENCES [dbo].[SitesLPG] ([ID])
GO
ALTER TABLE [lpgordering].[LPGSiteTanks] CHECK CONSTRAINT [FK_LPGSiteTanks_SitesLPG]
GO
ALTER TABLE [lpgordering].[MST_LPG_Order]  WITH CHECK ADD  CONSTRAINT [FK_MST_LPG_Order_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpgordering].[MST_LPG_Order] CHECK CONSTRAINT [FK_MST_LPG_Order_AspNetUsers]
GO
ALTER TABLE [lpgordering].[MST_LPG_Order]  WITH CHECK ADD  CONSTRAINT [FK_MST_LPG_Order_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpgordering].[MST_LPG_Order] CHECK CONSTRAINT [FK_MST_LPG_Order_AspNetUsers1]
GO
ALTER TABLE [lpgordering].[MST_LPG_Order]  WITH CHECK ADD  CONSTRAINT [FK_MST_LPG_Order_LPGOrderPlanning] FOREIGN KEY([OrderPlanningId])
REFERENCES [lpgordering].[LPGOrderPlanning] ([Id])
GO
ALTER TABLE [lpgordering].[MST_LPG_Order] CHECK CONSTRAINT [FK_MST_LPG_Order_LPGOrderPlanning]
GO
ALTER TABLE [lpgordering].[MST_LPG_Order]  WITH CHECK ADD  CONSTRAINT [FK_MST_LPG_Order_MST_LPG_Products] FOREIGN KEY([ProductId])
REFERENCES [lpgordering].[MST_LPG_Products] ([Id])
GO
ALTER TABLE [lpgordering].[MST_LPG_Order] CHECK CONSTRAINT [FK_MST_LPG_Order_MST_LPG_Products]
GO
ALTER TABLE [lpgordering].[MST_LPG_Order]  WITH CHECK ADD  CONSTRAINT [FK_MST_LPG_Order_SitesLPG] FOREIGN KEY([SiteId])
REFERENCES [dbo].[SitesLPG] ([ID])
GO
ALTER TABLE [lpgordering].[MST_LPG_Order] CHECK CONSTRAINT [FK_MST_LPG_Order_SitesLPG]
GO
ALTER TABLE [lpgordering].[MST_LPG_Products]  WITH CHECK ADD  CONSTRAINT [FK_MST_LPG_Products_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpgordering].[MST_LPG_Products] CHECK CONSTRAINT [FK_MST_LPG_Products_AspNetUsers]
GO
ALTER TABLE [lpgordering].[MST_LPG_Products]  WITH CHECK ADD  CONSTRAINT [FK_MST_LPG_Products_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpgordering].[MST_LPG_Products] CHECK CONSTRAINT [FK_MST_LPG_Products_AspNetUsers1]
GO
ALTER TABLE [lpgordering].[PortalUserCustomer]  WITH CHECK ADD  CONSTRAINT [FK_PortalUserCustomer_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpgordering].[PortalUserCustomer] CHECK CONSTRAINT [FK_PortalUserCustomer_AspNetUsers]
GO
ALTER TABLE [lpgordering].[PortalUserCustomer]  WITH CHECK ADD  CONSTRAINT [FK_PortalUserCustomer_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpgordering].[PortalUserCustomer] CHECK CONSTRAINT [FK_PortalUserCustomer_AspNetUsers1]
GO
ALTER TABLE [lpgordering].[PortalUserCustomer]  WITH CHECK ADD  CONSTRAINT [FK_PortalUserCustomer_CustomerERP] FOREIGN KEY([CustId])
REFERENCES [dbo].[CustomerERP] ([ID])
GO
ALTER TABLE [lpgordering].[PortalUserCustomer] CHECK CONSTRAINT [FK_PortalUserCustomer_CustomerERP]
GO
ALTER TABLE [lpgordering].[PortalUserCustomer]  WITH CHECK ADD  CONSTRAINT [FK_PortalUserCustomer_PortalUsers] FOREIGN KEY([PortalUserId])
REFERENCES [orders].[PortalUsers] ([Id])
GO
ALTER TABLE [lpgordering].[PortalUserCustomer] CHECK CONSTRAINT [FK_PortalUserCustomer_PortalUsers]
GO
ALTER TABLE [lpgordering].[PortalUserLPGSites]  WITH CHECK ADD  CONSTRAINT [FK_PortalUserLPGSites_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpgordering].[PortalUserLPGSites] CHECK CONSTRAINT [FK_PortalUserLPGSites_AspNetUsers]
GO
ALTER TABLE [lpgordering].[PortalUserLPGSites]  WITH CHECK ADD  CONSTRAINT [FK_PortalUserLPGSites_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lpgordering].[PortalUserLPGSites] CHECK CONSTRAINT [FK_PortalUserLPGSites_AspNetUsers1]
GO
ALTER TABLE [lpgordering].[PortalUserLPGSites]  WITH CHECK ADD  CONSTRAINT [FK_PortalUserLPGSites_PortalUsers] FOREIGN KEY([PortalCustId])
REFERENCES [lpgordering].[PortalUserCustomer] ([Id])
GO
ALTER TABLE [lpgordering].[PortalUserLPGSites] CHECK CONSTRAINT [FK_PortalUserLPGSites_PortalUsers]
GO
ALTER TABLE [lpgordering].[PortalUserLPGSites]  WITH CHECK ADD  CONSTRAINT [FK_PortalUserLPGSites_SitesLPG] FOREIGN KEY([SiteId])
REFERENCES [dbo].[SitesLPG] ([ID])
GO
ALTER TABLE [lpgordering].[PortalUserLPGSites] CHECK CONSTRAINT [FK_PortalUserLPGSites_SitesLPG]
GO
ALTER TABLE [lv].[DistributionType]  WITH CHECK ADD  CONSTRAINT [FK_DistributionType_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[DistributionType] CHECK CONSTRAINT [FK_DistributionType_AspNetUsers]
GO
ALTER TABLE [lv].[DistributionType]  WITH CHECK ADD  CONSTRAINT [FK_DistributionType_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[DistributionType] CHECK CONSTRAINT [FK_DistributionType_AspNetUsers1]
GO
ALTER TABLE [lv].[LeasedVehicle]  WITH CHECK ADD  CONSTRAINT [FK_LeasedVehicle_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LeasedVehicle] CHECK CONSTRAINT [FK_LeasedVehicle_AspNetUsers]
GO
ALTER TABLE [lv].[LeasedVehicle]  WITH CHECK ADD  CONSTRAINT [FK_LeasedVehicle_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LeasedVehicle] CHECK CONSTRAINT [FK_LeasedVehicle_AspNetUsers1]
GO
ALTER TABLE [lv].[LeasedVehicle]  WITH CHECK ADD  CONSTRAINT [FK_LeasedVehicle_LeasedVehicleStatus] FOREIGN KEY([StatusId])
REFERENCES [lv].[LeasedVehicleStatus] ([Id])
GO
ALTER TABLE [lv].[LeasedVehicle] CHECK CONSTRAINT [FK_LeasedVehicle_LeasedVehicleStatus]
GO
ALTER TABLE [lv].[LeasedVehicle]  WITH CHECK ADD  CONSTRAINT [FK_LeasedVehicle_LVCapacity] FOREIGN KEY([CapacityId])
REFERENCES [lv].[LVCapacity] ([Id])
GO
ALTER TABLE [lv].[LeasedVehicle] CHECK CONSTRAINT [FK_LeasedVehicle_LVCapacity]
GO
ALTER TABLE [lv].[LeasedVehicleDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LeasedVehicleDocuments_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LeasedVehicleDocuments] CHECK CONSTRAINT [FK_LeasedVehicleDocuments_AspNetUsers]
GO
ALTER TABLE [lv].[LeasedVehicleDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LeasedVehicleDocuments_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LeasedVehicleDocuments] CHECK CONSTRAINT [FK_LeasedVehicleDocuments_AspNetUsers1]
GO
ALTER TABLE [lv].[LeasedVehicleDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LeasedVehicleDocuments_LeasedVehicleDocuments] FOREIGN KEY([LvId])
REFERENCES [lv].[LeasedVehicle] ([Id])
GO
ALTER TABLE [lv].[LeasedVehicleDocuments] CHECK CONSTRAINT [FK_LeasedVehicleDocuments_LeasedVehicleDocuments]
GO
ALTER TABLE [lv].[LvApprovedContractAttachments]  WITH CHECK ADD  CONSTRAINT [FK_LApprovedContractAttachments_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvApprovedContractAttachments] CHECK CONSTRAINT [FK_LApprovedContractAttachments_AspNetUsers]
GO
ALTER TABLE [lv].[LvApprovedContractAttachments]  WITH CHECK ADD  CONSTRAINT [FK_LApprovedContractAttachments_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvApprovedContractAttachments] CHECK CONSTRAINT [FK_LApprovedContractAttachments_AspNetUsers1]
GO
ALTER TABLE [lv].[LvApprovedContractAttachments]  WITH CHECK ADD  CONSTRAINT [FK_LApprovedContractAttachments_LvApprovedContracts] FOREIGN KEY([LvApprovedContractId])
REFERENCES [lv].[LvApprovedContracts] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContractAttachments] CHECK CONSTRAINT [FK_LApprovedContractAttachments_LvApprovedContracts]
GO
ALTER TABLE [lv].[LvApprovedContractAttachments]  WITH CHECK ADD  CONSTRAINT [FK_LApprovedContractAttachments_LvAttachmentCheckList] FOREIGN KEY([AttachmentId])
REFERENCES [lv].[LvAttachmentCheckList] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContractAttachments] CHECK CONSTRAINT [FK_LApprovedContractAttachments_LvAttachmentCheckList]
GO
ALTER TABLE [lv].[LvApprovedContractDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContractDocuments_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvApprovedContractDocuments] CHECK CONSTRAINT [FK_LvApprovedContractDocuments_AspNetUsers]
GO
ALTER TABLE [lv].[LvApprovedContractDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContractDocuments_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvApprovedContractDocuments] CHECK CONSTRAINT [FK_LvApprovedContractDocuments_AspNetUsers1]
GO
ALTER TABLE [lv].[LvApprovedContractDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContractDocuments_LvApprovedContractAttachments] FOREIGN KEY([LvAttachmentChecklistId])
REFERENCES [lv].[LvAttachment] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContractDocuments] CHECK CONSTRAINT [FK_LvApprovedContractDocuments_LvApprovedContractAttachments]
GO
ALTER TABLE [lv].[LvApprovedContractDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContractDocuments_LvApprovedContracts] FOREIGN KEY([LvApprovedContractId])
REFERENCES [lv].[LvApprovedContracts] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContractDocuments] CHECK CONSTRAINT [FK_LvApprovedContractDocuments_LvApprovedContracts]
GO
ALTER TABLE [lv].[LvApprovedContracts]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContracts_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvApprovedContracts] CHECK CONSTRAINT [FK_LvApprovedContracts_AspNetUsers]
GO
ALTER TABLE [lv].[LvApprovedContracts]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContracts_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvApprovedContracts] CHECK CONSTRAINT [FK_LvApprovedContracts_AspNetUsers1]
GO
ALTER TABLE [lv].[LvApprovedContracts]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContracts_DistributionType] FOREIGN KEY([DistibutionTypeId])
REFERENCES [lv].[DistributionType] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContracts] CHECK CONSTRAINT [FK_LvApprovedContracts_DistributionType]
GO
ALTER TABLE [lv].[LvApprovedContracts]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContracts_DistributionType1] FOREIGN KEY([DistributionTypeId])
REFERENCES [lv].[DistributionType] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContracts] CHECK CONSTRAINT [FK_LvApprovedContracts_DistributionType1]
GO
ALTER TABLE [lv].[LvApprovedContracts]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContracts_LeasedVehicle] FOREIGN KEY([LeasedVehicleId])
REFERENCES [lv].[LeasedVehicle] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContracts] CHECK CONSTRAINT [FK_LvApprovedContracts_LeasedVehicle]
GO
ALTER TABLE [lv].[LvApprovedContracts]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContracts_LvApplicableRates] FOREIGN KEY([LvApplicableRateId])
REFERENCES [lv].[LvApplicableRates] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContracts] CHECK CONSTRAINT [FK_LvApprovedContracts_LvApplicableRates]
GO
ALTER TABLE [lv].[LvApprovedContracts]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContracts_LvContract] FOREIGN KEY([LvContractId])
REFERENCES [lv].[LvContract] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContracts] CHECK CONSTRAINT [FK_LvApprovedContracts_LvContract]
GO
ALTER TABLE [lv].[LvApprovedContracts]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContracts_LvContractType] FOREIGN KEY([LvContractTypeId])
REFERENCES [lv].[LvContractType] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContracts] CHECK CONSTRAINT [FK_LvApprovedContracts_LvContractType]
GO
ALTER TABLE [lv].[LvApprovedContracts]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContracts_LvCustomerType] FOREIGN KEY([LvCustomerTypeId])
REFERENCES [lv].[LvCustomerType] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContracts] CHECK CONSTRAINT [FK_LvApprovedContracts_LvCustomerType]
GO
ALTER TABLE [lv].[LvApprovedContracts]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContracts_ProjectClassification] FOREIGN KEY([ProjectClassificationId])
REFERENCES [contract].[ProjectClassification] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContracts] CHECK CONSTRAINT [FK_LvApprovedContracts_ProjectClassification]
GO
ALTER TABLE [lv].[LvApprovedContractStatus]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContractStatus_AspNetUsers] FOREIGN KEY([RejectedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvApprovedContractStatus] CHECK CONSTRAINT [FK_LvApprovedContractStatus_AspNetUsers]
GO
ALTER TABLE [lv].[LvApprovedContractStatus]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContractStatus_AspNetUsers1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvApprovedContractStatus] CHECK CONSTRAINT [FK_LvApprovedContractStatus_AspNetUsers1]
GO
ALTER TABLE [lv].[LvApprovedContractStatus]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContractStatus_AspNetUsers2] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvApprovedContractStatus] CHECK CONSTRAINT [FK_LvApprovedContractStatus_AspNetUsers2]
GO
ALTER TABLE [lv].[LvApprovedContractStatus]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContractStatus_LvApprovedContracts] FOREIGN KEY([LvApprovedContractId])
REFERENCES [lv].[LvApprovedContracts] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContractStatus] CHECK CONSTRAINT [FK_LvApprovedContractStatus_LvApprovedContracts]
GO
ALTER TABLE [lv].[LvApprovedContractStatus]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContractStatus_LvStage] FOREIGN KEY([LvStageId])
REFERENCES [lv].[LvStage] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContractStatus] CHECK CONSTRAINT [FK_LvApprovedContractStatus_LvStage]
GO
ALTER TABLE [lv].[LvApprovedContractStatus]  WITH CHECK ADD  CONSTRAINT [FK_LvApprovedContractStatus_LvSubStage] FOREIGN KEY([LvSubStageId])
REFERENCES [lv].[LvSubStage] ([Id])
GO
ALTER TABLE [lv].[LvApprovedContractStatus] CHECK CONSTRAINT [FK_LvApprovedContractStatus_LvSubStage]
GO
ALTER TABLE [lv].[LvAttachment]  WITH CHECK ADD  CONSTRAINT [FK_LvAttachment_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvAttachment] CHECK CONSTRAINT [FK_LvAttachment_AspNetUsers]
GO
ALTER TABLE [lv].[LvAttachment]  WITH CHECK ADD  CONSTRAINT [FK_LvAttachment_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvAttachment] CHECK CONSTRAINT [FK_LvAttachment_AspNetUsers1]
GO
ALTER TABLE [lv].[LvAttachment]  WITH CHECK ADD  CONSTRAINT [FK_LvAttachment_LvAttachment] FOREIGN KEY([LvContractId])
REFERENCES [lv].[LvContract] ([Id])
GO
ALTER TABLE [lv].[LvAttachment] CHECK CONSTRAINT [FK_LvAttachment_LvAttachment]
GO
ALTER TABLE [lv].[LvAttachment]  WITH CHECK ADD  CONSTRAINT [FK_LvAttachment_LvAttachmentCheckList] FOREIGN KEY([AttachmentId])
REFERENCES [lv].[LvAttachmentCheckList] ([Id])
GO
ALTER TABLE [lv].[LvAttachment] CHECK CONSTRAINT [FK_LvAttachment_LvAttachmentCheckList]
GO
ALTER TABLE [lv].[LvAttachmentCheckList]  WITH CHECK ADD  CONSTRAINT [FK_LvAttachmentCheckList_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvAttachmentCheckList] CHECK CONSTRAINT [FK_LvAttachmentCheckList_AspNetUsers]
GO
ALTER TABLE [lv].[LvAttachmentCheckList]  WITH CHECK ADD  CONSTRAINT [FK_LvAttachmentCheckList_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvAttachmentCheckList] CHECK CONSTRAINT [FK_LvAttachmentCheckList_AspNetUsers1]
GO
ALTER TABLE [lv].[LVCapacity]  WITH CHECK ADD  CONSTRAINT [FK_LVCapacity_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LVCapacity] CHECK CONSTRAINT [FK_LVCapacity_AspNetUsers]
GO
ALTER TABLE [lv].[LVCapacity]  WITH CHECK ADD  CONSTRAINT [FK_LVCapacity_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LVCapacity] CHECK CONSTRAINT [FK_LVCapacity_AspNetUsers1]
GO
ALTER TABLE [lv].[LvContract]  WITH CHECK ADD  CONSTRAINT [FK_LvContract_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvContract] CHECK CONSTRAINT [FK_LvContract_AspNetUsers]
GO
ALTER TABLE [lv].[LvContract]  WITH CHECK ADD  CONSTRAINT [FK_LvContract_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvContract] CHECK CONSTRAINT [FK_LvContract_AspNetUsers1]
GO
ALTER TABLE [lv].[LvContract]  WITH CHECK ADD  CONSTRAINT [FK_LvContract_DistributionType] FOREIGN KEY([DistributionTypeId])
REFERENCES [lv].[DistributionType] ([Id])
GO
ALTER TABLE [lv].[LvContract] CHECK CONSTRAINT [FK_LvContract_DistributionType]
GO
ALTER TABLE [lv].[LvContract]  WITH CHECK ADD  CONSTRAINT [FK_LvContract_LvContract] FOREIGN KEY([LvContractTypeId])
REFERENCES [lv].[LvContractType] ([Id])
GO
ALTER TABLE [lv].[LvContract] CHECK CONSTRAINT [FK_LvContract_LvContract]
GO
ALTER TABLE [lv].[LvContract]  WITH CHECK ADD  CONSTRAINT [FK_LvContract_LvContract1] FOREIGN KEY([ProjectClassificationId])
REFERENCES [contract].[ProjectClassification] ([Id])
GO
ALTER TABLE [lv].[LvContract] CHECK CONSTRAINT [FK_LvContract_LvContract1]
GO
ALTER TABLE [lv].[LvContract]  WITH CHECK ADD  CONSTRAINT [FK_LvContract_LvCustomerType] FOREIGN KEY([LvCustomerTypeId])
REFERENCES [lv].[LvCustomerType] ([Id])
GO
ALTER TABLE [lv].[LvContract] CHECK CONSTRAINT [FK_LvContract_LvCustomerType]
GO
ALTER TABLE [lv].[LvContract]  WITH CHECK ADD  CONSTRAINT [FK_LvContract_Site] FOREIGN KEY([SiteId])
REFERENCES [contract].[Site] ([Id])
GO
ALTER TABLE [lv].[LvContract] CHECK CONSTRAINT [FK_LvContract_Site]
GO
ALTER TABLE [lv].[LvContractStatus]  WITH CHECK ADD  CONSTRAINT [FK_LvContractStatus_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvContractStatus] CHECK CONSTRAINT [FK_LvContractStatus_AspNetUsers]
GO
ALTER TABLE [lv].[LvContractStatus]  WITH CHECK ADD  CONSTRAINT [FK_LvContractStatus_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvContractStatus] CHECK CONSTRAINT [FK_LvContractStatus_AspNetUsers1]
GO
ALTER TABLE [lv].[LvContractStatus]  WITH CHECK ADD  CONSTRAINT [FK_LvContractStatus_AspNetUsers2] FOREIGN KEY([RejectedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvContractStatus] CHECK CONSTRAINT [FK_LvContractStatus_AspNetUsers2]
GO
ALTER TABLE [lv].[LvContractStatus]  WITH CHECK ADD  CONSTRAINT [FK_LvContractStatus_LvContract] FOREIGN KEY([LvContractId])
REFERENCES [lv].[LvContract] ([Id])
GO
ALTER TABLE [lv].[LvContractStatus] CHECK CONSTRAINT [FK_LvContractStatus_LvContract]
GO
ALTER TABLE [lv].[LvContractStatus]  WITH CHECK ADD  CONSTRAINT [FK_LvContractStatus_LvContractStatus] FOREIGN KEY([Id])
REFERENCES [lv].[LvContractStatus] ([Id])
GO
ALTER TABLE [lv].[LvContractStatus] CHECK CONSTRAINT [FK_LvContractStatus_LvContractStatus]
GO
ALTER TABLE [lv].[LvContractStatus]  WITH CHECK ADD  CONSTRAINT [FK_LvContractStatus_LvStage] FOREIGN KEY([LvStageId])
REFERENCES [lv].[LvStage] ([Id])
GO
ALTER TABLE [lv].[LvContractStatus] CHECK CONSTRAINT [FK_LvContractStatus_LvStage]
GO
ALTER TABLE [lv].[LvContractStatus]  WITH CHECK ADD  CONSTRAINT [FK_LvContractStatus_LvSubStage] FOREIGN KEY([LvSubStageId])
REFERENCES [lv].[LvSubStage] ([Id])
GO
ALTER TABLE [lv].[LvContractStatus] CHECK CONSTRAINT [FK_LvContractStatus_LvSubStage]
GO
ALTER TABLE [lv].[LvContractType]  WITH CHECK ADD  CONSTRAINT [FK_LvContractType_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvContractType] CHECK CONSTRAINT [FK_LvContractType_AspNetUsers]
GO
ALTER TABLE [lv].[LvContractType]  WITH CHECK ADD  CONSTRAINT [FK_LvContractType_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvContractType] CHECK CONSTRAINT [FK_LvContractType_AspNetUsers1]
GO
ALTER TABLE [lv].[LvCustomerType]  WITH CHECK ADD  CONSTRAINT [FK_LvCustomerType_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvCustomerType] CHECK CONSTRAINT [FK_LvCustomerType_AspNetUsers]
GO
ALTER TABLE [lv].[LvCustomerType]  WITH CHECK ADD  CONSTRAINT [FK_LvCustomerType_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvCustomerType] CHECK CONSTRAINT [FK_LvCustomerType_AspNetUsers1]
GO
ALTER TABLE [lv].[LvDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LvDocuments_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvDocuments] CHECK CONSTRAINT [FK_LvDocuments_AspNetUsers]
GO
ALTER TABLE [lv].[LvDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LvDocuments_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvDocuments] CHECK CONSTRAINT [FK_LvDocuments_AspNetUsers1]
GO
ALTER TABLE [lv].[LvDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LvDocuments_LvContract] FOREIGN KEY([LvContractId])
REFERENCES [lv].[LvContract] ([Id])
GO
ALTER TABLE [lv].[LvDocuments] CHECK CONSTRAINT [FK_LvDocuments_LvContract]
GO
ALTER TABLE [lv].[LvDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LvDocuments_LvDocuments] FOREIGN KEY([LvAttachmentChecklistId])
REFERENCES [lv].[LvAttachment] ([Id])
GO
ALTER TABLE [lv].[LvDocuments] CHECK CONSTRAINT [FK_LvDocuments_LvDocuments]
GO
ALTER TABLE [lv].[LVLeaseDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LVLeaseDocuments_AspNetUsers] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LVLeaseDocuments] CHECK CONSTRAINT [FK_LVLeaseDocuments_AspNetUsers]
GO
ALTER TABLE [lv].[LVLeaseDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LVLeaseDocuments_LvApprovedContracts] FOREIGN KEY([LvApprovedContractId])
REFERENCES [lv].[LvApprovedContracts] ([Id])
GO
ALTER TABLE [lv].[LVLeaseDocuments] CHECK CONSTRAINT [FK_LVLeaseDocuments_LvApprovedContracts]
GO
ALTER TABLE [lv].[LVLeaseDocuments]  WITH CHECK ADD  CONSTRAINT [FK_LVLeaseDocuments_LVLeaseDocuments] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LVLeaseDocuments] CHECK CONSTRAINT [FK_LVLeaseDocuments_LVLeaseDocuments]
GO
ALTER TABLE [lv].[LvStage]  WITH CHECK ADD  CONSTRAINT [FK_LvStage_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvStage] CHECK CONSTRAINT [FK_LvStage_AspNetUsers]
GO
ALTER TABLE [lv].[LvStage]  WITH CHECK ADD  CONSTRAINT [FK_LvStage_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvStage] CHECK CONSTRAINT [FK_LvStage_AspNetUsers1]
GO
ALTER TABLE [lv].[LvSubStage]  WITH CHECK ADD  CONSTRAINT [FK_LvSubStage_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvSubStage] CHECK CONSTRAINT [FK_LvSubStage_AspNetUsers]
GO
ALTER TABLE [lv].[LvSubStage]  WITH CHECK ADD  CONSTRAINT [FK_LvSubStage_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [lv].[LvSubStage] CHECK CONSTRAINT [FK_LvSubStage_AspNetUsers1]
GO
ALTER TABLE [lv].[LvSubStage]  WITH CHECK ADD  CONSTRAINT [FK_LvSubStage_LvSubStage] FOREIGN KEY([LvStageId])
REFERENCES [lv].[LvStage] ([Id])
GO
ALTER TABLE [lv].[LvSubStage] CHECK CONSTRAINT [FK_LvSubStage_LvSubStage]
GO
ALTER TABLE [notify].[EmailLog]  WITH CHECK ADD  CONSTRAINT [FK_EmailLog_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [notify].[EmailLog] CHECK CONSTRAINT [FK_EmailLog_AspNetUsers]
GO
ALTER TABLE [notify].[EmailStatus]  WITH CHECK ADD  CONSTRAINT [FK_EmailStatus_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [notify].[EmailStatus] CHECK CONSTRAINT [FK_EmailStatus_AspNetUsers]
GO
ALTER TABLE [notify].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Action] FOREIGN KEY([ActionId])
REFERENCES [dbo].[Action] ([Id])
GO
ALTER TABLE [notify].[Event] CHECK CONSTRAINT [FK_Event_Action]
GO
ALTER TABLE [notify].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [notify].[Event] CHECK CONSTRAINT [FK_Event_AspNetUsers]
GO
ALTER TABLE [notify].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [notify].[Event] CHECK CONSTRAINT [FK_Event_AspNetUsers1]
GO
ALTER TABLE [notify].[EventNotification]  WITH CHECK ADD  CONSTRAINT [FK_EventNotification_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [notify].[EventNotification] CHECK CONSTRAINT [FK_EventNotification_AspNetUsers]
GO
ALTER TABLE [notify].[EventNotification]  WITH CHECK ADD  CONSTRAINT [FK_EventNotification_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [notify].[EventNotification] CHECK CONSTRAINT [FK_EventNotification_AspNetUsers1]
GO
ALTER TABLE [notify].[EventNotification]  WITH CHECK ADD  CONSTRAINT [FK_EventNotification_Event] FOREIGN KEY([EventId])
REFERENCES [notify].[Event] ([Id])
GO
ALTER TABLE [notify].[EventNotification] CHECK CONSTRAINT [FK_EventNotification_Event]
GO
ALTER TABLE [notify].[EventNotification]  WITH CHECK ADD  CONSTRAINT [FK_EventNotification_EventType] FOREIGN KEY([EventTypeId])
REFERENCES [notify].[EventType] ([Id])
GO
ALTER TABLE [notify].[EventNotification] CHECK CONSTRAINT [FK_EventNotification_EventType]
GO
ALTER TABLE [notify].[EventNotification]  WITH CHECK ADD  CONSTRAINT [FK_EventNotification_MailingList] FOREIGN KEY([MailingListId])
REFERENCES [notify].[MailingList] ([Id])
GO
ALTER TABLE [notify].[EventNotification] CHECK CONSTRAINT [FK_EventNotification_MailingList]
GO
ALTER TABLE [notify].[EventNotification]  WITH CHECK ADD  CONSTRAINT [FK_EventNotification_MailingList1] FOREIGN KEY([MailingListCCId])
REFERENCES [notify].[MailingList] ([Id])
GO
ALTER TABLE [notify].[EventNotification] CHECK CONSTRAINT [FK_EventNotification_MailingList1]
GO
ALTER TABLE [notify].[EventType]  WITH CHECK ADD  CONSTRAINT [FK_EventType_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [notify].[EventType] CHECK CONSTRAINT [FK_EventType_AspNetUsers]
GO
ALTER TABLE [notify].[EventType]  WITH CHECK ADD  CONSTRAINT [FK_EventType_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [notify].[EventType] CHECK CONSTRAINT [FK_EventType_AspNetUsers1]
GO
ALTER TABLE [notify].[MailingList]  WITH CHECK ADD  CONSTRAINT [FK_MailingList_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [notify].[MailingList] CHECK CONSTRAINT [FK_MailingList_AspNetUsers]
GO
ALTER TABLE [notify].[MailingList]  WITH CHECK ADD  CONSTRAINT [FK_MailingList_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [notify].[MailingList] CHECK CONSTRAINT [FK_MailingList_AspNetUsers1]
GO
ALTER TABLE [ordering].[DET_OrderItem_Config]  WITH CHECK ADD  CONSTRAINT [FK_DET_OrderItem_Config_DET_OrderItem_Config] FOREIGN KEY([ConfigEventTypeId])
REFERENCES [ordering].[MST_ConfigType] ([Id])
GO
ALTER TABLE [ordering].[DET_OrderItem_Config] CHECK CONSTRAINT [FK_DET_OrderItem_Config_DET_OrderItem_Config]
GO
ALTER TABLE [ordering].[DET_OrderItem_Config]  WITH CHECK ADD  CONSTRAINT [FK_DET_OrderItem_Config_DET_OrderItems] FOREIGN KEY([OrderItemId])
REFERENCES [ordering].[DET_OrderItems] ([Id])
GO
ALTER TABLE [ordering].[DET_OrderItem_Config] CHECK CONSTRAINT [FK_DET_OrderItem_Config_DET_OrderItems]
GO
ALTER TABLE [ordering].[DET_OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_DET_OrderItems_MST_Box] FOREIGN KEY([BoxId])
REFERENCES [ordering].[MST_Box] ([Id])
GO
ALTER TABLE [ordering].[DET_OrderItems] CHECK CONSTRAINT [FK_DET_OrderItems_MST_Box]
GO
ALTER TABLE [ordering].[DET_OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_DET_OrderItems_MST_Orders] FOREIGN KEY([OrderId])
REFERENCES [ordering].[MST_Orders] ([Id])
GO
ALTER TABLE [ordering].[DET_OrderItems] CHECK CONSTRAINT [FK_DET_OrderItems_MST_Orders]
GO
ALTER TABLE [ordering].[DET_OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_DET_OrderItems_MST_OrderStatus] FOREIGN KEY([StatusId])
REFERENCES [ordering].[MST_OrderStatus] ([Id])
GO
ALTER TABLE [ordering].[DET_OrderItems] CHECK CONSTRAINT [FK_DET_OrderItems_MST_OrderStatus]
GO
ALTER TABLE [ordering].[DET_OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_DET_OrderItems_MST_Products] FOREIGN KEY([ProductId])
REFERENCES [ordering].[MST_Products] ([Id])
GO
ALTER TABLE [ordering].[DET_OrderItems] CHECK CONSTRAINT [FK_DET_OrderItems_MST_Products]
GO
ALTER TABLE [ordering].[DET_PortalUser_Notification]  WITH CHECK ADD  CONSTRAINT [FK_DET_PortalUser_Notification_MST_Portal_Notification] FOREIGN KEY([NotificationId])
REFERENCES [ordering].[MST_Portal_Notification] ([Id])
GO
ALTER TABLE [ordering].[DET_PortalUser_Notification] CHECK CONSTRAINT [FK_DET_PortalUser_Notification_MST_Portal_Notification]
GO
ALTER TABLE [ordering].[DET_PortalUser_Notification]  WITH CHECK ADD  CONSTRAINT [FK_DET_PortalUser_Notification_PortalUsers] FOREIGN KEY([PortalUserId])
REFERENCES [orders].[PortalUsers] ([Id])
GO
ALTER TABLE [ordering].[DET_PortalUser_Notification] CHECK CONSTRAINT [FK_DET_PortalUser_Notification_PortalUsers]
GO
ALTER TABLE [ordering].[DET_Section_Products]  WITH CHECK ADD  CONSTRAINT [FK_DET_Section_Products_MST_Products] FOREIGN KEY([ProductId])
REFERENCES [ordering].[MST_Products] ([Id])
GO
ALTER TABLE [ordering].[DET_Section_Products] CHECK CONSTRAINT [FK_DET_Section_Products_MST_Products]
GO
ALTER TABLE [ordering].[DET_Section_Products]  WITH CHECK ADD  CONSTRAINT [FK_DET_Section_Products_MST_Section] FOREIGN KEY([SectionId])
REFERENCES [ordering].[MST_Section] ([Id])
GO
ALTER TABLE [ordering].[DET_Section_Products] CHECK CONSTRAINT [FK_DET_Section_Products_MST_Section]
GO
ALTER TABLE [ordering].[DET_Shift_Actions]  WITH CHECK ADD  CONSTRAINT [FK_DET_Shift_Actions_DET_Shifts] FOREIGN KEY([ShiftId])
REFERENCES [ordering].[DET_Shifts] ([Id])
GO
ALTER TABLE [ordering].[DET_Shift_Actions] CHECK CONSTRAINT [FK_DET_Shift_Actions_DET_Shifts]
GO
ALTER TABLE [ordering].[DET_Shift_Actions]  WITH CHECK ADD  CONSTRAINT [FK_DET_Shift_Actions_MST_Action] FOREIGN KEY([ActionId])
REFERENCES [ordering].[MST_Action] ([Id])
GO
ALTER TABLE [ordering].[DET_Shift_Actions] CHECK CONSTRAINT [FK_DET_Shift_Actions_MST_Action]
GO
ALTER TABLE [ordering].[DET_Shift_Box_Lomo]  WITH CHECK ADD  CONSTRAINT [FK_DET_Shift_Box_Lomo_MST_Box] FOREIGN KEY([BoxId])
REFERENCES [ordering].[MST_Box] ([Id])
GO
ALTER TABLE [ordering].[DET_Shift_Box_Lomo] CHECK CONSTRAINT [FK_DET_Shift_Box_Lomo_MST_Box]
GO
ALTER TABLE [ordering].[DET_Shift_Box_Lomo]  WITH CHECK ADD  CONSTRAINT [FK_DET_Shift_Box_Lomo_MST_Shift] FOREIGN KEY([ShiftId])
REFERENCES [ordering].[MST_Shift] ([Id])
GO
ALTER TABLE [ordering].[DET_Shift_Box_Lomo] CHECK CONSTRAINT [FK_DET_Shift_Box_Lomo_MST_Shift]
GO
ALTER TABLE [ordering].[DET_Shift_Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_DET_Shift_Vehicles_DET_Shifts] FOREIGN KEY([ShiftDetailId])
REFERENCES [ordering].[DET_Shifts] ([Id])
GO
ALTER TABLE [ordering].[DET_Shift_Vehicles] CHECK CONSTRAINT [FK_DET_Shift_Vehicles_DET_Shifts]
GO
ALTER TABLE [ordering].[DET_Shift_Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_DET_Shift_Vehicles_MST_Section] FOREIGN KEY([SectionId])
REFERENCES [ordering].[MST_Section] ([Id])
GO
ALTER TABLE [ordering].[DET_Shift_Vehicles] CHECK CONSTRAINT [FK_DET_Shift_Vehicles_MST_Section]
GO
ALTER TABLE [ordering].[DET_ShiftOrders]  WITH CHECK ADD  CONSTRAINT [FK_DET_ShiftOrders_DET_OrderItems] FOREIGN KEY([OrderItemId])
REFERENCES [ordering].[DET_OrderItems] ([Id])
GO
ALTER TABLE [ordering].[DET_ShiftOrders] CHECK CONSTRAINT [FK_DET_ShiftOrders_DET_OrderItems]
GO
ALTER TABLE [ordering].[DET_ShiftOrders]  WITH CHECK ADD  CONSTRAINT [FK_DET_ShiftOrders_DET_Shifts] FOREIGN KEY([ShiftDetailId])
REFERENCES [ordering].[DET_Shifts] ([Id])
GO
ALTER TABLE [ordering].[DET_ShiftOrders] CHECK CONSTRAINT [FK_DET_ShiftOrders_DET_Shifts]
GO
ALTER TABLE [ordering].[DET_ShiftOrders]  WITH CHECK ADD  CONSTRAINT [FK_DET_ShiftOrders_MST_Section] FOREIGN KEY([SectionId])
REFERENCES [ordering].[MST_Section] ([Id])
GO
ALTER TABLE [ordering].[DET_ShiftOrders] CHECK CONSTRAINT [FK_DET_ShiftOrders_MST_Section]
GO
ALTER TABLE [ordering].[DET_Shifts]  WITH CHECK ADD  CONSTRAINT [FK_DET_Shifts_MST_Section] FOREIGN KEY([SectionId])
REFERENCES [ordering].[MST_Section] ([Id])
GO
ALTER TABLE [ordering].[DET_Shifts] CHECK CONSTRAINT [FK_DET_Shifts_MST_Section]
GO
ALTER TABLE [ordering].[MST_Box]  WITH CHECK ADD  CONSTRAINT [FK_MST_Box_MST_Section] FOREIGN KEY([SectionId])
REFERENCES [ordering].[MST_Section] ([Id])
GO
ALTER TABLE [ordering].[MST_Box] CHECK CONSTRAINT [FK_MST_Box_MST_Section]
GO
ALTER TABLE [ordering].[MST_DMS_Order]  WITH CHECK ADD  CONSTRAINT [FK_MST_DMS_Order_DET_Shifts] FOREIGN KEY([ShiftId])
REFERENCES [ordering].[DET_Shifts] ([Id])
GO
ALTER TABLE [ordering].[MST_DMS_Order] CHECK CONSTRAINT [FK_MST_DMS_Order_DET_Shifts]
GO
ALTER TABLE [ordering].[MST_DMS_Order]  WITH CHECK ADD  CONSTRAINT [FK_MST_DMS_Order_MST_OrderStatus] FOREIGN KEY([StatusId])
REFERENCES [ordering].[MST_OrderStatus] ([Id])
GO
ALTER TABLE [ordering].[MST_DMS_Order] CHECK CONSTRAINT [FK_MST_DMS_Order_MST_OrderStatus]
GO
ALTER TABLE [ordering].[MST_DMS_Order]  WITH CHECK ADD  CONSTRAINT [FK_MST_DMS_Order_MST_OrderType] FOREIGN KEY([OrderTypeId])
REFERENCES [ordering].[MST_OrderType] ([Id])
GO
ALTER TABLE [ordering].[MST_DMS_Order] CHECK CONSTRAINT [FK_MST_DMS_Order_MST_OrderType]
GO
ALTER TABLE [ordering].[MST_DMS_Order]  WITH CHECK ADD  CONSTRAINT [FK_MST_DMS_Order_MST_Products] FOREIGN KEY([ProductId])
REFERENCES [ordering].[MST_Products] ([Id])
GO
ALTER TABLE [ordering].[MST_DMS_Order] CHECK CONSTRAINT [FK_MST_DMS_Order_MST_Products]
GO
ALTER TABLE [ordering].[MST_Orders]  WITH CHECK ADD  CONSTRAINT [FK_MST_Orders_MST_Box] FOREIGN KEY([BoxId])
REFERENCES [ordering].[MST_Box] ([Id])
GO
ALTER TABLE [ordering].[MST_Orders] CHECK CONSTRAINT [FK_MST_Orders_MST_Box]
GO
ALTER TABLE [ordering].[MST_Orders]  WITH CHECK ADD  CONSTRAINT [FK_MST_Orders_MST_Section] FOREIGN KEY([SectionId])
REFERENCES [ordering].[MST_Section] ([Id])
GO
ALTER TABLE [ordering].[MST_Orders] CHECK CONSTRAINT [FK_MST_Orders_MST_Section]
GO
ALTER TABLE [ordering].[MST_Orders]  WITH CHECK ADD  CONSTRAINT [FK_MST_Orders_MST_Terminal] FOREIGN KEY([TerminalId])
REFERENCES [ordering].[MST_Terminal] ([Id])
GO
ALTER TABLE [ordering].[MST_Orders] CHECK CONSTRAINT [FK_MST_Orders_MST_Terminal]
GO
ALTER TABLE [ordering].[MST_Portal_Notification]  WITH CHECK ADD  CONSTRAINT [FK_MST_Portal_Notification_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [ordering].[MST_Portal_Notification] CHECK CONSTRAINT [FK_MST_Portal_Notification_AspNetUsers]
GO
ALTER TABLE [ordering].[MST_Portal_Notification]  WITH CHECK ADD  CONSTRAINT [FK_MST_Portal_Notification_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [ordering].[MST_Portal_Notification] CHECK CONSTRAINT [FK_MST_Portal_Notification_AspNetUsers1]
GO
ALTER TABLE [ordering].[MST_Portal_Notification]  WITH CHECK ADD  CONSTRAINT [FK_MST_Portal_Notification_MST_Portal_NotificationCategory] FOREIGN KEY([MST_Portal_NotificationCategoryId])
REFERENCES [ordering].[MST_Portal_NotificationCategory] ([Id])
GO
ALTER TABLE [ordering].[MST_Portal_Notification] CHECK CONSTRAINT [FK_MST_Portal_Notification_MST_Portal_NotificationCategory]
GO
ALTER TABLE [ordering].[MST_Portal_NotificationCategory]  WITH CHECK ADD  CONSTRAINT [FK_MST_NotificationCategory_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [ordering].[MST_Portal_NotificationCategory] CHECK CONSTRAINT [FK_MST_NotificationCategory_AspNetUsers]
GO
ALTER TABLE [ordering].[MST_Portal_NotificationCategory]  WITH CHECK ADD  CONSTRAINT [FK_MST_NotificationCategory_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [ordering].[MST_Portal_NotificationCategory] CHECK CONSTRAINT [FK_MST_NotificationCategory_AspNetUsers1]
GO
ALTER TABLE [ordering].[MST_SettingsQuantity]  WITH CHECK ADD  CONSTRAINT [FK_MST_SettingsQuantity_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [ordering].[MST_SettingsQuantity] CHECK CONSTRAINT [FK_MST_SettingsQuantity_AspNetUsers]
GO
ALTER TABLE [ordering].[MST_SettingsQuantity]  WITH CHECK ADD  CONSTRAINT [FK_MST_SettingsQuantity_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [ordering].[MST_SettingsQuantity] CHECK CONSTRAINT [FK_MST_SettingsQuantity_AspNetUsers1]
GO
ALTER TABLE [ordering].[MST_Shift]  WITH CHECK ADD  CONSTRAINT [FK_MST_Shift_MST_Section] FOREIGN KEY([SectionId])
REFERENCES [ordering].[MST_Section] ([Id])
GO
ALTER TABLE [ordering].[MST_Shift] CHECK CONSTRAINT [FK_MST_Shift_MST_Section]
GO
ALTER TABLE [ordering].[OrderPlanning]  WITH CHECK ADD  CONSTRAINT [FK_OrderPlanning_DET_Shifts] FOREIGN KEY([ShiftId])
REFERENCES [ordering].[DET_Shifts] ([Id])
GO
ALTER TABLE [ordering].[OrderPlanning] CHECK CONSTRAINT [FK_OrderPlanning_DET_Shifts]
GO
ALTER TABLE [ordering].[OrderPlanning]  WITH CHECK ADD  CONSTRAINT [FK_OrderPlanning_MST_Products] FOREIGN KEY([ProductId])
REFERENCES [ordering].[MST_Products] ([Id])
GO
ALTER TABLE [ordering].[OrderPlanning] CHECK CONSTRAINT [FK_OrderPlanning_MST_Products]
GO
ALTER TABLE [ordering].[OrderPlanning]  WITH CHECK ADD  CONSTRAINT [FK_OrderPlanning_PortalUsers] FOREIGN KEY([CreatedBy])
REFERENCES [orders].[PortalUsers] ([Id])
GO
ALTER TABLE [ordering].[OrderPlanning] CHECK CONSTRAINT [FK_OrderPlanning_PortalUsers]
GO
ALTER TABLE [ordering].[OrderPlanning]  WITH CHECK ADD  CONSTRAINT [FK_OrderPlanning_PortalUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [orders].[PortalUsers] ([Id])
GO
ALTER TABLE [ordering].[OrderPlanning] CHECK CONSTRAINT [FK_OrderPlanning_PortalUsers1]
GO
ALTER TABLE [ordering].[OrderPlanning]  WITH CHECK ADD  CONSTRAINT [FK_OrderPlanning_SitesERP] FOREIGN KEY([SiteId])
REFERENCES [dbo].[SitesERP] ([ID])
GO
ALTER TABLE [ordering].[OrderPlanning] CHECK CONSTRAINT [FK_OrderPlanning_SitesERP]
GO
ALTER TABLE [ordering].[STG_Batch]  WITH CHECK ADD  CONSTRAINT [FK_STG_Batch_MST_Action] FOREIGN KEY([ExportStatusId])
REFERENCES [ordering].[MST_Action] ([Id])
GO
ALTER TABLE [ordering].[STG_Batch] CHECK CONSTRAINT [FK_STG_Batch_MST_Action]
GO
ALTER TABLE [ordering].[STG_Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_STG_Orders_AspNetUsers1] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [ordering].[STG_Orders] CHECK CONSTRAINT [FK_STG_Orders_AspNetUsers1]
GO
ALTER TABLE [ordering].[STG_Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_STG_Orders_MST_Action] FOREIGN KEY([ExportStatusId])
REFERENCES [ordering].[MST_Action] ([Id])
GO
ALTER TABLE [ordering].[STG_Orders] CHECK CONSTRAINT [FK_STG_Orders_MST_Action]
GO
ALTER TABLE [ordering].[STG_Orders]  WITH NOCHECK ADD  CONSTRAINT [FK_STG_Orders_STG_Batch] FOREIGN KEY([STG_BatchId])
REFERENCES [ordering].[STG_Batch] ([Id])
GO
ALTER TABLE [ordering].[STG_Orders] CHECK CONSTRAINT [FK_STG_Orders_STG_Batch]
GO
ALTER TABLE [orders].[CompartmentSizes]  WITH CHECK ADD  CONSTRAINT [FK_CompartmentSizes_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[CompartmentSizes] CHECK CONSTRAINT [FK_CompartmentSizes_AspNetUsers]
GO
ALTER TABLE [orders].[CompartmentSizes]  WITH CHECK ADD  CONSTRAINT [FK_CompartmentSizes_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[CompartmentSizes] CHECK CONSTRAINT [FK_CompartmentSizes_AspNetUsers1]
GO
ALTER TABLE [orders].[OrderMap]  WITH CHECK ADD  CONSTRAINT [FK_OrderMap_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[OrderMap] CHECK CONSTRAINT [FK_OrderMap_AspNetUsers]
GO
ALTER TABLE [orders].[OrderMap]  WITH CHECK ADD  CONSTRAINT [FK_OrderMap_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[OrderMap] CHECK CONSTRAINT [FK_OrderMap_AspNetUsers1]
GO
ALTER TABLE [orders].[OrderMap]  WITH CHECK ADD  CONSTRAINT [FK_OrderMap_OrderSource] FOREIGN KEY([OrderSourceId])
REFERENCES [orders].[OrderSource] ([Id])
GO
ALTER TABLE [orders].[OrderMap] CHECK CONSTRAINT [FK_OrderMap_OrderSource]
GO
ALTER TABLE [orders].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Orders] FOREIGN KEY([ShiftId])
REFERENCES [orders].[Shift] ([Id])
GO
ALTER TABLE [orders].[Orders] CHECK CONSTRAINT [FK_Orders_Orders]
GO
ALTER TABLE [orders].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_OrderSource] FOREIGN KEY([OrderSourceId])
REFERENCES [orders].[OrderSource] ([Id])
GO
ALTER TABLE [orders].[Orders] CHECK CONSTRAINT [FK_Orders_OrderSource]
GO
ALTER TABLE [orders].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Productz] FOREIGN KEY([ProductId])
REFERENCES [orders].[Productz] ([Id])
GO
ALTER TABLE [orders].[Orders] CHECK CONSTRAINT [FK_Orders_Productz]
GO
ALTER TABLE [orders].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_SitesERP] FOREIGN KEY([SiteId])
REFERENCES [dbo].[SitesERP] ([ID])
GO
ALTER TABLE [orders].[Orders] CHECK CONSTRAINT [FK_Orders_SitesERP]
GO
ALTER TABLE [orders].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Status] FOREIGN KEY([StatusId])
REFERENCES [orders].[OrderStatus] ([Id])
GO
ALTER TABLE [orders].[Orders] CHECK CONSTRAINT [FK_Orders_Status]
GO
ALTER TABLE [orders].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Tank] FOREIGN KEY([TankId])
REFERENCES [dbo].[Tank] ([ID])
GO
ALTER TABLE [orders].[Orders] CHECK CONSTRAINT [FK_Orders_Tank]
GO
ALTER TABLE [orders].[OrderTasks]  WITH CHECK ADD  CONSTRAINT [FK_OrderTasks_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[OrderTasks] CHECK CONSTRAINT [FK_OrderTasks_AspNetUsers]
GO
ALTER TABLE [orders].[OrderTasks]  WITH CHECK ADD  CONSTRAINT [FK_OrderTasks_TaskCode] FOREIGN KEY([TaskCodeId])
REFERENCES [orders].[TaskCode] ([Id])
GO
ALTER TABLE [orders].[OrderTasks] CHECK CONSTRAINT [FK_OrderTasks_TaskCode]
GO
ALTER TABLE [orders].[PortalLogType]  WITH CHECK ADD  CONSTRAINT [FK_PortalLogType_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[PortalLogType] CHECK CONSTRAINT [FK_PortalLogType_AspNetUsers]
GO
ALTER TABLE [orders].[PortalUser_Log]  WITH CHECK ADD  CONSTRAINT [FK_PortalUser_Log_PortalUsers] FOREIGN KEY([PortalUserId])
REFERENCES [orders].[PortalUsers] ([Id])
GO
ALTER TABLE [orders].[PortalUser_Log] CHECK CONSTRAINT [FK_PortalUser_Log_PortalUsers]
GO
ALTER TABLE [orders].[PortalUserEmails]  WITH CHECK ADD  CONSTRAINT [FK_PortalUserEmails_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[PortalUserEmails] CHECK CONSTRAINT [FK_PortalUserEmails_AspNetUsers]
GO
ALTER TABLE [orders].[PortalUserEmails]  WITH CHECK ADD  CONSTRAINT [FK_PortalUserEmails_PortalUsers] FOREIGN KEY([PortalUserId])
REFERENCES [orders].[PortalUsers] ([Id])
GO
ALTER TABLE [orders].[PortalUserEmails] CHECK CONSTRAINT [FK_PortalUserEmails_PortalUsers]
GO
ALTER TABLE [orders].[PortalUsers]  WITH CHECK ADD  CONSTRAINT [FK_PortalUsers_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[PortalUsers] CHECK CONSTRAINT [FK_PortalUsers_AspNetUsers]
GO
ALTER TABLE [orders].[PortalUsers]  WITH CHECK ADD  CONSTRAINT [FK_PortalUsers_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[PortalUsers] CHECK CONSTRAINT [FK_PortalUsers_AspNetUsers1]
GO
ALTER TABLE [orders].[PortalUserSites]  WITH CHECK ADD  CONSTRAINT [FK_PortalUserSites_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[PortalUserSites] CHECK CONSTRAINT [FK_PortalUserSites_AspNetUsers]
GO
ALTER TABLE [orders].[PortalUserSites]  WITH CHECK ADD  CONSTRAINT [FK_PortalUserSites_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[PortalUserSites] CHECK CONSTRAINT [FK_PortalUserSites_AspNetUsers1]
GO
ALTER TABLE [orders].[PortalUserSites]  WITH CHECK ADD  CONSTRAINT [FK_PortalUserSites_PortalUserSites] FOREIGN KEY([PortalUserId])
REFERENCES [orders].[PortalUsers] ([Id])
GO
ALTER TABLE [orders].[PortalUserSites] CHECK CONSTRAINT [FK_PortalUserSites_PortalUserSites]
GO
ALTER TABLE [orders].[PortalUserSites]  WITH CHECK ADD  CONSTRAINT [FK_PortalUserSites_SitesERP] FOREIGN KEY([SiteId])
REFERENCES [dbo].[SitesERP] ([ID])
GO
ALTER TABLE [orders].[PortalUserSites] CHECK CONSTRAINT [FK_PortalUserSites_SitesERP]
GO
ALTER TABLE [orders].[Productz]  WITH CHECK ADD  CONSTRAINT [FK_Product_Order_AspNetUsers] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[Productz] CHECK CONSTRAINT [FK_Product_Order_AspNetUsers]
GO
ALTER TABLE [orders].[PSPlaningOnline]  WITH CHECK ADD  CONSTRAINT [FK_PSPlaningOnline_AspNetUsers] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[PSPlaningOnline] CHECK CONSTRAINT [FK_PSPlaningOnline_AspNetUsers]
GO
ALTER TABLE [orders].[PSPlaningOnline]  WITH CHECK ADD  CONSTRAINT [FK_PSPlaningOnline_PortalUsers] FOREIGN KEY([ModifiedBy_Portal])
REFERENCES [orders].[PortalUsers] ([Id])
GO
ALTER TABLE [orders].[PSPlaningOnline] CHECK CONSTRAINT [FK_PSPlaningOnline_PortalUsers]
GO
ALTER TABLE [orders].[PSPlanning]  WITH CHECK ADD  CONSTRAINT [FK_PSPlaning_Productz] FOREIGN KEY([ProductId])
REFERENCES [orders].[Productz] ([Id])
GO
ALTER TABLE [orders].[PSPlanning] CHECK CONSTRAINT [FK_PSPlaning_Productz]
GO
ALTER TABLE [orders].[PSPlanning]  WITH CHECK ADD  CONSTRAINT [FK_PSPlaning_SitesERP] FOREIGN KEY([SITEID])
REFERENCES [dbo].[SitesERP] ([ID])
GO
ALTER TABLE [orders].[PSPlanning] CHECK CONSTRAINT [FK_PSPlaning_SitesERP]
GO
ALTER TABLE [orders].[PSPlanning]  WITH CHECK ADD  CONSTRAINT [FK_Trip_Order_AspNetUsers] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[PSPlanning] CHECK CONSTRAINT [FK_Trip_Order_AspNetUsers]
GO
ALTER TABLE [orders].[Shift]  WITH CHECK ADD  CONSTRAINT [FK_ShiftOperatin_AspNetUsers] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[Shift] CHECK CONSTRAINT [FK_ShiftOperatin_AspNetUsers]
GO
ALTER TABLE [orders].[ShiftMaster]  WITH CHECK ADD  CONSTRAINT [FK_shift_AspNetUsers] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[ShiftMaster] CHECK CONSTRAINT [FK_shift_AspNetUsers]
GO
ALTER TABLE [orders].[TaskCode]  WITH CHECK ADD  CONSTRAINT [FK_TaskCode_AspNetUsers] FOREIGN KEY([CreaatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [orders].[TaskCode] CHECK CONSTRAINT [FK_TaskCode_AspNetUsers]
GO
ALTER TABLE [report].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_Reports_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [report].[Reports] CHECK CONSTRAINT [FK_Reports_AspNetUsers]
GO
ALTER TABLE [report].[Reports]  WITH CHECK ADD  CONSTRAINT [FK_Reports_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [report].[Reports] CHECK CONSTRAINT [FK_Reports_AspNetUsers1]
GO
ALTER TABLE [sticker].[StickerInventory]  WITH CHECK ADD  CONSTRAINT [FK_StickerInventory_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [sticker].[StickerInventory] CHECK CONSTRAINT [FK_StickerInventory_AspNetUsers]
GO
ALTER TABLE [sticker].[StickerInventory]  WITH CHECK ADD  CONSTRAINT [FK_StickerInventory_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [sticker].[StickerInventory] CHECK CONSTRAINT [FK_StickerInventory_AspNetUsers1]
GO
ALTER TABLE [sticker].[StickerInventory]  WITH CHECK ADD  CONSTRAINT [FK_StickerInventory_StickerSupplier] FOREIGN KEY([SupplierId])
REFERENCES [sticker].[StickerSupplier] ([Id])
GO
ALTER TABLE [sticker].[StickerInventory] CHECK CONSTRAINT [FK_StickerInventory_StickerSupplier]
GO
ALTER TABLE [sticker].[StickerInventoryDetails]  WITH CHECK ADD  CONSTRAINT [FK_StickerInventoryDetails_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [sticker].[StickerInventoryDetails] CHECK CONSTRAINT [FK_StickerInventoryDetails_AspNetUsers]
GO
ALTER TABLE [sticker].[StickerInventoryDetails]  WITH CHECK ADD  CONSTRAINT [FK_StickerInventoryDetails_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [sticker].[StickerInventoryDetails] CHECK CONSTRAINT [FK_StickerInventoryDetails_AspNetUsers1]
GO
ALTER TABLE [sticker].[StickerInventoryDetails]  WITH CHECK ADD  CONSTRAINT [FK_StickerInventoryDetails_StickerInventory] FOREIGN KEY([StickerInventoryId])
REFERENCES [sticker].[StickerInventory] ([Id])
GO
ALTER TABLE [sticker].[StickerInventoryDetails] CHECK CONSTRAINT [FK_StickerInventoryDetails_StickerInventory]
GO
ALTER TABLE [sticker].[StickerInventoryDetails]  WITH CHECK ADD  CONSTRAINT [FK_StickerInventoryDetails_StickerType] FOREIGN KEY([StickerTypeId])
REFERENCES [sticker].[StickerType] ([Id])
GO
ALTER TABLE [sticker].[StickerInventoryDetails] CHECK CONSTRAINT [FK_StickerInventoryDetails_StickerType]
GO
ALTER TABLE [sticker].[StickerResources]  WITH CHECK ADD  CONSTRAINT [FK_StickerResources_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [sticker].[StickerResources] CHECK CONSTRAINT [FK_StickerResources_AspNetUsers]
GO
ALTER TABLE [sticker].[StickerResources]  WITH CHECK ADD  CONSTRAINT [FK_StickerResources_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [sticker].[StickerResources] CHECK CONSTRAINT [FK_StickerResources_AspNetUsers1]
GO
ALTER TABLE [sticker].[StickerResources]  WITH CHECK ADD  CONSTRAINT [FK_StickerResources_StickerInventory] FOREIGN KEY([StickerInventoryId])
REFERENCES [sticker].[StickerInventory] ([Id])
GO
ALTER TABLE [sticker].[StickerResources] CHECK CONSTRAINT [FK_StickerResources_StickerInventory]
GO
ALTER TABLE [sticker].[StickerSupplier]  WITH CHECK ADD  CONSTRAINT [FK_StickerSupplier_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [sticker].[StickerSupplier] CHECK CONSTRAINT [FK_StickerSupplier_AspNetUsers]
GO
ALTER TABLE [sticker].[StickerSupplier]  WITH CHECK ADD  CONSTRAINT [FK_StickerSupplier_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [sticker].[StickerSupplier] CHECK CONSTRAINT [FK_StickerSupplier_AspNetUsers1]
GO
ALTER TABLE [sticker].[StickerType]  WITH CHECK ADD  CONSTRAINT [FK_Sticker_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [sticker].[StickerType] CHECK CONSTRAINT [FK_Sticker_AspNetUsers]
GO
ALTER TABLE [sticker].[StickerType]  WITH CHECK ADD  CONSTRAINT [FK_Sticker_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [sticker].[StickerType] CHECK CONSTRAINT [FK_Sticker_AspNetUsers1]
GO
ALTER TABLE [supply].[DET_PetrolStations]  WITH CHECK ADD  CONSTRAINT [FK_DET_PetrolStations_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [supply].[DET_PetrolStations] CHECK CONSTRAINT [FK_DET_PetrolStations_AspNetUsers]
GO
ALTER TABLE [supply].[DET_PetrolStations]  WITH CHECK ADD  CONSTRAINT [FK_DET_PetrolStations_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [supply].[DET_PetrolStations] CHECK CONSTRAINT [FK_DET_PetrolStations_AspNetUsers1]
GO
ALTER TABLE [supply].[DET_PetrolStations]  WITH CHECK ADD  CONSTRAINT [FK_DET_PetrolStations_SitesERP] FOREIGN KEY([SiteId])
REFERENCES [dbo].[SitesERP] ([ID])
GO
ALTER TABLE [supply].[DET_PetrolStations] CHECK CONSTRAINT [FK_DET_PetrolStations_SitesERP]
GO
ALTER TABLE [supply].[DET_Site_AvailableServices]  WITH CHECK ADD  CONSTRAINT [FK_DET_Site_AvailableServices_SitesERP] FOREIGN KEY([SiteId])
REFERENCES [dbo].[SitesERP] ([ID])
GO
ALTER TABLE [supply].[DET_Site_AvailableServices] CHECK CONSTRAINT [FK_DET_Site_AvailableServices_SitesERP]
GO
ALTER TABLE [supply].[DET_Site_Depot_Durations]  WITH CHECK ADD  CONSTRAINT [FK_DET_Site_Depot_Shifts_MST_Depot] FOREIGN KEY([DepotId])
REFERENCES [dbo].[MST_Depot] ([Id])
GO
ALTER TABLE [supply].[DET_Site_Depot_Durations] CHECK CONSTRAINT [FK_DET_Site_Depot_Shifts_MST_Depot]
GO
ALTER TABLE [supply].[DET_Site_Depot_Durations]  WITH CHECK ADD  CONSTRAINT [FK_DET_Site_Depot_Shifts_MST_Shift] FOREIGN KEY([ShiftId])
REFERENCES [ordering].[MST_Shift] ([Id])
GO
ALTER TABLE [supply].[DET_Site_Depot_Durations] CHECK CONSTRAINT [FK_DET_Site_Depot_Shifts_MST_Shift]
GO
ALTER TABLE [supply].[DET_Site_Depot_Durations]  WITH CHECK ADD  CONSTRAINT [FK_DET_Site_Depot_Shifts_SitesERP] FOREIGN KEY([SiteId])
REFERENCES [dbo].[SitesERP] ([ID])
GO
ALTER TABLE [supply].[DET_Site_Depot_Durations] CHECK CONSTRAINT [FK_DET_Site_Depot_Shifts_SitesERP]
GO
ALTER TABLE [supply].[DET_Site_Shifts]  WITH CHECK ADD  CONSTRAINT [FK_DET_Site_Shifts_SitesERP] FOREIGN KEY([SiteId])
REFERENCES [dbo].[SitesERP] ([ID])
GO
ALTER TABLE [supply].[DET_Site_Shifts] CHECK CONSTRAINT [FK_DET_Site_Shifts_SitesERP]
GO
ALTER TABLE [supply].[DET_Site_Tanks]  WITH CHECK ADD  CONSTRAINT [FK_DET_Site_Tanks_SitesERP] FOREIGN KEY([SiteId])
REFERENCES [dbo].[SitesERP] ([ID])
GO
ALTER TABLE [supply].[DET_Site_Tanks] CHECK CONSTRAINT [FK_DET_Site_Tanks_SitesERP]
GO
ALTER TABLE [tank].[JobCardResources]  WITH CHECK ADD  CONSTRAINT [FK_JobCardResources_StorageTankJobCard] FOREIGN KEY([JobCardId])
REFERENCES [tank].[StorageTankJobCard] ([Id])
GO
ALTER TABLE [tank].[JobCardResources] CHECK CONSTRAINT [FK_JobCardResources_StorageTankJobCard]
GO
ALTER TABLE [tank].[StorageTank]  WITH CHECK ADD  CONSTRAINT [FK_StorageTank_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTank] CHECK CONSTRAINT [FK_StorageTank_AspNetUsers]
GO
ALTER TABLE [tank].[StorageTank]  WITH CHECK ADD  CONSTRAINT [FK_StorageTank_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTank] CHECK CONSTRAINT [FK_StorageTank_AspNetUsers1]
GO
ALTER TABLE [tank].[StorageTank]  WITH CHECK ADD  CONSTRAINT [FK_StorageTank_StorageTank] FOREIGN KEY([CapacityId])
REFERENCES [tank].[StorageTankCapacity] ([Id])
GO
ALTER TABLE [tank].[StorageTank] CHECK CONSTRAINT [FK_StorageTank_StorageTank]
GO
ALTER TABLE [tank].[StorageTank]  WITH CHECK ADD  CONSTRAINT [FK_StorageTank_StorageTankJobCard] FOREIGN KEY([JobCardId])
REFERENCES [tank].[StorageTankJobCard] ([Id])
GO
ALTER TABLE [tank].[StorageTank] CHECK CONSTRAINT [FK_StorageTank_StorageTankJobCard]
GO
ALTER TABLE [tank].[StorageTank]  WITH CHECK ADD  CONSTRAINT [FK_StorageTank_StorageTankStatus] FOREIGN KEY([StatusId])
REFERENCES [tank].[StorageTankStatus] ([Id])
GO
ALTER TABLE [tank].[StorageTank] CHECK CONSTRAINT [FK_StorageTank_StorageTankStatus]
GO
ALTER TABLE [tank].[StorageTank]  WITH CHECK ADD  CONSTRAINT [FK_StorageTank_StorageTankStructure] FOREIGN KEY([TankStrucTypeId])
REFERENCES [tank].[StorageTankStructure] ([Id])
GO
ALTER TABLE [tank].[StorageTank] CHECK CONSTRAINT [FK_StorageTank_StorageTankStructure]
GO
ALTER TABLE [tank].[StorageTank]  WITH CHECK ADD  CONSTRAINT [FK_StorageTank_StorageTankSupplier] FOREIGN KEY([SupplierId])
REFERENCES [tank].[StorageTankSupplier] ([Id])
GO
ALTER TABLE [tank].[StorageTank] CHECK CONSTRAINT [FK_StorageTank_StorageTankSupplier]
GO
ALTER TABLE [tank].[StorageTank]  WITH CHECK ADD  CONSTRAINT [FK_StorageTank_StorageTankWall] FOREIGN KEY([TankWallTypeId])
REFERENCES [tank].[StorageTankWall] ([Id])
GO
ALTER TABLE [tank].[StorageTank] CHECK CONSTRAINT [FK_StorageTank_StorageTankWall]
GO
ALTER TABLE [tank].[StorageTankCapacity]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankCapacity_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankCapacity] CHECK CONSTRAINT [FK_StorageTankCapacity_AspNetUsers]
GO
ALTER TABLE [tank].[StorageTankCapacity]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankCapacity_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankCapacity] CHECK CONSTRAINT [FK_StorageTankCapacity_AspNetUsers1]
GO
ALTER TABLE [tank].[StorageTankContractor]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankContractor_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankContractor] CHECK CONSTRAINT [FK_StorageTankContractor_AspNetUsers]
GO
ALTER TABLE [tank].[StorageTankContractor]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankContractor_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankContractor] CHECK CONSTRAINT [FK_StorageTankContractor_AspNetUsers1]
GO
ALTER TABLE [tank].[StorageTankJobCard]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankJobCard_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankJobCard] CHECK CONSTRAINT [FK_StorageTankJobCard_AspNetUsers]
GO
ALTER TABLE [tank].[StorageTankJobCard]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankJobCard_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankJobCard] CHECK CONSTRAINT [FK_StorageTankJobCard_AspNetUsers1]
GO
ALTER TABLE [tank].[StorageTankJobCard]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankJobCard_StorageTankContractor] FOREIGN KEY([ContractorId])
REFERENCES [tank].[StorageTankContractor] ([Id])
GO
ALTER TABLE [tank].[StorageTankJobCard] CHECK CONSTRAINT [FK_StorageTankJobCard_StorageTankContractor]
GO
ALTER TABLE [tank].[StorageTankStatus]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankStatus_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankStatus] CHECK CONSTRAINT [FK_StorageTankStatus_AspNetUsers]
GO
ALTER TABLE [tank].[StorageTankStatus]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankStatus_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankStatus] CHECK CONSTRAINT [FK_StorageTankStatus_AspNetUsers1]
GO
ALTER TABLE [tank].[StorageTankStickers]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankStickers_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankStickers] CHECK CONSTRAINT [FK_StorageTankStickers_AspNetUsers]
GO
ALTER TABLE [tank].[StorageTankStickers]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankStickers_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankStickers] CHECK CONSTRAINT [FK_StorageTankStickers_AspNetUsers1]
GO
ALTER TABLE [tank].[StorageTankStickers]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankStickers_StickerType] FOREIGN KEY([StickerTypeId])
REFERENCES [sticker].[StickerType] ([Id])
GO
ALTER TABLE [tank].[StorageTankStickers] CHECK CONSTRAINT [FK_StorageTankStickers_StickerType]
GO
ALTER TABLE [tank].[StorageTankStickers]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankStickers_StorageTank] FOREIGN KEY([StorageTankId])
REFERENCES [tank].[StorageTank] ([Id])
GO
ALTER TABLE [tank].[StorageTankStickers] CHECK CONSTRAINT [FK_StorageTankStickers_StorageTank]
GO
ALTER TABLE [tank].[StorageTankStructure]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankStructure_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankStructure] CHECK CONSTRAINT [FK_StorageTankStructure_AspNetUsers]
GO
ALTER TABLE [tank].[StorageTankStructure]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankStructure_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankStructure] CHECK CONSTRAINT [FK_StorageTankStructure_AspNetUsers1]
GO
ALTER TABLE [tank].[StorageTankSupplier]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankSupplier_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankSupplier] CHECK CONSTRAINT [FK_StorageTankSupplier_AspNetUsers]
GO
ALTER TABLE [tank].[StorageTankSupplier]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankSupplier_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankSupplier] CHECK CONSTRAINT [FK_StorageTankSupplier_AspNetUsers1]
GO
ALTER TABLE [tank].[StorageTankWall]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankPhyStruc_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankWall] CHECK CONSTRAINT [FK_StorageTankPhyStruc_AspNetUsers]
GO
ALTER TABLE [tank].[StorageTankWall]  WITH CHECK ADD  CONSTRAINT [FK_StorageTankPhyStruc_AspNetUsers1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[AspNetUsers] ([UId])
GO
ALTER TABLE [tank].[StorageTankWall] CHECK CONSTRAINT [FK_StorageTankPhyStruc_AspNetUsers1]
GO
/****** Object:  StoredProcedure [admin].[CheckTransactionIsolationLevel]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [admin].[CheckTransactionIsolationLevel]
As
Begin

	Select Case transaction_isolation_level 
			When 0 Then 'Unspecified' 
			When 1 Then 'ReadUncommitted' 
			When 2 Then 'ReadCommitted' 
			When 3 Then 'Repeatable' 
			When 4 Then 'Serializable' 
			When 5 Then 'Snapshot' END AS TRANSACTION_ISOLATION_LEVEL 
	From
		sys.dm_exec_sessions 
	Where
		session_id = @@SPID


End


GO
/****** Object:  StoredProcedure [admin].[ExecuteAsync]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [admin].[ExecuteAsync]
(
	@sql varchar(4000) = '[notify].[ProcessEmails] 0',
	@jobname varchar(200) = null,   
	@database varchar(200)= 'WOQ_DMS_New',
	@owner varchar(200) = null
)
AS
BEGIN  
    SET NOCOUNT ON;  
  
    declare @id uniqueidentifier  
    --Create unique job name if the name is not specified  
    if @jobname is null set @jobname= 'async'  
    set @jobname = @jobname + '_' + convert(varchar(64), NEWID())  
  
    if @owner is null set @owner = 'sa'
  
    --Create a new job, get job ID  
    execute msdb..sp_add_job @jobname, @owner_login_name = @owner, @job_id=@id OUTPUT  
  
    --Specify a job server for the job  
    execute msdb..sp_add_jobserver @job_id = @id  
  
    --Specify a first step of the job - the SQL command  
    --(@on_success_action = 3 ... Go to next step)  
    execute msdb..sp_add_jobstep @job_id=@id, @step_name = 'Step1', @command = @sql,   
        @database_name = @database, @on_success_action = 3   
  
    --Specify next step of the job - delete the job  
    declare @deletecommand varchar(200)  
    set @deletecommand = 'execute msdb..sp_delete_job @job_name=''' + @jobname + ''''  
    execute msdb..sp_add_jobstep @job_id = @id, @step_name='Step2', @command = @deletecommand  
  
    --Start the job  
    execute msdb..sp_start_job @job_id = @id  
  
END  

  
GO
/****** Object:  StoredProcedure [admin].[GetEmailIdsByPrefix]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [admin].[GetEmailIdsByPrefix]
(
	@MailToString nvarchar(max)
	--@MailToString nvarchar(max) = 'svaid@woqod.com.qa,{LPG_INST_SUP},{SAQIB}'
)
As
Begin

	Select
		distinct Emails
	From
	(
		Select
			Case When a.IsPrefix = 0 then a.EmailId else e.Email end as Emails
		From
		(
			Select
				replace(replace(replace(a.Item, ' ', ''), '{', ''), '}', '') as EmailId , Case When CHARINDEX('@', a.Item) = 0 then 1 else 0 end as IsPrefix 
			From
				dbo.SplitString(@MailToString, ',') a
		) a
		Left Join
			dbo.[Action] b
		On
			a.IsPrefix = 1 and a.EmailId = b.Prefix
		Left Join
			dbo.UserAction c
		On
			b.Id = c.ActionId
		Left Join
			dbo.UserRoleModules d
		On
			c.URMId = d.Id
		Left Join
			dbo.[AspNetUsers] e
		On
			d.UserId = e.UId
		Where
			a.IsPrefix = 0 or b.Id is not null

		--except
	
		--Select
		--	distinct c.Email
		--From
		--	dbo.UserRoleModules a
		--Inner Join
		--	dbo.[Role] b
		--On
		--	a.RoleId = b.Id
		--Inner Join
		--	dbo.[AspNetUsers] c
		--On
		--	a.UserId = c.UId
		--Where
		--	b.Prefix = 'SA'

	) a

End
GO
/****** Object:  StoredProcedure [admin].[PurgeEntireData]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [admin].[PurgeEntireData]
As
Begin

	Delete
  FROM [WOQ_DMS_New].[contract].[MobilizedTank]

	Delete a
	From DocumentStore a
	Where
		a.stream_id not in ('E626039E-F3E8-E511-80DE-00155D6E9701', '7DAC266B-15E8-E511-80DE-00155D6E9701', 'CA1ABE65-F91B-E611-80E4-00155D6E9701')

	Delete
  FROM [WOQ_DMS_New].[contract].[BGContractDocs]

Delete
  FROM [WOQ_DMS_New].[log].[BGContractDocs_Log]

Delete
  FROM [WOQ_DMS_New].[log].[BGContractRemarks_Log]

Delete
  FROM [WOQ_DMS_New].[log].[TankConfDocs_Log]

Delete
  FROM [WOQ_DMS_New].[log].[TankConfRemark_Log]

Delete
  FROM [WOQ_DMS_New].[contract].[TankConfDocuments]


Delete
  FROM [WOQ_DMS_New].[contract].[AccountOpening]

  Delete
  FROM [WOQ_DMS_New].[contract].[AccountOpeningResources]

  Delete
  FROM [WOQ_DMS_New].[log].[BankGuranteeRemark_Log]

	Delete
  FROM [WOQ_DMS_New].[contract].[SiteDocuments]

	Delete
  FROM [WOQ_DMS_New].[contract].[SiteAttachmentCheckList]

	Delete
	FROM [WOQ_DMS_New].[contract].[SiteVisitAddresses]

	Delete
  FROM [WOQ_DMS_New].[contract].[SiteVisitProjectDetails]

  Delete
  FROM [WOQ_DMS_New].[contract].[SiteVisitReportContacts]

  Delete
  FROM [WOQ_DMS_New].[contract].[SiteVisitResources]

  Delete
  FROM [WOQ_DMS_New].[contract].[SiteVisitSupplyToDetails]

  Delete
  FROM [WOQ_DMS_New].[contract].[SiteVisitReport]

	Delete
	  FROM [WOQ_DMS_New].[contract].[ContractAddress]

	  Delete
	  FROM [WOQ_DMS_New].[contract].[ContractContacts]

	  Delete
	  FROM [WOQ_DMS_New].[contract].[CrResources]

	  Delete
	  FROM [WOQ_DMS_New].[contract].[MonthlyConsumptionDetails]

	  Delete
	  FROM [WOQ_DMS_New].[contract].[ScheduledVisits]
  
	  Delete
	  FROM [WOQ_DMS_New].[contract].[ScheduleList]

	  Delete
	  FROM [WOQ_DMS_New].[contract].[SiteAttachmentCheckList]

	  Delete
	  FROM [WOQ_DMS_New].[contract].[SiteCRAnalysis]

	  Delete
	  FROM [WOQ_DMS_New].[contract].[SiteDocuments]

	  Delete
	  FROM [WOQ_DMS_New].[contract].[SiteProjectDetails]

	  Delete
	  FROM [WOQ_DMS_New].[contract].[SiteStatus]

	  Delete
	  FROM [WOQ_DMS_New].[contract].[SupplyToDetails]

	  Delete
	  FROM [WOQ_DMS_New].[contract].[UnScheduledVisits]

	  Delete
	FROM [WOQ_DMS_New].[contract].[SiteVerification]

	
  Delete
  FROM [WOQ_DMS_New].[contract].[AgendaContracts]

  Delete
  FROM [WOQ_DMS_New].[contract].[Agenda]

  Delete
  FROM [WOQ_DMS_New].[log].[SiteAgenda_Log]

  Delete
  FROM [WOQ_DMS_New].[log].[AgendaContracts_Log]

  Delete
  FROM [WOQ_DMS_New].[log].[Agenda_Log]

  Delete
  FROM [WOQ_DMS_New].[log].[SiteVisitSupplyToDetails_Log]
Delete
  FROM [WOQ_DMS_New].[log].[SiteVisitResources_Log]
Delete
  FROM [WOQ_DMS_New].[log].[SiteVisitReportContacts_Log]
Delete
  FROM [WOQ_DMS_New].[log].[SiteVisitReport_Log]

Delete
  FROM [WOQ_DMS_New].[log].[SiteVisitProjectDetails_Log]

  Delete
  FROM [WOQ_DMS_New].[log].[SupplyToDetails_Log]

Delete
  FROM [WOQ_DMS_New].[log].[SiteVisitReportContacts_Log]

Delete
  FROM [WOQ_DMS_New].[log].[SiteVisitSupplyToDetails_Log]
Delete
  FROM [WOQ_DMS_New].[log].[SiteVisitReport_Log]

Delete
  FROM [WOQ_DMS_New].[log].[SiteVisitProjectDetails_Log]

Delete
  FROM [WOQ_DMS_New].[log].[SiteVisitAddresses_Log]

Delete
  FROM [WOQ_DMS_New].[log].[SiteVerification_Log]

Delete
  FROM [WOQ_DMS_New].[log].[SiteStatus_Log]

Delete
  FROM [WOQ_DMS_New].[log].[SiteCRAnalysis_Log]

Delete
  FROM [WOQ_DMS_New].[log].[SiteDocuments_Log]

Delete
  FROM [WOQ_DMS_New].[log].[SiteProjectDetails_Log]

  Delete
  FROM [WOQ_DMS_New].[contract].[AgendaContracts]

Delete
  FROM [WOQ_DMS_New].[log].[SiteVisitAddresses_Log]

Delete
  FROM [WOQ_DMS_New].[log].[SiteVisitReport_Log]

Delete
  FROM [WOQ_DMS_New].[log].[ActivityLog]

  Delete
  FROM [WOQ_DMS_New].[log].[BankGuranteePrintLog]

  Delete
  FROM [WOQ_DMS_New].[log].[BankGuranteeDocuments_Log]

  Delete
  FROM [WOQ_DMS_New].[contract].[BankGuranteeDocuments]

  Delete
  FROM [WOQ_DMS_New].[log].[BatchContracts_Log]

Delete
  FROM [WOQ_DMS_New].[contract].[LegalBatch]

Delete
  FROM [WOQ_DMS_New].[contract].[BatchContracts]

Delete
  FROM [WOQ_DMS_New].[log].[SiteLegalBatch_Log]

  Delete
  FROM [WOQ_DMS_New].[log].[LegalBatch_Log]




	  Delete
	  FROM [WOQ_DMS_New].[contract].[Site]

End
GO
/****** Object:  StoredProcedure [admin].[ReverseAgenda]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [admin].[ReverseAgenda]
As
Begin

	Delete
	  FROM [WOQ_DMS_New].[log].[AgendaContracts_Log]

	Delete
	  FROM [WOQ_DMS_New].[log].[SiteAgenda_Log]
	Delete
	  FROM [WOQ_DMS_New].[log].[Agenda_Log]

	Update a
	Set
		a.isEnabled = 1
	FROM [WOQ_DMS_New].[contract].[SiteStatus] a
	Where
		a.SubStageId = 8

	Delete a from [contract].SiteStatus a
	Where
		a.SubStageId = 9

	Delete From [contract].AgendaContracts

	Delete From [contract].Agenda

	Delete From [log].AgendaContracts_Log

	Delete From [log].Agenda_Log

	Delete a From [log].ActivityLog a
	Where	
		a.ActivityTypeId in (19)

End
GO
/****** Object:  StoredProcedure [admin].[ReverseAgendaSubmission]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [admin].[ReverseAgendaSubmission]
As
Begin
	
	Delete a From [log].ActivityLog a
	Where	
		a.ActivityTypeId in (20, 21, 22)

	Delete a from [contract].SiteStatus a
	Where
		a.SubStageId = 10

	Delete a From [log].AgendaContracts_Log a
	Where
		a.AgendaActivity = 2 

	Update a
	Set
		a.isUpdated = 0
	From
		[contract].Agenda a


End
		

GO
/****** Object:  StoredProcedure [contract].[ApproveSiteVisitReport]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [contract].[ApproveSiteVisitReport]
(
	@ContractId bigint,
	@Remarks nvarchar(250)
)
As
Begin

	Update a
	Set	
		a.Remarks = @Remarks
	
	 FROM  contract.SiteStatus A  
     Where
		a.SiteId = @ContractId and a.isEnabled = 1 

	
End


GO
/****** Object:  StoredProcedure [contract].[CarryFowardContractData]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[CarryFowardContractData]
(
	@ScheduleId bigint = 2,
	@SiteId bigint = 10069,
	@LoggedInUserId int
)
As
Begin

	if not exists (select 1 from [contract].SiteVisitReport a where a.ScheduleId = @ScheduleId)
	Begin

		Declare @SiteInspectionTypeId tinyint = 1;

		if exists (select 1 from [contract].[SiteStatus] a where a.StageId = 5 and a.SubStageId = 17 and a.isEnabled = 1)
		Begin

			Set @SiteInspectionTypeId = 2

		End


		Declare @DateOfVisit datetime, @ContractorTypeId int, @SupplyToTypeId int

		Declare @ApplicantName nvarchar(250), @Location nvarchar(100)

		Select
			@DateOfVisit = a.VisitDate, @ApplicantName = b.CustomerName, @Location = c.ProjectLocation
			, @ContractorTypeId = b.ContractorTypeId , @SupplyToTypeId = b.SupplyToTypeId
		From
			[contract].ScheduleList a
		Inner Join
			[contract].[Site] b
		On
			a.ApplicationId = b.Id
		Left Join
			[contract].[SiteProjectDetails] c
		On
			b.Id = c.SiteId and b.ContractorTypeId = c.ContractorTypeId
		Where
			a.Id = @ScheduleId

		Insert into 
			[contract].[SiteVisitReport] (SiteId, ScheduleId, ApplicantName, [Location], DateOfVisit, ContractorTypeId, SupplyToTypeId, SiteInspectionTypeId, CreatedBy, ModifiedBy)
		Values
			(@SiteId, @ScheduleId, @ApplicantName, @Location, @DateOfVisit, @ContractorTypeId, @SupplyToTypeId, @SiteInspectionTypeId, @LoggedInUserId, @LoggedInUserId)

		Declare @SiteVisitReportId bigint

		Select
			@SiteVisitReportId = SCOPE_IDENTITY()

		Insert into 
			[contract].[SiteVisitAddresses] (SiteVisitReportId, AddressLine1, AddressLine2, Area, CountryId, CityId, isActive, POBox, CreatedBy, ModifiedBy)
		Select	
			@SiteVisitReportId, a.AddressLine1, a.AddressLine2, a.Area, a.CountryId, a.CityId, a.isActive, a.POBox, a.CreatedBy, a.ModifiedBy
		From
			[contract].[ContractAddress] a
		Where
			a.SiteId = @SiteId

		Insert into
			[contract].[SiteVisitReportContacts] (SiteVisitReportId, FName, LName, Email, DesignationId, TypeId, Landline, Mobile, Fax, isActive, CreatedBy, ModifiedBy)
		Select
			@SiteVisitReportId, a.FName, a.LName, a.Email, a.DesignationId, a.TypeId, a.Landline, a.Mobile, a.Fax, a.isActive, a.CreatedBy, a.ModifiedBy
		From
			[contract].[ContractContacts] a
		Where
			a.SiteId = @SiteId

		Insert into 
			[contract].[SiteVisitProjectDetails] (SiteVisitReportId, ContractorTypeId, ProjectName, ProjectLocation, ProjectDescription, ProjectClassificationId, ProjectStartDate, IsTentative, ProjectEndDate, CreatedBy, ModifiedBy)
		Select
			@SiteVisitReportId, a.ContractorTypeId, a.ProjectName, a.ProjectLocation, a.ProjectDescription, a.ProjectClassificationId, a.ProjectStartDate, a.IsTentative, a.ProjectEndDate, a.CreatedBy, a.ModifiedBy
		From
			[contract].[SiteProjectDetails] a
		Where
			a.SiteId = @SiteId

		Insert into
			[contract].[SiteVisitSupplyToDetails] (SiteVisitReportId, NumberOfStorageTanks, StorageTankTypeId, VesselName, Capacity, Remarks, CreatedBy, ModifiedBy)
		Select
			@SiteVisitReportId, a.NumberOfStorageTanks, a.StorageTankTypeId, a.VesselName, a.Capacity, a.Remarks, a.CreatedBy, a.ModifiedBy
		From
			[contract].[SupplyToDetails] a
		Where
			a.SiteId = @SiteId

	End

End

	

	

	
	

	 



GO
/****** Object:  StoredProcedure [contract].[ChangeContractStage]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [contract].[ChangeContractStage]
(
	@ContractId bigint,
	@StageId int
)
As
Begin

	Update a
	Set
		a.StageId = @StageId
	From
		[contract].[Site] a
	Where
		a.Id = @ContractId

End
GO
/****** Object:  StoredProcedure [contract].[ChangeSiteStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[ChangeSiteStatus]
(
	@ContractId bigint,
	@SubStageId int,
	@ModifiedBy int
)
As
Begin

	exec [contract].[CheckAndMoveAhead] @ContractId, @ModifiedBy, @SubStageId

End



GO
/****** Object:  StoredProcedure [contract].[ChangeSiteStatusDetail]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [contract].[ChangeSiteStatusDetail]
(
	@ContractId bigint,
	@StageId int,
	@SubStageId int,
	@ModifiedBy int
)
As
Begin

	Insert into 
		[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
	values
		(@ContractId, @StageId, @SubStageId, 1, @ModifiedBy, @ModifiedBy)

End


GO
/****** Object:  StoredProcedure [contract].[ChangeSiteStatusForAgenda]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[ChangeSiteStatusForAgenda]
(
	@SiteIds nvarchar(max),
	@LoggedInUserId int,
	@AgendaId bigint
)
As
Begin

	Declare @PricingCommitteeStageId smallint = 4, @AgendaSubStageId smallint = 8, @UpdateResultSubStageId smallint = 9, @MovedToAgendaActivityTypeId smallint = 19

	Declare @AppSubmissionCompletedActivityTypeId int = 2, @AgendaSubmittedActivityId tinyint = 1
		

	Declare @tmp table (Item bigint)

	Insert into @tmp 
	Select
		a.Item
	From
		dbo.SplitString(@SiteIds, ',') a

	Update a
	Set
		a.isEnabled = 0,
		a.isRejected = 0,
		a.ModifiedOn = GETDATE(),
		a.ModifiedBy = @LoggedInUserId
	From
		[contract].SiteStatus a
	Where
		a.StageId = @PricingCommitteeStageId and a.SubStageId = @AgendaSubStageId and a.SiteId in (select a.Item from dbo.SplitString(@SiteIds, ',') a)

	Delete a
	From
		[contract].[SiteStatus] a
	Where
		a.SiteId in (select a.Item from @tmp a) and a.SubStageId = @UpdateResultSubStageId

	Insert into 
		[contract].[SiteStatus] (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
	Select
		a.Item, @PricingCommitteeStageId, @UpdateResultSubStageId, 1, @LoggedInUserId, @LoggedInUserId
	From
		@tmp a

	Declare @tmpLog table (LogId bigint)

	Declare @tmpLogId bigint

	Insert into 
		[log].[ActivityLog] (SiteId, ActivityTypeId, CreatedBy)
	output 
		inserted.Id into @tmpLog
	Select
		a.Item, @MovedToAgendaActivityTypeId, @LoggedInUserId
	From
		@tmp a

	Select
		@tmpLogId = a.LogId
	From
		@tmpLog a

	Declare @NewAgenda table (NewAgendaId bigint)

	Declare @NewAgendaId bigint

	Insert into
		[log].Agenda_Log (AgendaName, MeetingDate, Remarks, CreatedBy)
	Output 
		inserted.Id into @NewAgenda
	Select
		a.AgendaName, a.MeetingDate, a.Remarks, a.CreatedBy 
	From
		[contract].Agenda a
	Where
		a.Id = @AgendaId

	Select
		top 1 @NewAgendaId = a.NewAgendaId
	From
		@NewAgenda a

	Insert into 
		[log].AgendaContracts_Log (AgendaId, LogId, AgendaActivity, SiteId, ResultTypeId, PricingCategoryId, Remarks, CreatedBy)
	Select
		@NewAgendaId, @tmpLogId, @AgendaSubmittedActivityId, c.Id, a.ResultTypeId, a.PricingCategoryId, Remarks, a.CreatedBy
	From
		[contract].AgendaContracts a
	Inner Join
	(
		Select
			b.Id, b.SiteId, ROW_NUMBER() over (partition by b.SiteId order by b.CreatedOn desc) as LatestId
		From
			[log].ActivityLog b
		Where
			b.ActivityTypeId = @AppSubmissionCompletedActivityTypeId
	) b
	On
		a.SiteId = b.SiteId and b.LatestId = 1
	Inner Join
		[log].Site_Log c
	On
		b.Id = c.LogId
	Where
		a.AgendaId = @AgendaId

	Insert into
		[log].SiteAgenda_Log (LogId, AgendaId, CreatedBy)	
	Select
		a.LogId, @NewAgendaId, @LoggedInUserId
	From
		@tmpLog a
		


End
GO
/****** Object:  StoredProcedure [contract].[ChangeSiteStatusForBatch]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[ChangeSiteStatusForBatch]
(
	@SiteIds nvarchar(max),
	@LoggedInUserId int,
	@BatchId bigint
)
As
Begin

	Declare @AccountOpeningStageId smallint = 6, @LegalQueueSubStageId smallint = 28, @UpdateResultSubStageId smallint = 29, @SentToLegalActivityTypeId smallint = 44

	Declare @AppSubmissionCompletedActivityTypeId int = 2, @BatchSubmittedActivityId tinyint = 1
		

	Declare @tmp table (Item bigint)

	Insert into @tmp 
	Select
		a.Item
	From
		dbo.SplitString(@SiteIds, ',') a

	Update a
	Set
		a.isEnabled = 0,
		a.isRejected = 0,
		a.ModifiedOn = GETDATE(),
		a.ModifiedBy = @LoggedInUserId
	From
		[contract].SiteStatus a
	Where
		a.StageId = @AccountOpeningStageId and a.SubStageId = @LegalQueueSubStageId and a.SiteId in (select a.Item from dbo.SplitString(@SiteIds, ',') a)

	Delete a
	From
		[contract].[SiteStatus] a
	Where
		a.SiteId in (select a.Item from @tmp a) and a.SubStageId = @UpdateResultSubStageId

	Insert into 
		[contract].[SiteStatus] (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
	Select
		a.Item, @AccountOpeningStageId, @UpdateResultSubStageId, 1, @LoggedInUserId, @LoggedInUserId
	From
		@tmp a

	Declare @tmpLog table (LogId bigint)

	Declare @tmpLogId bigint

	Insert into 
		[log].[ActivityLog] (SiteId, ActivityTypeId, CreatedBy)
	output 
		inserted.Id into @tmpLog
	Select
		a.Item, @SentToLegalActivityTypeId, @LoggedInUserId
	From
		@tmp a

	Select
		@tmpLogId = a.LogId
	From
		@tmpLog a

	Declare @NewBatch table (NewBatchId bigint)

	Declare @NewBatchId bigint

	Insert into
		[log].LegalBatch_Log(BatchName, Remarks, CreatedBy)
	Output 
		inserted.Id into @NewBatch
	Select
		a.BatchName, a.Remarks, a.CreatedBy 
	From
		[contract].LegalBatch a
	Where
		a.Id = @BatchId

	Select
		top 1 @NewBatchId = a.NewBatchId
	From
		@NewBatch a

	Insert into 
		[log].BatchContracts_Log(BatchId, LogId, BatchActivity, SiteId, ResultTypeId, Remarks, CreatedBy)
	Select
		@NewBatchId, @tmpLogId, @BatchSubmittedActivityId, c.Id, a.ResultTypeId, Remarks, a.CreatedBy
	From
		[contract].BatchContracts a
	Inner Join
	(
		Select
			b.Id, b.SiteId, ROW_NUMBER() over (partition by b.SiteId order by b.CreatedOn desc) as LatestId
		From
			[log].ActivityLog b
		Where
			b.ActivityTypeId = @AppSubmissionCompletedActivityTypeId
	) b
	On
		a.SiteId = b.SiteId and b.LatestId = 1
	Inner Join
		[log].Site_Log c
	On
		b.Id = c.LogId
	Where
		a.BatchId = @BatchId

	Insert into
		[log].SiteLegalBatch_Log (LogId, BatchId, CreatedBy)	
	Select
		a.LogId, @NewBatchId, @LoggedInUserId
	From
		@tmpLog a
		


End
GO
/****** Object:  StoredProcedure [contract].[CheckAndMoveAhead]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[CheckAndMoveAhead]
(
	@ContractId bigint = 20263,
	@ModifiedBy int,
	@LSubStageId int = null
)
As
Begin

	Declare @StageId int

	Declare @AppSubmissionStageId int = 1, @SiteInspectionStageId int = 2, @VerificationStageId int = 3, @CoverSheetStageId int = 4, @FinalInspectionStageId int = 5
	, @AccountOpeningStageId tinyint = 6, @AvailableForOrderingStageId tinyint = 7

	Declare @ScheduleSubStageId int = 4, @SubmitReportSubStageId int = 5, @VerifyReportSubStageId int = 6, @VerificationSubStageId int = 7, @AgendaSubStageId int = 8
	, @FinalInspectionScheduleId int = 16, @FinalInspectionReportId int = 17, @FinalInsVerSubStageId tinyint = 18, @AccountOpeningSubStageId tinyint = 19
	, @ReplyFromFinanceSubStageId tinyint = 20, @ImportAccountSubStageId tinyint = 21, @NotifyAccountSubStageId tinyint = 22, @SendToLegalSubStageId tinyint = 23
	, @AccountOpenedSubStageId tinyint = 24, @SendNotificationSubStageId tinyint = 26, @ConfirmationFromCustomerSubStageId tinyint = 14
	, @LegalQueueSubStageId tinyint = 28

	Declare @StageFrom int

	Select
		@StageId = max(a.StageId)
	From
		[contract].SiteStatus a
	Where
		a.SiteId = @ContractId and a.isEnabled = 1

	--Select @StageId

	if (@StageId = @AppSubmissionStageId)
	Begin

		Update a
		Set
			a.isEnabled = 0, a.ModifiedBy = @ModifiedBy, a.ModifiedOn = getdate()
		From
			[contract].SiteStatus a
		Where
			a.SiteId = @ContractId and a.SubStageId = @LSubStageId

		if not exists (select 1 from [contract].SiteStatus a where a.SiteId = @ContractId and a.StageId = 1 and a.isEnabled = 1)
		Begin
			exec [contract].[ChangeContractStage] @ContractId, 2 

			--Delete a
			--From
			--	[contract].SiteStatus a
			--Where
			--	a.SiteId = @ContractId and a.StageId = 2

			Insert into 
				[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
			values
				(@ContractId, @SiteInspectionStageId, @ScheduleSubStageId, 1, @ModifiedBy, @ModifiedBy)

			exec [contract].[UpdateSiteStageId] @ContractId, @ModifiedBy, @SiteInspectionStageId

		End

	End

	if (@StageId = @SiteInspectionStageId)
	Begin

		-- Get current sub stage
		Select
			@StageFrom = MAX(a.SubStageId)
		From
			[contract].SiteStatus a
		Where
			a.SiteId = @ContractId and a.StageId = @StageId and a.isEnabled = 1

		if (@StageFrom = @ScheduleSubStageId)
		Begin

			-- if sub stage is scheduling
			-- disable it
			Update a
			Set
				a.isEnabled = 0, 
				a.isRejected = 0,
				a.ModifiedBy = @ModifiedBy,
				a.ModifiedOn = GETDATE()
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @ContractId and a.StageId = @StageId and a.SubStageId = @StageFrom

			-- add new stage for contract to submit report
			Insert into 
				[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
			values
				(@ContractId, @SiteInspectionStageId, @SubmitReportSubStageId, 1, @ModifiedBy, @ModifiedBy)

		End
		else if (@StageFrom = @SubmitReportSubStageId)
		Begin

			Update a
			Set
				a.isEnabled = 0, 
				a.isRejected = 0,
				a.ModifiedBy = @ModifiedBy,
				a.ModifiedOn = GETDATE()
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @ContractId and a.StageId = @StageId and a.SubStageId = @StageFrom

			if not exists (select 1 from [contract].[SiteStatus] a where a.SiteId = @ContractId and a.SubStageId > @StageFrom)
			Begin
				exec [contract].[ChangeSiteStatusDetail] @ContractId, @SiteInspectionStageId, @VerifyReportSubStageId, @ModifiedBy
			End
			else
			Begin

				Update a
				Set
					a.isEnabled = 1, 
					a.ModifiedBy = @ModifiedBy,
					a.ModifiedOn = GETDATE()
				From
					[contract].SiteStatus a
				Where
					a.SiteId = @ContractId and a.StageId = @StageId and a.SubStageId = @VerifyReportSubStageId

			End

		End
		else if (@StageFrom = @VerifyReportSubStageId)
		Begin

			
			Update a
			Set
				a.isEnabled = 0, 
				a.isRejected = 0,
				a.ModifiedBy = @ModifiedBy,
				a.ModifiedOn = GETDATE()
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @ContractId and a.StageId = @StageId and a.SubStageId = @StageFrom

			if not exists (select 1 from [contract].[SiteStatus] a where a.SiteId = @ContractId and a.StageId <= 2 and a.isEnabled = 1)
			Begin

				Update a
				Set
					a.isActive = 1
				From
					[contract].[Site] a
				Where
					a.Id = @ContractId
			End


			if exists (select 1 from [contract].SiteStatus a where a.SiteId = @ContractId and a.StageId = @VerificationStageId and a.SubStageId = @VerificationSubStageId)
			Begin

				Update a
				Set
					a.isEnabled = 1, 
					a.ModifiedBy = @ModifiedBy,
					a.ModifiedOn = GETDATE()
				From
					[contract].SiteStatus a
				Where
					a.SiteId = @ContractId and a.StageId = @VerificationStageId and a.SubStageId = @VerificationSubStageId

			End
			else
			Begin
				Insert into 
					[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
				values
					(@ContractId, @VerificationStageId, @VerificationSubStageId, 1, @ModifiedBy, @ModifiedBy)

				exec [contract].[UpdateSiteStageId] @ContractId, @ModifiedBy, @VerificationStageId

			End

		End


	End

	if (@StageId = @VerificationStageId)
	Begin
		
		Update a
		Set
			a.isEnabled = 0, 
			a.isRejected = 0,
			a.ModifiedBy = @ModifiedBy,
			a.ModifiedOn = GETDATE()
		From
			[contract].SiteStatus a
		Where
			a.SiteId = @ContractId and a.StageId = 3 and a.SubStageId = 7

		Insert into 
			[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
		values
			(@ContractId, @CoverSheetStageId, @AgendaSubStageId, 1, @ModifiedBy, @ModifiedBy)

		exec [contract].[UpdateSiteStageId] @ContractId, @ModifiedBy, @CoverSheetStageId

	End

	if (@StageId = @FinalInspectionStageId)
	Begin
		
		-- Get current sub stage
		Select
			@StageFrom = MAX(a.SubStageId)
		From
			[contract].SiteStatus a
		Where
			a.SiteId = @ContractId and a.StageId = @StageId and a.isEnabled = 1

		if (@StageFrom = @SendNotificationSubStageId)
		Begin

			Update a
			Set
				a.isEnabled = 0, 
				a.isRejected = 0,
				a.ModifiedBy = @ModifiedBy,
				a.ModifiedOn = GETDATE()
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @ContractId and a.StageId = @StageId and a.SubStageId = @StageFrom

			Insert into 
				[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
			values
				(@ContractId, @FinalInspectionStageId, @ConfirmationFromCustomerSubStageId, 1, @ModifiedBy, @ModifiedBy)

		End
		else if (@StageFrom = @FinalInspectionScheduleId)
		Begin

			-- if sub stage is scheduling
			-- disable it
			Update a
			Set
				a.isEnabled = 0, 
				a.isRejected = 0,
				a.ModifiedBy = @ModifiedBy,
				a.ModifiedOn = GETDATE()
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @ContractId and a.StageId = @StageId and a.SubStageId = @StageFrom

			-- add new stage for contract to submit report
			Insert into 
				[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
			values
				(@ContractId, @FinalInspectionStageId, @FinalInspectionReportId, 1, @ModifiedBy, @ModifiedBy)

		End
		else if (@StageFrom = @FinalInspectionReportId)
		Begin

			Update a
			Set
				a.isEnabled = 0, 
				a.isRejected = 0,
				a.ModifiedBy = @ModifiedBy,
				a.ModifiedOn = GETDATE()
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @ContractId and a.StageId = @StageId and a.SubStageId = @FinalInspectionReportId

			if not exists (select 1 from [contract].[SiteStatus] a where a.SiteId = @ContractId and a.SubStageId = @FinalInsVerSubStageId)
			Begin
				exec [contract].[ChangeSiteStatusDetail] @ContractId, @FinalInspectionStageId, @FinalInsVerSubStageId, @ModifiedBy
			End
			else
			Begin

				Update a
				Set
					a.isEnabled = 1, 
					a.ModifiedBy = @ModifiedBy,
					a.ModifiedOn = GETDATE()
				From
					[contract].SiteStatus a
				Where
					a.SiteId = @ContractId and a.StageId = @StageId and a.SubStageId = @FinalInsVerSubStageId

			End

			-- add new stage for contract to submit report
			--Insert into 
			--	[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
			--values
			--	(@ContractId, @FinalInspectionStageId, @FinalInsVerSubStageId, 1, @ModifiedBy, @ModifiedBy)

		End
		else if (@StageFrom = @FinalInsVerSubStageId)
		Begin

			Update a
			Set
				a.isEnabled = 0, 
				a.isRejected = 0,
				a.ModifiedBy = @ModifiedBy,
				a.ModifiedOn = GETDATE()
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @ContractId and a.StageId = @StageId and a.SubStageId = @FinalInsVerSubStageId

			-- add new stage for contract to submit report
			Insert into 
				[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
			values
				(@ContractId, @AccountOpeningStageId, @LegalQueueSubStageId, 1, @ModifiedBy, @ModifiedBy)

		End


	End
	if (@StageId = @AccountOpeningStageId)
	Begin
		
		-- Get current sub stage
		Select
			@StageFrom = MAX(a.SubStageId)
		From
			[contract].SiteStatus a
		Where
			a.SiteId = @ContractId and a.StageId = @StageId and a.isEnabled = 1


		if (@StageFrom = @AccountOpeningSubStageId)
		Begin

			Update a
			Set
				a.isEnabled = 0 
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @ContractId and a.SubStageId <= @StageFrom

			Update a
			Set
				a.isEnabled = 0, 
				a.isRejected = 0,
				a.ModifiedBy = @ModifiedBy,
				a.ModifiedOn = GETDATE()
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @ContractId and a.StageId = @StageId and a.SubStageId <= @StageFrom

			Insert into 
				[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
			values
				(@ContractId, @AccountOpeningStageId, @ReplyFromFinanceSubStageId, 1, @ModifiedBy, @ModifiedBy)

		End
		else if (@StageFrom = @ReplyFromFinanceSubStageId)
		Begin

			-- if sub stage is scheduling
			-- disable it
			Update a
			Set
				a.isEnabled = 0, 
				a.isRejected = 0,
				a.ModifiedBy = @ModifiedBy,
				a.ModifiedOn = GETDATE()
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @ContractId and a.StageId = @StageId and a.SubStageId = @StageFrom

			Insert into 
				[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
			values
				(@ContractId, @AccountOpeningStageId, @ImportAccountSubStageId, 1, @ModifiedBy, @ModifiedBy)

		End
		else if (@StageFrom = @ImportAccountSubStageId)
		Begin

			Update a
			Set
				a.isEnabled = 0, 
				a.isRejected = 0,
				a.ModifiedBy = @ModifiedBy,
				a.ModifiedOn = GETDATE()
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @ContractId and a.StageId = @StageId and a.SubStageId = @StageFrom

			Insert into 
				[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
			values
				(@ContractId, @AccountOpeningStageId, @NotifyAccountSubStageId, 1, @ModifiedBy, @ModifiedBy)

		End
		else if (@StageFrom = @NotifyAccountSubStageId)
		Begin

			Update a
			Set
				a.isEnabled = 0, 
				a.isRejected = 0,
				a.ModifiedBy = @ModifiedBy,
				a.ModifiedOn = GETDATE()
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @ContractId and a.StageId = @StageId and a.SubStageId = @StageFrom

			Insert into 
				[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
			values
				(@ContractId, @AccountOpeningStageId, @SendToLegalSubStageId, 1, @ModifiedBy, @ModifiedBy)

		End
		else if (@StageFrom = @SendToLegalSubStageId)
		Begin

			Update a
			Set
				a.isEnabled = 0, 
				a.isRejected = 0,
				a.ModifiedBy = @ModifiedBy,
				a.ModifiedOn = GETDATE()
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @ContractId and a.StageId = @StageId and a.SubStageId = @StageFrom

			Insert into 
				[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
			values
				(@ContractId, @AvailableForOrderingStageId, @AccountOpenedSubStageId, 1, @ModifiedBy, @ModifiedBy)
		End

	End

End

GO
/****** Object:  StoredProcedure [contract].[ConfirmAgendaChanges]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[ConfirmAgendaChanges]
(
	@AgendaId bigint = 22,
	@LoggedInUserId bigint = 5
)
As
Begin

	Declare @ResultTypeId smallint = 1, @PricingCommitteeStageId smallint = 4, @ConfirmationSubStageId smallint = 25, @BankGuranteeSubStageId smallint = 10, @AgendaCompletedActivityId tinyint = 2

	Declare @tmp table (SiteId bigint, ResultTypeId tinyint, PricingCategoryId tinyint, Remarks nvarchar(100))

	Insert into 
		@tmp (SiteId, ResultTypeId, PricingCategoryId, Remarks)
	Select
		b.SiteId, b.ResultTypeId, b.PricingCategoryId, b.Remarks
	From
		[contract].Agenda a
	Left Join
		[contract].AgendaContracts b
	On
		a.Id = b.AgendaId
	Where
		a.Id = @AgendaId and a.isUpdated = 1

	Declare @tmpLog table (LogId bigint)

	Declare @tmpLogId bigint

	--Keep a log of activity at contract level
	Insert into 
		[log].[ActivityLog] (SiteId, ActivityTypeId, CreatedBy)
	output 
		inserted.Id into @tmpLog
	Select
		a.SiteId, Case a.ResultTypeId when 1 then 20 when 2 then 21 when 3 then 22 end, @LoggedInUserId
	From
		@tmp a

	Select
		@tmpLogId = a.LogId
	From
		@tmpLog a

	-- Move ahead approved contracts to bank gurantee

	Update a
	Set
		a.isEnabled = 0
	From
		[contract].SiteStatus a
	Where
		a.SiteId in (select a.SiteId from @tmp a where a.ResultTypeId = 1)

	Insert into 
		[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
	Select
		a.SiteId, @PricingCommitteeStageId, @ConfirmationSubStageId, 1, @LoggedInUserId, @LoggedInUserId
	From
		@tmp a
	Where
		a.ResultTypeId = 1 -- approved

	Declare @AgendaLogId bigint

	Select
		@AgendaLogId = b.Id
	From
		[contract].Agenda a
	Inner Join
		[log].Agenda_Log b
	On
		a.AgendaName = b.AgendaName and a.MeetingDate = b.MeetingDate

	Insert into 
		[log].AgendaContracts_Log (AgendaId, LogId, AgendaActivity, SiteId, ResultTypeId, PricingCategoryId, Remarks, CreatedBy)
	Select
		@AgendaLogId, @tmpLogId, @AgendaCompletedActivityId, c.Id, a.ResultTypeId, a.PricingCategoryId, a.Remarks, @LoggedInUserId	
	From
		@tmp a
	Left Join
	(
		Select
			b.Id, b.SiteId, ROW_NUMBER() over (partition by b.SiteId order by b.CreatedOn desc) as CompleteRank
		From
			[log].[ActivityLog] b
		Where
			b.ActivityTypeId = 2
	) b
	On
		a.SiteId = b.SiteId and b.CompleteRank = 1
	Left Join
		[log].Site_Log c
	On
		b.Id = c.LogId
	
End
GO
/****** Object:  StoredProcedure [contract].[ConfirmBatchChanges]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[ConfirmBatchChanges]
(
	@BatchId bigint = 22,
	@LoggedInUserId bigint = 5
)
As
Begin

	Declare @ResultTypeId smallint = 1, @AccountOpeningStageId smallint = 6, @LegalResultsSubStageId smallint = 29, @BankGuranteeSubStageId smallint = 10, @BatchCompletedActivityId tinyint = 2
	, @AccountOpeningSubStageId tinyint = 19

	Declare @ApprovedByLegal smallint = 42, @RejectedByLegal smallint = 43

	Declare @tmp table (SiteId bigint, ResultTypeId tinyint, PricingCategoryId tinyint, Remarks nvarchar(100))

	Insert into 
		@tmp (SiteId, ResultTypeId, Remarks)
	Select
		b.SiteId, b.ResultTypeId, b.Remarks
	From
		[contract].LegalBatch a
	Left Join
		[contract].BatchContracts b
	On
		a.Id = b.BatchId
	Where
		a.Id = @BatchId and a.isUpdated = 1

	Declare @tmpLog table (LogId bigint)

	Declare @tmpLogId bigint

	--Keep a log of activity at contract level
	Insert into 
		[log].[ActivityLog] (SiteId, ActivityTypeId, CreatedBy)
	output 
		inserted.Id into @tmpLog
	Select
		a.SiteId, Case a.ResultTypeId when 1 then @ApprovedByLegal when 2 then @RejectedByLegal end, @LoggedInUserId
	From
		@tmp a

	Select
		@tmpLogId = a.LogId
	From
		@tmpLog a

	-- Move ahead approved contracts to bank gurantee

	Update a
	Set
		a.isEnabled = 0
	From
		[contract].SiteStatus a
	Where
		a.SiteId in (select a.SiteId from @tmp a where a.ResultTypeId = 1)

	Insert into 
		[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
	Select
		a.SiteId, @AccountOpeningStageId, @AccountOpeningSubStageId, 1, @LoggedInUserId, @LoggedInUserId
	From
		@tmp a
	Where
		a.ResultTypeId = 1 -- approved

	Declare @BatchLogId bigint

	Select
		@BatchLogId = b.Id
	From
		[contract].LegalBatch a
	Inner Join
		[log].LegalBatch_Log b
	On
		a.BatchName = b.BatchName

	Insert into 
		[log].BatchContracts_Log(BatchId, LogId, BatchActivity, SiteId, ResultTypeId, Remarks, CreatedBy)
	Select
		@BatchLogId, @tmpLogId, @BatchCompletedActivityId, c.Id, a.ResultTypeId, a.Remarks, @LoggedInUserId	
	From
		@tmp a
	Left Join
	(
		Select
			b.Id, b.SiteId, ROW_NUMBER() over (partition by b.SiteId order by b.CreatedOn desc) as CompleteRank
		From
			[log].[ActivityLog] b
		Where
			b.ActivityTypeId = 2
	) b
	On
		a.SiteId = b.SiteId and b.CompleteRank = 1
	Left Join
		[log].Site_Log c
	On
		b.Id = c.LogId
	
End
GO
/****** Object:  StoredProcedure [contract].[ConfirmFinalInspection]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[ConfirmFinalInspection]
(
	@SiteId bigint,
	@StageId smallint,
	@SubStageId smallint,
	@IsEnabled bit,
	@LoggedInUserId int,
	@Remarks nvarchar(250)
)
As
Begin

	Declare @ConfFromCustomer tinyint = 27

	Update a
	Set
		a.isEnabled = 0, a.Remarks = @Remarks
	From
		[contract].SiteStatus a
	Where
		a.SiteId = @SiteId and a.SubStageId = @ConfFromCustomer

	Insert into
		[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn)
	Values
		(@SiteId, @StageId, @SubStageId, @IsEnabled, @LoggedInUserId, GETDATE(), @LoggedInUserId, GETDATE())

	Declare @FinalInsConfirmation tinyint = 21

	Insert into
		[log].ActivityLog(SiteId, ActivityTypeId, CreatedBy)
	Values
		(@SiteId, @FinalInsConfirmation, @LoggedInUserId)

	Declare @ActivityId bigint

	Select 
		@ActivityId = SCOPE_IDENTITY()

	Insert into
		[log].FinalInsConfDocs_Log(ActivityId, FileName, FileExtension, ResourceId, isDeleted, Remarks, CreatedBy, CreatedOn)
	Select
		@ActivityId, a.FileName, a.FileExtension, a.ResourceId, a.isDeleted, a.Remarks, a.CreatedBy, a.CreatedOn
	From
		[contract].FinInsConfDoc a
	Where
		a.SiteId = @SiteId

	Insert into
		[log].FinalInsConfRemark_Log (ActivityId, Remark, CreatedBy)
	Values
		(@ActivityId, @Remarks, @LoggedInUserId)
	

End
GO
/****** Object:  StoredProcedure [contract].[ConfirmTank]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[ConfirmTank]
(
	@SiteId bigint,
	@StageId smallint,
	@SubStageId smallint,
	@IsEnabled bit,
	@LoggedInUserId int,
	@Remarks nvarchar(250)
)
As
Begin

	Declare @ConfFromCustomer tinyint = 14

	Update a
	Set
		a.isEnabled = 0, a.Remarks = @Remarks
	From
		[contract].SiteStatus a
	Where
		a.SiteId = @SiteId and a.SubStageId = @ConfFromCustomer

	Insert into
		[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn)
	Values
		(@SiteId, @StageId, @SubStageId, @IsEnabled, @LoggedInUserId, GETDATE(), @LoggedInUserId, GETDATE())

	Declare @TankConfirmation tinyint = 32

	Insert into
		[log].ActivityLog(SiteId, ActivityTypeId, CreatedBy)
	Values
		(@SiteId, @TankConfirmation, @LoggedInUserId)

	Declare @ActivityId bigint

	Select 
		@ActivityId = SCOPE_IDENTITY()

	Insert into
		[log].TankConfDocs_Log(ActivityId, FileName, FileExtension, ResourceId, isDeleted, Remarks, CreatedBy, CreatedOn)
	Select
		@ActivityId, a.FileName, a.FileExtension, a.ResourceId, a.isDeleted, a.Remarks, a.CreatedBy, a.CreatedOn
	From
		[contract].TankConfDocuments a
	Where
		a.SiteId = @SiteId

	Insert into
		[log].TankConfRemark_Log (ActivityId, Remark, CreatedBy)
	Values
		(@ActivityId, @Remarks, @LoggedInUserId)
	

End
GO
/****** Object:  StoredProcedure [contract].[CopyUserAccessRights]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[CopyUserAccessRights]
(
	@UserId int = 5
	, @NewUserId int = 6
	, @LoggedInUserId int = 5
)
As
Begin

	Declare @tmp table (Id bigint, UserId int, RoleId int, ModuleId int)

	Insert into
		UserRoleModules (UserId, RoleId, ModuleId, CreatedBy, ModifiedBy)
	output 
		inserted.Id, inserted.UserId, inserted.RoleId, inserted.ModuleId
	into
		@tmp (Id, UserId, RoleId, ModuleId)
	Select
		@NewUserId as UserId, a.RoleId, a.ModuleId, @LoggedInUserId, @LoggedInUserId
	From
		UserRoleModules a
	Where
		a.UserId = @UserId

	Insert into 
		UserAction (URMId, ActionId)
	Select
		c.Id, b.ActionId
	From
		UserRoleModules a
	Left Join
		UserAction b
	On
		a.Id = b.URMId
	Inner Join
		@tmp c
	On
		a.RoleId = c.RoleId and a.ModuleId = c.ModuleId and c.UserId = @NewUserId
	Where
		a.UserId = @UserId

End


GO
/****** Object:  StoredProcedure [contract].[CreateStages]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [contract].[CreateStages]
(
	@ContractId bigint,
	@CreatedBy int
)
As
Begin

	-- Create linkages for application submission sub stages statuses 
	Insert into
		[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy) 
	Select
		@ContractId, a.StageId, a.Id as SubStageId, 1, @CreatedBy, @CreatedBy
	From
		[contract].SubStage a
	Where
		a.StageId = 1

End
GO
/****** Object:  StoredProcedure [contract].[GenerateContractCode]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[GenerateContractCode]
(
	@Year int = 2016,
	@Month int = 01
)
As
Begin

	Declare @ContractCode varchar(100) = 'WOQ-BSS-'+ CAST(@Year as varchar(5)) + Replace(STR(@Month, 2), ' ', '0') + '-001' 

	Select
		@ContractCode = isnull('WOQ-BSS-' + CAST(@Year as varchar(5)) + Replace(STR(@Month, 2), ' ', '0') + '-' + Replace(STR(MAX(a.SiteCount) + 1, 3), ' ', '0'), @ContractCode) 
	From
	(
		Select
			isnull(ROW_NUMBER() over (partition by Datepart(year, a.CreatedOn), Datepart(month, a.CreatedOn) order by a.CreatedOn), 0) as SiteCount
		From
			[contract].[Site] a
		Where
			DATEPART(year, a.CreatedOn) = @Year and DATEPART(MONTH, a.CreatedOn) = @Month
	) a

	Select
		@ContractCode

End



GO
/****** Object:  StoredProcedure [contract].[GetApprovedContracts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[GetApprovedContracts]
(
	@New bit = 0	
)
As
Begin

	Declare @PricingCommiteeStageId smallint = 4
	Declare @SiteInspectionStageId smallint = 2
	Declare @AgendaSubStageId smallint = 8

	Select
		a.Id, a.CustomerName, c.[Description] as Product, d.ProjectName, d.ProjectLocation, e.PricingCommitteeRemarks, f.CreatedOn, e.ModifiedOn 
	From
		[contract].[Site] a
	Inner Join
		[contract].SiteStatus b
	On
		a.Id = b.SiteId and b.StageId = @PricingCommiteeStageId and b.SubStageId = @AgendaSubStageId and b.isEnabled = 1 
	Left Join
		[contract].[ProductNeeded] c
	On
		a.ProdNeededId = c.Id
	Left Join
		[contract].[SiteProjectDetails] d
	On
		a.Id = d.SiteId and a.ContractorTypeId = d.ContractorTypeId
	Left Join
		[contract].[SiteVerification] e
	On
		a.Id = e.SiteId
	Left Join
		[contract].[SiteStatus] f
	On
		a.Id = f.SiteId and f.StageId = @SiteInspectionStageId and f.SubStageId = @PricingCommiteeStageId
	Where
		 (@New = 1 and a.CustId is null) or (@New = 0 and a.CustId is not null) 

End



GO
/****** Object:  StoredProcedure [contract].[GetApprovedContractsForLegal]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[GetApprovedContractsForLegal]
(
	@New bit = 0	
)
As
Begin

	Declare @AccountOpeningStageId smallint = 6
	Declare @PoolSubStageId smallint = 28

	Select
		a.Id, a.CustomerName, c.[Description] as Product, d.ProjectName, d.ProjectLocation
	From
		[contract].[Site] a
	Inner Join
		[contract].SiteStatus b
	On
		a.Id = b.SiteId and b.StageId = @AccountOpeningStageId and b.SubStageId = @PoolSubStageId and b.isEnabled = 1 
	Left Join
		[contract].[ProductNeeded] c
	On
		a.ProdNeededId = c.Id
	Left Join
		[contract].[SiteProjectDetails] d
	On
		a.Id = d.SiteId and a.ContractorTypeId = d.ContractorTypeId
	Where
		 (@New = 1 and a.CustId is null) or (@New = 0 and a.CustId is not null) 

End



GO
/****** Object:  StoredProcedure [contract].[GetAppVerification]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[GetAppVerification]
(
	@SiteId bigint,
	@LoggedInUserId int
)
As
Begin

	if not exists (select 1 from [contract].SiteVerification a where a.SiteId = @SiteId)
	Begin
		Declare @PricingCommitteeRemarks nvarchar(250)

		Select
			@PricingCommitteeRemarks = a.PricingCommiteeRemarks
		From
			[contract].[Site] a
		Where
			a.Id = @SiteId

		Insert into 
			[contract].[SiteVerification]  (SiteId, PricingCommitteeRemarks, CreatedBy, ModifiedBy)
		Values
			(@SiteId, @PricingCommitteeRemarks, @LoggedInUserId, @LoggedInUserId)

	End

	Select
		a.Id, a.SiteId, a.ApproveAppSubmission, a.ApproveCRAnalysis, a.ApproveUploadedDocuments
		, a.ApproveSiteVisitReport, a.AppSubmissionRemark, a.CRAnalysisRemark, a.UploadDocumentsRemark
		, a.SiteVisitReportRemark, a.PricingCommitteeRemarks
	From
		[contract].[SiteVerification] a
	Where
		a.SiteId = @SiteId
		

End
GO
/****** Object:  StoredProcedure [contract].[GetAppVerification_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[GetAppVerification_Log]
(
	@ActivityId bigint = 20984
)
As
Begin
	
	Select
		a.Id, a.ApproveAppSubmission, a.ApproveCRAnalysis, a.ApproveUploadedDocuments
		, a.ApproveSiteVisitReport, a.AppSubmissionRemark, a.CRAnalysisRemark, a.UploadDocumentsRemark
		, a.SiteVisitReportRemark, a.PricingCommitteeRemarks
	From
		[log].[SiteVerification_Log] a
	Where
		a.ActivityId = @ActivityId
		

End
GO
/****** Object:  StoredProcedure [contract].[GetContractsByAgendaId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[GetContractsByAgendaId]
(
	@AgendaId bigint = 0,
	@New bit = 0	
)
As
Begin

	Select
		b.Id, a.Code, a.CustomerName, d.ProjectName, d.ProjectLocation, e.PricingCommitteeRemarks, a.MinAvgConsumption, a.MaxAvgConsumption, c.Description as Product
		, d.ProjectStartDate, d.ProjectEndDate, d.IsTentative, f.isUpdated, b.PricingCategoryId, g.PricingCategory, b.Remarks, a.Id as SiteId
	From
		[contract].AgendaContracts b
	Inner Join
		[contract].[Agenda] f
	On
		b.AgendaId = f.Id
	Inner Join
		[contract].[Site] a
	On
		b.SiteId = a.Id
	Left Join
		[contract].[ProductNeeded] c
	On
		a.ProdNeededId = c.Id
	Left Join
		[contract].[SiteProjectDetails] d
	On
		a.Id = d.SiteId and a.ContractorTypeId = d.ContractorTypeId
	Left Join
		[contract].[SiteVerification] e
	On
		a.Id = e.SiteId
	Left Join
		[contract].AgendaPricingCategory g
	On
		b.PricingCategoryId = g.Id
	Where
		b.AgendaId = @AgendaId and ((@New = 1 and a.CustId is null) or (@New = 0 and a.CustId is not null)) 


End



GO
/****** Object:  StoredProcedure [contract].[GetContractsByBatchId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [contract].[GetContractsByBatchId]
(
	@BatchId bigint = 0,
	@New bit = 0	
)
As
Begin

	Select
		b.Id, a.Code, a.CustomerName, d.ProjectName, d.ProjectLocation, e.PricingCommitteeRemarks, a.MinAvgConsumption, a.MaxAvgConsumption, c.Description as Product
		, d.ProjectStartDate, d.ProjectEndDate, d.IsTentative, f.isUpdated, b.Remarks, a.Id as SiteId
	From
		[contract].BatchContracts b
	Inner Join
		[contract].[LegalBatch] f
	On
		b.BatchId = f.Id
	Inner Join
		[contract].[Site] a
	On
		b.SiteId = a.Id
	Left Join
		[contract].[ProductNeeded] c
	On
		a.ProdNeededId = c.Id
	Left Join
		[contract].[SiteProjectDetails] d
	On
		a.Id = d.SiteId and a.ContractorTypeId = d.ContractorTypeId
	Left Join
		[contract].[SiteVerification] e
	On
		a.Id = e.SiteId
	Where
		b.BatchId = @BatchId and ((@New = 1 and a.CustId is null) or (@New = 0 and a.CustId is not null)) 


End



GO
/****** Object:  StoredProcedure [contract].[GetFolderPath]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [contract].[GetFolderPath]
(
	@CrId bigint
)
As
Begin
	Select
		b.FolderPath
	From
		[contract].SiteCRAnalysis a
	Inner Join
		[contract].Site b
	On
		a.SiteId = b.Id
	Where
		a.Id = @CrId	


End
GO
/****** Object:  StoredProcedure [contract].[GetgetSubmittedByInfo]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [contract].[GetgetSubmittedByInfo]
(
	@ContractId bigint,
	@StageId int,
	@SubStageId int
)
As
Begin

	select A.ModifiedOn,B.FullName
	 FROM  contract.SiteStatus A  
	 left join AspNetUsers B on A.ModifiedBy=B.UId
     Where
		a.SiteId = @ContractId and a.isEnabled = 0 and a.StageId=@StageId and a.SubStageId=@SubStageId  

	
End


GO
/****** Object:  StoredProcedure [contract].[Insert_CompleteCR_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[Insert_CompleteCR_Log]
(
	@LogId bigint,
	@SiteId bigint,
	@LoggedInUserId int,
	@LoggedOn datetime
)
As
Begin
       
    Insert into 
		[log].[SiteCRAnalysis_Log] (LogId,SiteId,ApplicantTypeId,Name,ArabicName,ClassificationId,NatureId,NationalityId,CR_ID_Number,CR_ID_Validity,ParentId,IsIndividual,IsEstablishment,IsPrivateShareholding,IsPublicShareholding,IsCompany,LoggedBy ,LoggedOn)
	Select	
		@LogId,@SiteId,ApplicantTypeId,Name,ArabicName,ClassificationId,NatureId,NationalityId,CR_ID_Number,CR_ID_Validity,ParentId,IsIndividual,IsEstablishment,IsPrivateShareholding,IsPublicShareholding,IsCompany, @LoggedInUserId,@LoggedOn
	From
		[contract].[SiteCRAnalysis]
	Where
		SiteId = @SiteId

End

	

	

	
	

	 



GO
/****** Object:  StoredProcedure [contract].[Insert_CompleteDocumentUpload_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[Insert_CompleteDocumentUpload_Log]
(
	@LogId bigint,
	@SiteId bigint,
	@LoggedInUserId int,
	@LoggedOn datetime
)
As
Begin

         Insert into 
			[log].[SiteDocuments_Log] (LogId,SiteId,FileName,FileExtension,ResourceId,SiteAttachmentChecklist,Remarks,isDeleted,LoggedBy ,LoggedOn)
		Select	
			@LogId,@SiteId,FileName,FileExtension,ResourceId,b.OtherAttachmentType,Remarks,isDeleted, @LoggedInUserId,@LoggedOn
		From
			[contract].[SiteDocuments] a
		Left Join
			[contract].[SiteAttachmentCheckList] b
		On
			a.SiteAttachmentChecklistId = b.Id
		Where
			a.SiteId = @SiteId



End

	

	

	
	

	 



GO
/****** Object:  StoredProcedure [contract].[Insert_ContractInfo_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[Insert_ContractInfo_Log]
(
	@LogId bigint,
	@SiteId bigint,
	@LoggedInUserId int,
	@LoggedOn datetime
)
As
Begin
           
		INSERT INTO 
            [log].[Site_Log] (LogId,CustId,CustomerName,ContractorTypeId,StageId,SubStageId ,Code ,ProdNeededId ,MinAvgConsumption
				,MaxAvgConsumption,SupplyToTypeId,PricingCommiteeRemarks,UserRemarks ,FolderPath ,isActive,LoggedBy ,LoggedOn)     
		SELECT  @LogId,CustId,CustomerName,ContractorTypeId,StageId,SubStageId ,Code ,ProdNeededId ,MinAvgConsumption
				 ,MaxAvgConsumption,SupplyToTypeId,PricingCommiteeRemarks,UserRemarks ,FolderPath ,isActive,@LoggedInUserId ,@LoggedOn
		FROM [contract].[Site]
		 Where
			Id = @SiteId


	Declare @Site_LogId bigint
		Select
			@Site_LogId = SCOPE_IDENTITY()		
     

		Insert into 
			[log].[SiteAttachmentCheckList_Log] (LogId,SiteId, AttachmentId,OtherAttachmentType ,LoggedBy ,LoggedOn)
		Select	
			@LogId,@Site_LogId,AttachmentId,OtherAttachmentType ,   @LoggedInUserId,@LoggedOn
		From
			[contract].[SiteAttachmentCheckList]
		Where
			SiteId = @SiteId

		Insert into 
			[log].[ContractAddress_Log] (LogId,SiteId, AddressLine1 ,AddressLine2  ,Area ,CountryId ,CityId ,isActive,POBox ,LoggedBy ,LoggedOn)
		Select	
			@LogId,@Site_LogId,AddressLine1 ,AddressLine2  ,Area ,CountryId ,CityId ,isActive,POBox ,   @LoggedInUserId,@LoggedOn
		From
			[contract].[ContractAddress]
		Where
			SiteId = @SiteId
			
		Insert into 
			[log].[ContractContacts_Log] (LogId,SiteId, FName,LName,Email  ,DesignationId ,TypeId  ,Landline  ,Mobile ,Fax  ,isActive ,LoggedBy ,LoggedOn)
		Select	
			@LogId,@Site_LogId,FName,LName,Email  ,DesignationId ,TypeId  ,Landline  ,Mobile ,Fax  ,isActive ,   @LoggedInUserId,@LoggedOn
		From
			[contract].[ContractContacts]
		Where
			SiteId = @SiteId

		Insert into 
			[log].[SiteProjectDetails_Log] (LogId,SiteId,ContractorTypeId,ProjectName,ProjectLocation,ProjectDescription,ProjectClassificationId,ProjectStartDate,IsTentative,ProjectEndDate,LoggedBy ,LoggedOn)
		Select	
			@LogId,@Site_LogId,ContractorTypeId,ProjectName,ProjectLocation,ProjectDescription,ProjectClassificationId,ProjectStartDate,IsTentative,ProjectEndDate ,   @LoggedInUserId,@LoggedOn
		From
			[contract].[SiteProjectDetails]
		Where
			SiteId = @SiteId

         Insert into 
			[log].[SiteCRAnalysis_Log] (LogId,SiteId,ApplicantTypeId,Name,ArabicName,ClassificationId,NatureId,NationalityId,CR_ID_Number,CR_ID_Validity,ParentId,IsIndividual,IsEstablishment,IsPrivateShareholding,IsPublicShareholding,IsCompany,LoggedBy ,LoggedOn)
		Select	
			@LogId,@Site_LogId,ApplicantTypeId,Name,ArabicName,ClassificationId,NatureId,NationalityId,CR_ID_Number,CR_ID_Validity,ParentId,IsIndividual,IsEstablishment,IsPrivateShareholding,IsPublicShareholding,IsCompany, @LoggedInUserId,@LoggedOn
		From
			[contract].[SiteCRAnalysis]
		Where
			SiteId = @SiteId

	  Insert into 
			[log].[SupplyToDetails_Log] (LogId,SiteId,NumberOfStorageTanks,StorageTankTypeId, VesselName,Capacity,Remarks,LoggedBy ,LoggedOn)
		Select	
			@LogId,@Site_LogId,NumberOfStorageTanks,StorageTankTypeId, VesselName,Capacity,Remarks, @LoggedInUserId,@LoggedOn
		From
			[contract].[SupplyToDetails]
		Where
			SiteId = @SiteId

	  Insert into 
			[log].[MonthlyConsumptionDetails_Log] (LogId,SiteId,Year,Month,Value,LoggedBy ,LoggedOn)
		Select	
			@LogId,@Site_LogId,Year,Month,Value, @LoggedInUserId,@LoggedOn
		From
			[contract].[MonthlyConsumptionDetails]
		Where
			SiteId = @SiteId

	Insert into 
		[log].[SiteCRAnalysis_Log] (LogId,SiteId,ApplicantTypeId,Name,ArabicName,ClassificationId,NatureId,NationalityId,CR_ID_Number,CR_ID_Validity,ParentId,IsIndividual,IsEstablishment,IsPrivateShareholding,IsPublicShareholding,IsCompany,LoggedBy ,LoggedOn)
	Select	
		@LogId,@SiteId,ApplicantTypeId,Name,ArabicName,ClassificationId,NatureId,NationalityId,CR_ID_Number,CR_ID_Validity,ParentId,IsIndividual,IsEstablishment,IsPrivateShareholding,IsPublicShareholding,IsCompany, @LoggedInUserId,@LoggedOn
	From
		[contract].[SiteCRAnalysis]
	Where
		SiteId = @SiteId and ApplicantTypeId in (1, 2, 3)

End

	

	

	
	

	 



GO
/****** Object:  StoredProcedure [contract].[Insert_SiteVisitReport_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[Insert_SiteVisitReport_Log]
(
	@LogId bigint,
	@SiteId bigint,
	@LoggedInUserId int,
	@LoggedOn datetime
)
As
Begin


           
		INSERT INTO 
		       [log].[SiteVisitReport_Log] (LogId,SiteId,ScheduleId ,ApplicantName ,Location ,DateOfVisit,Lat,Long ,SiteZoneId ,OnRoad ,OffRoad
			   ,ContractorTypeId ,SupplyToTypeId ,BundwallRemarks,StorageTankLocation,FireExtinguisher ,RoadTankerCapacity,RoadTankerAccess ,RoadCondition
			   ,FillingPoints,CustomerAvailableEquipment ,SiteVisitComments, BulkRemarks, SiteInspectionTypeId,LoggedBy ,LoggedOn)     
		SELECT @LogId,SiteId,ScheduleId,ApplicantName,Location ,DateOfVisit ,Lat ,Long ,SiteZoneId  ,OnRoad ,OffRoad
			  ,ContractorTypeId  ,SupplyToTypeId ,BundwallRemarks ,StorageTankLocation      ,FireExtinguisher      ,RoadTankerCapacity   ,RoadTankerAccess      ,RoadCondition
			  ,FillingPoints      ,CustomerAvailableEquipment      ,SiteVisitComments, BulkRemarks, SiteInspectionTypeId,   @LoggedInUserId,@LoggedOn
		FROM [contract].[SiteVisitReport]
		 Where
			SiteId = @SiteId


	Declare @SiteVisitReport_LogId bigint
		Select
			@SiteVisitReport_LogId = SCOPE_IDENTITY()



        Declare @SiteVisitReportId bigint

		select @SiteVisitReportId = Id 
		         FROM [contract].[SiteVisitReport]  Where SiteId = @SiteId


	

		Insert into 
			[log].[SiteVisitAddresses_Log] (LogId,SiteVisitReportId, AddressLine1, AddressLine2, Area, CountryId, CityId, isActive, POBox,LoggedBy ,LoggedOn)
		Select	
			@LogId,@SiteVisitReport_LogId, a.AddressLine1, a.AddressLine2, a.Area, a.CountryId, a.CityId, a.isActive, a.POBox,   @LoggedInUserId,@LoggedOn
		From
			[contract].[SiteVisitAddresses] a
		Where
			a.SiteVisitReportId = @SiteVisitReportId

		Insert into
			[log].[SiteVisitReportContacts_Log] (LogId,SiteVisitReportId, FName, LName, Email, DesignationId, TypeId, Landline, Mobile, Fax, isActive,LoggedBy ,LoggedOn)
		Select
			@LogId,@SiteVisitReport_LogId, a.FName, a.LName, a.Email, a.DesignationId, a.TypeId, a.Landline, a.Mobile, a.Fax, a.isActive,   @LoggedInUserId,@LoggedOn
		From
			[contract].[SiteVisitReportContacts] a
		Where
			a.SiteVisitReportId = @SiteVisitReportId

		Insert into 
			[log].[SiteVisitProjectDetails_Log] (LogId,SiteVisitReportId, ContractorTypeId, ProjectName, ProjectLocation, ProjectDescription, ProjectClassificationId, ProjectStartDate, IsTentative, ProjectEndDate,LoggedBy ,LoggedOn)
		Select
			@LogId,@SiteVisitReport_LogId, a.ContractorTypeId, a.ProjectName, a.ProjectLocation, a.ProjectDescription, a.ProjectClassificationId, a.ProjectStartDate, a.IsTentative, a.ProjectEndDate,   @LoggedInUserId,@LoggedOn
		From
			[contract].[SiteVisitProjectDetails] a
		Where
			a.SiteVisitReportId = @SiteVisitReportId

		Insert into
			[log].[SiteVisitSupplyToDetails_Log] (LogId,SiteVisitReportId, NumberOfStorageTanks, StorageTankTypeId, VesselName, Capacity, Remarks,LoggedBy ,LoggedOn)
		Select
			@LogId,@SiteVisitReport_LogId, a.NumberOfStorageTanks, a.StorageTankTypeId, a.VesselName, a.Capacity, a.Remarks,   @LoggedInUserId,@LoggedOn
		From
			[contract].[SiteVisitSupplyToDetails] a
		Where
			a.SiteVisitReportId = @SiteVisitReportId

	
		Insert into
			[log].[SiteVisitResources_Log] (LogId,SiteVisitReportId, [FileName], FileExtension, ResourceId, isDeleted,LoggedBy ,LoggedOn)
		Select
			@LogId,@SiteVisitReport_LogId,[FileName], FileExtension, ResourceId, isDeleted,   @LoggedInUserId,@LoggedOn
		From
			[contract].[SiteVisitResources] a
		Where
			a.SiteVisitReportId = @SiteVisitReportId AND A.isDeleted=0


	

End

	

	

	
	

	 



GO
/****** Object:  StoredProcedure [contract].[IssueBankGurantee]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[IssueBankGurantee]
(
	@SiteId bigint,
	@StageId smallint,
	@SubStageId smallint,
	@IsEnabled bit,
	@LoggedInUserId int
)
As
Begin

	if not exists (select 1 from [contract].SiteStatus a where a.SiteId = @SiteId and a.SubStageId = @SubStageId)
	Begin

		Update a
		Set
			a.isEnabled = 0
		From
			[contract].SiteStatus a
		Where
			a.SiteId = @SiteId

		Insert into
			[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn)
		Values
			(@SiteId, @StageId, @SubStageId, @IsEnabled, @LoggedInUserId, GETDATE(), @LoggedInUserId, GETDATE())

		Declare @BGIssuedActivityTypeId smallint = 24

		Insert into
			[log].ActivityLog(SiteId, ActivityTypeId, CreatedBy)
		Values
			(@SiteId, @BGIssuedActivityTypeId, @LoggedInUserId)

	End
	else
	Begin
		
		Raiserror('Cannot Issue Bank Gurantee', 16, 1)

	End


End
GO
/****** Object:  StoredProcedure [contract].[MoveFromRejectToSubmitted]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[MoveFromRejectToSubmitted]
(
	@ContractId bigint = 10085,
	@SubStageId int = 1,
	@LoggedInUserId int = 5
)
As
Begin

	Declare @AppSubmissionStageId int = 1, @SiteInspectionStageId int = 2, @VerificationStageId int = 3, @CoverSheetStageId int = 4
	Declare @ScheduleSubStageId int = 4, @SubmitReportSubStageId int = 5, @VerifyReportSubStageId int = 6, @VerificationSubStageId int = 7, @AgendaSubStageId int = 8

	Update a
	Set
		a.isEnabled = 0,
		a.isRejected = null,
		a.RejectedBy = null,
		a.RejectedOn = null,
		a.ModifiedBy = @LoggedInUserId,
		a.ModifiedOn = GETDATE()
	From
		[contract].[SiteStatus] a
	Where
		a.SiteId = @ContractId and a.isEnabled = 1 and a.SubStageId = @SubStageId 

	if not exists (select 1 from [contract].[SiteStatus] a where a.SiteId = @ContractId and a.isEnabled = 1)
	Begin

		Update a
		Set
			a.isActive = 1
		From
			[contract].[Site] a
		Where
			a.Id = @ContractId

		if exists (select 1 from [contract].SiteStatus a where a.SiteId = @ContractId and a.StageId = 3 and a.SubStageId = 7)
		Begin

			Update a
			Set
				a.isEnabled = 1, 
				a.ModifiedBy = @LoggedInUserId,
				a.ModifiedOn = GETDATE()
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @ContractId and a.StageId = 3 and a.SubStageId = 7

		End
		else
		Begin
			Insert into 
				[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
			values
				(@ContractId, @VerificationStageId, @VerificationSubStageId, 1, @LoggedInUserId, @LoggedInUserId)

			exec [contract].[UpdateSiteStageId] @ContractId, @LoggedInUserId, @VerificationStageId

		End

	End


End


GO
/****** Object:  StoredProcedure [contract].[PrepareBasicCRDetails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [contract].[PrepareBasicCRDetails]
(
	@SiteId bigint = 0,
	@Name nvarchar(100),
	@ApplicantTypeId int = 3,
	@CreatedBy	int = 5
)
As
Begin
	
	if (@ApplicantTypeId = 3)
	Begin
		Insert into
			[contract].[SiteCRAnalysis] (SiteId, Name, ApplicantTypeId, CreatedBy, ModifiedBy)
		Values
			(@SiteId, @Name, 3, @CreatedBy, @CreatedBy)
	End

	if (@ApplicantTypeId = 3 or @ApplicantTypeId = 2)
	Begin
		Insert into
			[contract].[SiteCRAnalysis] (SiteId, Name, ApplicantTypeId, CreatedBy, ModifiedBy)
		Values
			(@SiteId, Case When @ApplicantTypeId = 2 then @Name else null end, 2, @CreatedBy, @CreatedBy)
	End

	if (@ApplicantTypeId = 3 or @ApplicantTypeId = 2 or @ApplicantTypeId = 1)
	Begin
		Insert into
			[contract].[SiteCRAnalysis] (SiteId, Name, ApplicantTypeId, CreatedBy, ModifiedBy)
		Values
			(@SiteId, Case When @ApplicantTypeId = 1 then @Name else null end, 1, @CreatedBy, @CreatedBy)
	End

End


GO
/****** Object:  StoredProcedure [contract].[ReceiveBankGurantee]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[ReceiveBankGurantee]
(
	@SiteId bigint,
	@StageId smallint,
	@SubStageId smallint,
	@IsEnabled bit,
	@LoggedInUserId int,
	@Remarks nvarchar(250)
)
As
Begin

	Declare @BankGuranteeReceivedSubStageId tinyint = 12, @ContractReceivedSubStageId tinyint = 13

	if not exists (select 1 from [contract].SiteStatus a where a.SiteId = @SiteId and a.SubStageId = @SubStageId)
	Begin

		Insert into
			[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, Remarks, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn)
		Values
			(@SiteId, @StageId, @SubStageId, @IsEnabled, @Remarks, @LoggedInUserId, GETDATE(), @LoggedInUserId, GETDATE())

		Declare @BGReceiveActivityTypeId smallint = 25

		Insert into
			[log].ActivityLog(SiteId, ActivityTypeId, CreatedBy)
		Values
			(@SiteId, @BGReceiveActivityTypeId, @LoggedInUserId)

		Declare @ActivityId bigint

		Select 
			@ActivityId = SCOPE_IDENTITY()

		Insert into
			[log].BankGuranteeDocuments_Log (ActivityId, FileName, FileExtension, ResourceId, isDeleted, Remarks, CreatedBy, CreatedOn)
		Select
			@ActivityId, a.FileName, a.FileExtension, a.ResourceId, a.isDeleted, a.Remarks, a.CreatedBy, a.CreatedOn
		From
			[contract].BankGuranteeDocuments a
		Where
			a.SiteId = @SiteId

		Insert into
			[log].BankGuranteeRemark_Log (ActivityId, Remark, CreatedBy)
		Values
			(@ActivityId, @Remarks, @LoggedInUserId)
			
		-- if contract and bank gurantee both are ackowledged then move to the next stage

		if exists (select 1 from [contract].SiteStatus a where a.SiteId = @SiteId and a.SubStageId = @BankGuranteeReceivedSubStageId and a.isEnabled = 0)
			and exists (select 1 from [contract].SiteStatus a where a.SiteId = @SiteId and a.SubStageId = @ContractReceivedSubStageId and a.isEnabled = 0)
		Begin

			Declare @BankGuranteeSubStageId tinyint = 10

			Update a
			Set
				a.isEnabled = 0
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @SiteId and a.SubStageId = @BankGuranteeSubStageId

			-- if contract does has woqod tanks then skip mobilize tanks stage 

			Declare @FinalInspectionStageId tinyint = 5, @ConfFrmCustSubStageId tinyint = 14, @MobilizeTankSubStageId tinyint = 15, @FinalInspectionSubStageId tinyint = 16

			Declare @EnableMobilizeTank bit = 0

			if exists (select 1 from [contract].[Site] a where a.isActive = 1 and a.Id = @SiteId and a.SupplyToTypeId = 1)
			Begin
				Set @EnableMobilizeTank = 1
			End

			Insert into
				[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn)
			Values
				(@SiteId, @FinalInspectionStageId, @ConfFrmCustSubStageId, @EnableMobilizeTank, @LoggedInUserId, GETDATE(), @LoggedInUserId, GETDATE())

			if (@EnableMobilizeTank = 0)
			Begin
				
				Insert into
					[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn)
				Values
					(@SiteId, @FinalInspectionStageId, @MobilizeTankSubStageId, @EnableMobilizeTank, @LoggedInUserId, GETDATE(), @LoggedInUserId, GETDATE())

				Insert into
					[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn)
				Values
					(@SiteId, @FinalInspectionStageId, @FinalInspectionSubStageId, 1, @LoggedInUserId, GETDATE(), @LoggedInUserId, GETDATE())
			
			End

		End

	End
	else
	Begin
		
		Raiserror('Cannot Receive Bank Gurantee', 16, 1)

	End


End
GO
/****** Object:  StoredProcedure [contract].[ReceiveBankGuranteeContract]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[ReceiveBankGuranteeContract]
(
	@SiteId bigint,
	@StageId smallint,
	@SubStageId smallint,
	@IsEnabled bit,
	@LoggedInUserId int,
	@Remarks nvarchar(250)
)
As
Begin

	Declare @BankGuranteeReceivedSubStageId tinyint = 12, @ContractReceivedSubStageId tinyint = 13

	if not exists (select 1 from [contract].SiteStatus a where a.SiteId = @SiteId and a.SubStageId = @SubStageId)
	Begin
			
		Insert into
			[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, Remarks, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn)
		Values
			(@SiteId, @StageId, @SubStageId, @IsEnabled, @Remarks, @LoggedInUserId, GETDATE(), @LoggedInUserId, GETDATE())

		Declare @BGContractReceiveActivityTypeId smallint = 31

		Insert into
			[log].ActivityLog(SiteId, ActivityTypeId, CreatedBy)
		Values
			(@SiteId, @BGContractReceiveActivityTypeId, @LoggedInUserId)

		Declare @ActivityId bigint

		Select 
			@ActivityId = SCOPE_IDENTITY()

		Insert into
			[log].BGContractDocs_Log (ActivityId, FileName, FileExtension, ResourceId, isDeleted, Remarks, CreatedBy, CreatedOn)
		Select
			@ActivityId, a.FileName, a.FileExtension, a.ResourceId, a.isDeleted, a.Remarks, a.CreatedBy, a.CreatedOn
		From
			[contract].BankGuranteeDocuments a
		Where
			a.SiteId = @SiteId

		Insert into
			[log].BGContractRemarks_Log (ActivityId, Remark, CreatedBy)
		Values
			(@ActivityId, @Remarks, @LoggedInUserId)
			
		-- if contract and bank gurantee both are ackowledged then move to the next stage

		if exists (select 1 from [contract].SiteStatus a where a.SiteId = @SiteId and a.SubStageId = @BankGuranteeReceivedSubStageId and a.isEnabled = 0)
			and exists (select 1 from [contract].SiteStatus a where a.SiteId = @SiteId and a.SubStageId = @ContractReceivedSubStageId and a.isEnabled = 0)
		Begin

			Declare @BankGuranteeSubStageId tinyint = 10

			Update a
			Set
				a.isEnabled = 0
			From
				[contract].SiteStatus a
			Where
				a.SiteId = @SiteId and a.SubStageId = @BankGuranteeSubStageId
			
			-- if contract has woqod tanks then skip mobilize tanks stage 

			Declare @FinalInspectionStageId tinyint = 5, @NotifyCustomerSubStage tinyint = 26, @ConfFrmCustSubStageId tinyint = 14, @MobilizeTankSubStageId tinyint = 15, @FinalInspectionSubStageId tinyint = 16

			Declare @EnableMobilizeTank bit = 0

			if exists (select 1 from [contract].[Site] a where a.isActive = 1 and a.Id = @SiteId and a.SupplyToTypeId = 1)
			Begin
				Set @EnableMobilizeTank = 1
			End

			Insert into
				[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn)
			Values
				(@SiteId, @FinalInspectionStageId, @NotifyCustomerSubStage, @EnableMobilizeTank, @LoggedInUserId, GETDATE(), @LoggedInUserId, GETDATE())

			if (@EnableMobilizeTank = 0)
			Begin

				Insert into
					[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn)
				Values
					(@SiteId, @FinalInspectionStageId, @MobilizeTankSubStageId, @EnableMobilizeTank, @LoggedInUserId, GETDATE(), @LoggedInUserId, GETDATE())


				Insert into
					[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn)
				Values
					(@SiteId, @FinalInspectionStageId, @FinalInspectionSubStageId, 1, @LoggedInUserId, GETDATE(), @LoggedInUserId, GETDATE())
			
			End

		End

	End
	else
	Begin
		
		Raiserror('Cannot Receive Bank Gurantee', 16, 1)

	End


End
GO
/****** Object:  StoredProcedure [contract].[RejectSiteVisitReport]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[RejectSiteVisitReport]
(
	@ContractId bigint,
	@ModifiedBy int,
	@Remarks nvarchar(250)
)
As
Begin
	
	Declare @SiteInspectionStageId int = 2,  @SiteVisitReporSubStageId int = 5, @VerifyReportSubStageId int = 6

	Declare @FinalSiteInspectionStageId int = 5,  @FinalSiteVisitReporSubStageId int = 17, @FinalVerifyReportSubStageId int = 18

	Declare @IsInitial bit = 1
	
	if exists (select 1 from [contract].SiteStatus a where a.SiteId = @ContractId and a.SubStageId = 18) -- if entry exists for final site inspection
	Begin

		Set
			@IsInitial = 0

	End

	if(@IsInitial = 1)
	Begin
		Update a
		Set
			a.isEnabled = 1,
			a.ModifiedBy = @ModifiedBy,
			a.isRejected = 1,
			a.Remarks = @Remarks,
			a.RejectedBy = @ModifiedBy,
			a.RejectedOn = GETDATE(),
			a.ModifiedOn = GETDATE()
		From
			[contract].SiteStatus a
		Where
			a.SiteId = @ContractId and a.StageId = @SiteInspectionStageId and a.SubStageId = @SiteVisitReporSubStageId

		Update a
		Set
			a.isEnabled = 0,
			a.ModifiedBy = @ModifiedBy,
			a.ModifiedOn = GETDATE()
		From
			[contract].SiteStatus a
		Where
			a.SiteId = @ContractId and a.StageId = @SiteInspectionStageId and a.SubStageId = @VerifyReportSubStageId

	End
	else		
	Begin

		Update a
		Set
			a.isEnabled = 1,
			a.ModifiedBy = @ModifiedBy,
			a.isRejected = 1,
			a.Remarks = @Remarks,
			a.RejectedBy = @ModifiedBy,
			a.RejectedOn = GETDATE(),
			a.ModifiedOn = GETDATE()
		From
			[contract].SiteStatus a
		Where
			a.SiteId = @ContractId and a.StageId = @FinalSiteInspectionStageId and a.SubStageId = @FinalSiteVisitReporSubStageId

		Update a
		Set
			a.isEnabled = 0,
			a.ModifiedBy = @ModifiedBy,
			a.ModifiedOn = GETDATE()
		From
			[contract].SiteStatus a
		Where
			a.SiteId = @ContractId and a.StageId = @FinalSiteInspectionStageId and a.SubStageId = @FinalVerifyReportSubStageId
		
	
	End

	


End
GO
/****** Object:  StoredProcedure [contract].[RevisitSite]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[RevisitSite]
(
	@ContractId bigint,
	@ModifiedBy int,
	@Remarks nvarchar(250)
)
As
Begin

	Delete a
	From
		[contract].[SiteStatus] a
	Where
		a.SiteId = @ContractId and a.StageId > 1  and a.SubStageId <> 4

	Update a
	Set
		a.isEnabled = 1,
		a.isRejected = 1,
		a.Remarks = @Remarks,
		a.RejectedBy = @ModifiedBy,
		a.RejectedOn = GETDATE(),
		a.ModifiedOn = GETDATE()
	From
		[contract].[SiteStatus] a
	Where
		a.SiteId = @ContractId and a.StageId = 2 and a.SubStageId = 4

	Declare @ScheduleId bigint, @SiteVisitReportId bigint

	Select
		@ScheduleId = a.Id
	From
		[contract].ScheduleList a
	Where
		a.ApplicationId = @ContractId

	Select
		@SiteVisitReportId = a.Id
	From
		[contract].SiteVisitReport a
	Where
		a.ScheduleId = @ScheduleId

	Delete a
	From
		[contract].SiteVisitResources a
	Where
		a.SiteVisitReportId = @SiteVisitReportId

	Delete a
	From
		[contract].SiteVisitAddresses a
	Where
		a.SiteVisitReportId = @SiteVisitReportId

	Delete a
	From
		[contract].SiteVisitReportContacts a
	Where
		a.SiteVisitReportId = @SiteVisitReportId

	Delete a
	From
		[contract].SiteVisitSupplyToDetails a
	Where
		a.SiteVisitReportId = @SiteVisitReportId

	Delete a
	From
		[contract].SiteVisitProjectDetails a
	Where
		a.SiteVisitReportId = @SiteVisitReportId

	Delete a
	From
		[contract].SiteVisitReport a
	Where
		a.Id = @SiteVisitReportId

	Delete a
	From
		[contract].ScheduleList a
	Where
		a.Id = @ScheduleId

End

GO
/****** Object:  StoredProcedure [contract].[RevisitSiteFinal]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[RevisitSiteFinal]
(
	@ContractId bigint,
	@ModifiedBy int,
	@Remarks nvarchar(250)
)
As
Begin

	Delete a
	From
		[contract].[SiteStatus] a
	Where
		a.SiteId = @ContractId and a.StageId = 5 and a.SubStageId in(17, 18)

	Update a
	Set
		a.isEnabled = 1,
		a.isRejected = 1,
		a.Remarks = @Remarks,
		a.RejectedBy = @ModifiedBy,
		a.RejectedOn = GETDATE(),
		a.ModifiedOn = GETDATE()
	From
		[contract].[SiteStatus] a
	Where
		a.SiteId = @ContractId and a.StageId = 5 and a.SubStageId = 16

	Declare @ScheduleId bigint, @SiteVisitReportId bigint

	Select top 1
		@ScheduleId = a.Id
	From
		[contract].ScheduleList a
	Where
		a.ApplicationId = @ContractId
	Order By
		a.CreatedOn desc

	Select
		@SiteVisitReportId = a.Id
	From
		[contract].SiteVisitReport a
	Where
		a.ScheduleId = @ScheduleId and a.SiteInspectionTypeId = 2

	Delete a
	From
		[contract].SiteVisitResources a
	Where
		a.SiteVisitReportId = @SiteVisitReportId

	Delete a
	From
		[contract].SiteVisitAddresses a
	Where
		a.SiteVisitReportId = @SiteVisitReportId

	Delete a
	From
		[contract].SiteVisitReportContacts a
	Where
		a.SiteVisitReportId = @SiteVisitReportId

	Delete a
	From
		[contract].SiteVisitSupplyToDetails a
	Where
		a.SiteVisitReportId = @SiteVisitReportId

	Delete a
	From
		[contract].SiteVisitProjectDetails a
	Where
		a.SiteVisitReportId = @SiteVisitReportId

	Delete a
	From
		[contract].SiteVisitReport a
	Where
		a.Id = @SiteVisitReportId

	Delete a
	From
		[contract].ScheduleList a
	Where
		a.Id = @ScheduleId

End

GO
/****** Object:  StoredProcedure [contract].[UpdateSiteStageId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [contract].[UpdateSiteStageId]
(
	@ContractId bigint,
	@ModifiedBy int,
	@StageId int
)
As
Begin

	Update a
	Set
		a.StageId = @StageId,
		a.ModifiedBy = @ModifiedBy
	From
		[contract].[Site] a
	Where
		a.Id = @ContractId


End


GO
/****** Object:  StoredProcedure [contract].[UpdateSiteStatusAccess]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[UpdateSiteStatusAccess]
(
	@ContractId bigint,
	@SubStageId int,
	@isRejected bit,
	@Remark nvarchar(250),
	@LoggedInUserId int
)
As
Begin
	
	Set @isRejected = ~ @isRejected

	Update a
	Set
		a.isEnabled = Case when @isRejected = 1 then 1 else 0 end,
		a.isRejected = @isRejected,
		a.Remarks = @Remark,
		a.RejectedBy = Case when @isRejected = 1 then @loggedInUserId else null end,
		a.RejectedOn = Case when @isRejected = 1 then getdate() else null end,
		a.ModifiedBy = @loggedInUserId
	From
		[contract].[SiteStatus] a
	Where
		a.SiteId = @ContractId and a.SubStageId = @SubStageId

	Update a
	Set
		a.isActive = Case When @isRejected = 1 then 0 else 1 end
	From
		[contract].[Site] a
	Where
		a.Id = @ContractId 


End
GO
/****** Object:  StoredProcedure [contract].[ValidateAppCrDetails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[ValidateAppCrDetails]
(
	@SiteId bigint = 10210
)
As
Begin

	Declare @IndividualClassificationId smallint = 1, @EstablishmentClassificationId smallint = 2, @PrivateClassificationId smallint = 3
		, @PublicClassificationId smallint = 4, @CompanyClassificationId smallint = 5, @IntlClassificationId smallint = 6, @JvClassificationId smallint = 7

	Declare @isValid bit = 1;

	if exists (select 1 from [contract].SiteCRAnalysis a where a.ClassificationId is null and a.SiteId = @SiteId)
	Begin

		Set @isValid = 0

	End
	else
	Begin

		if exists (select 1 from [contract].SiteCRAnalysis a where a.ClassificationId in (@PrivateClassificationId, @PublicClassificationId
		, @CompanyClassificationId, @IntlClassificationId) and a.SiteId = @SiteId and 
		(a.CR_ID_Number is null or a.CR_ID_Validity is null or a.Name is null or a.NatureId is null))
		Begin

			Set @isValid = 0

		End
		else
		Begin

			if exists (select 1 from [contract].SiteCRAnalysis a where a.ClassificationId in (@IndividualClassificationId, @EstablishmentClassificationId)
				 and a.SiteId = @SiteId and (a.CR_ID_Number is null or a.NationalityId is null or a.CR_ID_Validity is null or a.Name is null or a.NatureId is null))
			Begin
				Set @isValid = 0
			End
			else
			Begin
				if exists (select 1 from [contract].SiteCRAnalysis a where a.ClassificationId in (@JvClassificationId)
					and a.SiteId = @SiteId and (a.Name is null or a.NatureId is null))
				Begin
					Set @isValid = 0
				End
			End
		End

	End

	Select @isValid

End


GO
/****** Object:  StoredProcedure [contract].[VerifyAgendaChanges]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [contract].[VerifyAgendaChanges]
(
	@AgendaId bigint = 22,
	@LoggedInUserId bigint = 5
)
As
Begin

	Declare @ResultTypeId smallint = 1, @PricingCommitteeStageId smallint = 4, @ConfirmationSubStageId smallint = 25, @BankGuranteeSubStageId smallint = 10, @AgendaCompletedActivityId tinyint = 2
	

	Declare @Verified smallint = 39, @RejectedByVerifier smallint = 38, @AgendaVerifiedActivityId smallint = 3

	Declare @tmp table (SiteId bigint, ResultTypeId tinyint, PricingCategoryId tinyint, Remarks nvarchar(100))

	Insert into 
		@tmp (SiteId, ResultTypeId, PricingCategoryId, Remarks)
	Select
		b.SiteId, b.VerifyResultTypeId, b.PricingCategoryId, b.Remarks
	From
		[contract].Agenda a
	Left Join
		[contract].AgendaContracts b
	On
		a.Id = b.AgendaId
	Where
		a.Id = @AgendaId and a.isUpdated = 1 and a.isVerified = 1

	Declare @tmpLog table (LogId bigint)

	Declare @tmpLogId bigint

	--Keep a log of activity at contract level
	Insert into 
		[log].[ActivityLog] (SiteId, ActivityTypeId, CreatedBy)
	output 
		inserted.Id into @tmpLog
	Select
		a.SiteId, Case a.ResultTypeId when 1 then @Verified when 2 then @RejectedByVerifier when 3 then @RejectedByVerifier end, @LoggedInUserId
	From
		@tmp a

	Select
		@tmpLogId = a.LogId
	From
		@tmpLog a

	-- Move ahead approved contracts to bank gurantee

	Update a
	Set
		a.isEnabled = 0
	From
		[contract].SiteStatus a
	Where
		a.SiteId in (select a.SiteId from @tmp a where a.ResultTypeId = 1)

	Insert into 
		[contract].SiteStatus (SiteId, StageId, SubStageId, isEnabled, CreatedBy, ModifiedBy)
	Select
		a.SiteId, @PricingCommitteeStageId, @BankGuranteeSubStageId, 1, @LoggedInUserId, @LoggedInUserId
	From
		@tmp a
	Where
		a.ResultTypeId = 1 -- approved

	Declare @AgendaLogId bigint

	Select
		@AgendaLogId = b.Id
	From
		[contract].Agenda a
	Inner Join
		[log].Agenda_Log b
	On
		a.AgendaName = b.AgendaName and a.MeetingDate = b.MeetingDate

	--Insert into 
	--	[log].AgendaContracts_Log (AgendaId, LogId, AgendaActivity, SiteId, ResultTypeId, PricingCategoryId, Remarks, CreatedBy)
	--Select
	--	@AgendaLogId, @tmpLogId, @AgendaVerifiedActivityId, c.Id, a.ResultTypeId, a.PricingCategoryId, a.Remarks, @LoggedInUserId	
	--From
	--	@tmp a
	--Left Join
	--(
	--	Select
	--		b.Id, b.SiteId, ROW_NUMBER() over (partition by b.SiteId order by b.CreatedOn desc) as CompleteRank
	--	From
	--		[log].[ActivityLog] b
	--	Where
	--		b.ActivityTypeId = 2
	--) b
	--On
	--	a.SiteId = b.SiteId and b.CompleteRank = 1
	--Left Join
	--	[log].Site_Log c
	--On
	--	b.Id = c.LogId
	
End
GO
/****** Object:  StoredProcedure [contract].[VerifySite]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [contract].[VerifySite]
(
	@ContractId bigint,
	@ApproveAppSubmission bit,
	@ApproveCRAnalysis bit,
	@ApproveUploadedDocuments bit,
	@ApproveSiteVisitReport bit,
	@IsRevisit bit,
	@AppSubmissionRemark nvarchar(250),
	@CRAnalysisRemark nvarchar(250),
	@UploadDocumentsRemark nvarchar(250),
	@SiteVisitRemark nvarchar(250),
	@PricingCommitteeRemark nvarchar(250),
	@LoggedInUserId int
)
As
Begin

	Insert into
		Table_2
	values
		(@IsRevisit)

	--Insert into 
	--	[contract].[SiteVerification] (SiteId, ApproveAppSubmission, ApproveCRAnalysis, ApproveUploadedDocuments, ApproveSiteVisitReport
	--	, AppSubmissionRemark, CRAnalysisRemark, UploadDocumentsRemark, SiteVisitReportRemark, PricingCommitteeRemarks, CreatedBy, ModifiedBy)
	--Values
	--	(@ContractId, @ApproveAppSubmission, @ApproveCRAnalysis, @ApproveUploadedDocuments, @ApproveSiteVisitReport
	--	, @AppSubmissionRemark, @CRAnalysisRemark, @UploadDocumentsRemark, @SiteVisitRemark, @PricingCommitteeRemark, @LoggedInUserId, @LoggedInUserId)

	Update a
	Set
		a.ApproveAppSubmission = @ApproveAppSubmission,
		a.ApproveCRAnalysis = @ApproveCRAnalysis,
		a.ApproveUploadedDocuments = @ApproveUploadedDocuments,
		a.ApproveSiteVisitReport = @ApproveSiteVisitReport,
		a.AppSubmissionRemark = @AppSubmissionRemark,
		a.CRAnalysisRemark = @CRAnalysisRemark,
		a.UploadDocumentsRemark = @UploadDocumentsRemark,
		a.SiteVisitReportRemark = @SiteVisitRemark,
		a.PricingCommitteeRemarks = @PricingCommitteeRemark,
		a.ModifiedBy = @LoggedInUserId
	From
		[contract].[SiteVerification] a
	Where
		a.SiteId = @ContractId


	exec [contract].[UpdateSiteStatusAccess] @ContractId, 1, @ApproveAppSubmission, @AppSubmissionRemark, @LoggedInUserId

	exec [contract].[UpdateSiteStatusAccess] @ContractId, 2, @ApproveCRAnalysis, @CRAnalysisRemark, @LoggedInUserId

	exec [contract].[UpdateSiteStatusAccess] @ContractId, 3, @ApproveUploadedDocuments, @UploadDocumentsRemark, @LoggedInUserId

	if (@IsRevisit = 1 and @ApproveSiteVisitReport = 0)
	Begin
		exec [contract].[RevisitSite] @ContractId, @LoggedInUserId, @SiteVisitRemark
	End
	else if (@IsRevisit = 0 and @ApproveSiteVisitReport = 0)
	Begin
		exec [contract].[RejectSiteVisitReport] @ContractId, @LoggedInUserId, @SiteVisitRemark
	End

	exec [contract].[UpdateSiteStatusAccess] @ContractId, 5, @ApproveSiteVisitReport, @SiteVisitRemark, @LoggedInUserId

	Declare @AppApproved smallint = 17, @AppRejected smallint = 18

	if (@ApproveAppSubmission = 1 and @ApproveCRAnalysis = 1 and @ApproveUploadedDocuments = 1 and @ApproveSiteVisitReport = 1)
	Begin

		exec [contract].[CheckAndMoveAhead] @ContractId, @LoggedInUserId

		Insert into
			[log].[ActivityLog] (SiteId, ActivityTypeId, CreatedBy, CreatedOn)
		values
			(@ContractId, @AppApproved, @LoggedInUserId, GETDATE())

						--log part

				Declare @LogId bigint
				Select
					@LogId = SCOPE_IDENTITY()		

					  Insert into 
							[log].[SiteVerification_Log]  (ActivityId,ApproveAppSubmission,ApproveCRAnalysis,ApproveUploadedDocuments,ApproveSiteVisitReport,
							                             AppSubmissionRemark,CRAnalysisRemark,UploadDocumentsRemark,SiteVisitReportRemark,CreatedBy,CreatedOn, PricingCommitteeRemarks)
						Select	
								@LogId,@ApproveAppSubmission,@ApproveCRAnalysis,@ApproveUploadedDocuments,@ApproveSiteVisitReport,
								@AppSubmissionRemark,@CRAnalysisRemark,@UploadDocumentsRemark,@SiteVisitRemark,   @LoggedInUserId, GETDATE(), @PricingCommitteeRemark
						
					 -- end log part

	End
	else
	Begin

		Update a
		Set
			a.isEnabled = 0, 
			a.ModifiedBy = @LoggedInUserId,
			a.ModifiedOn = GETDATE()
		From
			[contract].SiteStatus a
		Where
			a.SiteId = @ContractId and a.StageId = 3 and a.SubStageId = 7

		Update a
		Set
			a.isActive = 0,
			a.ModifiedBy = @LoggedInUserId,
			a.ModifiedOn = getdate()
		From
			[contract].[Site] a
		Where
			a.Id = @ContractId


		Insert into
			[log].[ActivityLog] (SiteId, ActivityTypeId, CreatedBy, CreatedOn)
		values
			(@ContractId, @AppRejected, @LoggedInUserId, GETDATE())


					--log part

				Declare @LogTId bigint
				Select
					@LogTId = SCOPE_IDENTITY()		

					  Insert into 
							[log].[SiteVerification_Log]  (ActivityId,ApproveAppSubmission,ApproveCRAnalysis,ApproveUploadedDocuments,ApproveSiteVisitReport,
							                             AppSubmissionRemark,CRAnalysisRemark,UploadDocumentsRemark,SiteVisitReportRemark,CreatedBy,CreatedOn, PricingCommitteeRemarks)
						Select
								@LogTId,@ApproveAppSubmission,@ApproveCRAnalysis,@ApproveUploadedDocuments,@ApproveSiteVisitReport,
								@AppSubmissionRemark,@CRAnalysisRemark,@UploadDocumentsRemark,@SiteVisitRemark,   @LoggedInUserId, GETDATE() ,@PricingCommitteeRemark
					 -- end log part

	End


End
GO
/****** Object:  StoredProcedure [dashboard].[GetAccounts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dashboard].[GetAccounts]
(
	@AccountStatus tinyint = 1,
	@LoggedInUserId int = 5
)
As
Begin

	Select
		Count(a.Id) as UsersCount, @AccountStatus as Category --a.ID, a.NAME, b.*, c.*
	From
		SitesERP a
	Left Join
		[10.0.68.27].[DMS_WOQOD].[dbo].Kunde d
	On
		a.SITE_NUMBER = d.ObjNr
	Left Join
		[orders].[PortalUserSites] b
	On
		a.ID = b.SiteId
	Left Join
		[orders].[PortalUsers] c
	On
		b.PortalUserId = c.Id
	Where
		a.ClientID in (2, 4, 6) and d.Aktiv = 1
		and ((@AccountStatus = 1 and b.Id is not null and c.Password is not null)
			 or (@AccountStatus = 2 and b.Id is not null and c.Password is null)
			 or (@AccountStatus = 3 and b.Id is null ))

End

GO
/****** Object:  StoredProcedure [dashboard].[GetActualShiftsByDate]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dashboard].[GetActualShiftsByDate]
(
	@StartDate date = '2016-09-23',
	@EndDate date = '2016-09-24',
	@ShiftId tinyint = 0,
	@SectionId tinyint = 1
)
As
Begin

	Declare @ShiftStartTime time, @ShiftEndTime time

	Select
		@ShiftStartTime = a.StartTime, @ShiftEndTime = a.EndTime
	From
		[ordering].[MST_Shift] a
	Where
		a.Id = @ShiftId

	Select
		@ShiftStartTime = Cast(Cast(@StartDate as varchar(10)) + ' ' + CAST(Cast(@ShiftStartTime as time) as varchar(8)) as datetime),
		@ShiftEndTime = Cast(Cast(@EndDate as varchar(10)) + ' ' + CAST(Cast(@ShiftEndTime as time) as varchar(8)) as datetime)

	Select
		a.Id as ActualShiftId
	From
		[ordering].[DET_Shifts] a
	Where
		a.SectionId = @SectionId and a.ShiftDay between @StartDate and @EndDate
		and (@ShiftId = 0 or (CAST(a.StartDate as time) = @ShiftStartTime and CAST(a.EndDate as time) = @ShiftEndTime))

End

GO
/****** Object:  StoredProcedure [dashboard].[GetOrdersByProduct]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dashboard].[GetOrdersByProduct]
(
	@ShiftDateFrom date = '2016-09-26',
	@ShiftDateTo date = '2016-09-26',
	@ShiftId int = 0,
	@ProductId tinyint = 0,
	@LoggedInUserId int = 5
)
As
Begin
	
	Declare @tmp table (ActualShiftId int)

	Declare @SectionId tinyint = 1, @ActualShiftId int, @ShiftStartTime datetime, @ShiftEndTime datetime -- supply
	
	Insert into 
		@tmp (ActualShiftId)
	exec [dashboard].[GetActualShiftsByDate] @ShiftDateFrom, @ShiftDateTo, @ShiftId, @SectionId

	Declare @tmpLomo table (ProductId tinyint, Product varchar(50), DeliveredOrders int, PortalQuantity int, LomoQuantity int, DeliveredQuantity int)

	Declare @tmpLomoWithout table (ProductId tinyint, Product varchar(50), DeliveredOrders int, DeliveredQuantity int)

	Insert into 
		@tmpLomo (ProductId, Product, DeliveredOrders, PortalQuantity, LomoQuantity, DeliveredQuantity)
	Select
		a.ProductId, e.ERPName as Product, isnull(COUNT(*) , 0) as DeliveredOrders
		, isnull(sum(a.Quantity), 0) as PortalQuantity, isnull(sum(c.Dispomenge), 0) as LomoQuantity, isnull(sum(c.Liefermenge), 0) as DeliveredQuantity
	From
		[ordering].[MST_DMS_Order] a
	Inner Join
		[10.0.68.27].[DMS_WOQOD].[dbo].Auftrag b
	On
		a.LomoOrderId = b.ID
	Inner Join
		[10.0.68.27].[DMS_WOQOD].[dbo].Auftragspositionen c
	On
		b.ID = c.Auftrag_ID
	Inner Join
		[10.0.68.27].[DMS_WOQOD].[dbo].Tour d
	On
		b.Tour_Id = d.ID
	Inner Join
		[ordering].[MST_Products] e
	On
		a.ProductId = e.Id
	Where
		a.isActive = 1 and c.Liefermenge <> 0 and a.ShiftId in (select a.ActualShiftId from @tmp a)
	Group By
		a.ProductId, e.ERPName 

	Insert into 
		@tmpLomoWithout (ProductId, Product, DeliveredOrders, DeliveredQuantity)
	Select
		e.Id, e.ERPName
		, Count(*) as NoOfOrders
		, sum(b.Liefermenge) as DeliveredQuantity
	From
		[10.0.68.27].[DMS_WOQOD].[dbo].Auftrag a
	Inner Join
		[10.0.68.27].[DMS_WOQOD].[dbo].Auftragspositionen b
	On
		a.ID = b.Auftrag_ID
	Inner Join
		[10.0.68.27].[DMS_WOQOD].[dbo].Tour c
	On
		a.Tour_Id = c.ID
	Inner Join
		[10.0.68.27].[DMS_WOQOD].[dbo].Kunde d
	On
		a.Kunden_Id = d.Id
	Inner Join
		[ordering].[MST_Products] e
	On
		b.Produkt_Id = e.LomoProductId
	Where
		Cast(c.Ladeende as date) between @ShiftDateFrom and @ShiftDateTo and b.Liefermenge <> 0 and d.Auftraggeber_ID in (2, 4, 6)
		and a.ID not in (
							Select
								a.LomoOrderId
							From
								[ordering].[MST_DMS_Order] a
							Inner Join
								[ordering].[DET_Shifts] b
							On
								a.ShiftId = b.Id
							Where
								b.ShiftDay between @ShiftDateFrom and @ShiftDateTo
						) 
	Group By
		e.Id, e.ERPName


	Select
		a.ProductId, a.Product, isnull(a.PlacedOrders, 0) as PlacedOrders, isnull(a.PlacedOrdersQty, 0) as PlacedOrdersQty
		, isnull(b.DeliveredOrders, 0) as DeliveredOrders, isnull(b.PortalQuantity, 0) as PortalQuantity, isnull(b.LomoQuantity, 0) as LomoQuantity
		, isnull(b.DeliveredQuantity, 0) as DeliveredQuantity
		, isnull(c.DeliveredOrders, 0) as WithoutWebDeliveredOrders, isnull(c.DeliveredQuantity, 0) as WithoutWebDeliveredQuantity
	From
	(
		Select
			a.ProductId, c.ERPName as Product, SUM(a.NoOfLoad) as PlacedOrders, SUM(a.Quantity) as PlacedOrdersQty
		From
			[ordering].[OrderPlanning] a
		Inner Join
			[ordering].[DET_Shifts] b
		On
			a.ShiftId = b.Id
		Inner Join
			[ordering].[MST_Products] c
		On
			a.ProductId = c.Id
		Where
			a.ShiftId in (select a.ActualShiftId from @tmp a) 
			and (@ProductId = 0 or a.ProductId = @ProductId) --and a.NoOfLoad <> 0
		Group By
			a.ProductId, c.ERPName
	) a
	Left Join
		@tmpLomo b
	On
		a.ProductId = b.ProductId
	Left Join
		@tmpLomoWithout c
	On
		a.ProductId = c.ProductId
End

GO
/****** Object:  StoredProcedure [dashboard].[GetOrderTrend]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dashboard].[GetOrderTrend]
(
	@ShiftDateFrom date = '2016-09-28',
	@ShiftDateTo date = '2016-09-28',
	@ShiftId int = 0,
	@ProductId tinyint = 0,
	@LoggedInUserId int = 5
)
As
Begin
	
	Declare @tmp table (ActualShiftId int)

	Declare @SectionId tinyint = 1, @ActualShiftId int, @ShiftStartTime datetime, @ShiftEndTime datetime -- supply
	
	Insert into 
		@tmp (ActualShiftId)
	exec [dashboard].[GetActualShiftsByDate] @ShiftDateFrom, @ShiftDateTo, @ShiftId, @SectionId

	Declare @TotalNoOfLoad int, @TotalQuantity int

	Select
		@TotalNoOfLoad = SUM(a.NoOfLoad), @TotalQuantity = SUM(a.Quantity)
	From
		[ordering].[OrderPlanning] a
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id
	Where
		a.ShiftId in (select a.ActualShiftId from @tmp a) 
		and (@ProductId = 0 or a.ProductId = @ProductId) and a.NoOfLoad <> 0

	Select
		a.LomoOrderId, a.LoadedOn, a.SentOn, SUM(a.DeliveredQuantity) over (order by a.LoadedOn rows between unbounded preceding and current row) as OrderedQty 
		, Sum(a.NoOfLoad) over (Order by a.LoadedOn rows between unbounded preceding and current row) as OrderCount, a.LoadedHour, a.LoadedDay, a.LoadedMonth
	From
	(
		Select
			a.LomoOrderId, d.Beginn as SentOn, 1 as NoOfLoad, d.Ladeende as LoadedOn--, e.Ladeende as LoadedOn_New
			, a.Quantity as PortalQuantity, c.Dispomenge as LomoQuantity, c.Liefermenge as DeliveredQuantity
			,@TotalNoOfLoad as TotalOrders, @TotalQuantity as TotalQuantity
			, DATEPART(hour, d.Ladeende) as LoadedHour
			, DATEPART(Day, d.Ladeende) as LoadedDay, DATEPART(MONTH, d.Ladeende) as LoadedMonth
		From
			[ordering].[MST_DMS_Order] a
		Inner Join
			[10.0.68.27].[DMS_WOQOD].[dbo].Auftrag b
		On
			a.LomoOrderId = b.ID
		Inner Join
			[10.0.68.27].[DMS_WOQOD].[dbo].Auftragspositionen c
		On
			b.ID = c.Auftrag_ID
		Inner Join
			[10.0.68.27].[DMS_WOQOD].[dbo].Tour d
		On
			b.Tour_Id = d.ID
		Where
			a.isActive = 1 and c.Liefermenge <> 0 and a.ShiftId in (select a.ActualShiftId from @tmp a)
	) a
	Where
		a.LoadedOn <= GETDATE() 
	Order By
		a.LoadedOn

End

GO
/****** Object:  StoredProcedure [dashboard].[GetTotalOrdersByShift]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dashboard].[GetTotalOrdersByShift]
(
	@ShiftDateFrom date = '2016-09-21',
	@ShiftDateTo date = '2016-09-21',
	@ProductId tinyint = 0,
	@LoggedInUserId int = 5
)
As
Begin
	
	Declare @tmp table (ActualShiftId int)

	Declare @SectionId tinyint = 1, @ActualShiftId int, @ShiftStartTime datetime, @ShiftEndTime datetime -- supply
	
	Insert into 
		@tmp (ActualShiftId)
	exec [dashboard].[GetActualShiftsByDate] @ShiftDateFrom, @ShiftDateTo, 0, @SectionId

	Select
		b.ShiftName, isnull(sum(a.NoOfLoad), 0) as NoOfOrders, isnull(sum(a.Quantity), 0) as TotalOrderedQuantity 
	From
		[ordering].[OrderPlanning] a
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id
	Where
		a.ShiftId in (select a.ActualShiftId from @tmp a)
		and (@ProductId = 0 or a.ProductId = @ProductId) and a.NoOfLoad <> 0
	Group By
		b.ShiftName

End

GO
/****** Object:  StoredProcedure [dashboard].[GetTotalOrdersDeleted]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dashboard].[GetTotalOrdersDeleted]
(
	@ShiftDateFrom date = '2016-09-23',
	@ShiftDateTo date = '2016-09-23',
	@ShiftId int = 0,
	@ProductId tinyint = 0,
	@LoggedInUserId int = 5
)
As
Begin
	
	Declare @tmp table (ActualShiftId int)

	Declare @SectionId tinyint = 1, @ActualShiftId int, @ShiftStartTime datetime, @ShiftEndTime datetime -- supply
	
	Insert into 
		@tmp (ActualShiftId)
	exec [dashboard].[GetActualShiftsByDate] @ShiftDateFrom, @ShiftDateTo, @ShiftId, @SectionId

	--Select
	--	isnull(sum(a.NoOfLoad), 0) as NoOfOrders, isnull(sum(a.Quantity), 0) as TotalOrderedQuantity 
	--From
	--	[ordering].[OrderPlanning] a
	--Inner Join
	--	[ordering].[DET_Shifts] b
	--On
	--	a.ShiftId = b.Id
	--Where
	--	a.ShiftId in (select a.ActualShiftId from @tmp a)
	--	and (@ProductId = 0 or a.ProductId = @ProductId) and a.NoOfLoad <> 0

	Select
		isnull(Count (a.LomoOrderId), 0) as TotalOrders, isnull(Sum(a.Quantity), 0) as OrderedQuantity, isnull(SUM(b.Quantity), 0) as DeliveredQuantity 
	From
		[ordering].[MST_DMS_Order] a
	Inner Join
		[10.0.68.27].[DMS_WOQOD].[dbo].[vw_LomoDeletedOrders] b
	On
		a.LomoOrderId = b.OrderId
	Where
		a.isActive = 1 and a.ShiftId in (select a.ActualShiftId from @tmp a) and (@ProductId = 0 or a.ProductId = @ProductId)

End

GO
/****** Object:  StoredProcedure [dashboard].[GetTotalOrdersDelivered]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dashboard].[GetTotalOrdersDelivered]
(
	@ShiftDateFrom date = '2016-09-21',
	@ShiftDateTo date = '2016-09-21',
	@ShiftId int = 0,
	@ProductId tinyint = 0,
	@LoggedInUserId int = 5
)
As
Begin
	
	Declare @tmp table (ActualShiftId int)

	Declare @SectionId tinyint = 1, @ActualShiftId int, @ShiftStartTime datetime, @ShiftEndTime datetime -- supply
	
	Insert into 
		@tmp (ActualShiftId)
	exec [dashboard].[GetActualShiftsByDate] @ShiftDateFrom, @ShiftDateTo, @ShiftId, @SectionId

	Select
		Count (a.LomoOrderId) as TotalOrders, Sum(a.Quantity) as OrderedQuantity, SUM(b.Quantity) as DeliveredQuantity 
	From
		[ordering].[MST_DMS_Order] a
	Inner Join
		[10.0.68.27].[DMS_WOQOD].[dbo].[vw_LomoOrders] b
	On
		a.LomoOrderId = b.OrderId
	Where
		a.isActive = 1 and a.ShiftId in (select a.ActualShiftId from @tmp a)

End

GO
/****** Object:  StoredProcedure [dashboard].[GetTotalOrdersReceived]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dashboard].[GetTotalOrdersReceived]
(
	@ShiftDateFrom date = '2016-09-21',
	@ShiftDateTo date = '2016-09-22',
	@ShiftId int = 0,
	@ProductId tinyint = 0,
	@LoggedInUserId int = 5
)
As
Begin
	
	Declare @tmp table (ActualShiftId int)

	Declare @SectionId tinyint = 1, @ActualShiftId int, @ShiftStartTime datetime, @ShiftEndTime datetime -- supply
	
	Insert into 
		@tmp (ActualShiftId)
	exec [dashboard].[GetActualShiftsByDate] @ShiftDateFrom, @ShiftDateTo, @ShiftId, @SectionId

	Select
		isnull(sum(a.NoOfLoad), 0) as NoOfOrders, isnull(sum(a.Quantity), 0) as TotalOrderedQuantity 
	From
		[ordering].[OrderPlanning] a
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id
	Where
		a.ShiftId in (select a.ActualShiftId from @tmp a) 
		and (@ProductId = 0 or a.ProductId = @ProductId) and a.NoOfLoad <> 0

End

GO
/****** Object:  StoredProcedure [dashboard].[GetTotalOrdersReceivedVsDelivered]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dashboard].[GetTotalOrdersReceivedVsDelivered]
(
	@ShiftDateFrom date = '2016-09-21',
	@ShiftDateTo date = '2016-09-22',
	@ShiftId int = 0,
	@ProductId tinyint = 0,
	@LoggedInUserId int = 5
)
As
Begin
	
	Declare @tmp table (ActualShiftId int)

	Declare @SectionId tinyint = 1, @ActualShiftId int, @ShiftStartTime datetime, @ShiftEndTime datetime -- supply
	
	Insert into 
		@tmp (ActualShiftId)
	exec [dashboard].[GetActualShiftsByDate] @ShiftDateFrom, @ShiftDateTo, @ShiftId, @SectionId

	Declare @PlacedOrders int, @PlacedOrdersQty int, @DeliveredOrders int, @DeliveredOrdersQty int, @DeliveredOrdersQtyLomo int

	Select
		@PlacedOrders = isnull(sum(a.NoOfLoad), 0), @PlacedOrdersQty = isnull(sum(a.Quantity), 0)
	From
		[ordering].[OrderPlanning] a
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id
	Where
		a.ShiftId in (select a.ActualShiftId from @tmp a) 
		and (@ProductId = 0 or a.ProductId = @ProductId) and a.NoOfLoad <> 0

	Select
		@DeliveredOrders = Count (a.LomoOrderId), @DeliveredOrdersQty = Sum(a.Quantity), @DeliveredOrdersQtyLomo = SUM(b.Quantity)
	From
		[ordering].[MST_DMS_Order] a
	Inner Join
		[10.0.68.27].[DMS_WOQOD].[dbo].[vw_LomoOrders] b
	On
		a.LomoOrderId = b.OrderId
	Where
		a.isActive = 1 and a.ShiftId in (select a.ActualShiftId from @tmp a)

	Select
		isnull(@PlacedOrders, 0) as PlacedOrders, isnull(@PlacedOrdersQty, 0) as PlacedOrdersQty
		, isnull(@DeliveredOrders, 0) as DeliveredOrders, isnull(@DeliveredOrdersQty, 0) as DeliveredOrdersQty, isnull(@DeliveredOrdersQtyLomo, 0) as DeliveredOrdersQtyLomo


End

GO
/****** Object:  StoredProcedure [dashboard].[GetUsersCount]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dashboard].[GetUsersCount]
(
	@LoggedInUserId int
)
As
Begin

	Declare @ActiveAccountStatus tinyint = 1, @NotActiveAccountStatus tinyint = 2, @NotRegisteredAccountStatus tinyint = 3 

	Declare @tmp table(UsersCount int, Category tinyint)
	Insert into 
		@tmp (UsersCount, Category)
	exec [dashboard].GetAccounts @ActiveAccountStatus, @LoggedInUserId

	Declare @ActiveUsers smallint, @NotActiveUsers smallint, @NotRegisteredUsers smallint

	Select
		@ActiveUsers = a.UsersCount
	From
		@tmp a

	Delete From @tmp
	Insert into 
		@tmp (UsersCount, Category)
	exec [dashboard].GetAccounts @NotActiveAccountStatus, @LoggedInUserId

	Select
		@NotActiveUsers = a.UsersCount
	From
		@tmp a

	Delete From @tmp
	Insert into 
		@tmp (UsersCount, Category)
	exec [dashboard].GetAccounts @NotRegisteredAccountStatus, @LoggedInUserId

	Select
		@NotRegisteredUsers = a.UsersCount
	From
		@tmp a

	Select @ActiveUsers as ActiveUsers, @NotActiveUsers as NonActiveUsers, @NotRegisteredUsers as NotRegisteredUsers

End

GO
/****** Object:  StoredProcedure [dbo].[AddFileByParentId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddFileByParentId]
(
	@ResourceId uniqueidentifier,
	@UserHierarchyId hierarchyid,
	@FileExtension varchar(5),
	@FileData varbinary(max)
)
As
Begin

	Insert into dbo.DocumentStore
		(stream_id, name, path_locator, file_stream)
	Select
		@ResourceId, CONCAT(@ResourceId, @FileExtension), dbo.AppendParentPath(@UserHierarchyId), @FileData

End
GO
/****** Object:  StoredProcedure [dbo].[CategoriesSelectByRange]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[CategoriesSelectByRange]
	@startIndex int,
	@endIndex int
AS

	WITH CategoriesSubSet AS
	(SELECT ROW_NUMBER() OVER(ORDER BY [CategoryID]) AS rowIndex,
		[CategoryID],
		[CategoryName],
		[Description],
		[Picture]
	FROM [dbo].[Categories])
	SELECT 	[CategoryID],
		[CategoryName],
		[Description],
		[Picture]
	FROM CategoriesSubSet
	WHERE rowIndex >= @startIndex AND rowIndex <= @endIndex


GO
/****** Object:  StoredProcedure [dbo].[CreateDirectory]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[CreateDirectory]
As
Begin

	DECLARE @FirstSeqNum sql_variant,
            @LastSeqNum  sql_variant
 
     EXEC sys.sp_sequence_get_range
     @sequence_name = N'dbo.NewID'
   , @range_size = 1
   , @range_first_value = @FirstSeqNum OUTPUT
   , @range_last_value = @LastSeqNum OUTPUT

	Declare @MainFolderId HIERARCHYID
	Declare @SubDirectoryPath varchar(max)

	SELECT @SubDirectoryPath = CONCAT('/', CONVERT(VARCHAR(20),@FirstSeqNum) ,'.',
    CONVERT(VARCHAR(20),Convert(BIGINT,@FirstSeqNum)) ,'.',
    CONVERT(VARCHAR(20),@LastSeqNum) ,'/')
	
	INSERT INTO dbo.DocumentStore(name,path_locator,is_directory,is_archive)
	output inserted.path_locator
	VALUES (Cast(@FirstSeqNum as nvarchar(max)), @SubDirectoryPath, 1, 0)

End
GO
/****** Object:  StoredProcedure [dbo].[DeleteAllCrResources]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[DeleteAllCrResources]
(
	@CrId bigint
)
As
Begin

	Delete a
	From
		[contract].CrResources a
	Inner Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.CrNodeId = @CrId

End



GO
/****** Object:  StoredProcedure [dbo].[DeleteDirectory]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[DeleteDirectory]
(
	@PathLocator hierarchyId
)
As
Begin

	Delete a 
	From
		DocumentStore a
	Where
		a.path_locator = @PathLocator


End
GO
/****** Object:  StoredProcedure [dbo].[DeleteResource]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[DeleteResource]
(
	@ResourceId uniqueidentifier
)
As
Begin
	
	Delete a
	From
		DocumentStore a
	Where
		a.stream_id = @ResourceId

End
GO
/****** Object:  StoredProcedure [dbo].[GetBankGuranteeContractFilesBySiteId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetBankGuranteeContractFilesBySiteId]
(
	@SiteId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
		, a.Remarks, a.FileExtension
	From
		[contract].BGContractDocs a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.SiteId = @SiteId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [dbo].[GetBankGuranteeFilesByActivityId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetBankGuranteeFilesByActivityId]
(
	@ActivityId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
		, a.Remarks, a.FileExtension
	From
		[log].BankGuranteeDocuments_Log a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.ActivityId = @ActivityId 


End
GO
/****** Object:  StoredProcedure [dbo].[GetBankGuranteeFilesBySiteId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetBankGuranteeFilesBySiteId]
(
	@SiteId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
		, a.Remarks, a.FileExtension
	From
		[contract].BankGuranteeDocuments a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.SiteId = @SiteId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [dbo].[GetFileByStreamId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFileByStreamId]
(
	@streamId uniqueidentifier
)
As
Begin

	Select
		a.file_stream as FileData
	From
		DocumentStore a
	WITH (Readcommittedlock)
	Where
		a.stream_id = @streamId


End
GO
/****** Object:  StoredProcedure [dbo].[GetFileByStreamId_V1]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFileByStreamId_V1]
(
	@streamId uniqueidentifier
)
As
Begin

	Select
		a.file_stream as FileData, a.file_type as FileExtension
	From
		DocumentStore a
	WITH (Readcommittedlock)
	Where
		a.stream_id = @streamId


End
GO
/****** Object:  StoredProcedure [dbo].[GetFilesByApprovedLvId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFilesByApprovedLvId]
(
	@LvApprovedContractId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
		, a.FileExtension
	From
		[lv].LVLeaseDocuments a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.LvApprovedContractId = @LvApprovedContractId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [dbo].[GetFilesByCrId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFilesByCrId]
(
	@CrId bigint
)
As
Begin

	Select
		b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
	From
		[contract].CrResources a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.CrNodeId = @CrId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [dbo].[GetFilesByJobCardId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFilesByJobCardId]
(
	@JobCardId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
		, a.FileExtension
	From
		[tank].JobCardResources a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.JobCardId = @JobCardId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [dbo].[GetFilesByLvContractId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetFilesByLvContractId]
(
	@LvContractId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName, a.LvAttachmentChecklistId, c.OtherAttachmentType as Category
		, a.Remarks, a.FileExtension
	From
		[lv].LvDocuments a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Left Join
		[lv].LvAttachment c
	On
		a.LvAttachmentChecklistId = c.Id
	Left Join
		[lv].LvAttachment d
	On
		c.AttachmentId = d.Id
	Where
		a.LvContractId = @LvContractId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [dbo].[GetFilesByLvId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFilesByLvId]
(
	@LvId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
		, a.FileExtension
	From
		[lv].LeasedVehicleDocuments a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.LvId = @LvId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [dbo].[GetFilesBySiteId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFilesBySiteId]
(
	@SiteId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName, a.SiteAttachmentChecklistId, c.OtherAttachmentType as Category
		, a.Remarks, a.FileExtension
	From
		[contract].SiteDocuments a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Left Join
		[contract].SiteAttachmentCheckList c
	On
		a.SiteAttachmentChecklistId = c.Id
	Left Join
		[contract].AtachmentCheckList d
	On
		c.AttachmentId = d.Id
	Where
		a.SiteId = @SiteId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [dbo].[GetFilesBySiteId_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFilesBySiteId_Log]
(
	@SiteId bigint = 10796
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName, a.SiteAttachmentChecklist, a.SiteAttachmentChecklist as Category
		, a.Remarks, a.FileExtension
	From
		[log].SiteDocuments_Log a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.LogId = @SiteId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [dbo].[GetFilesBySiteIdDocumentTypeId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFilesBySiteIdDocumentTypeId]
(
	@SiteId bigint,
	@DocumentTypeId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName, d.Id as DocumentTypeId, c.OtherAttachmentType as Category
		, a.Remarks, a.FileExtension
	From
		[contract].SiteDocuments a
	Inner Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Inner Join
		[contract].SiteAttachmentCheckList c
	On
		a.SiteAttachmentChecklistId = c.Id
	Inner Join
		[contract].AtachmentCheckList d
	On
		c.AttachmentId = d.Id
	Where
		a.SiteId = @SiteId and a.isDeleted = 0
		and d.Id = @DocumentTypeId 

End
GO
/****** Object:  StoredProcedure [dbo].[GetFilesBySiteIdDocumentTypeId_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFilesBySiteIdDocumentTypeId_Log]
(
	@SiteId bigint,
	@DocumentTypeId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName, d.Id as DocumentTypeId, c.OtherAttachmentType as Category
		, a.Remarks, a.FileExtension
	From
		[log].SiteDocuments_Log a
	Inner Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Inner Join
		[log].SiteAttachmentCheckList_Log c
	On
		a.SiteAttachmentChecklistId = c.Id
	Inner Join
		[contract].AtachmentCheckList d
	On
		c.AttachmentId = d.Id
	Where
		a.LogId = @SiteId and a.isDeleted = 0
		and d.Id = @DocumentTypeId 

End
GO
/****** Object:  StoredProcedure [dbo].[GetFilesBySiteIdForAccountOpening]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetFilesBySiteIdForAccountOpening]
(
	@SiteId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName, a.SiteAttachmentChecklistId, c.OtherAttachmentType as Category
		, a.Remarks, a.FileExtension
	From
		[contract].AccountOpeningResources e
	Inner Join
		[contract].SiteDocuments a
	On
		e.ResourceId = a.ResourceId
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Left Join
		[contract].SiteAttachmentCheckList c
	On
		a.SiteAttachmentChecklistId = c.Id
	Left Join
		[contract].AtachmentCheckList d
	On
		c.AttachmentId = d.Id
	Where
		a.SiteId = @SiteId


End
GO
/****** Object:  StoredProcedure [dbo].[GetFilesByStickerInventoryId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetFilesByStickerInventoryId]
(
	@StickerInventoryId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
		, a.FileExtension
	From
		[sticker].StickerResources a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.StickerInventoryId = @StickerInventoryId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [dbo].[GetFinalInsConfFilesBySiteId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetFinalInsConfFilesBySiteId]
(
	@SiteId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
		, a.Remarks, a.FileExtension
	From
		[contract].FinInsConfDoc a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.SiteId = @SiteId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [dbo].[GetMenusByUserId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetMenusByUserId]
(
	@UserId int = 5
)
As
Begin

	;with mycte
	as
	(
		Select
			a.ModuleId, b.Description, b.Controller, b.Action, b.ParentId, b.icon, b.Prefix, b.OrderId, b.SubOrderId, b.isVisible
		From
			UserRoleModules a
		Inner Join
			Module b
		On
			a.ModuleId = b.Id
		Where
			a.UserId = @UserId and b.isVisible = 1

		union all

		Select
			a.Id, a.Description, a.Controller, a.Action, a.ParentId, a.icon, a.Prefix, a.OrderId, b.SubOrderId, a.isVisible
		From
			Module a
		Inner Join
			mycte b
		On
			a.Id = b.ParentId

	)	
	Select
		*
	From
		mycte a
	Order By
		a.OrderId, a.SubOrderId 
		
End

GO
/****** Object:  StoredProcedure [dbo].[GetMenusByUserIdV1]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetMenusByUserIdV1]
(
	@UserId int = 5
)
As
Begin

	;with mycte
	as
	(
		Select
			a.ModuleId, b.Description, b.Controller, b.Action, b.ParentId, b.icon as Icon, b.Prefix, b.OrderId, b.SubOrderId, b.isVisible
		From
			UserRoleModules a
		Inner Join
			Module b
		On
			a.ModuleId = b.Id
		Where
			a.UserId = @UserId and b.isVisible = 1

		union all

		Select
			a.Id, a.Description, a.Controller, a.Action, a.ParentId, a.icon as Icon, a.Prefix, a.OrderId, b.SubOrderId, a.isVisible
		From
			Module a
		Inner Join
			mycte b
		On
			a.Id = b.ParentId

	)	
	Select
		*
	From
		mycte a
	Order By
		a.OrderId, a.SubOrderId 
		
End

GO
/****** Object:  StoredProcedure [dbo].[GetProductList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetProductList]
(
	@SiteId int = 6331
)
As
Begin

	Select
		a.Id, a.ERPName as Name, Cast(Case when b.Id is null then 0 else 1 end as bit) as selected
	From
		[ordering].[MST_Products] a
	Left Join
		[supply].[DET_Site_Products] b
	On
		a.Id = b.ProductId and b.SiteId = @SiteId
	Where
		a.isActive = 1

End
GO
/****** Object:  StoredProcedure [dbo].[GetRolesByUserId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetRolesByUserId]
(
	@UserId int = 5
)
As
Begin
	
	Select
		a.Id, b.ActionId, c.Id as ModuleId, c.Prefix
		, d.Description as ActDesc, d.Prefix as ActPrefix
	From
		UserRoleModules a
	Inner Join
		UserAction b
	On
		a.Id = b.URMId
	Inner Join
		Module c
	On
		a.ModuleId = c.Id
	Inner Join
		Action d
	On
		b.ActionId = d.Id
	Where
		a.UserId = @UserId
	
End
GO
/****** Object:  StoredProcedure [dbo].[GetRolesByUserIdV1]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetRolesByUserIdV1]
(
	@UserId int = 5
)
As
Begin
	
	Select
		a.Id, c.Prefix as ModuleId, d.Prefix as ActionId, c.Prefix as ModulePrefix, d.Prefix as ActionPrefix
		, d.Description as ActDesc, d.Prefix as ActPrefix
	From
		UserRoleModules a
	Inner Join
		UserAction b
	On
		a.Id = b.URMId
	Inner Join
		Module c
	On
		a.ModuleId = c.Id
	Inner Join
		Action d
	On
		b.ActionId = d.Id
	Where
		a.UserId = @UserId
	
End
GO
/****** Object:  StoredProcedure [dbo].[GetSiteVisitReportFilesById]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[GetSiteVisitReportFilesById]
(
	@SiteVisitReportId bigint
)
As
Begin

	Select
		b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
	From
		[contract].SiteVisitResources a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.SiteVisitReportId = @SiteVisitReportId and a.isDeleted = 0


End

GO
/****** Object:  StoredProcedure [dbo].[GetSiteVisitReportFilesById_Log]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [dbo].[GetSiteVisitReportFilesById_Log] 23
CREATE Procedure [dbo].[GetSiteVisitReportFilesById_Log]
(
	@SiteVisitReportId bigint
)
As
Begin

	Select
		b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
	From
		[log].SiteVisitResources_Log a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.SiteVisitReportId = @SiteVisitReportId and a.isDeleted = 0


End

GO
/****** Object:  StoredProcedure [dbo].[GetTankConfFilesBySiteId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetTankConfFilesBySiteId]
(
	@SiteId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
		, a.Remarks, a.FileExtension
	From
		[contract].TankConfDocuments a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.SiteId = @SiteId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [dbo].[TempInsert]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[TempInsert]
As
Begin

	WAITFOR DELAY '00:00:10';

	Insert into Table_3 
	values (GETDATE())

End
GO
/****** Object:  StoredProcedure [Fleet].[AddFSCDocument]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [Fleet].[AddFSCDocument]
(
	@FRID int,
	@ResourceId uniqueidentifier,
	@FileName nvarchar(100),
	@FileExtension varchar(5),
	@Remarks nvarchar(100) = null,
	@LoggedInUserId int
)
As
Begin
	
	Insert into
		[fleet].[DET_FleetServiceRequest_Resources] (FleetRequestId, ResourceId, FileName, FileExtension, Remarks, isDeleted, CreatedBy, ModifiedBy)
	Values
		(@FRID, @ResourceId, @FileName, @FileExtension, @Remarks, 0, @LoggedInUSerId, @LoggedInUserId)

	Select CAST(1 as bit) as result

End
GO
/****** Object:  StoredProcedure [Fleet].[ChangeRequestStatus]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [Fleet].[ChangeRequestStatus]
(
	@FrId int,
	@FSCStatus varchar(10),
	@ServiceCenterComment nvarchar(250) = null,
	@LoggedInUserId int
)
As
Begin

	Declare @SubmittedStatusId smallint, @InProgressStatusId smallint, @CompletedStatusId smallint
	Select
		@SubmittedStatusId = a.Id
	From
		[dbo].[MST_LookupsValues] a
	Where
		a.Prefix = 'FSCSUB'

	Select
		@InProgressStatusId = a.Id
	From
		[dbo].[MST_LookupsValues] a
	Where
		a.Prefix = 'FSCINPRO'

	Select
		@CompletedStatusId = a.Id
	From
		[dbo].[MST_LookupsValues] a
	Where
		a.Prefix = 'FSCCOMP'

	Declare @OperationalStatusId smallint, @AvailableStatusId smallint, @MaintenanceStatusId smallint, @CancelledStatusId smallint 

	Select
		@OperationalStatusId = a.Id
	From
		[dbo].[MST_LookupsValues] a
	Where
		a.Prefix = 'OPR'

	Select
		@AvailableStatusId = a.Id
	From
		[dbo].[MST_LookupsValues] a
	Where
		a.Prefix = 'AVAIL'

	Select
		@MaintenanceStatusId = a.Id
	From
		[dbo].[MST_LookupsValues] a
	Where
		a.Prefix = 'Maintenance'

	Select
		@CancelledStatusId = a.Id
	From
		[dbo].[MST_LookupsValues] a
	Where
		a.Prefix = 'Cancelled'

	Declare @RequiredAction varchar(20), @FleetId int, @AssignedFleetId int, @NewFleetId int, @FSRStatus varchar(20)

	Select
		@RequiredAction = b.Prefix, @FleetId = a.FleetId, @FSRStatus = c.Prefix, @AssignedFleetId = a.AssignedFleetId, @NewFleetId = a.NewFleetId
	From
		[Fleet].[MST_Fleet_ServiceRequests] a
	Inner Join
		[dbo].[MST_LookupsValues] b
	On
		a.RequiredActionId = b.Id
	Inner Join
		[dbo].[MST_LookupsValues] c
	On
		a.FSCStatusId = c.Id
	Where
		a.Id = @FrId

	if (@FSCStatus = 'FSCINPRO' and @FSRStatus = 'FSCSUB')
	Begin

		if (@RequiredAction = 'CC') -- Change Combination
		Begin

			Update a
			Set
				a.Status = @MaintenanceStatusId,
				a.ModifiedBy = @LoggedInUserId,
				a.ModifiedOn = GETDATE()
			From
				[Fleet].[MST_Fleet] a
			Where
				a.Id in (select a.ParentId from [Fleet].[MST_Fleet] a where a.Id = @NewFleetId) 

		End

		Update a
		Set
			a.Status = @MaintenanceStatusId,
			a.ModifiedBy = @LoggedInUserId,
			a.ModifiedOn = GETDATE()
		From
			[Fleet].[MST_Fleet] a
		Where
			a.Id in (@FleetId, @AssignedFleetId, @NewFleetId)

		Update a
		Set
			a.FSCStatusId = @InProgressStatusId,
			a.FSCComments = @ServiceCenterComment,
			a.FSCDate = GETDATE(),
			a.ModifiedBy = @LoggedInUserId,
			a.ModifiedOn = GETDATE()
		From
			[Fleet].[MST_Fleet_ServiceRequests] a
		Where
			a.Id = @FrId
			
		Insert into
			[Fleet].[LOG_Fleet_ServiceRequests] (FrId, StatusId, Comment, CreatedBy)
		Values
			(@FrId, @InProgressStatusId, @ServiceCenterComment, @LoggedInUserId)

		Select Cast(1 as bit) as result
		

	End
	else if (@FSCStatus = 'FSCCOMP' and @FSRStatus = 'FSCINPRO')
	Begin

		if (@RequiredAction = 'CC') -- Change Combination
		Begin

			Update a
			Set
				a.Status = @AvailableStatusId,
				a.ModifiedBy = @LoggedInUserId,
				a.ModifiedOn = GETDATE()
			From
				[Fleet].[MST_Fleet] a
			Where
				a.Id in (select a.ParentId from [Fleet].[MST_Fleet] a where a.Id = @NewFleetId)

			Update a
			Set
				a.ParentId = @FleetId,
				a.Status = @OperationalStatusId,
				a.ModifiedBy = @LoggedInUserId,
				a.ModifiedOn = GETDATE()
			From
				[Fleet].[MST_Fleet] a
			Where
				a.Id = @NewFleetId

			Update a
			Set
				a.Status = @OperationalStatusId,
				a.ModifiedBy = @LoggedInUserId,
				a.ModifiedOn = GETDATE()
			From
				[Fleet].[MST_Fleet] a
			Where
				a.Id = @FleetId

			Update a
			Set
				a.ParentId = null,
				a.Status = @AvailableStatusId,
				a.ModifiedBy = @LoggedInUserId,
				a.ModifiedOn = GETDATE()
			From
				[Fleet].[MST_Fleet] a
			Where
				a.Id = @AssignedFleetId
			 

		End
		else
		Begin

			if (@RequiredAction = 'MAKECOMB')
			Begin

				Update a
				Set
					a.ParentId = @FleetId
				From
					[Fleet].[MST_Fleet] a
				Where
					a.Id = @NewFleetId

				Update a
				Set
					a.Status = @OperationalStatusId,
					a.ModifiedBy = @LoggedInUserId,
					a.ModifiedOn = GETDATE()
				From
					[Fleet].[MST_Fleet] a
				Where
					a.Id in (@FleetId, @NewFleetId)

			End
			else
			Begin

				Declare @m_statusId smallint

				if not exists (select 1 from [Fleet].[MST_Fleet] a where a.ParentId = @FleetId)
					Set @m_statusId = @AvailableStatusId
				else
					Set @m_statusId = @OperationalStatusId

				Update a
				Set
					a.Status = @m_statusId,
					a.ModifiedBy = @LoggedInUserId,
					a.ModifiedOn = GETDATE()
				From
					[Fleet].[MST_Fleet] a
				Where
					a.Id in (@FleetId, @AssignedFleetId, @NewFleetId)

			End

			

		End

		Update a
		Set
			a.FSCStatusId = @CompletedStatusId,
			a.FSCComments = @ServiceCenterComment,
			a.FSCDate = GETDATE(),
			a.ModifiedBy = @LoggedInUserId,
			a.ModifiedOn = GETDATE()
		From
			[Fleet].[MST_Fleet_ServiceRequests] a
		Where
			a.Id = @FrId
			
		Insert into
			[Fleet].[LOG_Fleet_ServiceRequests] (FrId, StatusId, Comment, CreatedBy)
		Values
			(@FrId, @CompletedStatusId, @ServiceCenterComment, @LoggedInUserId)
			
		Select Cast(1 as bit) as result
		

	End

	
		
	Select Cast(1 as bit) as result


End
GO
/****** Object:  StoredProcedure [Fleet].[GetFilesByFR]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [Fleet].[GetFilesByFR]
(
	@FrId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
		, a.Remarks, a.FileExtension
	From
		[fleet].DET_FleetServiceRequest_Resources a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.FleetRequestId = @FrId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [Fleet].[GetFleetChild]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [Fleet].[GetFleetChild]
(
	@FleetId smallint
)
As
Begin

	Select
		a.Id, a.FleetName as Name, b.Prefix as Status 
	From
		[Fleet].[MST_Fleet] a
	Left Join
		[dbo].[MST_LookupsValues] b
	On
		a.Status = b.Id
	Where
		a.ParentId = @FleetId


End
GO
/****** Object:  StoredProcedure [Fleet].[GetFleetList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [Fleet].[GetFleetList]
(
	@ProfileId tinyint = 1,
	@FleetType varchar(10) = 'TRACTOR',
	@FleetRequestId int = null,
	@Status varchar(10) = '0',
	@ExcludeId int = 0
)
As
Begin

	Select
		a.Id, a.FleetName as Name, c.Prefix as Status, Cast(Case when d.Id is null then 0 else 1 end as bit) as selected
	From
		[fleet].[MST_Fleet] a
	Left Join
		[dbo].[MST_LookupsValues] b
	On
		a.FleetType = b.Id
	Left Join
		[dbo].[MST_LookupsValues] c
	On
		a.Status = c.Id
	Left Join
		[Fleet].[MST_Fleet_ServiceRequests] d
	On
		d.FleetId = a.Id and d.Id = @FleetRequestId
	Where
		a.MarkAsDeleted = 0 and b.Prefix = @FleetType and ((@Status = '0' and (c.Prefix = 'OPR' or c.Prefix = 'AVAIL'))  or c.Prefix = @Status)
		and (@ExcludeId = 0 or a.Id <> @ExcludeId)

End
GO
/****** Object:  StoredProcedure [Fleet].[GetFRHistory]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [Fleet].[GetFRHistory]
(
	@FRID int = 65
)
As
Begin

	Select
		a.Id, a.StatusId, c.Value as Status, c.Prefix as StatusPrefix, a.Comment, a.CreatedOn, b.FullName as CreatedBy
	From
		[Fleet].[LOG_Fleet_ServiceRequests] a
	Inner Join
		[dbo].[AspNetUsers] b
	On
		a.CreatedBy = b.UId
	Inner Join
		[dbo].[MST_LookupsValues] c
	On
		a.StatusId = c.Id
	Where
		a.FrId = @FRID

End
GO
/****** Object:  StoredProcedure [Fleet].[GetFSRById]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [Fleet].[GetFSRById]
(
	@FSRId int
)
As
Begin

	Select
		a.Id, a.RequestNo, a.RequestDate, a.FleetId, b.FleetName, f.Prefix as FleetType 
		, a.RequiredActionId, c.Value as RequiredAction, c.Prefix as RequiredActionPrefix
		, a.FSCStatusId, d.Value as FSCStatus, a.Comments
		, a.FSCDate, a.AcceptanceDate, e.FullName as CreatedBy, a.CreatedOn 
		, a.AssignedFleetId, g.FleetName as AssignedFleet
		, a.NewFleetId, h.FleetName as NewFleet, a.FSCComments 
	From
		[Fleet].[MST_Fleet_ServiceRequests] a
	Inner Join
		[fleet].[MST_Fleet] b
	On
		a.FleetId = b.Id
	Inner Join
		[dbo].[MST_LookupsValues] f
	On
		a.FleetTypeId = f.Id
	Inner Join
		[dbo].[MST_LookupsValues] c
	On
		a.RequiredActionId = c.Id
	Inner Join
		[dbo].[MST_LookupsValues] d
	On
		a.FSCStatusId = d.Id
	Inner Join
		[dbo].[AspNetUsers] e
	On
		a.CreatedBy = e.UId
	Left Join
		[Fleet].[MST_Fleet] g
	On
		a.AssignedFleetId = g.Id
	Left Join
		[Fleet].[MST_Fleet] h
	On
		a.NewFleetId = h.Id
	Where
		a.Id = @FSRId

End
GO
/****** Object:  StoredProcedure [Fleet].[GetFSRList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [Fleet].[GetFSRList]
(
	@Search nvarchar(200) = '1',
	@PageId smallint = 2,
	@NumberOfRows smallint = 10,
	@Statuses nvarchar(100)
)
As
Begin

	Set
		@NumberOfRows = 10

	Select
		a.Id, a.RequestNo, a.RequestDate, a.FleetId, b.FleetName + ' - ' +  f.Prefix as FleetName, a.RequiredActionId, c.Value as RequiredAction, a.FSCStatusId, d.Value as FSCStatus
		, a.FSCDate, a.AcceptanceDate, e.FullName as CreatedBy, a.CreatedOn 
		, COUNT(1) over() as TotalRows
	From
		[Fleet].[MST_Fleet_ServiceRequests] a
	Inner Join
		[fleet].[MST_Fleet] b
	On
		a.FleetId = b.Id
	Inner Join
		[dbo].[MST_LookupsValues] f
	On
		a.FleetTypeId = f.Id
	Inner Join
		[dbo].[MST_LookupsValues] c
	On
		a.RequiredActionId = c.Id
	Inner Join
		[dbo].[MST_LookupsValues] d
	On
		a.FSCStatusId = d.Id
	Inner Join
		[dbo].[AspNetUsers] e
	On
		a.CreatedBy = e.UId
	Where
		(a.RequestNo like '%'+ @Search +'%' or b.FleetName like '%'+ @Search +'%')
		and (@Statuses is null or @Statuses = '' or (d.Prefix in (select item from dbo.SplitString(@Statuses, ','))))
		--Freetext(a.FullName, @Search) or Contains(a.StaffId, @Search)
	Order By
		a.ModifiedOn desc
	Offset
		@PageId * @NumberOfRows rows
	Fetch next 
		@NumberOfRows Rows only
End
GO
/****** Object:  StoredProcedure [Fleet].[GetRequestNo]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [Fleet].[GetRequestNo]
As
Begin

	Declare @TranNo varchar(20) = next value for [lpgordering].[LPG_ExportBatchNo] 

	Select @TranNo as Result

End
GO
/****** Object:  StoredProcedure [Fleet].[RegisterRequest]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [Fleet].[RegisterRequest]
(
	@FleetServiceRequest [fleet].[FleetInfo] readonly,
	@RequiredAction varchar(100)
)
As
Begin

	Declare @SubmittedStatusId smallint
	Select
		@SubmittedStatusId = a.Id
	From
		[dbo].[MST_LookupsValues] a
	Where
		a.Prefix = 'FSCSUB'

	Declare @OperationalStatusId smallint, @AvailableStatusId smallint, @MaintenanceStatusId smallint, @CancelledStatusId smallint, @LoggedInUserId int 
	, @UserComments nvarchar(100)

	Select
		@OperationalStatusId = a.Id
	From
		[dbo].[MST_LookupsValues] a
	Where
		a.Prefix = 'OPR'

	Select
		@AvailableStatusId = a.Id
	From
		[dbo].[MST_LookupsValues] a
	Where
		a.Prefix = 'AVAIL'

	Select
		@MaintenanceStatusId = a.Id
	From
		[dbo].[MST_LookupsValues] a
	Where
		a.Prefix = 'Maintenance'

	Select
		@CancelledStatusId = a.Id
	From
		[dbo].[MST_LookupsValues] a
	Where
		a.Prefix = 'Cancelled'

	Select
		@LoggedInUserId = a.ModifiedBy, @UserComments = a.Comments
	From
		@FleetServiceRequest a
		

	Declare @FRID int

	Begin Try
		
		if (@RequiredAction = 'CC') -- Change Combination
		Begin

			Insert into 
				[Fleet].[MST_Fleet_ServiceRequests] (RequestNo, RequestDate, FleetId, FleetTypeId, AssignedFleetTypeId, AssignedFleetId
					, RequiredActionId, FSCStatusId, NewFleetTypeId, NewFleetId, Comments, FolderPath, CreatedBy, ModifiedBy) 
			Select
				a.RequestNo, GETDATE(), a.FleetId, b.Id as FleetTypeId, c.Id as AssignedFleetTypeId, a.AssignedFleetId
				, a.RequiredActionId, @SubmittedStatusId, d.Id as NewFleetTypeId , a.NewFleetId, a.Comments, a.FolderPath, a.ModifiedBy, a.ModifiedBy
			From
				@FleetServiceRequest a	
			Left Join
				[dbo].[MST_LookupsValues] b
			On
				a.FleetType = b.Prefix
			Left Join
				[dbo].[MST_LookupsValues] c
			On
				a.AssignedFleetType = c.Prefix
			Left Join
				[dbo].[MST_LookupsValues] d
			On
				a.NewFleetType = d.Prefix

			Select @FRID = SCOPE_IDENTITY()

			Insert into 
				[Fleet].[LOG_Fleet_ServiceRequests] (FrId, StatusId, CreatedBy, Comment)
			Values
				(@FRID, @SubmittedStatusId, @LoggedInUserId, @UserComments)

			Select @FRID as result

		End
		else if (@RequiredAction = 'REP') -- Maintenance
		Begin

			Insert into 
				[Fleet].[MST_Fleet_ServiceRequests] (RequestNo, RequestDate, FleetId, FleetTypeId, AssignedFleetTypeId, AssignedFleetId
					, RequiredActionId, FSCStatusId, NewFleetTypeId, NewFleetId, Comments, FolderPath, CreatedBy, ModifiedBy) 
			Select
				a.RequestNo, GETDATE(), a.FleetId, b.Id as FleetTypeId, c.Id as AssignedFleetTypeId, a.AssignedFleetId
				, a.RequiredActionId, @SubmittedStatusId, d.Id as NewFleetTypeId , a.NewFleetId, a.Comments, a.FolderPath, a.ModifiedBy, a.ModifiedBy
			From
				@FleetServiceRequest a	
			Left Join
				[dbo].[MST_LookupsValues] b
			On
				a.FleetType = b.Prefix
			Left Join
				[dbo].[MST_LookupsValues] c
			On
				a.AssignedFleetType = c.Prefix
			Left Join
				[dbo].[MST_LookupsValues] d
			On
				a.NewFleetType = d.Prefix

			Select @FRID = SCOPE_IDENTITY()

			Insert into 
				[Fleet].[LOG_Fleet_ServiceRequests] (FrId, StatusId, CreatedBy, Comment)
			Values
				(@FRID, @SubmittedStatusId, @LoggedInUserId, @UserComments)

			Select @FRID as result

		End
		else if (@RequiredAction = 'MAKECOMB') -- Make Combination
		Begin

			Insert into 
				[Fleet].[MST_Fleet_ServiceRequests] (RequestNo, RequestDate, FleetId, FleetTypeId, AssignedFleetTypeId, AssignedFleetId
					, RequiredActionId, FSCStatusId, NewFleetTypeId, NewFleetId, Comments, FolderPath, CreatedBy, ModifiedBy) 
			Select
				a.RequestNo, GETDATE(), a.FleetId, b.Id as FleetTypeId, c.Id as AssignedFleetTypeId, a.AssignedFleetId
				, a.RequiredActionId, @SubmittedStatusId, d.Id as NewFleetTypeId , a.NewFleetId, a.Comments, a.FolderPath, a.ModifiedBy, a.ModifiedBy
			From
				@FleetServiceRequest a	
			Left Join
				[dbo].[MST_LookupsValues] b
			On
				a.FleetType = b.Prefix
			Left Join
				[dbo].[MST_LookupsValues] c
			On
				a.AssignedFleetType = c.Prefix
			Left Join
				[dbo].[MST_LookupsValues] d
			On
				a.NewFleetType = d.Prefix

			Select @FRID = SCOPE_IDENTITY()

			Insert into 
				[Fleet].[LOG_Fleet_ServiceRequests] (FrId, StatusId, CreatedBy, Comment)
			Values
				(@FRID, @SubmittedStatusId, @LoggedInUserId, @UserComments)

			Select @FRID as result

		End
		else
		Begin

			Insert into 
				[Fleet].[MST_Fleet_ServiceRequests] (RequestNo, RequestDate, FleetId, FleetTypeId, AssignedFleetTypeId, AssignedFleetId
					, RequiredActionId, FSCStatusId, NewFleetTypeId, NewFleetId, Comments, FolderPath, CreatedBy, ModifiedBy) 
			Select
				a.RequestNo, GETDATE(), a.FleetId, b.Id as FleetTypeId, c.Id as AssignedFleetTypeId, a.AssignedFleetId
				, a.RequiredActionId, @SubmittedStatusId, d.Id as NewFleetTypeId , a.NewFleetId, a.Comments, a.FolderPath, a.ModifiedBy, a.ModifiedBy
			From
				@FleetServiceRequest a	
			Left Join
				[dbo].[MST_LookupsValues] b
			On
				a.FleetType = b.Prefix
			Left Join
				[dbo].[MST_LookupsValues] c
			On
				a.AssignedFleetType = c.Prefix
			Left Join
				[dbo].[MST_LookupsValues] d
			On
				a.NewFleetType = d.Prefix

			Select @FRID = SCOPE_IDENTITY()

			Insert into 
				[Fleet].[LOG_Fleet_ServiceRequests] (FrId, StatusId, CreatedBy, Comment)
			Values
				(@FRID, @SubmittedStatusId, @LoggedInUserId, @UserComments)

			Select @FRID as result

		End

	End Try
	Begin Catch

		

	End Catch


End
GO
/****** Object:  StoredProcedure [Fleet].[ResetData]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [Fleet].[ResetData]
As
Begin

Delete
  FROM [WOQ_DMS_New].[Fleet].[DET_FleetServiceRequest_Resources]

  Delete
  FROM [WOQ_DMS_New].[Fleet].[MST_Fleet_ServiceRequests]

  Delete
  FROM [WOQ_DMS_New].[Fleet].[LOG_Fleet_ServiceRequests]

  Update a
  Set 
	a.ParentId = null,
	a.Status = 82
  From
   Fleet.MST_Fleet a

End
GO
/****** Object:  StoredProcedure [log].[GetApprovedLog]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [log].[GetApprovedLog]
(
	@logid bigint,
	@siteid bigint
)
As
Begin

	select a.IsRejected,a.Remarks,a.LoggedOn,b.FullName as LoggedBy	
	 FROM  [log].[SiteStatus_Log] a 
			left join AspNetUsers b on a.LoggedBy=b.UId
		
				 Where
					a.LogId = @logid and a.ApplicationId = @siteid 
End


GO
/****** Object:  StoredProcedure [log].[GetLogWithVersioning]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [log].[GetLogWithVersioning]
(
	@SiteId bigint = 10194
)
As
Begin

	Declare @DraftId smallint = 1, @AppSubmissionId smallint = 2

	Select
		a.Id, a.SiteId, a.ActivityTypeId, a.CreatedBy, a.CreatedOn
		, a.SrNumber, a.SubCount, a.ActivityType, a.FullName
		, ROW_NUMBER() over (partition by a.SubCount, a.Draft order by a.CreatedOn) as DraftVersion
		, a.AgendaName, a.MeetingDate
	From
	(
		Select
			a.Id, a.SiteId, a.ActivityTypeId, a.CreatedBy, a.CreatedOn
			, ROW_NUMBER() over ( partition by a.ActivityTypeId order by a.CreatedOn) as SrNumber
			, COUNT(b.Id) as SubCount, d.[Type] as ActivityType, c.FullName
			, Case When a.ActivityTypeId = 1 then 1 else 0 end as Draft
			, f.AgendaName, f.MeetingDate
		From
			[log].[ActivityLog] a
		Left Join
			[log].ActivityLog b
		On
			a.SiteId = b.SiteId and b.ActivityTypeId = 2 and b.CreatedOn < a.CreatedOn
		Left Join
			[log].ActivityType d
		On
			a.ActivityTypeId = d.Id
		Left Join
			dbo.AspNetUsers c
		On
			a.CreatedBy = c.UId
		Left Join	
			[log].SiteAgenda_Log e
		On
			a.Id = e.LogId
		Left Join	
			[log].Agenda_Log f
		On
			e.AgendaId = f.Id
		Where
			a.SiteId = @SiteId
		Group By
			a.Id, a.SiteId, a.ActivityTypeId, a.CreatedBy, a.CreatedOn, d.[Type], c.FullName, f.AgendaName, f.MeetingDate
	) a
	Order By
		a.CreatedOn


	--;with C1 as
	--(
	--  select 
	--		a.Id, a.SiteId, a.ActivityTypeId, a.CreatedBy, a.CreatedOn,	
	--		a.ActivityTypeId as who,
	--		lag(a.ActivityTypeId) over(order by a.CreatedOn) as lag_who, COUNT(b.Id)  as AppVersion
	--  from
	--		[log].ActivityLog a
	--	Left Join
	--		[log].ActivityLog b
	--	On
	--		a.SiteId = b.SiteId and b.ActivityTypeId = 2 and b.CreatedOn < a.CreatedOn
	--	Where
	--		a.SiteId = @SiteId
	--	Group By
	--		a.Id, a.SiteId, a.ActivityTypeId, a.CreatedBy, a.CreatedOn
	--),
	--C2 as
	--(
	--  select
	--		a.Id, a.SiteId, a.ActivityTypeId, a.CreatedBy, a.CreatedOn,
	--		 who, a.AppVersion,
	--		 sum(case when who = lag_who and a.AppVersion <> 0 then 0 else 1 end) 
	--			over(order by a.CreatedOn ) as change 
	--  from
	--	C1 a
	--)
	--Select
	--	--a.RowID, a.VersionId
	--	Case When a.ActivityTypeId = @DraftId and a.AppVersion <> 0 then a.RowID else a.VersionId end as Version
	--	, a.Id, a.SiteId, a.ActivityTypeId, a.CreatedBy, a.CreatedOn, a.change
	--	, Count(b.Id) as Value, d.[Type] as ActivityType, c.FullName
	--From
	--(
	--	select
	--		row_number() over(partition by change order by a.CreatedOn) as RowID,
	--		row_number() over(partition by ActivityTypeId order by a.CreatedOn) as VersionId,
	--		a.Id, a.SiteId, a.ActivityTypeId, a.CreatedBy, a.CreatedOn,
	--		a.who, a.change, a.AppVersion
	--	from
	--		C2 a
	--) a
	--Left Join
	--	C2 b
	--On
	--	a.SiteId = b.SiteId and b.ActivityTypeId = @AppSubmissionId and b.CreatedOn < a.CreatedOn
	--Left Join
	--	[log].ActivityType d
	--On
	--	a.ActivityTypeId = d.Id
	--Left Join
	--	dbo.AspNetUsers c
	--On
	--	a.CreatedBy = c.UId
	--Group By
	--	a.ActivityTypeId, a.RowID, a.VersionId, a.Id, a.SiteId, a.ActivityTypeId, a.CreatedBy, a.CreatedOn, a.change, d.[Type], c.FullName, a.AppVersion 
	--Order By
	--	a.CreatedOn

End

GO
/****** Object:  StoredProcedure [log].[GetScheduleLog]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



Create Procedure [log].[GetScheduleLog]
(
	@logid bigint,
	@siteid bigint
)
As
Begin

	select c.FullName as Incharge,a.VisitDate,a.Remarks,a.LoggedOn,b.FullName as LoggedBy	
	 FROM  [log].[ScheduleList_Log] a 
			left join AspNetUsers b on a.LoggedBy=b.UId
			left join AspNetUsers c on a.InchargeId=c.UId
				 Where
					a.LogId = @logid and a.ApplicationId = @siteid 
End


GO
/****** Object:  StoredProcedure [Lomo].[mergesiteprodutz]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [Lomo].[mergesiteprodutz]
as
begin
delete from WOQ_DMS_New.Orders.SiteProdutz;
IF OBJECT_ID('tempdb.dbo.#Temptable', 'U') IS NOT NULL
DROP TABLE #Temptable;
CREATE TABLE #Temptable (
    CUST_NO int, 
    SITE_NO int,
	ProductId tinyint,
	ProductName varchar(70)
)

INSERT INTO #Temptable
EXEC [10.0.68.11].[DMS_WOQOD].[dbo].GetCustomerProductsAll

Insert Into  WOQ_DMS_New.Orders.SiteProdutz (SiteId,ProdutzId,UpdatedOn)
select  t.ID SiteId,P.Id ProductId,getdate() UpdatedOn from
 WOQ_DMS_New.dbo.SitesERP t
INNER JOIN #Temptable ON t.SITE_NUMBER = #Temptable.SITE_NO
INNER JOIN  WOQ_DMS_New.Orders.Productz P on  p.LomoProductId=#Temptable.ProductId
end


GO
/****** Object:  StoredProcedure [lpg].[FindDuplicates]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [lpg].[FindDuplicates]
As
Begin

	Select
		*
	From
		lpg.LPG_Geo a
	Inner Join
	(
		Select
			a.CustNo, a.SiteNo, COUNT(*) as Count
		From
			lpg.LPG_Geo a
		Group By
			a.CustNo, a.SiteNo
		Having 
			COUNT(*) > 1
	) b
	On
		a.CustNo = b.CustNo and a.SiteNo = b.SiteNo

End
GO
/****** Object:  StoredProcedure [lpg].[GetEmailAddress]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE PROCEDURE [lpg].[GetEmailAddress]
        -- Add the parameters for the stored procedure here
         @actionprefix varchar(100)
        AS
        BEGIN
            -- SET NOCOUNT ON added to prevent extra result sets from
            -- interfering with SELECT statements.
            SET NOCOUNT ON;

            -- Insert statements for procedure here
  SELECT Email
  FROM [WOQ_DMS_New].[dbo].[UserAction] UA
  join UserRoleModules UR on UA.URMId=UR.ID
  join AspNetUsers A on A.UId= UR.UserId
  join action act on act.Id = ua.ActionId
  where Prefix = @actionprefix
        END
               
GO
/****** Object:  StoredProcedure [lpg].[GetMaxDataCustSite]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lpg].[GetMaxDataCustSite]
As
Begin

	Select
		a.CustNo, a.SiteNo, MAX(a.Distance) as Distance, max(a.PricingCategoryId) as PricingCategory, b.PricingCategory
	From
		lpg.LPG_Geo a
	Inner Join
		lpg.LpgPricingCategory b
	On
		a.PricingCategoryId = b.Id
	Where
		a.CustNo is not null --and a.CustNo = 2335 and a.SiteNo = 16781
	Group By
		a.CustNo, a.SiteNo, b.PricingCategory


	--Select
	--	distinct a.CustNo, a.SiteNo
	--From
	--	lpg.LPG_Geo a
	--Where
	--	a.CustNo is not null and a.SiteNo is not null

End

	
GO
/****** Object:  StoredProcedure [lpg].[UpdatePricingCategory]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [lpg].[UpdatePricingCategory]
As
Begin

	Update a
	Set
		a.PricingCategoryId = '1'
	From
		lpg.LPG_Geo a
	Where
		a.Distance <= 15.0

	Update a
	Set
		a.PricingCategoryId = '2'
	From
		lpg.LPG_Geo a
	Where
		a.Distance between 15.01 and 40.0


	Update a
	Set
		a.PricingCategoryId = '3'
	From
		lpg.LPG_Geo a
	Where
		a.Distance >= 40.01

End
GO
/****** Object:  StoredProcedure [lpgordering].[ExportLPGToLomosoft]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [lpgordering].[ExportLPGToLomosoft]
(
	@OrderIds varchar(max),
	@LoggedInUserId int = 5
)
As
Begin

	--Begin tran

	Declare @ExportedToLomosoft tinyint = 1, @WaitingForExport tinyint = 2

	Declare @TranNo varchar(20) = next value for [lpgordering].[LPG_ExportBatchNo] 

	Insert into
		[lpgordering].[DET_LPG_Tran] (TranNo, ActionId, OrderIds, isActive, CreatedBy, ModifiedBy)
	Values
		(@TranNo, @WaitingForExport, @OrderIds, 1, @LoggedInUserId, @LoggedInUserId)

	Declare @tmpOrders table (Id int) 
	Declare @OrderTypeId tinyint = 1, @StatusId tinyint = 1, @BoxId smallint = 1, @LomoBoxId smallint = 1, @IsActive bit = 1, @ProdId tinyint = 1, @Qty int = 0

	Insert into
		[lpgordering].[MST_LPG_Order] (TranNo, OrderItemNo, OrderPlanningId, ProductId, Quantity, [Description], BoxId, LomoBoxId, SiteId, OrderedFor, OrderTypeId, StatusId, isActive, CreatedBy, ModifiedBy)
	output
		inserted.Id
	into 
		@tmpOrders
	Select
		@TranNo, next value for [lpgordering].[LPG_OrderItemNo], a.Id, @ProdId, @Qty, a.Comments, @BoxId, @LomoBoxId
		, a.SiteId, a.RequiredOn, @OrderTypeId, @StatusId, @IsActive, @LoggedInUserId, @LoggedInUserId  
	From
		[lpgordering].[LPGOrderPlanning] a
	Where
		a.Id in (select Item from dbo.SplitString(@OrderIds, ','))

	Update a
	Set
		a.IsProcessed = 1
	From
		[lpgordering].[LPGOrderPlanning] a
	Where
		a.Id in (select Item from dbo.SplitString(@OrderIds, ','))

	Declare @CurrentDate datetime = getdate()

	-- Export Part

	Declare @OrderRowId int, @CustNo int, @SiteNo int, @TankId int, @Quantity numeric(8,2), @ProductID smallint, @DeliverOn datetime, @ShiftNo tinyint,
		@Comments varchar(50), @IsSuccessful bit = 0, @OrderID as int, @OrderNo varchar(11), @Result varchar(100)

	Declare lomocursor Cursor
	For
		Select
			a.Id, d.LomoProductId, a.Quantity, b.CUSTOMER_NUMBER, b.SITE_NUMBER, a.OrderedFor, a.[Description]
		From
			[lpgordering].[MST_LPG_Order] a
		Inner Join
			SitesLPG b
		On
			a.SiteId = b.ID
		Inner Join
			[lpgordering].[MST_LPG_Products] d
		On
			a.ProductId = d.Id
		Where
			a.TranNo = @TranNo and a.StatusId = @StatusId and a.Id in (select Id from @tmpOrders)

	OPEN lomocursor

	Fetch Next From lomocursor INTO @OrderRowId, @ProductID, @Quantity, @CustNo, @SiteNo, @DeliverOn, @Comments
	While (@@FETCH_STATUS <> -1) -- -1 == FETCH statement failed or the row was beyond the result set.
	Begin
		-- if lomosoft call fails Order MAP table should not get updated
		Begin try

			--Select @OrderRowId, @ProductID, @Quantity, @CustNo, @SiteNo, @DeliverOn, @Comments

			exec [10.0.68.11].[DMS_WOQOD_LPG].[dbo].[InsertPortalOrder] @CustNo, @SiteNo, @DeliverOn, @Quantity, @ProductId
			, @Comments, @CurrentDate, @LoggedInUserId, @IsSuccessful output, @OrderNo output, @Result output
			Update a
			Set
				--a.LomoOrderId = @OrderID,
				a.LomoOrderNum = @OrderNo
				, a.Remarks = @Result
				, a.StatusId = Case When @IsSuccessful = 1 then 4 else 7 end 
			From
				[lpgordering].[MST_LPG_Order] a
			Where
				a.Id = @OrderRowId

		End Try
		Begin catch

			--Select 'failed'

			Update a
			Set
				--a.LomoOrderId = @OrderID,
				a.LomoOrderNum = @OrderNo
				, a.Remarks = Cast(ERROR_MESSAGE() as varchar(100))
				, a.StatusId = Case When @IsSuccessful = 1 then 4 else 7 end  -- Exported = 4 and Failed = 7
			From
				[lpgordering].[MST_LPG_Order] a
			Where
				a.Id = @OrderRowId

		End Catch

		Fetch Next From lomocursor INTO @OrderRowId, @ProductID, @Quantity, @CustNo, @SiteNo, @DeliverOn, @Comments
	END
	CLOSE lomocursor
	DEALLOCATE lomocursor

	Update a
	Set
		a.ActionId = @ExportedToLomosoft, -- update to exported
		a.IsActive = 0
	From
		[lpgordering].[DET_LPG_Tran] a
	Where
		a.TranNo = @TranNo and a.ActionId = @WaitingForExport -- was waiting
	
	--rollback tran


End

GO
/****** Object:  StoredProcedure [lpgordering].[GetAllOrdersForCalDate]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lpgordering].[GetAllOrdersForCalDate]
(
	@CalendarDate date = '2016-11-01'
	, @LoggedInUserId int = 196
)
As
Begin

	Declare @Diff tinyint = DAY(@CalendarDate) - 1

	Declare @FromDate date, @ToDate date

	Select
		@FromDate = DATEADD(day, -(@Diff), @CalendarDate)
		, @ToDate = DateAdd(day, -1, DATEADD(month, 1, DATEADD(day, -(@Diff), @CalendarDate)))

	--Select @FromDate, @ToDate

	Select
		a.Title, a.[Start], a.[Url], b.SiteId, e.CUSTOMER_NAME + ' - ' + e.LOCATION as SiteName
		, c.TankId, d.TankName, c.[Level], c.ExpectedDeliveredQty, d.Volume, d.[Location], b.IsProcessed
		, Cast(Case when CAST(b.RequiredOn as date) = CAST(b.CreatedOn as date) then 1 else 0 end as bit) as IsUrgent 
	From
	(
		Select
			'View (' + Case when COUNT(*) > 1 then Cast(COUNT(*) as varchar(10)) + ' orders)' else 'order)' end as Title
			, a.RequiredOn as [Start], '' as [Url]
		From
			[lpgordering].[LPGOrderPlanning] a
		Inner Join
			[lpgordering].[VW_LPGPortal_Cust_Sites] b
		On
			a.SiteId = b.SiteId and b.PortalUserId = @LoggedInUserId
		Where
			a.RequiredOn between @FromDate and @ToDate 
		Group By
			a.RequiredOn
	) a
	Left Join
		[lpgordering].[LPGOrderPlanning] b
	On
		a.[Start] = b.RequiredOn
	Left Join
		SitesLPG e
	On
		b.SiteId = e.ID
	Left Join
		[lpgordering].[LPGOrderTanks] c
	On
		b.Id = c.OrderId
	Left Join
		[lpgordering].[LPGSiteTanks] d
	On
		c.TankId = d.Id	
		

End


GO
/****** Object:  StoredProcedure [lpgordering].[GetCreditLimitForLPGCustomer]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lpgordering].[GetCreditLimitForLPGCustomer]
(
	@LoggedInUserId int
)
As
Begin

	Declare @CustNum int = 0, @SystemUserId int, @OrderCL decimal(14, 2)

	Set
		@SystemUserId = [dbo].[GetSystemUser]()

	Select
		top 1 @CustNum = c.CUST_NUMBER
	From
		[orders].[PortalUsers] a
	Inner Join
		[lpgordering].[PortalUserCustomer] b
	On
		a.Id = b.PortalUserId
	Inner Join
		CustomerERP c
	On
		b.CustId = c.ID
	Where
		a.Id = @LoggedInUserId

	if (@CustNum <> 0)
	Begin
		Declare @tmp table (UnbilledInvoices decimal(14,2), UnPaidInvoices decimal(14, 2), OverallCreditLimit decimal(14,2), CreditLimitRemaining decimal(14, 2))	

		Select
			 @OrderCL = isnull(sum(a.ExpectedQty * 1.2), 0) -- isnull(c.UnitPrice, 0))
		From
			[lpgordering].[LPGOrderPlanning] a
		Inner Join
			[lpgordering].[VW_LPGPortal_Cust_Sites] b
		On
			a.SiteId = b.SiteId
		Inner Join
			[lpgordering].[VW_BulkLPG_Site_Product_UnitPrice] c
		On
			a.SiteId = c.SiteId
		Where
			b.PortalUserId = @LoggedInUserId

		Insert into
			@tmp (UnbilledInvoices, UnPaidInvoices, OverallCreditLimit, CreditLimitRemaining)
		exec [10.0.68.27].[DMS_WOQOD_LPG].[dbo].[GetCreditLimit] @CustNum

		Select
			a.UnbilledInvoices, a.UnPaidInvoices, a.OverallCreditLimit
			, Case when @OrderCL > a.CreditLimitRemaining then 0 else (a.CreditLimitRemaining - @OrderCL) end as CreditLimitRemaining
		From
			@tmp a 

	End
	else
	Begin

		Insert into 
			[log].[ExceptionLog] (Namespace_Name, Class_name, Method_name, Exceptionhtml, CreatedBy)
		values
			('[lpgordering].[GetCreditLimitForLPGCustomer]', null, null, 'No customer found for user', @SystemUserId) 

	End

End
GO
/****** Object:  StoredProcedure [lpgordering].[GetExistingOrders]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lpgordering].[GetExistingOrders]
(
	@SiteId int,
	@OrderedFor date
)
As
Begin
	
	Declare @OrderId int, @IsProcessed bit

	Select
		@OrderId = a.Id, @IsProcessed = a.IsProcessed
	From
		[lpgordering].[LPGOrderPlanning] a
	Where
		a.SiteId = @SiteId and a.RequiredOn = @OrderedFor

	Select
		a.TankId as Id, b.TankName, a.[Level], b.Volume, b.[Location], @IsProcessed as IsExported
	From
		[lpgordering].[LPGOrderTanks] a
	Inner Join
		[lpgordering].[LPGSiteTanks] b
	On
		a.TankId = b.Id
	Where
		a.OrderId = @OrderId

End
GO
/****** Object:  StoredProcedure [lpgordering].[GetLPGTanksBySite]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [lpgordering].[GetLPGTanksBySite]
(
	@SiteId int
)
As
Begin

	Select
		a.Id, a.TankName, a.Volume, a.[Location] 
	From
		[lpgordering].LPGSiteTanks a
	Where
		a.isActive = 1 and a.SiteId = @SiteId

End
GO
/****** Object:  StoredProcedure [lpgordering].[GetLPGUserBasicInfo]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lpgordering].[GetLPGUserBasicInfo]
(
	@UserId int = 1192
)
As
Begin

	Select
		c.ID as SiteId, c.CUSTOMER_NAME + ' ' + '(' + c.LOCATION + ')' as SiteName, c.SITE_NUMBER as SiteNumber, a.EmailId, a.FullName as UserName
		, a.MobileNum as MobileNo, a.LandlineNum as LandlineNo, d.NAME as CustomerName, d.CUST_NUMBER as CustomerNumber, g.ModifiedOn as LastOrderedDate
		, Cast(Case when i.CategoryCode = 'LPG-RES' then 1 else 0 end as bit) as IsResidential
	From
		[orders].[PortalUsers] a
	Inner Join
		[lpgordering].PortalUserCustomer e
	On
		a.Id = e.PortalUserId
	Inner Join
		CustomerERP d
	On
		e.CustId = d.ID
	Left Join
		[lpgordering].[PortalUserLPGSites] b
	On
		e.hasAccessToAll = 0 and e.Id = b.PortalCustId and b.isActive = 1
	Left Join
		dbo.SitesLPG c
	On
		(e.hasAccessToAll = 1 and c.CustomerID = d.ID) or (e.hasAccessToAll = 0 and b.SiteId = c.ID)
	Left Join
		[lpgordering].[LPGOrderPlanning] g
	On
		g.Id in 
		(
			Select	
				top 1 f.Id
			From
				[lpgordering].[LPGOrderPlanning] f
			Where
				f.SiteId = c.Id 
			Order By
				f.ModifiedOn desc
		)
	Left Join
		CustomerCategoryERP i
	On
		c.CATEGORY_ID = i.ID
	Where
		a.isActive = 1 and a.Id = @UserId and d.ID is not null

End
GO
/****** Object:  StoredProcedure [lpgordering].[GetOrderReports]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lpgordering].[GetOrderReports]
(
	@FromDate date,
	@ToDate date,
	@LoggedInUserId int,
	@SiteId int
)
As
Begin

	Select
		a.Id, a.SiteId, c.CUSTOMER_NAME as SiteName, c.LOCATION as SiteLocation
		, a.RequiredOn, a.ModifiedOn, a.ModifiedBy, Cast(a.IsProcessed as tinyint) as OrderStatus
		, e.FullName as ModifiedUserName
	From
		[lpgordering].[LPGOrderPlanning] a
	Inner Join
		SitesLPG c
	On
		a.SiteId = c.ID
	Inner Join
		[orders].[PortalUsers] e
	On
		a.ModifiedBy = e.Id
	Where
		a.CreatedBy = @LoggedInUserId and a.RequiredOn between @FromDate and @ToDate and (@SiteId = 0 or a.SiteId = @SiteId)


End
GO
/****** Object:  StoredProcedure [lpgordering].[GetRecentOrders]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lpgordering].[GetRecentOrders]
(
	@LoggedInUserId int
)
As
Begin

	Select top 8
		a.Id, a.SiteId, c.CUSTOMER_NAME as SiteName, c.LOCATION as SiteLocation
		, a.RequiredOn, a.ModifiedOn, a.ModifiedBy, Cast(a.IsProcessed as tinyint) as OrderStatus
		, b.TankId, d.TankName, b.[Level], e.FullName as ModifiedUserName
	From
		[lpgordering].[LPGOrderPlanning] a
	Inner Join
		[lpgordering].[LPGOrderTanks] b
	On
		a.Id = b.OrderId
	Inner Join
		SitesLPG c
	On
		a.SiteId = c.ID
	Inner Join
		[lpgordering].[LPGSiteTanks] d
	On
		b.TankId = d.Id
	Inner Join
		[orders].[PortalUsers] e
	On
		a.ModifiedBy = e.Id
	Where
		a.CreatedBy = @LoggedInUserId
	Order By
		a.ModifiedOn desc


End
GO
/****** Object:  StoredProcedure [lpgordering].[SaveOrders_LPG]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [lpgordering].[SaveOrders_LPG]
(
	@OrderTanks [lpgordering].[SiteTankType] readonly,
	@OrderedFor date,
	@SiteId int,
	@LoggedInUserId int,
	@Comments nvarchar(255),
	@IsUrgent bit
)
As
Begin

	Declare @ElapsedTime int, @MaxNoOfLoads tinyint = 3, @MaxNoOfLoadsForMobile tinyint = 4
		, @TimeDifferenceForSite int = 0, @CheckMasterCreditLimit bit = 1, @CheckCreditLimitForSite bit = 1, @IsResedential bit = 0
		, @errorTimeElapsed nvarchar(100)

	Declare @MaxLevel tinyint, @UnitPrice decimal (4, 2) = 0
	Declare @AllSiteIds table (Id int)

	Select top 1
		@UnitPrice = 1.2 -- isnull(a.UnitPrice, 0)
	From
		[lpgordering].[VW_BulkLPG_Site_Product_UnitPrice] a
	Where
		a.SiteId = @SiteId

	Select
		@IsResedential = Case when a.ID is null then 0 else 1 end
	From
		SitesLPG a
	Inner Join
		CustomerCategoryERP b
	On
		a.CATEGORY_ID = b.ID
	Where
		a.ID = @SiteId and b.CategoryCode = 'LPG-RES'
		

	Declare @TranNo varchar(20) = next value for log.TranNo

	if (@IsUrgent = 1)
		Set @OrderedFor = GETDATE()
	else
	Begin

		if(@OrderedFor < Cast(DATEADD(dd, 1, getdate()) as date))
		Begin
			Set @OrderedFor = Cast(DATEADD(dd, 1, getdate()) as date)
		End

	End

	Select
		@CheckMasterCreditLimit = Case When @IsResedential = 1 then 0 else a.SettingValue end
	From
		[lpgordering].[MST_LPGOrderSettings] a
	Where
		a.SettingCode = 'CC'

	Select
		@MaxLevel = a.SettingValue
	From
		[lpgordering].[MST_LPGOrderSettings] a
	Where
		a.SettingCode = 'ML'

	Declare @CustNum int

	Select
		top 1 @CustNum = c.CUST_NUMBER
	From
		[orders].[PortalUsers] a
	Left Join
		[lpgordering].[PortalUserCustomer] b
	On
		a.Id = b.PortalUserId
	LEFT Join
		CustomerERP c
	On
		b.CustId = c.ID
	Where
		a.Id = @LoggedInUserId

	Declare @ExpectedQty decimal(8, 2)

	Select
		@ExpectedQty = sum([lpgordering].[CalculateEstimatedQuantity](@MaxLevel, a.Level, b.Volume))
	From
		@OrderTanks a
	Inner Join
		[lpgordering].[LPGSiteTanks] b
	On
		a.TankId = b.Id and b.isActive = 1

	Select
		@TimeDifferenceForSite = isnull(a.TimeLimit, 0), @CheckCreditLimitForSite = isnull(a.CheckCreditLimit, 0), @ElapsedTime = isnull(a.UpdateElapsedTime, 0)
	From
		[lpgordering].[DET_LPGSite_OrderSettings] a
	Where
		a.SiteId = @SiteId

	Declare @OrderedAmount decimal(18, 2), @CreditLimitRemaining decimal(18, 2), @NewOrderedAmount decimal(18, 2)

	Declare @tmp table (UnbilledInvoices decimal(18,2), UnPaidInvoices decimal(18, 2), OverallCreditLimit decimal(18,2), CreditLimitRemaining decimal(18, 2))	

	if not exists (select 1 from [lpgordering].[LPGOrderPlanning] a where a.SiteId = @SiteId and a.RequiredOn = @OrderedFor)
	Begin

		Declare @CurrentDate date = getdate()

		Declare @Difference int
		Select
			@Difference = DATEDIFF(minute, @CurrentDate, @OrderedFor)

		if (@IsUrgent = 1 or @Difference >= @TimeDifferenceForSite)
		Begin

			if (@CheckMasterCreditLimit = 1 and @CheckCreditLimitForSite = 1)
			Begin

				Insert into
					@AllSiteIds (Id) 
				Select
					b.Id
				From
					SitesLPG a
				Inner Join
					SitesLPG b
				On
					a.CUSTOMER_NUMBER = b.CUSTOMER_NUMBER
				Where 
					a.ID = @SiteId

				Insert into
					@tmp (UnbilledInvoices, UnPaidInvoices, OverallCreditLimit, CreditLimitRemaining)
				exec [10.0.68.27].[DMS_WOQOD_LPG].[dbo].[GetCreditLimit] @CustNum

				Select
					@CreditLimitRemaining = a.CreditLimitRemaining
				From
					@tmp a

				Select 
					@OrderedAmount = isnull(Sum(a.ExpectedQty * 1.2), 0) -- c.UnitPrice), 0)
				From
					[lpgordering].[LPGOrderPlanning] a
				Inner Join
					[lpgordering].[VW_BulkLPG_Site_Product_UnitPrice] c
				On
					a.SiteId = c.SiteId
				Where
					a.SiteId in (select Id from @AllSiteIds) and a.IsProcessed = 0

			End

			if (@CheckMasterCreditLimit = 0 or (@CheckMasterCreditLimit = 1 and (@CheckCreditLimitForSite = 0 or (@CheckCreditLimitForSite = 1 and @OrderedAmount <= @CreditLimitRemaining))))
			Begin

				if (@CheckMasterCreditLimit = 1 and @CheckCreditLimitForSite = 1)
				Begin

					Select
						@NewOrderedAmount = isnull(@ExpectedQty * @UnitPrice, 0)

				End

				if (@CheckMasterCreditLimit = 0 or (@CheckMasterCreditLimit = 1 and (@CheckCreditLimitForSite = 0 or (@CheckCreditLimitForSite = 1 and @OrderedAmount + @NewOrderedAmount <= @CreditLimitRemaining))))
				Begin

					Insert into
						[lpgordering].[LPGOrderPlanning] (SiteId, RequiredOn, ExpectedQty, IsUrgent, Comments, CreatedBy, ModifiedBy)
					values
						(@SiteId, @OrderedFor, @ExpectedQty, @IsUrgent, @Comments, @LoggedInUserId, @LoggedInUserId)

					Declare @LasttInsertedId int = Scope_Identity()

					if (@LasttInsertedId <> 0)
					Begin

						Insert into 
							[log].[LPGOrderPlanning_Log] (TranNo, SiteId, RequiredOn, ExpectedQty, Comments, CreatedBy)
						Values
							(@TranNo, @SiteId, @OrderedFor, @ExpectedQty, @Comments, @LoggedInUserId)

						Insert into
							[lpgordering].[LPGOrderTanks] (OrderId, TankId, [Level], ExpectedDeliveredQty, CreatedBy, ModifiedBy) 
						output
							@TranNo, inserted.OrderId, inserted.TankId, inserted.[Level], inserted.ExpectedDeliveredQty, inserted.CreatedBy
						into
							[log].[LPGOrderTanks_Log] (TranNo, OrderId, TankId, [Level], ExpectedDeliveredQty, CreatedBy)
						Select
							@LasttInsertedId, a.TankId, a.Level, [lpgordering].[CalculateEstimatedQuantity](@MaxLevel, a.Level, b.Volume), @LoggedInUserId, @LoggedInUserId
						From
							@OrderTanks a
						Inner Join
							[lpgordering].[LPGSiteTanks] b
						On
							a.TankId = b.Id and b.isActive = 1

						Insert into 
							[log].[LPGOrderPlanning_Log] (TranNo, SiteId, RequiredOn, CreatedBy)
						Values
							(@TranNo, @SiteId, @OrderedFor, @LoggedInUserId)

					End
					else
					Begin

						Raiserror('Order cannot be placed', 16, 1)

					End

				End
				else
				Begin
					
					Raiserror('Credit Limit Exceeded', 16, 1) 

				End

				Select Cast(1 as bit) as Result
			End
			else
			Begin

				Raiserror('Credit Limit Exceeded', 16, 1) 

			End
		End
		else
		Begin

			Set 
				@errorTimeElapsed = 'TimeElapsed - ' + Cast(Round((@TimeDifferenceForSite / 60), 0) as nvarchar(100))
			
			Raiserror(@errorTimeElapsed, 16, 1)

		End

	End
	else
	Begin


		if exists (select 1 from [lpgordering].[LPGOrderPlanning] a where a.SiteId = @SiteId and a.RequiredOn = @OrderedFor and a.IsProcessed = 1)
		Begin

			Insert into 
			[log].[ExceptionLog] (Namespace_Name, Class_name, Method_name, Exceptionhtml, CreatedBy)
			values
				('[lpgordering].[SaveOrders_LPG]', 'Order already exported', null, null, @LoggedInUserId) 

			raiserror ('Order cannot be updated', 16, 1)

			return

		End

		if (@CheckMasterCreditLimit = 1 and @CheckCreditLimitForSite = 1)
		Begin

			Insert into
				@tmp (UnbilledInvoices, UnPaidInvoices, OverallCreditLimit, CreditLimitRemaining)
			exec [10.0.68.27].[DMS_WOQOD_LPG].[dbo].[GetCreditLimit] @CustNum

			Select
				@CreditLimitRemaining = a.CreditLimitRemaining --400000000000
			From
				@tmp a
			
			Insert into
				@AllSiteIds (Id) 
			Select
				b.Id
			From
				SitesLPG a
			Inner Join
				SitesLPG b
			On
				a.CUSTOMER_NUMBER = b.CUSTOMER_NUMBER
			Where 
				a.ID = @SiteId

			Select 
				@OrderedAmount = isnull(Sum(a.ExpectedQty * c.UnitPrice), 0)
			From
				[lpgordering].[LPGOrderPlanning] a
			Inner Join
					[lpgordering].[VW_BulkLPG_Site_Product_UnitPrice] c
			On
				a.SiteId = c.SiteId
			Where
				a.SiteId in (Select Id from @AllSiteIds) and a.IsProcessed = 0 --and (a.SiteId = @SiteId and a.RequiredOn <> @OrderedFor)

			Select
				@NewOrderedAmount = isnull(@ExpectedQty * @UnitPrice, 0)

		End

		if (@CheckMasterCreditLimit = 0 or (@CheckMasterCreditLimit = 1 and (@CheckCreditLimitForSite = 0 or (@CheckCreditLimitForSite = 1 and @OrderedAmount + @NewOrderedAmount <= @CreditLimitRemaining))))
		Begin

			Declare @OrderId int = 0

			Select
				@OrderId = a.Id
			From
				[lpgordering].[LPGOrderPlanning] a
			Where
				a.SiteId = @SiteId and a.RequiredOn = @OrderedFor and (DATEDIFF(minute, getdate(), a.RequiredOn) > @ElapsedTime)


			if (@OrderId <> 0)
			Begin

				Update a
				Set
					a.ExpectedQty = @ExpectedQty,
					a.Comments = @Comments,
					ModifiedBy = @LoggedInUserId,
					ModifiedOn = GETDATE()
				output
					@TranNo, inserted.SiteId, inserted.RequiredOn, inserted.ExpectedQty, inserted.Comments, inserted.ModifiedBy
				into
					[log].[LPGOrderPlanning_Log] (TranNo, SiteId, RequiredOn, ExpectedQty, Comments, CreatedBy) 
				From
					[lpgordering].[LPGOrderPlanning] a
				Where
					a.Id = @OrderId

				Update a
				Set
					a.[Level] = b.[Level]
					, a.ExpectedDeliveredQty = [lpgordering].[CalculateEstimatedQuantity](@MaxLevel, b.[Level], c.Volume) 
				output
					@TranNo, inserted.OrderId, inserted.TankId, inserted.[Level], inserted.ExpectedDeliveredQty, inserted.ModifiedBy
				into
					[log].[LPGOrderTanks_Log] (TranNo, OrderId, TankId, [Level], ExpectedDeliveredQty, CreatedBy)
				From
					[lpgordering].[LPGOrderTanks] a
				Inner Join
					@OrderTanks b
				On
					a.TankId = b.TankId
				Inner Join
					[lpgordering].[LPGSiteTanks] c
				On
					b.TankId = c.Id and c.isActive = 1
				Where
					a.OrderId = @OrderId

			End
			else
			Begin

				Set 
					@errorTimeElapsed = 'TimeElapsed - ' + Cast(Round((@TimeDifferenceForSite / 60), 0) as nvarchar(100))
			
				Raiserror(@errorTimeElapsed, 16, 1)

			End

		
			Select Cast(1 as bit) as Result
		End
		else
		Begin

			Raiserror('Credit Limit Exceeded', 16, 1) 

		End

	End


End


GO
/****** Object:  StoredProcedure [lv].[ApproveRejectLvContract]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lv].[ApproveRejectLvContract]
(
	@LvContractId int,
	@Remarks nvarchar(250),
	@CoverSheetRemarks nvarchar(250),
	@ContractRemarks nvarchar(250),
	@ModifiedBy int,
	@LvSubStageId int,
	@isApproved bit,
	@NoOfTanksApproved tinyint = null
)
As
Begin

	Declare @LvStageId tinyint = 2, @AssignLvStageId tinyint = 3
	Declare @ManagerApprovalSubStageId tinyint = 4, @AppSubmissionSubStageId tinyint = 1, @DocumentSubmissionSubStageId tinyint = 2
	, @AssignLvSubStageId tinyint = 5, @ReviewSubStageId tinyint = 3

	Begin Try

		Update a
		Set
			a.CoverSheetRemarks = @CoverSheetRemarks,
			a.ContractRemarks = @ContractRemarks,
			a.ModifiedBy = @ModifiedBy,
			a.NoOfApprovedTanks = @NoOfTanksApproved,
			a.ModifiedOn = GETDATE()
		From
			lv.LvContract a
		Where
			a.Id = @LvContractId

		if (@LvSubStageId = @ReviewSubStageId) -- Review
		Begin

			if (@isApproved = 1) -- Approved
			Begin

				Update a
				Set
					a.isEnabled = 0,
					a.isRejected = 0,
					a.Remarks = 0,
					a.ModifiedBy = @ModifiedBy,
					a.ModifiedOn = GETDATE()
				From
					lv.LvContractStatus a
				Where
					a.LvContractId = @LvContractId and a.LvSubStageId = @ReviewSubStageId

				if exists (select 1 from lv.LvContractStatus a where a.LvContractId = @LvContractId and a.LvSubStageId = @ManagerApprovalSubStageId)
				Begin

					Update a
					Set
						a.isEnabled = 1,
						a.Remarks = @Remarks,
						a.ModifiedBy = @ModifiedBy,
						a.ModifiedOn = GETDATE()
					From
						lv.LvContractStatus a
					Where
						a.LvContractId = @LvContractId and a.LvSubStageId = @ManagerApprovalSubStageId
					
				End
				else
				Begin

					Insert into 
						lv.LvContractStatus (LvContractId, LvStageId, LvSubStageId, isEnabled, CreatedBy, ModifiedBy, Remarks)
					Values
						(@LvContractId, @LvStageId, @ManagerApprovalSubStageId, 1, @ModifiedBy, @ModifiedBy, @Remarks)

				End

			End
			else
			Begin

				-- Open Stages for submission
				Update a
				Set
					a.Remarks = @Remarks,
					a.isEnabled = 1,
					a.isRejected = 1,
					a.RejectedBy = @ModifiedBy,
					a.ModifiedBy = @ModifiedBy,
					a.ModifiedOn = GETDATE()
				From
					lv.LvContractStatus a
				Where
					a.LvContractId = @LvContractId and a.LvSubStageId in (@AppSubmissionSubStageId, @DocumentSubmissionSubStageId)

				Update a
				Set
					a.isEnabled = 0,
					a.isRejected = 0,
					a.Remarks = 0,
					a.ModifiedBy = @ModifiedBy,
					a.ModifiedOn = GETDATE()
				From
					lv.LvContractStatus a
				Where
					a.LvContractId = @LvContractId and a.LvSubStageId = @ReviewSubStageId 

			End


		End
		else if (@LvSubStageId = @ManagerApprovalSubStageId) -- Manager
		Begin

			if (@isApproved = 1) -- Approved
			Begin

				Update a
				Set
					a.isEnabled = 0,
					a.ModifiedBy = @ModifiedBy,
					a.ModifiedOn = GETDATE()
				From
					lv.LvContractStatus a
				Where
					a.LvContractId = @LvContractId and a.LvSubStageId = @ManagerApprovalSubStageId
					
				Insert into 
					lv.LvContractStatus (LvContractId, LvStageId, LvSubStageId, isEnabled, CreatedBy, ModifiedBy, Remarks)
				Values
					(@LvContractId, @AssignLvStageId, @AssignLvSubStageId, 1, @ModifiedBy, @ModifiedBy, @Remarks)

				Update a
				Set
					a.NoOfApprovedTanks = @NoOfTanksApproved
				From
					lv.LvContract a
				Where
					a.Id = @LvContractId

				exec [lv].[MultiplyContracts] @LvContractId

			End
			else
			Begin

				-- Open Stages for submission
				Update a
				Set
					a.Remarks = @Remarks,
					a.isEnabled = 1,
					a.isRejected = 1,
					a.RejectedBy = @ModifiedBy,
					a.ModifiedBy = @ModifiedBy,
					a.ModifiedOn = GETDATE()
				From
					lv.LvContractStatus a
				Where
					a.LvContractId = @LvContractId and a.LvSubStageId = @ReviewSubStageId

				Update a
				Set
					a.isEnabled = 0,
					a.ModifiedBy = @ModifiedBy,
					a.ModifiedOn = GETDATE()
				From
					lv.LvContractStatus a
				Where
					a.LvContractId = @LvContractId and a.LvSubStageId = @ManagerApprovalSubStageId 

			End

		End



	End Try
	Begin Catch

		Declare @error nvarchar(max) = error_message()

		raiserror(@error, 16, 1)

	End Catch


End


GO
/****** Object:  StoredProcedure [lv].[ChangeStatusForAssignedLv]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lv].[ChangeStatusForAssignedLv]
(
	@LvApprovedContractId int,
	@LoggedInUserId int
)
As
Begin

	Declare @AssignStageId tinyint = 3, @SendToCustomerStageId tinyint = 4
	Declare @AssignSubStageId tinyint = 5, @InformCustomerSubStageId tinyint = 6, @CollectedContractsSubStageId tinyint = 7

	if exists(Select 1 from lv.LvApprovedContractStatus a where a.LvApprovedContractId = @LvApprovedContractId and a.LvSubStageId = @AssignSubStageId and a.isEnabled = 1)
	Begin

		Update a
		Set
			a.isEnabled = 0,
			a.ModifiedBy = @LoggedInUserId,
			a.ModifiedOn = GETDATE()
		From
			lv.LvApprovedContractStatus a
		Where
			a.LvApprovedContractId = @LvApprovedContractId and a.LvSubStageId = @AssignSubStageId

		Insert into 
			lv.LvApprovedContractStatus (LvApprovedContractId, LvStageId, LvSubStageId, isEnabled, CreatedBy, ModifiedBy)

		Select 
			@LvApprovedContractId, @SendToCustomerStageId, @InformCustomerSubStageId, 0, @LoggedInUserId, @LoggedInUserId

		union all

		Select 
			@LvApprovedContractId, @SendToCustomerStageId, @CollectedContractsSubStageId, 1, @LoggedInUserId, @LoggedInUserId

	End
	Else
	Begin
		raiserror('Unable to proceed', 16, 1)
	End


End
GO
/****** Object:  StoredProcedure [lv].[GenerateLVContractCode]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lv].[GenerateLVContractCode]
(
	@Year int = 2016,
	@Month int = 01
)
As
Begin

	Declare @ContractCode varchar(100) = 'WOQ-BSS-LV-'+ CAST(@Year as varchar(5)) + Replace(STR(@Month, 2), ' ', '0') + '-001' 

	Select
		@ContractCode = isnull('WOQ-BSS-LV' + CAST(@Year as varchar(5)) + Replace(STR(@Month, 2), ' ', '0') + '-' + Replace(STR(MAX(a.SiteCount) + 1, 3), ' ', '0'), @ContractCode) 
	From
	(
		Select
			isnull(ROW_NUMBER() over (partition by Datepart(year, a.CreatedOn), Datepart(month, a.CreatedOn) order by a.CreatedOn), 0) as SiteCount
		From
			[lv].[LvContract] a
		Where
			DATEPART(year, a.CreatedOn) = @Year and DATEPART(MONTH, a.CreatedOn) = @Month
	) a

	Select
		@ContractCode

End



GO
/****** Object:  StoredProcedure [lv].[GetLvsToAsign]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [lv].[GetLvsToAsign]
(
	@StatusId tinyint
)
As
Begin

	Declare @InYardNewStatusId tinyint = 2, @InYardUsedStatusId tinyint = 3

	Select
		a.ChasisNumber, a.WOQODTankEquipmentNumber, a.CapacityId, a.DateOfReceiving, a.[Certificate]
	From
		lv.LeasedVehicle a
	Inner Join
		lv.LeasedVehicleStatus b
	On
		a.StatusId = b.Id
	Where
		@StatusId = 0 and a.StatusId in (@InYardNewStatusId, @InYardUsedStatusId)

End
GO
/****** Object:  StoredProcedure [lv].[GetSiteDataForLv]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [lv].[GetSiteDataForLv]
(
	@SiteId bigint
)
As
Begin
	Declare @OwnerContractorTypeId tinyint = 1 -- Owner
	Declare @MainContractorTypeId tinyint = 2 -- Owner

	Select
		a.Id, a.CustId, a.CustomerName, a.MinAvgConsumption, a.MaxAvgConsumption
		, b.ProjectName, b.ProjectLocation, b.ProjectDescription, b.ProjectClassificationId
		, b.ProjectStartDate, b.ProjectEndDate, b.IsTentative
		, d.Name as OwnerName, f.Name as MainContractor
	From
		[contract].[Site] a
	Left Join
		[contract].SiteProjectDetails b
	On
		a.Id = b.SiteId and a.ContractorTypeId = b.ContractorTypeId
	Left Join
		[contract].SiteProjectDetails c
	On
		a.ContractorTypeId <> @OwnerContractorTypeId and a.Id = c.SiteId and c.ContractorTypeId = @OwnerContractorTypeId 
	Left Join
		[contract].SiteCRAnalysis d
	On
		c.SiteId = d.SiteId and d.ApplicantTypeId = @OwnerContractorTypeId
	Left Join
		[contract].SiteProjectDetails e
	On
		a.ContractorTypeId <> @MainContractorTypeId and a.Id = e.SiteId and e.ContractorTypeId = @MainContractorTypeId 
	Left Join
		[contract].SiteCRAnalysis f
	On
		e.SiteId = f.SiteId and f.ApplicantTypeId = @MainContractorTypeId
	Where
		a.Id = @SiteId
End
GO
/****** Object:  StoredProcedure [lv].[LvWorkFlow]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lv].[LvWorkFlow]
(
	@LvContractId bigint = 20263,
	@ModifiedBy int,
	@FromSubStageId tinyint = null,
	@AppStageId tinyint = null
)
As
Begin

	Declare @LvStageId int

	Declare @StageFrom int

	Declare @AppSubmissionStageId tinyint = 1, @VerificationStageId tinyint = 2

	Declare @AppSubmissionSubStageId tinyint = 1, @DocumentUploadSubStageId tinyint = 2, @ReviewSubStageId tinyint = 3

	Select
		@LvStageId = max(a.LvStageId)
	From
		[lv].LvContractStatus a
	Where
		a.LvContractId = @LvContractId --and a.isEnabled = 1

	--Select @StageId

	if (@AppStageId = @AppSubmissionStageId)
	Begin

		if not exists (select 1 from [lv].LvContractStatus a where a.LvContractId = @LvContractId and a.LvStageId = @AppSubmissionStageId and a.isEnabled = 1)
		Begin

			if not exists (select 1 from [lv].LvContractStatus a where a.LvContractId = @LvContractId and a.LvSubStageId = @ReviewSubStageId)
			Begin

				Insert into 
					[lv].LvContractStatus (LvContractId, LvStageId, LvSubStageId, isEnabled, CreatedBy, ModifiedBy)
				values
					(@LvContractId, @VerificationStageId, @ReviewSubStageId, 1, @ModifiedBy, @ModifiedBy)

			End
			Else
			Begin

				Update a
				Set
					a.isRejected = 0,
					a.Remarks = null
				From
					lv.LvContractStatus a
				Where
					a.LvContractId = @LvContractId and a.LvSubStageId in (@AppSubmissionSubStageId, @DocumentUploadSubStageId)


				Update a
				Set
					a.isEnabled = 1,
					a.isRejected = 0,
					a.Remarks = null,
					a.ModifiedBy = @ModifiedBy,
					a.ModifiedOn = GETDATE()
				From
					lv.LvContractStatus a
				Where
					a.LvContractId = @LvContractId and a.LvSubStageId = @ReviewSubStageId 

			End


		End

	End

	
End

GO
/****** Object:  StoredProcedure [lv].[MarkAsGiven]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lv].[MarkAsGiven]
(
	@LvApprovedContractId int = 3,
	@Remarks nvarchar(200) = null,
	@ModifiedBy int = 5
)
As
Begin

	Declare @SendToCustomerStageId tinyint = 4
	Declare @CollectedContractsSubStageId tinyint = 7, @ReceivedContractSubStageId tinyint = 8

	

	Update a
	Set
		a.isEnabled = 0,
		a.ModifiedBy = @ModifiedBy,
		a.ModifiedOn = GETDATE()
	From
		lv.LvApprovedContractStatus a
	Where
		a.LvApprovedContractId = @LvApprovedContractId and a.LvStageId = @SendToCustomerStageId and a.LvSubStageId = @CollectedContractsSubStageId

	if exists (select 1 from lv.LvApprovedContractStatus a where a.LvApprovedContractId = @LvApprovedContractId and a.LvSubStageId = @ReceivedContractSubStageId)
	Begin

		Update a
		Set
			a.isEnabled = 1,
			a.Remarks = @Remarks,
			a.ModifiedBy = @ModifiedBy,
			a.ModifiedOn = GETDATE()
		From
			lv.LvApprovedContractStatus a
		Where
			a.LvApprovedContractId = @LvApprovedContractId and a.LvSubStageId = @ReceivedContractSubStageId
					
	End
	else
	Begin

		Insert into 
			lv.LvApprovedContractStatus (LvApprovedContractId, LvStageId, LvSubStageId, isEnabled, CreatedBy, ModifiedBy, Remarks)
		Values
			(@LvApprovedContractId, @SendToCustomerStageId, @ReceivedContractSubStageId, 1, @ModifiedBy, @ModifiedBy, @Remarks)

	End

End
GO
/****** Object:  StoredProcedure [lv].[MarkAsLeased]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lv].[MarkAsLeased]
(
	@LvApprovedContractId int = 3,
	@Remarks nvarchar(200) = null,
	@ModifiedBy int = 5
)
As
Begin

	Declare @SendToCustomerStageId tinyint = 4, @LeasedToCustomerStageId tinyint  = 5
	Declare @ReceivedContractSubStageId tinyint = 8, @LeasedToCustomerSubStageId tinyint = 9, @VehicleLeasedStatusId tinyint = 1

	Update a
	Set
		a.isEnabled = 0,
		a.ModifiedBy = @ModifiedBy,
		a.ModifiedOn = GETDATE()
	From
		lv.LvApprovedContractStatus a
	Where
		a.LvApprovedContractId = @LvApprovedContractId and a.LvStageId = @SendToCustomerStageId and a.LvSubStageId = @ReceivedContractSubStageId

	if exists (select 1 from lv.LvApprovedContractStatus a where a.LvApprovedContractId = @LvApprovedContractId and a.LvSubStageId = @LeasedToCustomerSubStageId)
	Begin

		Update a
		Set
			a.isEnabled = 1,
			a.Remarks = @Remarks,
			a.ModifiedBy = @ModifiedBy,
			a.ModifiedOn = GETDATE()
		From
			lv.LvApprovedContractStatus a
		Where
			a.LvApprovedContractId = @LvApprovedContractId and a.LvSubStageId = @LeasedToCustomerSubStageId
					
	End
	else
	Begin

		Insert into 
			lv.LvApprovedContractStatus (LvApprovedContractId, LvStageId, LvSubStageId, isEnabled, CreatedBy, ModifiedBy, Remarks)
		Values
			(@LvApprovedContractId, @LeasedToCustomerStageId, @LeasedToCustomerSubStageId, 1, @ModifiedBy, @ModifiedBy, @Remarks)

	End

	-- Update LV Status to Leased

	Update b
	Set
		b.StatusId = @VehicleLeasedStatusId
	From
		lv.LvApprovedContracts a
	Inner Join
		lv.LeasedVehicle b
	On
		a.LeasedVehicleId = b.Id
	Where
		a.Id = @LvApprovedContractId

End
GO
/****** Object:  StoredProcedure [lv].[MultiplyContracts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lv].[MultiplyContracts]
(
	@LvContractId int = 22
)
As
Begin

	Declare @MaxValue tinyint

	Select
		@MaxValue = a.NumberValue
	From
		lv.Setting a

	Declare @tmpApprovedContracts table (Id int, LvContractId int)
	
	;With number
	as
	(
		Select 1 as value
		union all
		Select value + 1 from number where value < @MaxValue
	)
	Insert into
		lv.LvApprovedContracts (LvContractId, LvContractTypeId, LvCustomerTypeId, ContractName, ContractCode, TelNo, FaxNo, POBoxNo, EmailId, ProjectName, ProjectLocation, ProjectDescription
		, BuyerProjectDescription, ProjectClassificationId, ProjectStartDate, ProjectEndDate, ProjectIsTentative, MinAvgConsumption, MaxAvgConsumption
		, LPOwnerName, LPMainContName, AccountNumber, Location, NoOfTanksRequired, DistributionTypeId, LeaseStartDate, LeaseEndDate
		, ServingSiteLocations, LesseeName, LesseeCapacity, CoverSheetRemarks, ContractRemarks, isActive, FolderPath, SubOrderId
		, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn)
	Output
		inserted.Id, @LvContractId into @tmpApprovedContracts
	Select
		a.Id, a.LvContractTypeId, a.LvCustomerTypeId, a.ContractName
		, Case When a.SiteId is null then a.ContractCode else c.CustomerName end
		, a.TelNo, a.FaxNo, a.POBoxNo, a.EmailId, a.ProjectName, a.ProjectLocation, a.ProjectDescription
		, a.BuyerProjectDescription, a.ProjectClassificationId, a.ProjectStartDate, a.ProjectEndDate, a.ProjectIsTentative, a.MinAvgConsumption, a.MaxAvgConsumption
		, a.LPOwnerName, a.LPMainContName, a.AccountNumber, a.Location, a.NoOfTanksRequired, a.DistributionTypeId, a.LeaseStartDate, a.LeaseEndDate
		, a.ServingSiteLocations, a.LesseeName, a.LesseeCapacity, a.CoverSheetRemarks, a.ContractRemarks, a.isActive, a.FolderPath, b.value
		, a.CreatedBy, a.CreatedOn, a.ModifiedBy, a.ModifiedOn
	From
		lv.LvContract a
	Left Join
		[contract].[Site] c
	On
		a.SiteId = c.Id
	Inner Join
		number b
	On
		a.NoOfApprovedTanks >= b.value
	Where
		a.Id = @LvContractId


	Insert into
		lv.LvApprovedContractStatus (LvApprovedContractId, LvStageId, LvSubStageId, isEnabled, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn)
	Select
		b.Id, a.LvStageId, a.LvSubStageId, a.isEnabled, a.CreatedBy, a.CreatedOn, a.ModifiedBy, a.ModifiedOn
	From
		lv.LvContractStatus a
	Inner Join
		@tmpApprovedContracts b
	On
		a.LvContractId = b.LvContractId
	Where
		a.LvContractId = @LvContractId

	--Insert into 
	--	lv.LvApprovedContractAttachments (LvApprovedContractId, AttachmentId, OtherAttachmentType, CreatedBy, ModifiedBy, CreatedOn, ModifiedOn)
	--Select
	--	b.Id, a.AttachmentId, a.OtherAttachmentType, a.CreatedBy, a.ModifiedBy, a.CreatedOn, a.ModifiedOn
	--From
	--	lv.LvAttachment a
	--Inner Join
	--	@tmpApprovedContracts b
	--On
	--	a.LvContractId = b.LvContractId
	--Where
	--	a.LvContractId = @LvContractId

	Insert into 
		lv.LvApprovedContractDocuments (LvApprovedContractId, FileName, FileExtension, ResourceId, LvAttachmentChecklistId
		, Remarks, isDeleted, CreatedBy, ModifiedBy, CreatedOn, ModifiedOn) 
	Select
		b.Id, a.FileName, a.FileExtension, a.ResourceId, a.LvAttachmentChecklistId, a.Remarks, a.isDeleted
		, a.CreatedBy, a.ModifiedBy, a.CreatedOn, a.ModifiedOn
	From
		lv.LvDocuments a
	Inner Join
		@tmpApprovedContracts b
	On
		a.LvContractId = b.LvContractId
	Where
		a.LvContractId = @LvContractId and a.isDeleted = 0

End


GO
/****** Object:  StoredProcedure [lv].[PurgeEntireLV]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [lv].[PurgeEntireLV]
As
Begin

	exec [lv].[PurgeLvApprovedData]
	EXEC [lv].[PurgeLvData]

	Update a
	Set
		a.StatusId = 2
	From
		lv.LeasedVehicle a

End
GO
/****** Object:  StoredProcedure [lv].[PurgeLvApprovedData]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [lv].[PurgeLvApprovedData]
As
Begin

  Delete
  FROM [WOQ_DMS_New].[lv].[LvApprovedContractStatus]

  Delete
  FROM [WOQ_DMS_New].[lv].[LvApprovedContractDocuments]

  Delete
  FROM [WOQ_DMS_New].[lv].[LvApprovedContractAttachments]

  Delete
  FROM [WOQ_DMS_New].[lv].[LVLeaseDocuments]

  Delete
  FROM [WOQ_DMS_New].[lv].[LvApprovedContracts]

End


GO
/****** Object:  StoredProcedure [lv].[PurgeLvData]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [lv].[PurgeLvData]
As
Begin

  Delete
  FROM [WOQ_DMS_New].[lv].[LvContractStatus]

  Delete
  FROM [WOQ_DMS_New].[lv].[LvDocuments]

  Delete
  FROM [WOQ_DMS_New].[lv].[LvAttachment]

  Delete
  FROM [WOQ_DMS_New].[lv].[LvContract]

End


GO
/****** Object:  StoredProcedure [notify].[ProcessEmails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [notify].[ProcessEmails]
(
	@Id int
)
As
Begin

	--Begin tran

	Begin Try

		Declare @ReadyToSend tinyint, @ReadyStatus char(1) = 'R', @BeingSent tinyint, @BeingSentStatus char(1) = 'B', @SuccessMessage char(4) = 'Done'
			, @ExceptionNamespace char(3) = 'SQL', @LogUser int = 5 -- Ziad 
			, @ApiBaseAddress varchar(max) = 'http://woqv-webdev/TestLDOAPI/', @ApiUrl varchar(max) = 'api/Email/SendEmail' 

		Select
			@ReadyToSend = a.Id
		From
			[notify].[EmailStatus] a
		Where
			a.Code = @ReadyStatus 

		Select
			@BeingSent = a.Id
		From
			[notify].[EmailStatus] a
		Where
			a.Code = @BeingSentStatus 

		Declare @tmp table (Id int)

		Update a
		Set
			a.EmailStatusId = @BeingSent
		Output
			inserted.Id into @tmp
		From
			[notify].[EmailLog] a
		Where
			a.Id =  @Id

		Declare @Ids varchar(max)

		Select
			@Ids = COALESCE(@Ids + ',', '') + Cast(a.Id as varchar) 
		From
			@tmp a

		if (@Ids is not null)
		Begin

			Declare @StatusMessage nvarchar(max)

			Select 
				@StatusMessage = dbo.SendEmail(@Ids, @ApiBaseAddress, @ApiUrl)

			if (@StatusMessage <> @SuccessMessage)
			Begin

				Insert into 
					[log].[ExceptionLog] (Namespace_Name, Class_name, Method_name, Exceptionhtml, CreatedBy)
				values
					(@ExceptionNamespace, @ExceptionNamespace, @ExceptionNamespace, @StatusMessage + '------@Ids' + @Ids , @LogUser) 

			End
			else
			Begin

				Select @StatusMessage

			End

		End

		--commit tran

	End Try
	Begin Catch

		--rollback tran
		
		Declare @ErrorMessage nvarchar(max) = error_message()

		Insert into 
			[log].[ExceptionLog] (Namespace_Name, Class_name, Method_name, Exceptionhtml, CreatedBy)
		values
			(@ExceptionNamespace, @ExceptionNamespace, @ExceptionNamespace, @ErrorMessage, @LogUser) 

	End Catch

End


GO
/****** Object:  StoredProcedure [ordering].[AssignDriversToShift]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[AssignDriversToShift]
(
	@ActualShiftId int = 0,
	@ShiftId tinyint = 1,
	@DriverIds varchar(max) = '1,2,3,4',
	@ShiftDate date = '08-04-2016',
	@SectionId tinyint = 3,
	@LoggedInUserId int = 5
)
As
Begin

	Declare @tmp table (ActualShiftId int)
	Declare @isActive bit = 1

	if (@ActualShiftId = 0)
	Begin

		Insert into @tmp (ActualShiftId)
		exec [ordering].[CreateShift] @SectionId, @ShiftId, @ShiftDate, @LoggedInUserId

		Select
			@ActualShiftId = a.ActualShiftId
		From
			@tmp a 

	End

	Insert into 
		[ordering].DET_ShiftDrivers (DriverId, ShiftDetailId, SectionId, isActive, CreatedBy, ModifiedBy) 
	Select
		a.Item, @ActualShiftId, @SectionId, @isActive, @LoggedInUserId, @LoggedInUserId
	From
		dbo.SplitString(@DriverIds, ',') a

End

	





		

	
		




	
GO
/****** Object:  StoredProcedure [ordering].[AssignOrdersToShift]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [ordering].[AssignOrdersToShift]
(
	@ActualShiftId int = 0,
	@ShiftId tinyint = 1,
	@OrderIds varchar(max) = '1,2,3,4',
	@ShiftDate date = '08-04-2016',
	@SectionId tinyint = 3,
	@LoggedInUserId int = 5
)
As
Begin

	Declare @tmp table (ActualShiftId int)
	Declare @isActive bit = 1

	if (@ActualShiftId = 0)
	Begin

		Insert into @tmp (ActualShiftId)
		exec [ordering].[CreateShift] @SectionId, @ShiftId, @ShiftDate, @LoggedInUserId

		Select
			@ActualShiftId = a.ActualShiftId
		From
			@tmp a 

	End

	Insert into 
		[ordering].DET_ShiftOrders(OrderItemId, ShiftDetailId, SectionId, isActive, CreatedBy, ModifiedBy) 
	Select
		a.Item, @ActualShiftId, @SectionId, @isActive, @LoggedInUserId, @LoggedInUserId
	From
		dbo.SplitString(@OrderIds, ',') a

End

	





		

	
		




	
GO
/****** Object:  StoredProcedure [ordering].[AttachNotificationToEachUser]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[AttachNotificationToEachUser]
(
	@NotificationId int,
	@LoggedInUserId int
)
As
Begin

	if exists (select 1 from [ordering].[DET_PortalUser_Notification] a where a.NotificationId = @NotificationId)
	Begin

		Insert into 
			[log].[ExceptionLog] (Namespace_Name, Class_name, Method_name, Exceptionhtml, CreatedBy)
		values
			('[ordering].[AttachNotificationToEachUser]', 'Notification already present for other users', null, null, @LoggedInUserId) 

		return

	End

	Insert into 
		[ordering].[DET_PortalUser_Notification] (PortalUserId, NotificationId, hasAccepted)
	Select
		a.Id as PortalUserId, b.Id as NotificationId, 0 as hasAccepted
	From
		[orders].[PortalUsers] a
	Cross Join
		[ordering].[MST_Portal_Notification] b
	Where
		a.isActive = 1 and b.Id = @NotificationId and a.Supply = 1
End
GO
/****** Object:  StoredProcedure [ordering].[AttachNotificationToSpecificSites]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [ordering].[AttachNotificationToSpecificSites]
(
	@NotificationId int,
	@SiteIds nvarchar(max),
	@LoggedInUserId int
)
As
Begin

	if exists (select 1 from [ordering].[DET_PortalUser_Notification] a where a.NotificationId = @NotificationId)
	Begin

		Insert into 
			[log].[ExceptionLog] (Namespace_Name, Class_name, Method_name, Exceptionhtml, CreatedBy)
		values
			('[ordering].[AttachNotificationToSpecificSites]', 'Notification already present for users', null, null, @LoggedInUserId) 

		return

	End

	Insert into 
		[ordering].[DET_PortalUser_Notification] (PortalUserId, NotificationId, hasAccepted)
	Select
		b.PortalUserId, c.Id as NotificationId, 0 as hasAccepted
	From
		[dbo].[SitesERP] a
	Inner Join
		[orders].[PortalUserSites] b
	On
		a.ID = b.SiteId
	Inner Join
		[orders].[PortalUsers] d
	On
		b.PortalUserId = d.Id and d.isActive = 1 and d.Supply = 1
	Inner Join
		[ordering].[MST_Portal_Notification] c
	On
		c.Id = @NotificationId
	Where
		a.ID in (select * from dbo.SplitString(@SiteIds, ','))

End
GO
/****** Object:  StoredProcedure [ordering].[AttachNotificationToSpecificUsers]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [ordering].[AttachNotificationToSpecificUsers]
(
	@NotificationId int,
	@UserIds nvarchar(max),
	@LoggedInUserId int
)
As
Begin

	if exists (select 1 from [ordering].[DET_PortalUser_Notification] a where a.NotificationId = @NotificationId)
	Begin

		Insert into 
			[log].[ExceptionLog] (Namespace_Name, Class_name, Method_name, Exceptionhtml, CreatedBy)
		values
			('[ordering].[AttachNotificationToEachUser]', 'Notification already present for users', null, null, @LoggedInUserId) 

		return

	End

	Insert into 
		[ordering].[DET_PortalUser_Notification] (PortalUserId, NotificationId, hasAccepted)
	Select
		a.Id as PortalUserId, b.Id as NotificationId, 0 as hasAccepted
	From
		[orders].[PortalUsers] a
	Inner Join
		[ordering].[MST_Portal_Notification] b
	On
		b.Id = @NotificationId
	Where
		a.isActive = 1 and a.Supply = 1 and a.Id in (select * from dbo.SplitString(@UserIds, ','))
End
GO
/****** Object:  StoredProcedure [ordering].[CanGenerateShiftOrders]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[CanGenerateShiftOrders]
(
	@StartDate datetime = '2016-09-05 16:00:00.000',
	@EndDate datetime = '2016-09-05 23:59:59.000',
	@CurrentDate datetime = '2016-09-05 23:00:00.000'
)
As
Begin

	--Select @EndDate, @CurrentDate

	Declare @myDate datetime = @StartDate 

	Declare @hoursBefore tinyint = 2, @hoursAfter tinyint = 6

	Set
		@StartDate = DateAdd(hour, (-1) * @hoursBefore, @myDate)

	Set
		@EndDate = DateAdd(hour, @hoursAfter, @myDate)

	--Select
	--	@StartDate, @EndDate

	if (@CurrentDate >= @StartDate and @CurrentDate <= @EndDate)
	Begin
		Select 1
	End
	else
	Begin
		Select 0
	End

End

GO
/****** Object:  StoredProcedure [ordering].[CreateShift]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[CreateShift]
(
	@SectionId tinyint = 1,
	@ShiftId tinyint = 1,
	@ShiftDate date = '2016-08-16',
	@LoggedInUserId int = 5
)
As
Begin

	Declare @ActualShiftId int = 0, @IsActive bit = 1, @ShiftStatusId int = 0

	Declare @ShiftStartTime datetime, @ShiftEndTime datetime

	Select
		@ShiftStartTime = a.StartTime, @ShiftEndTime = a.EndTime
	From
		[ordering].[MST_Shift] a
	Where
		a.Id = @ShiftId

	Select
		@ShiftStartTime = Cast(Cast(@ShiftDate as varchar(10)) + ' ' + CAST(Cast(@ShiftStartTime as time) as varchar(8)) as datetime),
		@ShiftEndTime = Cast(Cast(@ShiftDate as varchar(10)) + ' ' + CAST(Cast(@ShiftEndTime as time) as varchar(8)) as datetime)

	Select
		@ShiftStatusId = a.Id
	From
		[ordering].[MST_ShiftStatus] a
	Where
		a.Code = 'C'  -- created

	Declare @ShiftName varchar(max)

	Select
		@ShiftName = a.ShiftName
	From
		[ordering].MST_Shift a
	Where
		a.Id = @ShiftId

	Select
		@ActualShiftId = a.Id
	From
		[ordering].[DET_Shifts] a
	Where
		a.SectionId = @SectionId and a.StartDate between @ShiftStartTime and @ShiftEndTime
	
	--Select
	--	@ShiftName = CAST(@ShiftDate as varchar(max)) + ' - ' + @ShiftName 

	Select
		@ShiftName = @ShiftName 

	if (@ActualShiftId = 0) 
	Begin

		Insert into 
			[ordering].DET_Shifts (SectionId, ShiftName, ShiftDay, StartDate, EndDate, ShiftStatusId, isActive, CreatedBy, ModifiedBy)
		Output
			inserted.Id as ActualShiftId
		Select
			@SectionId, @ShiftName, @ShiftDate, @ShiftStartTime, @ShiftEndTime, @ShiftStatusId, @IsActive, @LoggedInUserId, @LoggedInUserId  
			
	End
	else
	Begin
		Select @ActualShiftId as ActualShiftId
	End


End

GO
/****** Object:  StoredProcedure [ordering].[CreateShiftAction]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[CreateShiftAction]
(
	@ShiftDate date = '2016-09-02',
	@ShiftId tinyint = 2,
	@LoggedInUserId int = 5
)
As
Begin

	Declare @SectionId tinyint = 1 -- Supply 

	Declare @ActualShiftId int = 0, @IsActive bit = 1, @ActionId tinyint = 2 -- Waiting for export
	
	Declare @ShiftStartTime datetime, @ShiftEndTime datetime, @CurrentDate datetime = getdate() -- supply 

	Declare @tmp table (ActualShiftId int, ShiftStartTime datetime, ShiftEndTime datetime)
	
	Insert into 
		@tmp (ActualShiftId, ShiftStartTime, ShiftEndTime)
	exec [ordering].[GetActualShiftByShiftId] @SectionId, @ShiftId, @ShiftDate

	Select
		@ActualShiftId = a.ActualShiftId,
		@ShiftStartTime = a.ShiftStartTime,
		@ShiftEndTime = a.ShiftEndTime	
	From
		@tmp a

	--Select @ActualShiftId, @ShiftStartTime, @ShiftEndTime

	Declare @tmpBool table (Value tinyint)

	Insert into @tmpBool (Value)
	exec [ordering].[CanGenerateShiftOrders] @ShiftStartTime, @ShiftEndTime, @CurrentDate

	if exists (select 1 from @tmpBool a where a.Value = 1)
	Begin

		Declare @OrderedLoad int, @OrdersCreated int

		Select
			@OrderedLoad = sum(a.NoOfLoad)
		From
			[ordering].[OrderPlanning] a
		Where
			a.ShiftId = @ActualShiftId 

		Declare @tmpCount table(Value int)

		Insert into @tmpCount (Value)
		exec [ordering].[GetShiftWiseOrderCount] @ActualShiftId

		Select
			@OrdersCreated = a.Value
		From
			@tmpCount a
			
		--Select @OrderedLoad, @OrdersCreated

		if (@OrderedLoad = @OrdersCreated)
		Begin

			--Select 'Orders Created'

			if not exists (select 1 from [ordering].[DET_Shift_Actions] a where a.ShiftId = @ActualShiftId)
			Begin

				Insert into
					[ordering].[DET_Shift_Actions] (ShiftId, MasterShiftId, ActionId, isActive, CreatedBy, ModifiedBy)
				Values
					(@ActualShiftId, @ShiftId, @ActionId, @IsActive, @LoggedInUserId, @LoggedInUserId)
			
				--Select 'Done'
				exec [ordering].[ExportToLomosoft]  

				--EXEC msdb.dbo.sp_start_job @job_name='OnlineOrdering'

			End
			else		
			Begin
				Raiserror('Already exported', 16, 1)

			End


		End
		else
		Begin

			Raiserror('Error in Loads', 16, 1)	

		End
		
	End
	else
	Begin

		Raiserror('Cannot Export at this moment', 16, 1)

	End

End

GO
/****** Object:  StoredProcedure [ordering].[ExportSTGToLomosoft]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [ordering].[ExportSTGToLomosoft]
(
	@BatchId int = 16,
	@LoggedInUserId int = 5
)
As
Begin

	Declare @ExportedToLomosoft tinyint = 1, @WaitingForExport tinyint = 2, @BeingExported tinyint = 4, @FailedToExport tinyint = 3

	Declare @LoggedInUserName varchar(100)

	Select
		@LoggedInUserName = a.FullName
	From
		AspNetUsers a
	Where
		a.UId = @LoggedInUserId

	exec [ordering].[UpdateSTG] @BatchId

	if exists (select 1 from [ordering].[STG_Batch] a where a.Id = @BatchId and a.ExportStatusId = @WaitingForExport)
	Begin

			Update a
			Set
				a.ExportStatusId = @BeingExported,
				a.ExportedOn = GETDATE(),
				a.ExportedBy = @LoggedInUserId
			From
				[ordering].[STG_Batch] a
			Where
				a.Id = @BatchId and a.ExportStatusId = @WaitingForExport -- was waiting

			Update a
			Set
				a.ExportStatusId = @BeingExported
			From
				[ordering].[STG_Orders] a
			Where
				a.STG_BatchId = @BatchId and a.ExportStatusId = @WaitingForExport


			Declare @CurrentDate datetime = getdate()

			-- Export Part

			Declare @OrderRowId int, @CustNo int, @SiteNo int, @Quantity numeric(8,2), @ProductId smallint, @DeliverOn datetime,
				@Comments varchar(50), @IsSuccessful bit = 0, @OrderID as int, @OrderNo varchar(11), @Result varchar(100),
				@CustomerRefNo varchar(100), @LomoBoxId int

			Declare lomocursor Cursor
			For
				Select
					a.Id, a.LomoProductId, a.Quantity, a.CustNum, a.SiteNum, a.CustomerRef, a.LomoDate, a.BoxId
					, a.Remark
				From
					[ordering].[STG_Orders] a
				Where
					a.STG_BatchId = @BatchId and a.ExportStatusId = @BeingExported

			OPEN lomocursor

			Fetch Next From lomocursor INTO @OrderRowId, @ProductId, @Quantity, @CustNo, @SiteNo, @CustomerRefNo, @DeliverOn, @LomoBoxId, @Comments

			While (@@FETCH_STATUS <> -1) -- -1 == FETCH statement failed or the row was beyond the result set.
			Begin
				-- if lomosoft call fails Order MAP table should not get updated
				Begin try

					exec [10.0.68.11].[DMS_WOQOD].[dbo].[InsertManualOrder] @CustNo, @SiteNo, @Quantity, @ProductId
					, @DeliverOn, @LomoBoxId, @CurrentDate, @LoggedInUserName, @Comments, @CustomerRefNo, @IsSuccessful output, @OrderID output
					, @OrderNo output, @Result output

					Update a
					Set
						a.LomoOrderId = @OrderID
						, a.LomoOrderNum = @OrderNo
						, a.LomoRemarks = @Result
						, a.ExportStatusId = Case when @IsSuccessful = 1 then @ExportedToLomosoft else @FailedToExport end
					From
						[ordering].[STG_Orders] a
					Where
						a.Id = @OrderRowId

				End Try
				Begin catch

					Update a
					Set
						a.LomoOrderId = @OrderID
						, a.LomoOrderNum = @OrderNo
						, a.LomoRemarks = Cast(ERROR_MESSAGE() as varchar(100))
						, a.ExportStatusId = Case when @IsSuccessful = 1 then @ExportedToLomosoft else @FailedToExport end
					From
						[ordering].[STG_Orders] a
					Where
						a.Id = @OrderRowId

				End Catch

				Fetch Next From lomocursor INTO @OrderRowId, @ProductId, @Quantity, @CustNo, @SiteNo, @CustomerRefNo, @DeliverOn, @LomoBoxId, @Comments

			END
			CLOSE lomocursor
			DEALLOCATE lomocursor

			Update a
			Set
				a.ExportStatusId = @ExportedToLomosoft -- update to exported
			From
				[ordering].[STG_Batch] a
			Where
				a.Id = @BatchId and a.ExportStatusId = @BeingExported 

	End
	else
	Begin

		Declare @ErrorMessage nvarchar(max) = error_message()

		Update a
		Set
			a.ExportStatusId = @FailedToExport -- update to exported
		From
			[ordering].[STG_Batch] a
		Where
			a.Id = @BatchId and a.ExportStatusId = @BeingExported 

		Raiserror(@ErrorMessage, 16, 1)

	End

End

GO
/****** Object:  StoredProcedure [ordering].[ExportToLomosoft]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [ordering].[ExportToLomosoft]
As
Begin

	--raiserror('Error', 16, 1)

	Declare @ActualShiftId int = 0, @LoggedInUserId int = 0, @MasterShiftId tinyint

	Select
		@ActualShiftId = a.ShiftId, @LoggedInUserId = a.CreatedBy, @MasterShiftId = a.MasterShiftId 
	From
		[ordering].[DET_Shift_Actions] a
	Where
		a.ActionId = 2

	Declare @ExportedToLomosoft tinyint = 1, @WaitingForExport tinyint = 2

	if exists (select 1 from [ordering].[DET_Shift_Actions] a where a.ShiftId = @ActualShiftId and a.isActive = 1)
	Begin
		--       Online                    Created
		Declare @OrderTypeId tinyint = 1, @StatusId tinyint = 1, @BoxId smallint, @LomoBoxId smallint, @IsActive bit = 1

		Declare @tmp table (ProductId tinyint, ProductName nvarchar(max), ShiftId int, Quantity int, SiteId int, SiteName nvarchar(max)
					, SiteLocation nvarchar(100), ShiftDay date, ShiftStartDate datetime, ShiftEndDate datetime)

		Insert into
			@tmp (ProductId, ProductName, ShiftId, Quantity, SiteId, SiteName, SiteLocation, ShiftDay, ShiftStartDate, ShiftEndDate)
		exec [ordering].[GetOnlineOrdersByShiftForExport] @ActualShiftId

		Select
			@BoxId = c.BoxId, @LomoBoxId = c.LomoBoxId
		From
			[ordering].[DET_Shifts] a
		Inner Join
			[ordering].[MST_Shift] b
		On
			Cast(a.StartDate as time) = Cast(b.StartTime as time) and Cast(a.EndDate as time) = Cast(b.EndTime as time)
		Inner Join
			[ordering].[DET_Shift_Box_Lomo] c
		On
			b.Id = c.ShiftId
		Where
			a.Id = @ActualShiftId 

		Insert into
			[ordering].[MST_DMS_Order] (OrderItemNo, ProductId, Quantity, BoxId, LomoBoxId, SiteId, OrderedFor, ShiftId, OrderTypeId, StatusId, isActive, CreatedBy, ModifiedBy)
		--output
		--	inserted.*
		Select
			next value for dbo.OrderItemNo, a.ProductId, a.Quantity, @BoxId, @LomoBoxId, a.SiteId
			, a.ShiftDay, a.ShiftId, @OrderTypeId, @StatusId, @IsActive, @LoggedInUserId, @LoggedInUserId 
		From
			@tmp a

		Declare @CurrentDate datetime = getdate()

		-- Export Part

		Declare @OrderRowId int, @CustNo int, @SiteNo int, @TankId int, @Quantity numeric(8,2), @ProductID smallint, @DeliverOn datetime, @ShiftNo tinyint,
			@comments varchar(50), @IsSuccessful bit = 0, @OrderID as int, @OrderNo varchar(11), @Result varchar(100)

		Declare lomocursor Cursor
		For
			Select
				a.Id, d.LomoProductId, @MasterShiftId, a.Quantity, c.CUST_NUMBER, b.SITE_NUMBER, a.OrderedFor
			From
				[ordering].[MST_DMS_Order] a
			Inner Join
				SitesERP b
			On
				a.SiteId = b.ID
			Inner Join
				[ordering].[ERP_CustSites] c
			On
				b.SITE_NUMBER = c.SITE_NUMBER
			Inner Join
				[ordering].[MST_Products] d
			On
				a.ProductId = d.Id
			Where
				a.ShiftId = @ActualShiftId

		OPEN lomocursor

		Fetch Next From lomocursor INTO @OrderRowId, @ProductID, @ShiftNo, @Quantity, @CustNo, @SiteNo, @DeliverOn
		While (@@FETCH_STATUS <> -1) -- -1 == FETCH statement failed or the row was beyond the result set.
		Begin
			-- if lomosoft call fails Order MAP table should not get updated
			Begin try

				exec [10.0.68.11].[DMS_WOQOD].[dbo].[InsertPSOrder] @CustNo, @SiteNo, null, @Quantity, @ProductId
				, @DeliverOn, @ShiftNo, @LomoBoxID, @CurrentDate, @LoggedInUserId, null, @IsSuccessful output, @OrderID output
				, @OrderNo output, @Result output
				Update a
				Set
					a.LomoOrderId = @OrderID
					, a.LomoOrderNum = @OrderNo
					, a.Remarks = @Result
					, a.StatusId = Case When @IsSuccessful = 1 then 4 else 7 end 
				From
					[ordering].[MST_DMS_Order] a
				Where
					a.Id = @OrderRowId

			End Try
			Begin catch

				Update a
				Set
					a.LomoOrderId = @OrderID
					, a.LomoOrderNum = @OrderNo
					, a.Remarks = Cast(ERROR_MESSAGE() as varchar(100))
					, a.StatusId = Case When @IsSuccessful = 1 then 4 else 7 end  -- Exported = 4 and Failed = 7
				From
					[ordering].[MST_DMS_Order] a
				Where
					a.Id = @OrderRowId

			End Catch

			Fetch Next From lomocursor INTO @OrderRowId, @ProductID, @ShiftNo, @Quantity, @CustNo, @SiteNo, @DeliverOn
		END
		CLOSE lomocursor
		DEALLOCATE lomocursor

		Update a
		Set
			a.ActionId = @ExportedToLomosoft, -- update to exported
			a.IsActive = 0
		From
			[ordering].[DET_Shift_Actions] a
		Where
			a.ShiftId = @ActualShiftId and a.ActionId = @WaitingForExport -- was waiting

		return

	End
	else
	Begin

		Raiserror('temp', 16, 1)

	End

End

GO
/****** Object:  StoredProcedure [ordering].[GenerateShiftOrders]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GenerateShiftOrders]
(
	@ShiftDate date = '2016-08-22',
	@ShiftId tinyint = 1,
	@LoggedInUserId int = 5
)
As
Begin
	
	Declare @SectionId tinyint = 1 -- Supply 

	Declare @ActualShiftId int = 0

	Declare @tmp table (Value int)

	-- Get Existing Shift Id
	Insert into @tmp (Value)
	exec [ordering].[CreateShift] @SectionId, @ShiftId, @ShiftDate, @LoggedInUserId

	Select
		@ActualShiftId = a.Value
	From
		@tmp a

	Declare @ShiftStartDate datetime, @ShiftEndDate datetime

	-- Get Shift Start and End Time
	Select
		@ShiftStartDate = a.StartDate, @ShiftEndDate = a.EndDate
	From
		[ordering].[DET_Shifts] a
	Where
		a.Id = @ActualShiftId

	Delete From @tmp

	--Declare @CurrentDate datetime = '2016-08-17 05:59:59.000'
	Declare @CurrentDate datetime = getdate()

	--Select @ShiftStartDate, @ShiftEndDate, @CurrentDate

	--Insert into @tmp (Value)
	--exec [ordering].[CanGenerateShiftOrders] @ShiftStartDate, @ShiftEndDate, @CurrentDate

	--if exists (select 1 from @tmp a where a.Value = 1)
	--Begin

		--Select 'Can Export'

	if not exists (select 1 from [ordering].[DET_Shift_Actions] a where a.ShiftId = @ActualShiftId and a.ActionId = 1) -- shift is exported
	Begin
		exec [ordering].[GetOnlineOrdersByShift] @ActualShiftId
	End
	else	
	Begin

		exec [ordering].[GetExportedOnlineOrdersByShift] @ActualShiftId

		Raiserror('Cannot Generate orders for exported shift', 16, 1)

	End

	--End
	--else
	--Begin

	--	Raiserror('Cannot Export', 16, 1)
	--	--Select 'Cannot Export'

	--End

End		

	

GO
/****** Object:  StoredProcedure [ordering].[GetAcceptedNotifications]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetAcceptedNotifications]
(
	@LoggedInUserId int = 189,
	@PageId smallint = 0,
	@NumberOfRows smallint = 2
)
As
Begin

	Select
		a.Id, b.FileName, b.FileExtension, b.Remarks, b.Caption, b.ResourceId, b.MST_Portal_NotificationCategoryId as CategoryId
		, c.Name as Category, b.NotificationDate as AnnouncementDate, b.SortOrder, COUNT(*) over() as TotalNotifications
	From
		[ordering].[DET_PortalUser_Notification] a
	Inner Join
		[ordering].[MST_Portal_Notification] b
	On
		a.NotificationId = b.Id
	Left Join
		[ordering].[MST_Portal_NotificationCategory] c
	On
		b.MST_Portal_NotificationCategoryId = c.Id
	Where
		a.PortalUserId = @LoggedInUserId and a.hasAccepted = 1 and a.isDeleted = 0
	Order By
		b.SortOrder desc
	Offset
		@PageId * @NumberOfRows rows
	Fetch next
		@NumberOfRows rows only

End

GO
/****** Object:  StoredProcedure [ordering].[GetActualShiftByShiftId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetActualShiftByShiftId]
(
	@SectionId tinyint = 1,
	@ShiftId tinyint = 1,
	@ShiftDate date = '2016-08-16'
)
As
Begin

	Declare @ActualShiftId int = 0, @IsActive bit = 1, @ShiftStatusId int = 0

	Declare @ShiftStartTime datetime, @ShiftEndTime datetime

	Select
		@ShiftStartTime = a.StartTime, @ShiftEndTime = a.EndTime
	From
		[ordering].[MST_Shift] a
	Where
		a.Id = @ShiftId

	Select
		@ShiftStartTime = Cast(Cast(@ShiftDate as varchar(10)) + ' ' + CAST(Cast(@ShiftStartTime as time) as varchar(8)) as datetime),
		@ShiftEndTime = Cast(Cast(@ShiftDate as varchar(10)) + ' ' + CAST(Cast(@ShiftEndTime as time) as varchar(8)) as datetime)

	Select
		@ShiftStatusId = a.Id
	From
		[ordering].[MST_ShiftStatus] a
	Where
		a.Code = 'C'  -- created

	Declare @ShiftName varchar(max)

	Select
		@ShiftName = a.ShiftName
	From
		[ordering].MST_Shift a
	Where
		a.Id = @ShiftId

	Select
		@ActualShiftId = a.Id
	From
		[ordering].[DET_Shifts] a
	Where
		a.SectionId = @SectionId and a.StartDate between @ShiftStartTime and @ShiftEndTime
	
	Select @ActualShiftId as ActualShiftId, @ShiftStartTime as ShiftStartTime, @ShiftEndTime as ShiftEndTime


End

GO
/****** Object:  StoredProcedure [ordering].[GetActualShiftByShiftId_Z1]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [ordering].[GetActualShiftByShiftId_Z1]
(
	@SectionId tinyint = 1,
	@ShiftId tinyint = 2,
	@ShiftDate date = '2016-09-05'
)
As
Begin

	Declare @ActualShiftId int = 0, @IsActive bit = 1, @ShiftStatusId int = 0

	Declare @ShiftStartTime datetime, @ShiftEndTime datetime

	Select
		@ShiftStartTime = a.StartTime, @ShiftEndTime = a.EndTime
	From
		[ordering].[MST_Shift] a
	Where
		a.Id = @ShiftId

	Select
		@ShiftStartTime = Cast(Cast(@ShiftDate as varchar(10)) + ' ' + CAST(Cast(@ShiftStartTime as time) as varchar(8)) as datetime),
		@ShiftEndTime = Cast(Cast(@ShiftDate as varchar(10)) + ' ' + CAST(Cast(@ShiftEndTime as time) as varchar(8)) as datetime)

	Select
		@ShiftStatusId = a.Id
	From
		[ordering].[MST_ShiftStatus] a
	Where
		a.Code = 'C'  -- created

	Declare @ShiftName varchar(max)

	Select
		@ShiftName = a.ShiftName
	From
		[ordering].MST_Shift a
	Where
		a.Id = @ShiftId

	Select
		@ActualShiftId = a.Id
	From
		[ordering].[DET_Shifts] a
	Where
		a.SectionId = @SectionId and a.StartDate between @ShiftStartTime and @ShiftEndTime
	
	Select @ActualShiftId as ActualShiftId


End

GO
/****** Object:  StoredProcedure [ordering].[GetAllAcceptedNotifications]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetAllAcceptedNotifications]
(
	@LoggedInUserId int = 189,
	@CategoryId tinyint = 0
)
As
Begin

	Select
		a.Id, b.FileName, b.FileExtension, b.Remarks, b.Caption, b.ResourceId, b.MST_Portal_NotificationCategoryId as CategoryId
		, Case when c.Name is null then 'Circular' else c.Name end as Category
		, Case when b.NotificationDate is null then b.CreatedOn else b.NotificationDate end as AnnouncementDate
		, b.SortOrder, COUNT(*) over() as TotalNotifications
	From
		[ordering].[DET_PortalUser_Notification] a
	Inner Join
		[ordering].[MST_Portal_Notification] b
	On
		a.NotificationId = b.Id
	Left Join
		[ordering].[MST_Portal_NotificationCategory] c
	On
		b.MST_Portal_NotificationCategoryId = c.Id
	Where
		a.PortalUserId = @LoggedInUserId and a.hasAccepted = 1 and a.isDeleted = 0 and (@CategoryId = 0 or c.Id = @CategoryId)
	Order By
		b.SortOrder desc

End

GO
/****** Object:  StoredProcedure [ordering].[GetAllOrders]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetAllOrders]
(
	@CustName nvarchar(100) = null
	, @MatchCode varchar(15) = null
	, @SectionId tinyint = 1
	, @ProductId tinyint = 0
	, @FromDate datetime = '07/14/2016'
	, @ToDate datetime = '09/14/2016'
	, @PageId smallint = 0
	, @BoxId tinyint = 0
	, @NumberOfRows smallint = 100
	, @StatusId tinyint = 0
)
As
Begin

	Select
		a.OrderItemId as Id, a.OrderItemNo, a.DeliveryNo, a.ProductId, a.ProductName, a.Quantity
		, a.OrderedFor, a.OrderNo, a.CustomerRefNo, a.MatchCode, a.Area, a.StatusId, a.OrderStatus
		, a.CustomerName, a.SiteName, Count(1) over() as TotalRows, a.LastUpdatedBy 
	From
		[ordering].[VW_All_Orders] a
	Where
		a.OrderedFor between @FromDate and @ToDate and (@SectionId = 0 or a.SectionId = @SectionId)
		and (@ProductId = 0 or a.ProductId = @ProductId) and (@BoxId = 0 or a.BoxId = @BoxId) and (@StatusId = 0 or a.StatusId = @StatusId)
		and ((@CustName is null or a.CustomerName like '%' + @CustName + '%' or a.OrderItemNo like '%' + @CustName + '%'or a.CustomerRefNo like '%' + @CustName + '%')
		 and (@MatchCode is null or a.MatchCode like '%' + @MatchCode + '%'))
	Order By
		a.CreatedOn
	Offset
		@PageId * @NumberOfRows rows
	Fetch next 
		@NumberOfRows Rows only

End
GO
/****** Object:  StoredProcedure [ordering].[GetCreditLimitForCustomer]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetCreditLimitForCustomer]
(
	@LoggedInUserId int
)
As
Begin

	Declare @CustNum int

	Select
		top 1 @CustNum = c.CUST_NUMBER
	From
		[orders].[PortalUsers] a
	Left Join
		[orders].[PortalUserSites] b
	On
		a.Id = b.PortalUserId
	LEFT Join
		SitesERP c
	On
		b.SiteId = c.ID
	Where
		a.Id = @LoggedInUserId

	Declare @tmp table (UnbilledInvoices decimal(14,2), UnPaidInvoices decimal(14, 2), OverallCreditLimit decimal(14,2), CreditLimitRemaining decimal(14, 2))	

	Insert into
		@tmp (UnbilledInvoices, UnPaidInvoices, OverallCreditLimit, CreditLimitRemaining)
	exec [10.0.68.11].[DMS_WOQOD].[dbo].[GetCreditLimit] @CustNum

	Select
		a.UnbilledInvoices, a.UnPaidInvoices, a.OverallCreditLimit, a.CreditLimitRemaining
	From
		@tmp a 

End
GO
/****** Object:  StoredProcedure [ordering].[GetExistingShifts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetExistingShifts]
(
	@SectionId tinyint = 3	
)
As
Begin

	Declare @ShiftStatusId tinyint

	Select
		@ShiftStatusId = a.Id
	From
		[ordering].MST_ShiftStatus a
	Where
		a.Code = 'S' -- started

	Select
		a.Id, a.ShiftName
	From
		[ordering].[DET_Shifts] a
	Where
		a.SectionId = @SectionId and a.ShiftStatusId <> @ShiftStatusId

	--union all

	--Select
	--	0, 'Other'

End


GO
/****** Object:  StoredProcedure [ordering].[GetExportedOnlineOrdersByShift]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetExportedOnlineOrdersByShift]
(
	@ActualShiftId int = 50
)
As
Begin

	Select
		a.OrderItemNo, a.LomoOrderNum, Cast(a.LomoOrderId as varchar(10)) as LomoOrderId, a.ProductId, c.ProductName, a.ShiftId, e.LoadCapacity as Quantity
		, a.SiteId, d.NAME as SiteName, d.LOCATION as SiteLocation, b.ShiftDay, b.StartDate, b.EndDate
		, Cast(1 as bit) as IsExported, a.StatusId, a.Remarks
	From
		[ordering].[MST_DMS_Order] a
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id
	Inner Join
		[ordering].[MST_Products] c
	On
		a.ProductId = c.Id
	Inner Join
		SitesERP d
	On
		a.SiteId = d.ID
	Inner Join
		[ordering].[DET_SiteProducts] e
	On
		c.LomoProductId = e.ProductId and a.SiteId = e.SiteId
	Where
		a.ShiftId = @ActualShiftId

End
GO
/****** Object:  StoredProcedure [ordering].[GetNotificationCategoryList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetNotificationCategoryList]
As
Begin


	Select Cast(0 as tinyint) as Id, 'All' as Category

	union all

	Select
		a.Id, a.Name as Category
	From
		[ordering].[MST_Portal_NotificationCategory] a
	Where
		a.MarkAsDeleted = 0
		

End

GO
/****** Object:  StoredProcedure [ordering].[GetOnlineOrdersByDate]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetOnlineOrdersByDate]
(
	@SiteId int = 4285,
	@OrderDate date,
	@LoggedInUserId int = 38
)
As
Begin

	Declare @tmp table (ProductId tinyint, ProductName nvarchar(max), Quantity int, NoOfLoad tinyint
			, ShiftId int, ShiftDay datetime, ShiftName nvarchar(max), LoadCapacity int, CanEdit bit
			, StartDate datetime, EndDate datetime)
	
	Insert into @tmp
	exec [ordering].[GetOnlineOrdersBySiteForDay] @SiteId, @LoggedInUserId, @OrderDate

	Select
		a.ProductId, a.ProductName, a.Quantity, a.NoOfLoad, a.ShiftId, a.ShiftDay
		, a.ShiftName, a.LoadCapacity, a.CanEdit, a.StartDate, a.EndDate
	From
		@tmp a

End
GO
/****** Object:  StoredProcedure [ordering].[GetOnlineOrdersByShift]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetOnlineOrdersByShift]
(
	@ActualShiftId int = 37
)
As
Begin

	;WITH Nbrs ( Number ) AS (
		SELECT 1 UNION ALL
		SELECT 1 + Number FROM Nbrs WHERE Number < 99
	)
	Select
		null as OrderItemNo, null as LomoOrderNum, null as LomoOrderId, a.ProductId, c.ProductName, a.ShiftId
		, Case When a.NoOfLoad is null or a.NoOfLoad = 0 then 0 else a.Quantity / a.NoOfLoad end as Quantity --e.LoadCapacity as Quantity
		, a.SiteId, d.NAME as SiteName, d.LOCATION as SiteLocation, b.ShiftDay, b.StartDate, b.EndDate
		, Cast(0 as bit) as IsExported, Cast(0 as tinyint) as StatusId, null as Remarks
	From
		[ordering].[OrderPlanning] a
	JOIN
		Nbrs N ON N.Number <= A.NoOfLoad
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id
	Inner Join
		[ordering].[MST_Products] c
	On
		a.ProductId = c.Id
	Inner Join
		SitesERP d
	On
		a.SiteId = d.ID
	Inner Join
		[ordering].[DET_SiteProducts] e
	On
		c.LomoProductId = e.ProductId and a.SiteId = e.SiteId
	Where
		a.ShiftId = @ActualShiftId

End
GO
/****** Object:  StoredProcedure [ordering].[GetOnlineOrdersByShiftForExport]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetOnlineOrdersByShiftForExport]
(
	@ActualShiftId int = 37
)
As
Begin

	;WITH Nbrs ( Number ) AS (
		SELECT 1 UNION ALL
		SELECT 1 + Number FROM Nbrs WHERE Number < 99
	)
	Select
		a.ProductId, c.ProductName, a.ShiftId
		, Case When a.NoOfLoad is null or a.NoOfLoad = 0 then 0 else a.Quantity / a.NoOfLoad end as Quantity --e.LoadCapacity as Quantity
		, a.SiteId, d.NAME as SiteName, d.LOCATION as SiteLocation, b.ShiftDay, b.StartDate, b.EndDate
	From
		[ordering].[OrderPlanning] a
	JOIN
		Nbrs N ON N.Number <= A.NoOfLoad
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id
	Inner Join
		[ordering].[MST_Products] c
	On
		a.ProductId = c.Id
	Inner Join
		SitesERP d
	On
		a.SiteId = d.ID
	Inner Join
		[ordering].[DET_SiteProducts] e
	On
		c.LomoProductId = e.ProductId and a.SiteId = e.SiteId
	Where
		a.ShiftId = @ActualShiftId

End
GO
/****** Object:  StoredProcedure [ordering].[GetOnlineOrdersBySite]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetOnlineOrdersBySite]
(
	@SiteId int = 4023,
	@LoggedInUserId int = 38
)
As
Begin

	Declare @CurrentDate date = getdate(), @NextDay date = Dateadd(day, 1, getdate())
	Declare @DayAfterNextDay date = Dateadd(day, 1, @NextDay) 

	Declare @tmp table (ProductId tinyint, ProductName nvarchar(max), Quantity int, NoOfLoad tinyint
			, ShiftId int, ShiftDay datetime, ShiftName nvarchar(max), LoadCapacity int, CanEdit bit
			, StartDate datetime, EndDate datetime)
	
	Insert into @tmp
	exec [ordering].[GetOnlineOrdersBySiteForDay] @SiteId, @LoggedInUserId, @CurrentDate

	if exists (select 1 from @tmp a where a.Quantity is null)
	Begin
		Delete from @tmp
	End

	Insert into @tmp
	exec [ordering].[GetOnlineOrdersBySiteForDay] @SiteId, @LoggedInUserId, @NextDay

	if DATEDIFF(minute, @CurrentDate, @NextDay) >= 840 and exists (select 1 from @tmp a where a.Quantity is null)
	Begin
		Delete a from @tmp a where a.ShiftDay = @NextDay
	End

	Insert into @tmp
	exec [ordering].[GetOnlineOrdersBySiteForDay] @SiteId, @LoggedInUserId, @DayAfterNextDay

	Select
		a.ProductId, a.ProductName, a.Quantity, a.NoOfLoad, a.ShiftId, a.ShiftDay
		, a.ShiftName, a.LoadCapacity, a.CanEdit, a.StartDate, a.EndDate
	From
		@tmp a

End
GO
/****** Object:  StoredProcedure [ordering].[GetOnlineOrdersBySite_bkp]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [ordering].[GetOnlineOrdersBySite_bkp]
(
	@SiteId int = 4285,
	@LoggedInUserId int = 38
)
As
Begin

Declare @CurrentDate date = getdate()
	if not exists(
				Select
					distinct a.ShiftId, b.ShiftDay
				From
					[ordering].[OrderPlanning] a
				Inner Join
					[ordering].[DET_Shifts] b
				On
					a.ShiftId = b.Id
				Where
					a.SiteId = @SiteId and b.ShiftDay = @CurrentDate
	)
	Begin

		Insert into
			[ordering].[OrderPlanning] (SiteId, ProductId, ShiftId, Quantity, NoOfLoad, CreatedBy, ModifiedBy)
		Select
			b.SiteId, d.Id as ProductId, e.Id as ShiftId, 0, 0, @LoggedInUserId, @LoggedInUserId
			--a.Id, a.FullName, b.SiteId, c.ProductId, d.ProductName, e.Id as ShiftId, e.ShiftName
		From
			[orders].PortalUsers a
		Inner Join
			[orders].PortalUserSites b
		On
			a.Id = b.PortalUserId
		Inner Join
			[ordering].[DET_SiteProducts] c
		On
			b.SiteId = c.SiteId
		Inner Join
			[ordering].[MST_Products] d
		On
			c.ProductId = d.LomoProductId
		Inner join
			[ordering].DET_Shifts e
		On
			e.ShiftDay = @CurrentDate
		Where
			a.Id = @LoggedInUserId
	End

	Select
		a.ProductId, c.ProductName, a.Quantity, a.NoOfLoad, a.ShiftId, b.ShiftDay, b.ShiftName, d.LoadCapacity
	From
		[ordering].[OrderPlanning] a
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id
	Inner Join
		[ordering].[MST_Products] c
	On
		a.ProductId = c.Id 
	Inner Join
		[ordering].[DET_SiteProducts] d
	On
		a.SiteId = d.SiteId and d.ProductId = c.LomoProductId
	Where
		a.SiteId = @SiteId and b.ShiftDay >= @CurrentDate

End
GO
/****** Object:  StoredProcedure [ordering].[GetOnlineOrdersBySiteForDay]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetOnlineOrdersBySiteForDay]
(
	@SiteId int = 4285,
	@LoggedInUserId int = 38,
	@ShiftDay date = '2016-08-18'
)
As
Begin

	Declare @ElapsedTime int

	Select
		@ElapsedTime = a.ElapsedTime
	From
		[ordering].[MST_ElapsedTime] a

	if not exists(
				Select
					distinct a.ShiftId, b.ShiftDay
				From
					[ordering].[OrderPlanning] a
				Inner Join
					[ordering].[DET_Shifts] b
				On
					a.ShiftId = b.Id
				Where
					a.SiteId = @SiteId and b.ShiftDay = @ShiftDay
	)
	Begin

		Select
			d.Id as ProductId, d.ProductName, null as Quantity, null as NoOfLoad, e.Id as ShiftId, e.ShiftDay, e.ShiftName, c.LoadCapacity
			, Case When DATEDIFF(minute, getdate(), e.StartDate) > @ElapsedTime then 1 else 0 end as CanEdit 
			, e.StartDate, e.EndDate 
			--a.Id, a.FullName, b.SiteId, c.ProductId, d.ProductName, e.Id as ShiftId, e.ShiftName
		From
			[orders].PortalUsers a
		Inner Join
			[orders].PortalUserSites b
		On
			a.Id = b.PortalUserId
		Inner Join
			[ordering].[DET_SiteProducts] c
		On
			b.SiteId = c.SiteId
		Inner Join
			[ordering].[MST_Products] d
		On
			c.ProductId = d.LomoProductId
		Inner join
			[ordering].DET_Shifts e
		On
			e.ShiftDay = @ShiftDay
		Where
			a.Id = @LoggedInUserId
	End
	else
	Begin

		Select
			a.ProductId, c.ProductName, a.Quantity, a.NoOfLoad, a.ShiftId, b.ShiftDay, b.ShiftName, d.LoadCapacity
			, Case When DATEDIFF(minute, getdate(), b.StartDate) > @ElapsedTime then 1 else 0 end as CanEdit  
			, b.StartDate, b.EndDate
		From
			[ordering].[OrderPlanning] a
		Inner Join
			[ordering].[DET_Shifts] b
		On
			a.ShiftId = b.Id
		Inner Join
			[ordering].[MST_Products] c
		On
			a.ProductId = c.Id 
		Inner Join
			[ordering].[DET_SiteProducts] d
		On
			a.SiteId = d.SiteId and d.ProductId = c.LomoProductId
		Where
			a.SiteId = @SiteId and b.ShiftDay = @ShiftDay

	End

End
GO
/****** Object:  StoredProcedure [ordering].[GetOnlineOrdersForExportedShift]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [ordering].[GetOnlineOrdersForExportedShift]
(
	@ActualShiftId int = 37
)
As
Begin

	;WITH Nbrs ( Number ) AS (
		SELECT 1 UNION ALL
		SELECT 1 + Number FROM Nbrs WHERE Number < 99
	)
	Select
		a.ProductId, c.ProductName, a.ShiftId, e.LoadCapacity as Quantity
		, a.SiteId, d.NAME as SiteName, d.LOCATION as SiteLocation, b.ShiftDay, b.StartDate, b.EndDate
		, Case When f.Id is null then 0 else 1 end as IsExported
	From
		[ordering].[OrderPlanning] a
	JOIN
		Nbrs N ON N.Number <= A.NoOfLoad
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id
	Inner Join
		[ordering].[MST_Products] c
	On
		a.ProductId = c.Id
	Inner Join
		SitesERP d
	On
		a.SiteId = d.ID
	Inner Join
		[ordering].[DET_SiteProducts] e
	On
		c.LomoProductId = e.ProductId and a.SiteId = e.SiteId
	Inner Join
		[ordering].[MST_DMS_Order] f
	On
		a.ProductId = f.ProductId and a.SiteId = f.SiteId and a.ShiftId = f.ShiftId
	Where
		a.ShiftId = @ActualShiftId

End
GO
/****** Object:  StoredProcedure [ordering].[GetOnlineUserBasicInfo]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [ordering].[GetOnlineUserBasicInfo]
(
	@UserId int = 38
)
As
Begin

	Select
		b.SiteId, c.NAME + ' ' + '(' + c.LOCATION + ')' as SiteName, a.EmailId, a.FullName as UserName
		, a.MobileNum as MobileNo, a.LandlineNum as LandlineNo, d.NAME as CustomerName
	From
		[orders].[PortalUsers] a
	Left Join
		[orders].[PortalUserSites] b
	On
		a.Id = b.PortalUserId
	Left Join
		SitesERP c
	On
		b.SiteId = c.ID
	Left Join
		CustomerERP d
	On
		c.CUST_NUMBER = d.CUST_NUMBER
	Where
		a.isActive = 1 and a.Id = @UserId

End
GO
/****** Object:  StoredProcedure [ordering].[GetOrdersByBoxIdForShiftId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetOrdersByBoxIdForShiftId]
(
	@ShiftDetailId int = 5,
	@BoxId smallint = 2,
	@OrderFromDate datetime = '8/1/2016 1:28:21 PM',
	@OrderToDate datetime = '8/26/2016 1:28:21 PM',
	@SearchString varchar(max) = null
)
As
Begin

	Declare @ShiftStatusId tinyint, @OrderCreatedStatusId tinyint, @OrderAssignedStatusId tinyint

	Select
		@ShiftStatusId = a.Id
	From
		[ordering].MST_ShiftStatus a
	Where
		a.Code = 'S' -- started

	Select
		@OrderCreatedStatusId = a.Id
	From
		[ordering].[MST_OrderStatus] a
	Where
		a.Code = 'C' -- created

	Select
		@OrderAssignedStatusId = a.Id
	From
		[ordering].[MST_OrderStatus] a
	Where
		a.Code = 'A' -- assigned

	if not exists (select 1 from [ordering].[DET_Shifts] a where a.Id = @ShiftDetailId and a.ShiftStatusId = @ShiftStatusId)
	Begin

		Select
			a.Id, b.OrderNo, a.OrderItemNo, a.DeliveryNo, b.MatchCode, d.CustomerName, d.SiteName, d.Area
			, a.Quantity, e.ProductName, e.ProductDescription, b.OrderedFor, a.Remarks, b.CustomerRefNo
			, f.TerminalName, g.BoxName
			, Cast(Case When c.Id is null then 0 else 1 end as bit) as isAssigned
		From
			[ordering].DET_OrderItems a
		Inner Join
			[ordering].MST_Products e
		On
			a.ProductId = e.Id
		Inner Join
			[ordering].MST_Orders b
		On
			a.OrderId = b.Id
		Inner Join
			[ordering].MST_Terminal f
		On
			b.TerminalId = f.Id
		Inner Join
			[ordering].MST_Box g
		On
			b.BoxId = g.Id
		Inner Join
			[ordering].ERP_CustSites d
		On
			b.MatchCode = d.MatchCode
		Left Join
			[ordering].DET_ShiftOrders c
		On
			a.Id = c.OrderItemId --and c.ShiftDetailId = @ShiftDetailId
		Where
			a.BoxId = @BoxId and c.Id is null and a.StatusId in (@OrderCreatedStatusId, @OrderAssignedStatusId) and ((a.OrderedFor between @OrderFromDate and @OrderToDate)
			or (@SearchString is null or (b.MatchCode like '%' + @SearchString + '%' or d.CustomerName like '%' + @SearchString + '%' or d.Area like '%' + @SearchString + '%')))

	End
	else
	Begin

		Raiserror('Unable To Search', 16, 1)

	End

End
GO
/****** Object:  StoredProcedure [ordering].[GetOrdersByShift]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetOrdersByShift]
(
	@ShiftDetailId int = 5
)
As
Begin

	Declare @ShiftStatusId tinyint, @OrderCreatedStatusId tinyint, @OrderAssignedStatusId tinyint

	Select
		@ShiftStatusId = a.Id
	From
		[ordering].MST_ShiftStatus a
	Where
		a.Code = 'S' -- started

	Select
		@OrderCreatedStatusId = a.Id
	From
		[ordering].[MST_OrderStatus] a
	Where
		a.Code = 'C' -- created

	Select
		@OrderAssignedStatusId = a.Id
	From
		[ordering].[MST_OrderStatus] a
	Where
		a.Code = 'A' -- assigned
	
	Select
		a.Id, b.OrderNo, a.OrderItemNo, a.DeliveryNo, b.MatchCode, d.CustomerName, d.SiteName, d.Area
		, a.Quantity, e.ProductName, e.ProductDescription, b.OrderedFor, a.Remarks, b.CustomerRefNo
		, f.TerminalName, g.BoxName
	From
		[ordering].[DET_ShiftOrders] h
	Inner Join
		[ordering].DET_OrderItems a
	On
		h.OrderItemId = a.Id
	Inner Join
		[ordering].MST_Products e
	On
		a.ProductId = e.Id
	Inner Join
		[ordering].MST_Orders b
	On
		a.OrderId = b.Id
	Inner Join
		[ordering].MST_Terminal f
	On
		b.TerminalId = f.Id
	Inner Join
		[ordering].MST_Box g
	On
		b.BoxId = g.Id
	Inner Join
		[ordering].ERP_CustSites d
	On
		b.MatchCode = d.MatchCode
	Where
		(@ShiftDetailId = 0 or h.ShiftDetailId = @ShiftDetailId) and a.StatusId in (@OrderCreatedStatusId, @OrderAssignedStatusId) 

End
GO
/****** Object:  StoredProcedure [ordering].[GetOrdersToAssign]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetOrdersToAssign]
(
	@CustName nvarchar(100) = null
	, @MatchCode varchar(15) = null
	, @SectionId tinyint = 0
	, @ProductId tinyint = 0
	, @FromDate datetime = '07/14/2016'
	, @ToDate datetime = '09/14/2016'
	, @PageId smallint = 0
	, @BoxId tinyint = 0
	, @NumberOfRows smallint = 10
)
As
Begin

	Select
		a.OrderItemId, a.MatchCode, a.CustomerName, a.SiteName, a.OrderedFor, ProductName, a.Quantity, a.LastUpdatedBy
		, Count(*) over() as TotalRows
	From
		[ordering].[VW_Orders_To_Assign] a
	Where
		a.OrderedFor between @FromDate and @ToDate and (@SectionId = 0 or a.SectionId = @SectionId)
		and (@ProductId = 0 or a.ProductId = @ProductId) and (@BoxId = 0 or a.BoxId = @BoxId)
		and ((@CustName is null or a.CustomerName like '%' + @CustName + '%') or (@MatchCode is null or a.MatchCode like '%' + @MatchCode + '%'))
	Order By
		a.ModifiedOn
	Offset
		@PageId * @NumberOfRows rows
	Fetch next 
		@NumberOfRows Rows only

End
GO
/****** Object:  StoredProcedure [ordering].[GetPortalUserList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetPortalUserList]
(
	@SearchString nvarchar(100) = null,
	@PageId smallint = 0,
	@NumberOfRows smallint = 10
)
As
Begin

	Select
		a.Id, a.FullName, isnull(a.CustNum, 0) as CustNum, b.NAME + ' ' + b.LOCATION as CustName, a.EmailId, a.MobileNum, a.LandlineNum, a.Attempts, a.isActive, COUNT(*) over() as TotalRows
		, a.isLocked, Cast(Case When a.Password is null then 1 else 0 end as bit) as isFirst
	From
		[orders].PortalUsers a
	Inner Join
		[orders].[PortalUserSites] c
	On
		a.Id = c.PortalUserId
	Inner Join
		SitesERP b
	On
		(a.CustNum is null or a.CustNum = b.CUST_NUMBER) and b.ID = c.SiteId
	Where
		@SearchString is null or @SearchString = '' or a.EmailId like '%' + @SearchString  + '%' or a.FullName like '%' + @SearchString + '%' or b.NAME like '%' + @SearchString + '%'
	Order by
		a.ModifiedOn desc
	Offset
		@PageId * @NumberOfRows rows
	Fetch next
		@NumberOfRows rows only

End

GO
/****** Object:  StoredProcedure [ordering].[GetProductsBySite]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetProductsBySite]
(
	@SiteId int = 4285
)
As
Begin

	Select
		Cast(0 as tinyint) as ProductId, 'All'as ProductName

	union all

	Select
		distinct b.Id as ProductId, b.ProductName
	From
		[ordering].[DET_SiteProducts] a
	Inner Join
		[ordering].[MST_Products] b
	On
		a.ProductId = b.LomoProductId 
	Where
		a.SiteId = @SiteId
End
GO
/****** Object:  StoredProcedure [ordering].[GetSearchedOrdersForCustomer]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetSearchedOrdersForCustomer]
(
	@SiteId int,
	@SearchString nvarchar(200) = '',
	@StartDate date = '2016-08-20',
	@EndDate date = '2016-08-20',
	@ProductId int = 0,
	@PageId int = 0,
	@NumOfRows int = 20,
	@LoggedInUserId int = 38
)
As
Begin

	Declare @SectionId tinyint = 1 -- Supply 

	;WITH Nbrs ( Number ) AS (
		SELECT 1 UNION ALL
		SELECT 1 + Number FROM Nbrs WHERE Number < 99
	)
	Select
		a.ProductId, c.ProductName, a.ShiftId, e.LoadCapacity as Quantity
		, a.SiteId, d.NAME as SiteName, d.LOCATION as SiteLocation, b.ShiftDay, b.ShiftName
		, Cast(0 as bit) as IsExported, null as Remarks
	From
		[ordering].[OrderPlanning] a
	JOIN
		Nbrs N ON N.Number <= A.NoOfLoad
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id
	Inner Join
		[ordering].[MST_Products] c
	On
		a.ProductId = c.Id
	Inner Join
		SitesERP d
	On
		a.SiteId = d.ID
	Inner Join
		[ordering].[DET_SiteProducts] e
	On
		c.LomoProductId = e.ProductId and a.SiteId = e.SiteId
	Where
		a.SiteId = @SiteId and (@ProductId = 0 or a.ProductId = @ProductId) and b.ShiftDay between @StartDate and @EndDate
	Order By
		b.StartDate
	Offset
		@PageId * @NumOfRows rows
	Fetch next
		@NumOfRows rows only 

End
GO
/****** Object:  StoredProcedure [ordering].[GetSequenceNumber]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetSequenceNumber]
(
	@Name varchar(10)
)
As
Begin

	Declare @FirstSeqNum sql_variant,
				@LastSeqNum  sql_variant

	exec sys.sp_sequence_get_range
		 @sequence_name = @Name
	   , @range_size = 1
	   , @range_first_value = @FirstSeqNum OUTPUT
	   , @range_last_value = @LastSeqNum OUTPUT

	Select @FirstSeqNum as SequenceNumber 

End
GO
/****** Object:  StoredProcedure [ordering].[GetShiftPlanningBoxes]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetShiftPlanningBoxes]
(
	@ShiftDetailId int = 0,
	@SectionId tinyint
)
As
Begin

	Select
		Cast(a.Id as int) as Id, a.BoxName, isnull(Count(b.Id), 0) as NoOfOrders, isnull(SUM(b.Quantity), 0) as TotalQuantity
	From
		[ordering]. MST_Box a
	Left Join
		[ordering].DET_OrderItems b
	On
		a.Id = b.BoxId
	Where
		a.SectionId = @SectionId
	Group By
		a.Id, a.BoxName
	--Having
	--	COUNT(b.Id) > 0


End
GO
/****** Object:  StoredProcedure [ordering].[GetShifts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[GetShifts]
(
	@SectionId tinyint = 3	
)
As
Begin

	Declare @ShiftStatusId tinyint

	Select
		Cast(a.Id as int) as Id
		, a.ShiftName 
	From
		[ordering].MST_Shift a
	Where
		a.SectionId = @SectionId and a.isActive = 1


End


GO
/****** Object:  StoredProcedure [ordering].[GetShiftWiseOrderCount]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [ordering].[GetShiftWiseOrderCount]
(
	@ActualShiftId int
)
As
Begin

	;WITH Nbrs ( Number ) AS (
		SELECT 1 UNION ALL
		SELECT 1 + Number FROM Nbrs WHERE Number < 99
	)
	Select
		Count(*)
	From
		[ordering].[OrderPlanning] a
	JOIN
		Nbrs N ON N.Number <= A.NoOfLoad
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id
	Inner Join
		[ordering].[MST_Products] c
	On
		a.ProductId = c.Id
	Inner Join
		SitesERP d
	On
		a.SiteId = d.ID
	Inner Join
		[ordering].[DET_SiteProducts] e
	On
		c.LomoProductId = e.ProductId and a.SiteId = e.SiteId
	Where
		a.ShiftId = @ActualShiftId

End

GO
/****** Object:  StoredProcedure [ordering].[RefreshSiteProductzLinkage]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[RefreshSiteProductzLinkage]
As
Begin

	Delete from 
	ordering.STG_Site_Productz

	Insert into 
		ordering.STG_Site_Productz(CustNo, SiteNo, ProductId, ProductName)
	EXEC [10.0.68.11].[DMS_WOQOD].[dbo].GetCustomerProductsAll

	Delete from 
	ordering.DET_SiteProducts

	Insert into 
		[ordering].DET_SiteProducts (SiteId, ProductId, LoadCapacity, CreatedBy, ModifiedBy)
	Select
		b.ID, a.ProductId, 30000, 5, 5
	From
		ordering.STG_Site_Productz a
	Inner Join
		SitesERP b
	On
		a.SiteNo = b.SITE_NUMBER


End








GO
/****** Object:  StoredProcedure [ordering].[SaveNewOrders]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[SaveNewOrders]
(
	@Orders [ordering].[NewOrders] readonly,
	@OrderedFor date,
	@SiteId int,
	@LoggedInUserId int
)
As
Begin

	if not exists (select 1 from [ordering].[VW_Planned_Orders] a where a.SiteId = @SiteId and a.ShiftDay = @OrderedFor)
	Begin

		Declare @CurrentDate datetime = getdate()

		Declare @Difference int
		Select
			@Difference = DATEDIFF(minute, @CurrentDate, @OrderedFor)

		if (@Difference >= 840) -- 14 hours
		Begin

			Insert into
				[ordering].[OrderPlanning] (SiteId, ShiftId, ProductId, Quantity, NoOfLoad, CreatedBy, ModifiedBy)
			Select
				@SiteId, a.ShiftId, a.ProductId, c.LoadCapacity * a.NoOfLoad, a.NoOfLoad, @LoggedInUserId, @LoggedInUserId
			From
				@Orders a
			Inner Join
				[ordering].[MST_Products] b
			On
				a.ProductId = b.Id
			Left Join
				[ordering].[DET_SiteProducts] c
			On
				b.LomoProductId = c.ProductId and c.SiteId = @SiteId

			Select Cast(1 as bit) as Result
		End
		else
		Begin

			Raiserror('Order cannot be placed1', 16, 1)

		End

	End
	else
	Begin

		Raiserror('Order cannot be placed', 16, 1)

	End


End
GO
/****** Object:  StoredProcedure [ordering].[SaveOrders]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[SaveOrders]
(
	@Orders [ordering].[NewOrders] readonly,
	@OrderedFor date,
	@SiteId int,
	@LoggedInUserId int
)
As
Begin

	Declare @ElapsedTime int, @MaxNoOfLoads tinyint = 3

	Declare @TranNo varchar(20) = next value for log.TranNo

	Select
		@ElapsedTime = a.ElapsedTime
	From
		[ordering].[MST_ElapsedTime] a

	if not exists (select 1 from [ordering].[VW_Planned_Orders] a where a.SiteId = @SiteId and a.ShiftDay = @OrderedFor)
	Begin

		Declare @CurrentDate datetime = getdate()

		Declare @Difference int
		Select
			@Difference = DATEDIFF(minute, @CurrentDate, @OrderedFor)

		if (@Difference >= 840) -- 14 hours
		Begin

			Insert into
				[ordering].[OrderPlanning] (SiteId, ShiftId, ProductId, Quantity, NoOfLoad, CreatedBy, ModifiedBy)
			output 
				@TranNo, inserted.SiteId, inserted.ShiftId, inserted.ProductId, inserted.Quantity, inserted.NoOfLoad, inserted.CreatedBy
			into
				[log].[OrderPlanning_Log] (TranNo, SiteId, ShiftId, ProductId, Quantity, NoOfLoad, CreatedBy)
			Select
				@SiteId, a.ShiftId, a.ProductId
				, Case When a.NoOfLoad <= @MaxNoOfLoads then c.LoadCapacity * a.NoOfLoad else 0 end
				, Case When a.NoOfLoad <= @MaxNoOfLoads then a.NoOfLoad else 0 end, @LoggedInUserId, @LoggedInUserId
			From
				@Orders a
			Inner Join
				[ordering].[MST_Products] b
			On
				a.ProductId = b.Id
			Left Join
				[ordering].[DET_SiteProducts] c
			On
				b.LomoProductId = c.ProductId and c.SiteId = @SiteId

			Select Cast(1 as bit) as Result
		End
		else
		Begin

			Raiserror('Order cannot be placed1', 16, 1)

		End

	End
	else
	Begin

		Update e
		Set
			e.Quantity = Case When a.NoOfLoad <= @MaxNoOfLoads then d.LoadCapacity * a.NoOfLoad else 0 end,
			e.NoOfLoad = Case When a.NoOfLoad <= @MaxNoOfLoads then a.NoOfLoad else 0 end,
			ModifiedBy = @LoggedInUserId,
			ModifiedOn = GETDATE()  
		output 
				@TranNo, inserted.SiteId, inserted.ShiftId, inserted.ProductId, inserted.Quantity, inserted.NoOfLoad, inserted.CreatedBy
		into
			[log].[OrderPlanning_Log] (TranNo, SiteId, ShiftId, ProductId, Quantity, NoOfLoad, CreatedBy)
		From
			@Orders a
		Inner Join
			[ordering].[DET_Shifts] b
		On
			a.ShiftId = b.Id
		Inner Join
			[ordering].[MST_Products] c
		On
			a.ProductId = c.Id
		Inner Join
			[ordering].[DET_SiteProducts] d
		On
			c.LomoProductId = d.ProductId and d.SiteId = @SiteId
		Inner Join
			[ordering].[OrderPlanning] e
		On
			a.ProductId = e.ProductId and a.ShiftId = e.ShiftId
		Where
			DATEDIFF(minute, getdate(), b.StartDate) > @ElapsedTime
		
		Select Cast(1 as bit) as Result
	End


End
GO
/****** Object:  StoredProcedure [ordering].[SaveOrders_bkp]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [ordering].[SaveOrders_bkp]
(
	@Orders [ordering].[NewOrders] readonly,
	@OrderedFor date,
	@SiteId int,
	@LoggedInUserId int
)
As
Begin

	Declare @ElapsedTime int, @MaxNoOfLoads tinyint = 3

	Declare @TranNo varchar(20) = next value for log.TranNo

	Select
		@ElapsedTime = a.ElapsedTime
	From
		[ordering].[MST_ElapsedTime] a

	if not exists (select 1 from [ordering].[VW_Planned_Orders] a where a.SiteId = @SiteId and a.ShiftDay = @OrderedFor)
	Begin

		Declare @CurrentDate datetime = getdate()

		Declare @Difference int
		Select
			@Difference = DATEDIFF(minute, @CurrentDate, @OrderedFor)

		if (@Difference >= 840) -- 14 hours
		Begin

			


			Insert into
				[ordering].[OrderPlanning] (SiteId, ShiftId, ProductId, Quantity, NoOfLoad, CreatedBy, ModifiedBy)
			output 
				@TranNo, inserted.SiteId, inserted.ShiftId, inserted.ProductId, inserted.Quantity, inserted.NoOfLoad, inserted.CreatedBy
			into
				[log].[OrderPlanning_Log] (TranNo, SiteId, ShiftId, ProductId, Quantity, NoOfLoad, CreatedBy)
			Select
				@SiteId, a.ShiftId, a.ProductId
				, Case When a.NoOfLoad <= @MaxNoOfLoads then c.LoadCapacity * a.NoOfLoad else 0 end
				, Case When a.NoOfLoad <= @MaxNoOfLoads then a.NoOfLoad else 0 end, @LoggedInUserId, @LoggedInUserId
			From
				@Orders a
			Inner Join
				[ordering].[MST_Products] b
			On
				a.ProductId = b.Id
			Left Join
				[ordering].[DET_SiteProducts] c
			On
				b.LomoProductId = c.ProductId and c.SiteId = @SiteId

			Select Cast(1 as bit) as Result
		End
		else
		Begin

			Raiserror('Order cannot be placed1', 16, 1)

		End

	End
	else
	Begin

		Update e
		Set
			e.Quantity = Case When a.NoOfLoad <= @MaxNoOfLoads then d.LoadCapacity * a.NoOfLoad else 0 end,
			e.NoOfLoad = Case When a.NoOfLoad <= @MaxNoOfLoads then a.NoOfLoad else 0 end,
			ModifiedBy = @LoggedInUserId,
			ModifiedOn = GETDATE()  
		output 
				@TranNo, inserted.SiteId, inserted.ShiftId, inserted.ProductId, inserted.Quantity, inserted.NoOfLoad, inserted.CreatedBy
		into
			[log].[OrderPlanning_Log] (TranNo, SiteId, ShiftId, ProductId, Quantity, NoOfLoad, CreatedBy)
		From
			@Orders a
		Inner Join
			[ordering].[DET_Shifts] b
		On
			a.ShiftId = b.Id
		Inner Join
			[ordering].[MST_Products] c
		On
			a.ProductId = c.Id
		Inner Join
			[ordering].[DET_SiteProducts] d
		On
			c.LomoProductId = d.ProductId and d.SiteId = @SiteId
		Inner Join
			[ordering].[OrderPlanning] e
		On
			a.ProductId = e.ProductId and a.ShiftId = e.ShiftId
		Where
			DATEDIFF(minute, getdate(), b.StartDate) > @ElapsedTime
		
		Select Cast(1 as bit) as Result
	End


End

GO
/****** Object:  StoredProcedure [ordering].[SaveOrders_WithCheck]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [ordering].[SaveOrders_WithCheck]
(
	@Orders [ordering].[NewOrders] readonly,
	@OrderedFor date,
	@SiteId int,
	@LoggedInUserId int
)
As
Begin

	Declare @ElapsedTime int, @MaxNoOfLoads tinyint = 3

	Select
		@ElapsedTime = a.ElapsedTime
	From
		[ordering].[MST_ElapsedTime] a

	if not exists (select 1 from [ordering].[VW_Planned_Orders] a where a.SiteId = @SiteId and a.ShiftDay = @OrderedFor)
	Begin

		Declare @CurrentDate datetime = getdate()

		Declare @Difference int
		Select
			@Difference = DATEDIFF(minute, @CurrentDate, @OrderedFor)

		if (@Difference >= 840) -- 14 hours
		Begin

			Insert into
				[ordering].[OrderPlanning] (SiteId, ShiftId, ProductId, Quantity, NoOfLoad, CreatedBy, ModifiedBy)
			Select
				@SiteId, a.ShiftId, a.ProductId
				, Case When a.NoOfLoad <= @MaxNoOfLoads then c.LoadCapacity * a.NoOfLoad else 0 end
				, Case When a.NoOfLoad <= @MaxNoOfLoads then a.NoOfLoad else 0 end, @LoggedInUserId, @LoggedInUserId
			From
				@Orders a
			Inner Join
				[ordering].[MST_Products] b
			On
				a.ProductId = b.Id
			Left Join
				[ordering].[DET_SiteProducts] c
			On
				b.LomoProductId = c.ProductId and c.SiteId = @SiteId

			Select Cast(1 as bit) as Result
		End
		else
		Begin

			Raiserror('Order cannot be placed1', 16, 1)

		End

	End
	else
	Begin

		Update e
		Set
			e.Quantity = Case When a.NoOfLoad <= @MaxNoOfLoads then d.LoadCapacity * a.NoOfLoad else 0 end,
			e.NoOfLoad = Case When a.NoOfLoad <= @MaxNoOfLoads then a.NoOfLoad else 0 end,
			ModifiedBy = @LoggedInUserId,
			ModifiedOn = GETDATE()  
		From
			@Orders a
		Inner Join
			[ordering].[DET_Shifts] b
		On
			a.ShiftId = b.Id
		Inner Join
			[ordering].[MST_Products] c
		On
			a.ProductId = c.Id
		Inner Join
			[ordering].[DET_SiteProducts] d
		On
			c.LomoProductId = d.ProductId and d.SiteId = @SiteId
		Inner Join
			[ordering].[OrderPlanning] e
		On
			a.ProductId = e.ProductId and a.ShiftId = e.ShiftId
		Where
			DATEDIFF(minute, getdate(), b.StartDate) > @ElapsedTime
		
		Select Cast(1 as bit) as Result
	End


End
GO
/****** Object:  StoredProcedure [ordering].[SaveOrders_Z1]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[SaveOrders_Z1]
(
	@Orders [ordering].[NewOrders] readonly,
	@OrderedFor date,
	@SiteId int,
	@LoggedInUserId int
)
As
Begin

	if exists (select 1 from [ordering].[DET_PortalUser_Notification] a where a.PortalUserId = @LoggedInUserId and a.hasAccepted = 0)
	Begin

		raiserror('Not Authorized', 16, 1)
		return

	End

	--	raiserror ('Cannot Place Order', 16, 1)

	Declare @ElapsedTime int, @MaxNoOfLoads tinyint = 3, @MaxNoOfLoadsForMobile tinyint = 4

	Declare @TranNo varchar(20) = next value for log.TranNo

	Select
		@ElapsedTime = a.ElapsedTime
	From
		[ordering].[MST_ElapsedTime] a

	Declare @CustNum int

	Select
		top 1 @CustNum = c.CUST_NUMBER
	From
		[orders].[PortalUsers] a
	Left Join
		[orders].[PortalUserSites] b
	On
		a.Id = b.PortalUserId
	LEFT Join
		SitesERP c
	On
		b.SiteId = c.ID
	Where
		a.Id = @LoggedInUserId

	Declare @OrderedAmount decimal(18, 2), @CreditLimitRemaining decimal(18, 2), @NewOrderedAmount decimal(18, 2)

	Declare @tmp table (UnbilledInvoices decimal(18,2), UnPaidInvoices decimal(18, 2), OverallCreditLimit decimal(18,2), CreditLimitRemaining decimal(18, 2))	

	if not exists (select 1 from [ordering].[VW_Planned_Orders] a where a.SiteId = @SiteId and a.ShiftDay = @OrderedFor)
	Begin

		Declare @CurrentDate datetime = getdate()

		Declare @Difference int
		Select
			@Difference = DATEDIFF(minute, @CurrentDate, @OrderedFor)

		if (@Difference >= 840) -- 14 hours
		Begin

			Insert into
				@tmp (UnbilledInvoices, UnPaidInvoices, OverallCreditLimit, CreditLimitRemaining)
			exec [10.0.68.11].[DMS_WOQOD].[dbo].[GetCreditLimit] @CustNum

			Select
				@CreditLimitRemaining = a.CreditLimitRemaining
			From
				@tmp a

			Select
				@OrderedAmount = isnull(Sum(a.Quantity * c.UnitPrice), 0)
			From
				[ordering].[OrderPlanning] a
			Left Join
				[ordering].[DET_Shift_Actions] b
			On
				a.ShiftId = b.ShiftId and b.isActive = 0
			Left Join
				[ordering].[VW_Site_Product_UnitPrice] c
			On
				a.ProductId = c.ProductId and a.SiteId = c.SiteId
			Where
				a.SiteId = @SiteId and b.Id is null and a.ShiftId not in (Select a.ShiftId from [admin].Shifts_ToExclude a)

			if (@OrderedAmount < @CreditLimitRemaining)
			Begin

				Select
					@NewOrderedAmount = isnull(Sum(a.Quantity * d.UnitPrice), 0)
				From
				(
					Select
						@SiteId as SiteId, a.ShiftId, a.ProductId
						, Case When a.NoOfLoad <= @MaxNoOfLoads then c.LoadCapacity * a.NoOfLoad else 0 end as Quantity
					From
						@Orders a
					Inner Join
						[ordering].[MST_Products] b
					On
						a.ProductId = b.Id
					Left Join
						[ordering].[DET_SiteProducts] c
					On
						b.LomoProductId = c.ProductId and c.SiteId = @SiteId
				) a
				Left Join
					[ordering].[VW_Site_Product_UnitPrice] d
				On
					a.ProductId = d.ProductId and d.SiteId = @SiteId

				if (@OrderedAmount + @NewOrderedAmount <= @CreditLimitRemaining)
				Begin
				
					Insert into
						[ordering].[OrderPlanning] (SiteId, ShiftId, ProductId, Quantity, NoOfLoad, CreatedBy, ModifiedBy)
					output 
						@TranNo, inserted.SiteId, inserted.ShiftId, inserted.ProductId, inserted.Quantity, inserted.NoOfLoad, inserted.CreatedBy
					into
						[log].[OrderPlanning_Log] (TranNo, SiteId, ShiftId, ProductId, Quantity, NoOfLoad, CreatedBy)
					Select
						@SiteId, a.ShiftId, a.ProductId
						, Case When
							(c.LoadCapacity = 4500 and a.NoOfLoad >= 0 and a.NoOfLoad <= @MaxNoOfLoadsForMobile)
							or (c.LoadCapacity = 30000 and a.NoOfLoad >= 0 and a.NoOfLoad <= @MaxNoOfLoads)
						 then c.LoadCapacity * a.NoOfLoad else 0 end
						, Case When
							(c.LoadCapacity = 4500 and a.NoOfLoad >= 0 and a.NoOfLoad <= @MaxNoOfLoadsForMobile)
							or (c.LoadCapacity = 30000 and a.NoOfLoad >= 0 and a.NoOfLoad <= @MaxNoOfLoads)
						 then a.NoOfLoad else 0 end, @LoggedInUserId, @LoggedInUserId
					From
						@Orders a
					Inner Join
						[ordering].[MST_Products] b
					On
						a.ProductId = b.Id
					Left Join
						[ordering].[DET_SiteProducts] c
					On
						b.LomoProductId = c.ProductId and c.SiteId = @SiteId

				End
				else
				Begin
					
					Raiserror('Credit Limit Exceeded', 16, 1) 

				End

				Select Cast(1 as bit) as Result
			End
			else
			Begin

				Raiserror('Credit Limit Exceeded', 16, 1) 

			End
		End
		else
		Begin

			Raiserror('Order cannot be placed1', 16, 1)

		End

	End
	else
	Begin

		Insert into
			@tmp (UnbilledInvoices, UnPaidInvoices, OverallCreditLimit, CreditLimitRemaining)
		exec [10.0.68.11].[DMS_WOQOD].[dbo].[GetCreditLimit] @CustNum

		Select
			@CreditLimitRemaining = a.CreditLimitRemaining --400000000000
		From
			@tmp a

		Select
			@OrderedAmount = isnull(Sum(a.Quantity * c.UnitPrice), 0)
		From
			[ordering].[OrderPlanning] a
		Left Join
			[ordering].[DET_Shift_Actions] b
		On
			a.ShiftId = b.ShiftId and b.isActive = 0
		Left Join
			[ordering].[VW_Site_Product_UnitPrice] c
		On
			a.ProductId = c.ProductId and a.SiteId = c.SiteId
		Where
			a.SiteId = @SiteId and b.Id is null 
			and a.ShiftId not in (select a.ShiftId from @Orders a) and a.ShiftId not in (Select a.ShiftId from [admin].Shifts_ToExclude a)

		Select
			@NewOrderedAmount = isnull(Sum(a.Quantity * d.UnitPrice), 0)
		From
		(
			Select
				@SiteId as SiteId, a.ShiftId, a.ProductId
				, Case When a.NoOfLoad <= @MaxNoOfLoads then c.LoadCapacity * a.NoOfLoad else 0 end as Quantity
			From
				@Orders a
			Inner Join
				[ordering].[MST_Products] b
			On
				a.ProductId = b.Id
			Left Join
				[ordering].[DET_SiteProducts] c
			On
				b.LomoProductId = c.ProductId and c.SiteId = @SiteId
		) a
		Left Join
			[ordering].[VW_Site_Product_UnitPrice] d
		On
			a.ProductId = d.ProductId and d.SiteId = @SiteId

		if (@OrderedAmount + @NewOrderedAmount <= @CreditLimitRemaining)
		Begin

			--Raiserror('Cannot Place Order', 16, 1) 

			Update e
			Set
				e.Quantity = Case When
									(d.LoadCapacity = 4500 and a.NoOfLoad >= 0 and a.NoOfLoad <= @MaxNoOfLoadsForMobile)
									or (d.LoadCapacity = 30000 and a.NoOfLoad >= 0 and a.NoOfLoad <= @MaxNoOfLoads)
							then d.LoadCapacity * a.NoOfLoad else 0 end,
				e.NoOfLoad = Case When
									(d.LoadCapacity = 4500 and a.NoOfLoad >= 0 and a.NoOfLoad <= @MaxNoOfLoadsForMobile)
									or (d.LoadCapacity = 30000 and a.NoOfLoad >= 0 and a.NoOfLoad <= @MaxNoOfLoads)
							then a.NoOfLoad else 0 end,
				ModifiedBy = @LoggedInUserId,
				ModifiedOn = GETDATE()  
			output 
				@TranNo, inserted.SiteId, inserted.ShiftId, inserted.ProductId, inserted.Quantity, inserted.NoOfLoad, inserted.CreatedBy
			into
				[log].[OrderPlanning_Log] (TranNo, SiteId, ShiftId, ProductId, Quantity, NoOfLoad, CreatedBy)
			From
				@Orders a
			Inner Join
				[ordering].[DET_Shifts] b
			On
				a.ShiftId = b.Id
			Inner Join
				[ordering].[MST_Products] c
			On
				a.ProductId = c.Id
			Inner Join
				[ordering].[DET_SiteProducts] d
			On
				c.LomoProductId = d.ProductId and d.SiteId = @SiteId
			Inner Join
				[ordering].[OrderPlanning] e
			On
				a.ProductId = e.ProductId and a.ShiftId = e.ShiftId and e.SiteId = @SiteId
			Where
				DATEDIFF(minute, getdate(), b.StartDate) > @ElapsedTime
		
			Select Cast(1 as bit) as Result
		End
		else
		Begin

			Raiserror('Credit Limit Exceeded', 16, 1) 

		End

	End


End

GO
/****** Object:  StoredProcedure [ordering].[SearchCustomer]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [ordering].[SearchCustomer]
(
	@Cust_Number int = 0 
	, @CustName nvarchar(100) = null
	, @MatchCode varchar(15)
	, @Area varchar(15)
	, @PageId smallint = 0
	, @NumberOfRows smallint = 10
) 
As
Begin

	Select
		a.MatchCode, a.CustomerName, a.SiteName, a.Area, Count(1) over() as TotalRows
	From
		[ordering].[ERP_CustSites] a
	Where
		(a.CUST_NUMBER = @Cust_Number)
		or (a.CustomerName like '%' + @CustName + '%')
		or (a.MatchCode = @MatchCode)
		or (a.Area = @Area)
	Order By
		a.CUST_NUMBER
	Offset
		@PageId * @NumberOfRows rows
	Fetch next 
		@NumberOfRows Rows only

End
GO
/****** Object:  StoredProcedure [ordering].[StartShift]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[StartShift]
(
	@ShiftDetailId int = 4,
	@LoggedInUserId int = 5
)
As
Begin

	Declare @ShiftStatusId tinyint 

	Select
		@ShiftStatusId = a.Id
	From
		[ordering].MST_ShiftStatus a
	Where
		a.Code = 'C' -- created

	if exists (select 1 from [ordering].[DET_Shifts] a where a.Id = @ShiftDetailId and a.ShiftStatusId = @ShiftStatusId)
	Begin

		Declare @CurrentDate datetime = GetDate() 

		Select
			@ShiftStatusId = a.Id
		From
			[ordering].MST_ShiftStatus a
		Where
			a.Code = 'S' -- started

		Update a
		Set
			a.StartedOn = @CurrentDate, a.ShiftStatusId = @ShiftStatusId
		From
			[ordering].DET_Shifts a
		Where
			a.Id = @ShiftDetailId
		
	End
	else
	Begin

		Raiserror('Cannot Start Shift', 16, 1)

	End


End
GO
/****** Object:  StoredProcedure [ordering].[UpdateSTG]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [ordering].[UpdateSTG]
(
	@BatchId int = 16
)
As
Begin

	Declare @WaitingForExport int = 2

	Begin tran

	Begin try

		Update a
		Set
			a.LomoProductId = isnull(b.LomoProductId, 0),
			a.LomoQuantity = isnull(a.Quantity, 0), -- Case When CAST(a.Quantity as int) > 30000 then null else CAST(a.Quantity as int) end,
			a.CustNum = SUBSTRING(a.MatchCode, 0, charindex('-', a.MatchCode)),
			a.SiteNum = SUBSTRING(a.MatchCode, charindex('-', a.MatchCode) + 1, len(a.MatchCode)),
			a.LomoDate = Cast(a.DeliveryDate as datetime)
		From
			[ordering].[STG_Orders] a
		Inner Join
			[ordering].[MST_Products] b
		On
			a.Product = b.ERPName
		Where
			a.STG_BatchId = @BatchId and a.ExportStatusId = @WaitingForExport

		commit

	End Try
	Begin Catch

		rollback

		Declare @ErrorMessage nvarchar(max) = error_message()

		Raiserror(@ErrorMessage, 16, 1)

	End Catch


End

GO
/****** Object:  StoredProcedure [orders].[CreateOrdersFromTask]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [orders].[CreateOrdersFromTask]
As
Begin
--LomoStart:

	Declare @OrderTaskId int = null

	Select
		top 1
		@OrderTaskId = a.Id
	From
		[orders].[OrderTasks] a
	Where
		a.IsDone = 0 and a.TaskCodeId = 1 -- EL
	Order By
		a.CreatedOn

	if (@OrderTaskId is not null)
	Begin

		Declare @DateFor date,
			@ShiftId tinyint, @ApprovedBy varchar(100), @ApprovedOn datetime

		Select
			@DateFor = a.DateParam, @ShiftId = a.ShiftNo, @ApprovedBy = b.FullName, @ApprovedOn = a.CreatedOn
		From
			[orders].OrderTasks a
		Inner Join
			dbo.AspNetUsers b
		On
			a.CreatedBy = b.UId
		Where
			a.Id = @OrderTaskId
		
		;WITH Nbrs ( Number ) AS (
			SELECT 1 UNION ALL
			SELECT 1 + Number FROM Nbrs WHERE Number < 99
		)
		Insert into
			[orders].[PSOrderMap] (ProductId, ShiftNo, Quantity, CUST_NUMBER, SITE_NUMBER, ShiftDate, ApprovedBy, ApprovedOn, OrderTaskId)
		SELECT
			a.ProductId, a.ShiftId, a.Quantity, a.CUST_NUMBER, a.SITE_NUMBER, a.ShiftDate, @ApprovedBy as ApprovedBy, @ApprovedOn as ApprovedOn, @OrderTaskId as OrderTaskId
		FROM
		(
			Select
				c.LomoProductId as ProductId, a.ShiftId
				, Case when d.LoadCapacity is null then 30000 else d.LoadCapacity end as Quantity
				, b.CUST_NUMBER, b.SITE_NUMBER, a.ShiftDate, a.No_ofload
			From
				[orders].PSPlaning a
			Inner Join
				[dbo].SitesERP b
			On
				a.SITEID = b.ID
			Inner Join
				[orders].Productz c
			On
				a.ProductId = c.Id
			Left Join
				[orders].ProductLoadCapacity d
			On
				a.ProductId = d.ProductId and a.SITEID = d.SiteId
			Where
				a.ShiftDate = @DateFor and a.ShiftId = @ShiftId and a.MarkAsDelete = 0 and a.No_ofload <> 0
		) a
		JOIN
			Nbrs N ON N.Number <= A.No_ofload
		Order by
			a.No_ofload 

		-- Export Part

		Declare @OrderRowId int, @CustNo int, @SiteNo int, @TankId int, @Quantity numeric(8,2), @ProductID smallint, @DeliverOn datetime, @ShiftNo tinyint,
		   @comments varchar(50), @IsSuccessful bit = 0, @OrderID as int, @OrderNo varchar(11), @Result varchar(100) 

		Declare lomocursor Cursor
		For
			Select
				a.Id, a.ProductId, a.ShiftNo, a.Quantity, a.CUST_NUMBER, a.SITE_NUMBER, a.ShiftDate
			From
				[orders].[PSOrderMap] a
			Where
				a.OrderTaskId = @OrderTaskId

		OPEN lomocursor

		Fetch Next From lomocursor INTO @OrderRowId, @ProductID, @ShiftNo, @Quantity, @CustNo, @SiteNo, @DeliverOn
		While (@@FETCH_STATUS <> -1) -- -1 == FETCH statement failed or the row was beyond the result set.
		Begin
			-- if lomosoft call fails Order MAP table should not get updated
			Begin try

				exec [10.0.68.11].[DMS_WOQOD].[dbo].[InsertPSOrder] @CustNo, @SiteNo, null, @Quantity, @ProductId
				, @DeliverOn, @ShiftNo, @ApprovedOn, @ApprovedBy, null, @IsSuccessful output, @OrderID output, @OrderNo output, @Result output

				Update a
				Set
					a.LomoOrderId = @OrderID
					, a.OrderNo = @OrderNo
					, a.Result = @Result
					, a.IsSuccessfull = @IsSuccessful
				From
					[orders].PSOrderMap a
				Where
					a.Id = @OrderRowId

			End Try
			Begin catch

				Update a
				Set
					a.LomoOrderId = @OrderID
					, a.OrderNo = @OrderNo
					, a.Result = Cast(ERROR_MESSAGE() as varchar(100))
					, a.IsSuccessfull = @IsSuccessful
				From
					[orders].PSOrderMap a
				Where
					a.Id = @OrderRowId

			End Catch

			Fetch Next From lomocursor INTO @OrderRowId, @ProductID, @ShiftNo, @Quantity, @CustNo, @SiteNo, @DeliverOn
		END
		CLOSE lomocursor
		DEALLOCATE lomocursor

		Update a
		Set
			a.IsDone = 1
		From
			[orders].OrderTasks a
		Where
			a.Id = @OrderTaskId

		--Goto LomoStart;

	End
	else
	Begin

		return

	End

End



GO
/****** Object:  StoredProcedure [orders].[GetCustomerDetails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [orders].[GetCustomerDetails]
(
	@SiteNumber int
)
As
Begin

	Declare @CustNum int

	Select
		@CustNum = a.CUST_NUMBER
	From	
		SitesERP a
	Where
		a.SITE_NUMBER = @SiteNumber


	EXEC   [10.0.68.11].[DMS_WOQOD].[dbo].[GetCustomerProducts]
              @CustNo = @CustNum,
              @SiteNo = @SiteNumber

End


		
GO
/****** Object:  StoredProcedure [orders].[GetProductsBySiteId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [orders].[GetProductsBySiteId]
(
	@SiteNumber int
)
As
Begin

	Declare @CustNum int

	Select
		@CustNum = a.CUST_NUMBER
	From	
		SitesERP a
	Where
		a.SITE_NUMBER = @SiteNumber

	Declare @tmp Table (ProductId smallint, ProductName nvarchar(100))


	Insert into 
		@tmp
	EXEC [10.0.68.11].[DMS_WOQOD].[dbo].[GetCustomerProducts]
              @CustNo = @CustNum,
              @SiteNo = @SiteNumber

	Select 
		a.ProductId as Id, a.ProductName 
	From
		@tmp a

End


		
GO
/****** Object:  StoredProcedure [orders].[GetScheduledPlannings]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [orders].[GetScheduledPlannings]
(
	@StartDate date,
	@EndDate date
)
As
Begin

	Select
        a.Name as Product, b.[1] as Shift1, b.[2] as Shift2, b.[3] as Shift3, b.ShiftDate 
    From
        [orders].Products a
    Inner Join
    (
        Select
            Product_O_Id, [1], [2], [3], ShiftDate
        From
        (
			Select
                a.Product_O_Id, a.ShiftId, a.ShiftDate, a.No_ofload 
            From
                [orders].PSPlaning a
			Where
				a.ShiftDate between @StartDate and @EndDate
        ) a
        Pivot
        (
            sum(no_ofload)
            for ShiftId in ([1], [2], [3])
        ) as pvt
    ) b
    On
        a.Id = b.Product_O_Id 


End

GO
/****** Object:  StoredProcedure [orders].[GetShifts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [orders].[GetShifts]
As
Begin

	Declare @CurrentDate datetime = getdate()

	Select
		a.Id, a.ShiftNumber, a.ShiftName + CAST(a.ShiftNumber as char(1)) + ' (' + Cast(Format(DATEPART(HOUR, a.FromDate), '00') as char(2)) + ':' + Cast(Format(DATEPART(MINUTE, a.FromDate), '00') as char(2)) + ' to ' + Cast(Format(DATEPART(HOUR, a.ToDate), '00') as char(2)) + ':' + Cast(Format(DATEPART(MINUTE, a.ToDate), '00') as char(2)) +')' as ShiftName
		, a.FromDate, a.ToDate, a.ToHour, a.ToMinute
	From
	(
		Select
			a.Id, a.Shift# as ShiftNumber, 'Shift' as ShiftName, a.FromDate
			, a.ToDate as ToDate 
			, a.ToHour, a.ToMinute
		From
		(
			Select
				a.Id, a.Shift#
				, DateTimeFromParts(DATEPART(YEAR, @CurrentDate), DATEPART(MONTH, @CurrentDate), DATEPART(DD, @CurrentDate), DATEPART(HOUR, a.StartTime), DATEPART(MINUTE, a.StartTime), 0, 0) as FromDate
				, DateTimeFromParts(DATEPART(YEAR, @CurrentDate), DATEPART(MONTH, @CurrentDate), DATEPART(DD, @CurrentDate), DATEPART(HOUR, a.EndTime), DATEPART(MINUTE, a.EndTime), 0, 0) as ToDate
				, DATEPART(HOUR, a.EndTime) as ToHour, DATEPART(MINUTE, a.EndTime) as ToMinute, DATEPART(HOUR, a.StartTime) as FromHour, DATEPART(MINUTE, a.StartTime) as FromMinute
			From
				[orders].[Shift] a
			Where
				a.MarkAsDelete = 0
		) a
	) a 
	Order By
		a.ShiftNumber
		
	--Where
	--	a.StartDate <= ''


End





GO
/****** Object:  StoredProcedure [orders].[GetSiteProductsForExport]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [orders].[GetSiteProductsForExport]
As
Begin

	Select
		top 100 a.CustNo, a.SiteNo, b.NAME as SiteName, a.ProductId, a.ProductName
	From
		[orders].DET_Site_Productz a
	Inner Join
	(
		Select
			distinct b.SITE_NUMBER, b.NAME, b.CategoryID
		From
			SitesERP b
	) b
	On
		a.SiteNo = b.SITE_NUMBER
	Where
		b.CategoryID in (26, 19)

End


GO
/****** Object:  StoredProcedure [orders].[GetSites]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [orders].[GetSites]
As
Begin

	Select
		distinct a.CustNo, a.SiteNo, b.NAME as SiteName
	From
		[orders].DET_Site_Productz a
	Inner Join
	(
		Select
			distinct b.SITE_NUMBER, b.NAME, b.CategoryID
		From
			SitesERP b
	) b
	On
		a.SiteNo = b.SITE_NUMBER
	Where
		b.NAME like '%petrol sta%'

End


GO
/****** Object:  StoredProcedure [orders].[GetSitesByPotalUserId]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [orders].[GetSitesByPotalUserId]
(
	@PortalUserId int = 15
)
As
Begin

	Select
		c.ID as Id, c.SITE_NUMBER as SiteNumber, c.NAME + ' (' + c.LOCATION + ')' as SiteName
	From
		orders.PortalUsers a
	Left Join
		orders.PortalUserSites b
	On
 		b.PortalUserId = a.Id
	Left Join
		SitesERP c
	On
		a.CustNum = c.CUST_NUMBER and a.isActive = 1 and (a.hasAccessToAllSites = 1 or b.SiteId = c.ID)
	Where
		a.Id = @PortalUserId and c.ID is not null

End





GO
/****** Object:  StoredProcedure [orders].[PlaceOrder]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [orders].[PlaceOrder]
(
	@SiteId int,
	@ProductId smallint,
	@Quantity int,
	@RequiredOn datetime,
	@ShiftId int,
	@LPO varchar(320),
	@OrderSourceId tinyint,
	@LoggedInUserId int = 5
)
As
Begin

	Declare @PendingOrderStatusId tinyint = 1

	Insert into 
		orders.Orders (SiteId, ProductId, OrderedQty, RequestedOn, ShiftId, LPO, OrderSourceId, StatusId, CreatedBy, ModifiedBy)
	Values
		(@SiteId, @ProductId, @Quantity, @RequiredOn, @ShiftId, @LPO, @OrderSourceId, 1, @LoggedInUserId, @LoggedInUserId)
	

End

GO
/****** Object:  StoredProcedure [orders].[PlaceOrderLomo]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [orders].[PlaceOrderLomo]
(
	@OrderId int = 1,
	@LoggedInUserId int = 5
)
As
Begin
	Declare @ApprovedStatusId tinyint = 0

	-- Get Approved Status Id
	Select
		@ApprovedStatusId = a.Id
	From
		[orders].OrderStatus a
	Where
		a.ShortCode = 'AP'

	Update a 
	Set
		a.StatusId = @ApprovedStatusId
	From	
		[orders].Orders a
	Where
		a.Id = @OrderId

	Declare @CustNo int, @SiteNo int, @Quantity int, @ProductId tinyint, @DeliverOn datetime, @ApprovedOn datetime
	, @ApprovedBy varchar(50), @LPO varchar(50), @IsSuccessful bit, @OrderNo varchar(10), @Result varchar(100), @OrderSourceId smallint 	

	-- Fetch Valid Order Details
	Select
		@CustNo = b.CUST_NUMBER, @SiteNo = b.SITE_NUMBER, @Quantity = a.OrderedQty, @ProductId = a.ProductId, @DeliverOn = a.RequestedOn
		, @ApprovedOn = a.ModifiedOn, @ApprovedBy = a.ModifiedBy, @LPO = a.LPO, @OrderSourceId = a.OrderSourceId
	From
		[orders].Orders a
	Inner Join
		SitesERP b
	On
		a.SiteId = b.Id
	Where
		a.Id = @OrderId and a.StatusId = @ApprovedStatusId

	--Select
	--	@CustNo, @SiteNo, @Quantity, @ProductId, @DeliverOn, @ApprovedOn, @ApprovedBy, @LPO, @IsSuccessful
	--	, @OrderNo, @Result, @OrderSourceId

	-- if it is a valid order
	if (@CustNo is not null)
	Begin

		-- insert into order map table
		Insert into 
			[orders].[OrderMap] (OrderId, OrderSourceId, CreatedBy, ModifiedBy)
		Values
			(@OrderId, @OrderSourceId, @LoggedInUserId, @LoggedInUserId)

		Declare @OrderMapId int = null, @LomoOrderId int

		-- get last inserted ordermapId
		Select 
			@OrderMapId = SCOPE_IDENTITY()

		-- if insert was successfull, pass data to lomosoft
		if (@OrderMapId is not null)
		Begin

			Begin tran

				-- if lomosoft call fails Order MAP table should not get updated
				Begin try
					exec [10.0.68.11].[DMS_WOQOD].[dbo].[InsertPortalOrder] @CustNo, @SiteNo, null, @Quantity, @ProductId
					, @DeliverOn, @ApprovedOn, @ApprovedBy, @LPO, @IsSuccessful output, @LomoOrderId output, @OrderNo output, @Result output

					Update a
					Set
						a.LomoOrderId = @LomoOrderId
						, a.LomoOrderNumber = @OrderNo
						, a.LomoResult = @Result
						, IsDone = @IsSuccessful
					From
						[orders].OrderMap a
					Where
						a.Id = @OrderMapId

				End Try
				Begin catch

					--Select ERROR_MESSAGE()

					rollback

					Raiserror('Invalid Order', 16, 1)

					return

				End Catch

			commit

		End

	End
	else
	Begin

		Raiserror('Invalid Order', 16, 1)

	End

End

GO
/****** Object:  StoredProcedure [orders].[PurgeEntireData]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [orders].[PurgeEntireData]
As
Begin

	Delete
  FROM [WOQ_DMS_New].[orders].[OrderMap]

  Delete
  FROM [WOQ_DMS_New].[orders].[Orderlog]

  Delete
  FROM [WOQ_DMS_New].[orders].[Orders]

  Delete
  FROM [WOQ_DMS_New].[orders].[OrderTasks]

  Delete
  FROM [WOQ_DMS_New].[orders].[PSOrderMap]

  Delete
  FROM [WOQ_DMS_New].[orders].[PSPlaning]

  Delete FROM [WOQ_DMS_New].[orders].[PSPlaningOnline];

  Delete FROM [WOQ_DMS_New].[log].[PSPlaning_Log];

End
GO
/****** Object:  StoredProcedure [orders].[RefreshSiteProductzLinkage]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [orders].[RefreshSiteProductzLinkage]
As
Begin

	Delete from 
	orders.STG_Site_Productz

	Insert into 
		orders.STG_Site_Productz(CustNo, SiteNo, ProductId, ProductName)
	EXEC [10.0.68.11].[DMS_WOQOD].[dbo].GetCustomerProductsAll

	BEGIN TRAN
	MERGE
		orders.DET_Site_Productz AS t
	USING
		orders.STG_Site_Productz AS s
	ON
		s.SiteNo = t.SiteNo and s.ProductId = t.ProductId

	WHEN NOT MATCHED BY TARGET
		THEN INSERT(CustNo, SiteNo, ProductId, ProductName) VALUES(s.CustNo, s.SiteNo, s.ProductId, s.ProductName)

	WHEN MATCHED THEN
		UPDATE
		SET
			t.ProductName = s.ProductName
	WHEN NOT MATCHED BY SOURCE THEN 
		Update 
		Set
			t.isActive = 0

	OUTPUT $action, inserted.*, deleted.*;

	ROLLBACK TRAN;

End








GO
/****** Object:  StoredProcedure [orders].[StartOnlineOrderingJob]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [orders].[StartOnlineOrderingJob]
As
Begin

	EXEC msdb.dbo.sp_start_job @job_name='OnlineOrdering'

End
GO
/****** Object:  StoredProcedure [orders].[usp_SavePsPlaning]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [orders].[usp_SavePsPlaning]
@Planing dbo.PsPlaningUDT Readonly
as
Begin
DECLARE @intErrorCode INT;

BEGIN TRAN



                 --Log Before Update
               INSERT INTO log.PSPlaning_Log
                     (PsplaningId, SITEID,ShiftId,ShiftDate,Shift_StartTime,Shift_EndTime,ProductId,Noofload_old,Noofload_New, CreateDate,ModifiedDate,ModifiedBy,Type,ActionDate,ActionBy)
               SELECT K.Id,K.SITEID,K.ShiftId,K.ShiftDate,K.Shift_StartTime,K.Shift_EndTime,K.ProductId,K.No_ofload,P.No_ofload,SYSDATETIME(),SYSDATETIME(),K.ModifiedBy,1,SYSDATETIME(),P.ModifiedBy 
			   FROM orders.PSPlaning K, @Planing P
			   WHERE NOT EXISTS
	          (
		        SELECT * 
		          FROM orders.PSOrderMap PO 
		          WHERE PO.ShiftDate=P.ShiftDate and PO.ShiftNo=P.ShiftId 
	          ) and
			    K.ShiftDate=P.ShiftDate and K.SITEID=P.SITEID and K.ShiftId=P.ShiftId and K.ProductId=P.ProductId
			   AND K.No_ofload <> P.No_ofload;
			  
			     ---------------------------------------------------------------------------
			  SELECT @intErrorCode = @@ERROR
              IF (@intErrorCode <> 0) GOTO PROBLEM
			  ----------------------------------------------------------------------------
	           --Update If Row exists
	           UPDATE q
	           SET q.No_ofload = a.No_ofload
	           FROM orders.PSPlaning q, @Planing a
               WHERE NOT EXISTS
	                          (
		                        SELECT * 
		                        FROM orders.PSOrderMap PO 
		                        WHERE PO.ShiftDate=a.ShiftDate and PO.ShiftNo=a.ShiftId 
	                             )
								  and q.ShiftDate=a.ShiftDate and q.SITEID=a.SITEID and q.ShiftId=a.ShiftId and q.ProductId=a.ProductId
	                              AND q.No_ofload <> a.No_ofload;

              ---------------------------------------------------------------------------
			  SELECT @intErrorCode = @@ERROR
              IF (@intErrorCode <> 0) GOTO PROBLEM
			  ----------------------------------------------------------------------------
              --Temp table to record the ID of the inserted rows for LOGGING
                DECLARE @output TABLE (id bigint);
				 DECLARE @output1 TABLE (id bigint);
                 -- Insert if not exists
                INSERT INTO orders.PSPlaning 
                (SITEID,ShiftId,ShiftDate,Shift_StartTime,Shift_EndTime,ProductId,No_ofload,CreateDate,ModifiedDate,ModifiedBy,MarkAsDelete)
	             OUTPUT inserted.Id INTO @output
                 SELECT SITEID,ShiftId,ShiftDate,Shift_StartTime,Shift_EndTime,ProductId,No_ofload,SYSDATETIME(),SYSDATETIME(),ModifiedBy,0 
	             FROM  @Planing P
	             WHERE NOT EXISTS
	                            (
		                         SELECT * 
		                         FROM orders.PSPlaning S 
		                         WHERE S.ShiftDate=P.ShiftDate and S.SITEID=P.SITEID and S.ShiftId=P.ShiftId and S.ProductId=P.ProductId 
	                            ) and 
	                     NOT EXISTS
	                             (
		                          SELECT * 
		                          FROM orders.PSOrderMap PO 
		                          WHERE PO.ShiftDate=P.ShiftDate and PO.ShiftNo=P.ShiftId 
	                             ); 
			  ---------------------------------------------------------------------------
			  SELECT @intErrorCode = @@ERROR
              IF (@intErrorCode <> 0) GOTO PROBLEM
			  ----------------------------------------------------------------------------
			  INSERT INTO orders.PSPlaning 
              (SITEID,ShiftId,ShiftDate,Shift_StartTime,Shift_EndTime,ProductId,No_ofload,CreateDate,ModifiedDate,ModifiedBy,MarkAsDelete)
	          OUTPUT inserted.Id INTO @output1
              SELECT SITEID,ShiftId,ShiftDate,Shift_StartTime,Shift_EndTime,ProductId,0,SYSDATETIME(),SYSDATETIME(),ModifiedBy,0 
	          FROM  @Planing P
	          WHERE NOT EXISTS
	          (
		       SELECT * 
		       FROM orders.PSPlaning S 
		       WHERE S.ShiftDate=P.ShiftDate and S.SITEID=P.SITEID and S.ShiftId=P.ShiftId and S.ProductId=P.ProductId 
	          ) and 
	          EXISTS
	          (
		          SELECT * 
		          FROM orders.PSOrderMap PO 
		          WHERE PO.ShiftDate=P.ShiftDate and PO.ShiftNo=P.ShiftId 
	          ) 
			  ---------------------------------------------------------------------------
			  SELECT @intErrorCode = @@ERROR
              IF (@intErrorCode <> 0) GOTO PROBLEM
			  ----------------------------------------------------------------------------
              INSERT INTO log.PSPlaning_Log
                     (PsplaningId, SITEID,ShiftId,ShiftDate,Shift_StartTime,Shift_EndTime,ProductId,Noofload_old,Noofload_New, CreateDate,ModifiedDate,ModifiedBy,Type,ActionDate,ActionBy)
               SELECT K.Id,K.SITEID,K.ShiftId,K.ShiftDate,K.Shift_StartTime,K.Shift_EndTime,K.ProductId,null,K.No_ofload,SYSDATETIME(),SYSDATETIME(),K.ModifiedBy,0,SYSDATETIME(),K.ModifiedBy 
			   FROM orders.PSPlaning K
			   WHERE NOT EXISTS
	          (
		        SELECT * 
		          FROM orders.PSOrderMap PO 
		          WHERE PO.ShiftDate=k.ShiftDate and PO.ShiftNo=K.ShiftId 
	          ) and Id in (select Id from @output)
              ---------------------------------------------------------------------------
			  SELECT @intErrorCode = @@ERROR
              IF (@intErrorCode <> 0) GOTO PROBLEM
			  ----------------------------------------------------------------------------
			   INSERT INTO log.PSPlaning_Log
                     (PsplaningId, SITEID,ShiftId,ShiftDate,Shift_StartTime,Shift_EndTime,ProductId,Noofload_old,Noofload_New, CreateDate,ModifiedDate,ModifiedBy,Type,ActionDate,ActionBy)
               SELECT K.Id,K.SITEID,K.ShiftId,K.ShiftDate,K.Shift_StartTime,K.Shift_EndTime,K.ProductId,null,K.No_ofload,SYSDATETIME(),SYSDATETIME(),K.ModifiedBy,0,SYSDATETIME(),K.ModifiedBy 
			   FROM orders.PSPlaning K
			   WHERE  EXISTS
	          (
		        SELECT * 
		          FROM orders.PSOrderMap PO 
		          WHERE PO.ShiftDate=k.ShiftDate and PO.ShiftNo=K.ShiftId 
	          ) and Id in (select Id from @output1)
              ---------------------------------------------------------------------------
			  SELECT @intErrorCode = @@ERROR
              IF (@intErrorCode <> 0) GOTO PROBLEM
			  ----------------------------------------------------------------------------

COMMIT TRAN

PROBLEM:
IF (@intErrorCode <> 0)
BEGIN
PRINT 'Unexpected error occurred!'
    ROLLBACK TRAN
END
End


GO
/****** Object:  StoredProcedure [psorder].[GetFlatDataForPSCustomers]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [psorder].[GetFlatDataForPSCustomers]
As
Begin

	Select
		a.ID as SiteId, a.SITE_STATUS as SiteStatus, a.CUST_NUMBER as CustNumber, a.ClientID as ClientId
		, a.SITE_NUMBER as SiteNumber, Cast(a.CUST_NUMBER as varchar(10)) + ' - ' + CAST(a.SITE_NUMBER as varchar(10)) + ' ' + a.NAME as SiteName
		, a.LOCATION as SiteLocation, b.ProductId as ProductId, b.LoadCapacity
		, c.ProductName, c.ERPName, c.ERPProductId, c.LomoProductId, d.Iterations, b.ProductId
	From
		SitesERP a
	Inner Join
		[ordering].[DET_SiteProducts] b
	On
		a.ID = b.SiteId
	Left Join
		[ordering].[MST_Products] c
	On
		b.ProductId = c.LomoProductId
	Left Join
		[ordering].[MST_SettingsQuantity] d
	On
		b.LoadCapacity = d.Value
	Where
		a.ClientID in (2, 4, 6) and a.SITE_STATUS = 'A'
	Order By
		a.CUST_NUMBER

End

GO
/****** Object:  StoredProcedure [report].[GetExportedOrdersByDay]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [report].[GetExportedOrdersByDay]
(
	@ShiftDay date = '2016-09-06'
)
As
Begin

	Select
		a.OrderItemNo, a.LomoOrderNum, Cast(a.LomoOrderId as varchar(10)) as LomoOrderId, a.ProductId, c.ProductName, a.ShiftId, e.LoadCapacity as Quantity
		, a.SiteId, d.NAME as SiteName, d.LOCATION as SiteLocation, b.ShiftDay, b.StartDate, b.EndDate
		, Cast(Case when a.StatusId = 4 then 1 else 0 end as bit) as IsExported, a.StatusId, a.Remarks, b.ShiftName
	From
		[ordering].[MST_DMS_Order] a
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id
	Inner Join
		[ordering].[MST_Products] c
	On
		a.ProductId = c.Id
	Inner Join
		SitesERP d
	On
		a.SiteId = d.ID
	Inner Join
		[ordering].[DET_SiteProducts] e
	On
		c.LomoProductId = e.ProductId and a.SiteId = e.SiteId
	Where
		b.ShiftDay = @ShiftDay

	--;WITH Nbrs ( Number ) AS (
	--	SELECT 1 UNION ALL
	--	SELECT 1 + Number FROM Nbrs WHERE Number < 99
	--)
	--Select
	--	null as OrderItemNo, null as LomoOrderNum, null as LomoOrderId, a.ProductId, c.ProductName, a.ShiftId
	--	, Case When a.NoOfLoad is null or a.NoOfLoad = 0 then 0 else a.Quantity / a.NoOfLoad end as Quantity --e.LoadCapacity as Quantity
	--	, a.SiteId, d.NAME as SiteName, d.LOCATION as SiteLocation, b.ShiftDay, b.StartDate, b.EndDate
	--	, Cast(1 as bit) as IsExported, Cast(0 as tinyint) as StatusId, null as Remarks, b.ShiftName
	--From
	--	[ordering].[OrderPlanning] a
	--JOIN
	--	Nbrs N ON N.Number <= A.NoOfLoad
	--Inner Join
	--	[ordering].[DET_Shifts] b
	--On
	--	a.ShiftId = b.Id
	--Inner Join
	--	[ordering].[MST_Products] c
	--On
	--	a.ProductId = c.Id
	--Inner Join
	--	SitesERP d
	--On
	--	a.SiteId = d.ID
	--Inner Join
	--	[ordering].[DET_SiteProducts] e
	--On
	--	c.LomoProductId = e.ProductId and a.SiteId = e.SiteId
	--Where
	--	a.NoOfLoad <> 0 and b.ShiftDay = @ShiftDay

End

GO
/****** Object:  StoredProcedure [report].[GetExportedOrdersByShift]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [report].[GetExportedOrdersByShift]
(
	@ShiftDate date,
	@ShiftId tinyint
)
As
Begin

	Declare @SectionId tinyint = 1, @ActualShiftId int, @ShiftStartTime datetime, @ShiftEndTime datetime -- supply

	Declare @tmp table (ActualShiftId int, ShiftStartTime datetime, ShiftEndTime datetime)
	
	Insert into 
		@tmp (ActualShiftId, ShiftStartTime, ShiftEndTime)
	exec [ordering].[GetActualShiftByShiftId] @SectionId, @ShiftId, @ShiftDate

	Select
		@ActualShiftId = a.ActualShiftId,
		@ShiftStartTime = a.ShiftStartTime,
		@ShiftEndTime = a.ShiftEndTime	
	From
		@tmp a

	Select
		a.OrderItemNo, a.LomoOrderNum, Cast(a.LomoOrderId as varchar(10)) as LomoOrderId, a.ProductId, c.ProductName, a.ShiftId, e.LoadCapacity as Quantity
		, a.SiteId, d.NAME as SiteName, d.LOCATION as SiteLocation, b.ShiftDay, b.StartDate, b.EndDate
		, Case when a.StatusId = 4 then 1 else 0 end as IsExported, a.StatusId, a.Remarks
	From
		[ordering].[MST_DMS_Order] a
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id
	Inner Join
		[ordering].[MST_Products] c
	On
		a.ProductId = c.Id
	Inner Join
		SitesERP d
	On
		a.SiteId = d.ID
	Inner Join
		[ordering].[DET_SiteProducts] e
	On
		c.LomoProductId = e.ProductId and a.SiteId = e.SiteId
	Where
		a.ShiftId = @ActualShiftId

End

GO
/****** Object:  StoredProcedure [report].[GetNotExportedOrdersByDay]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [report].[GetNotExportedOrdersByDay]
(
	@ShiftDay date = '2016-09-08'
)
As
Begin

	;WITH Nbrs ( Number ) AS (
		SELECT 1 UNION ALL
		SELECT 1 + Number FROM Nbrs WHERE Number < 99
	)
	Select
		d.Cust_Number, d.Site_Number, c.ProductName
		, Case When a.NoOfLoad is null or a.NoOfLoad = 0 then 0 else a.Quantity / a.NoOfLoad end as Quantity 
		, a.SiteId, d.NAME as SiteName, d.LOCATION as SiteLocation
		, b.ShiftName
	From
		[ordering].[OrderPlanning] a
	JOIN
		Nbrs N ON N.Number <= A.NoOfLoad
	Inner Join
		[ordering].[DET_Shifts] b
	On
		a.ShiftId = b.Id --and b.isActive = 0
	Left Join
		[ordering].[DET_Shift_Actions] f
	On
		b.Id = f.ShiftId and f.isActive = 0
	Inner Join
		[ordering].[MST_Products] c
	On
		a.ProductId = c.Id
	Inner Join
		SitesERP d
	On
		a.SiteId = d.ID
	Inner Join
		[ordering].[DET_SiteProducts] e
	On
		c.LomoProductId = e.ProductId and a.SiteId = e.SiteId
	Where
		a.NoOfLoad <> 0 and b.ShiftDay = @ShiftDay and f.isActive is null

End

GO
/****** Object:  StoredProcedure [report].[GetShiftList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [report].[GetShiftList]
As
Begin

	Select
		a.Id, a.ShiftName
	From
		[ordering].[MST_Shift] a


End
GO
/****** Object:  StoredProcedure [report].[GetShiftOrdersDeletedReport]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [report].[GetShiftOrdersDeletedReport]
(
	@ShiftDate date = '2016-08-24',
	@ShiftId tinyint = 1
) 
As
Begin

	Declare @SectionId tinyint = 1, @ActualShiftId int, @ShiftStartTime datetime, @ShiftEndTime datetime -- supply

	Declare @tmp table (ActualShiftId int, ShiftStartTime datetime, ShiftEndTime datetime)
	
	Insert into 
		@tmp (ActualShiftId, ShiftStartTime, ShiftEndTime)
	exec [ordering].[GetActualShiftByShiftId] @SectionId, @ShiftId, @ShiftDate

	Select
		@ActualShiftId = a.ActualShiftId,
		@ShiftStartTime = a.ShiftStartTime,
		@ShiftEndTime = a.ShiftEndTime	
	From
		@tmp a

	--Select
	--	@ActualShiftId
	
		Select
			a.LomoOrderId, a.LomoOrderNum, b.SITE_NUMBER as SiteNum, b.CUST_NUMBER as CustNum, b.NAME as SiteName, b.[LOCATION] as SiteLocation
			, b.CategoryID as CategoryId, d.Name as Category, a.Quantity, a.ProductId, c.ProductName
			, e.Quantity as LoadedQuantity, e.OrderNum 
		From
			[ordering].[MST_DMS_Order] a
		Inner Join
			SitesERP b
		On
			a.SiteId = b.Id
		Inner Join
			CustomerCategoryERP d
		On
			b.CategoryID = d.ID
		Inner Join
			[ordering].[MST_Products] c
		On
			a.ProductId = c.Id and c.isActive = 1
		Inner Join
		(
			Select
				a.*
			From
				[10.0.68.11].[DMS_WOQOD].[dbo].[vw_LomoDeletedOrders] a	
			Where
				a.OrderNum in (select a.LomoOrderNum from [ordering].[MST_DMS_Order] a where a.isActive = 1 and a.ShiftId = @ActualShiftId)

		) e
		On
			a.LomoOrderId = e.OrderId and e.Quantity <> 0
		Where
			a.isActive = 1 and a.ShiftId = @ActualShiftId
		

End

GO
/****** Object:  StoredProcedure [report].[GetShiftOrdersReport]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [report].[GetShiftOrdersReport]
(
	@ShiftDate date = '2016-08-24',
	@ShiftId tinyint = 1
) 
As
Begin

	Declare @SectionId tinyint = 1, @ActualShiftId int, @ShiftStartTime datetime, @ShiftEndTime datetime -- supply

	Declare @tmp table (ActualShiftId int, ShiftStartTime datetime, ShiftEndTime datetime)
	
	Insert into 
		@tmp (ActualShiftId, ShiftStartTime, ShiftEndTime)
	exec [ordering].[GetActualShiftByShiftId] @SectionId, @ShiftId, @ShiftDate

	Select
		@ActualShiftId = a.ActualShiftId,
		@ShiftStartTime = a.ShiftStartTime,
		@ShiftEndTime = a.ShiftEndTime	
	From
		@tmp a

	--Select
	--	@ActualShiftId
	
	Select
		a.SiteNum, a.CustNum, a.SiteName, a.SiteLocation, a.CategoryId, a.Category, a.ProductId, a.ProductName, SUM(a.Quantity) as Quantity
		, Count(a.Quantity)  as NoOfOrders, Sum(a.LoadedQuantity) as TotalDeliveredVolume, COUNT(a.Quantity) as TotalDeliveredOrders 
	From
	(
		Select
			a.LomoOrderId, b.SITE_NUMBER as SiteNum, b.CUST_NUMBER as CustNum, b.NAME as SiteName, b.[LOCATION] as SiteLocation
			, b.CategoryID as CategoryId, d.Name as Category, a.Quantity, a.ProductId, c.ProductName
			, e.Quantity as LoadedQuantity, e.OrderNum 
		From
			[ordering].[MST_DMS_Order] a
		Inner Join
			SitesERP b
		On
			a.SiteId = b.Id
		Inner Join
			CustomerCategoryERP d
		On
			b.CategoryID = d.ID
		Inner Join
			[ordering].[MST_Products] c
		On
			a.ProductId = c.Id and c.isActive = 1
		Left Join
		(
			Select
				a.*
			From
				[10.0.68.11].[DMS_WOQOD].[dbo].[vw_LomoOrders] a	
			Where
				a.OrderId in (select a.LomoOrderId from [ordering].[MST_DMS_Order] a where a.isActive = 1 and a.ShiftId = @ActualShiftId)

		) e
		On
			a.LomoOrderId = e.OrderId and e.Quantity <> 0
		Where
			a.isActive = 1 and a.ShiftId = @ActualShiftId
	) a
	Group By
		a.SiteNum, a.CustNum, a.SiteName, a.SiteLocation, a.CategoryId, a.Category, a.ProductId, a.ProductName



End


GO
/****** Object:  StoredProcedure [report].[GetShiftOrdersSummaryReport]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [report].[GetShiftOrdersSummaryReport]
(
	@ShiftDate date = '2016-08-24',
	@ShiftId tinyint = 1
) 
As
Begin

	Declare @SectionId tinyint = 1, @ActualShiftId int, @ShiftStartTime datetime, @ShiftEndTime datetime -- supply

	Declare @tmp table (ActualShiftId int, ShiftStartTime datetime, ShiftEndTime datetime)
	
	Insert into 
		@tmp (ActualShiftId, ShiftStartTime, ShiftEndTime)
	exec [ordering].[GetActualShiftByShiftId] @SectionId, @ShiftId, @ShiftDate

	Select
		@ActualShiftId = a.ActualShiftId,
		@ShiftStartTime = a.ShiftStartTime,
		@ShiftEndTime = a.ShiftEndTime	
	From
		@tmp a

	--Select
	--	@ActualShiftId
	
	Select
		a.SiteNum, a.CustNum, a.SiteName, a.SiteLocation, a.CategoryId, a.Category, a.ProductId, a.ProductName, SUM(a.Quantity) as Quantity
		, Count(a.Quantity)  as NoOfOrders, isnull(Sum(a.LoadedQuantity), 0) as TotalDeliveredVolume, Sum(Case when a.OrderNum is null then 0 else 1 end) as TotalDeliveredOrders 
	From
	(
		Select
			a.LomoOrderId, b.SITE_NUMBER as SiteNum, b.CUST_NUMBER as CustNum, b.NAME as SiteName, b.[LOCATION] as SiteLocation
			, b.CategoryID as CategoryId, d.Name as Category, a.Quantity, a.ProductId, c.ProductName
			, e.Quantity as LoadedQuantity, e.OrderNum 
		From
			[ordering].[MST_DMS_Order] a
		Inner Join
			SitesERP b
		On
			a.SiteId = b.Id
		Inner Join
			CustomerCategoryERP d
		On
			b.CategoryID = d.ID
		Inner Join
			[ordering].[MST_Products] c
		On
			a.ProductId = c.Id and c.isActive = 1
		Left Join
		(
			Select
				a.*
			From
				[10.0.68.11].[DMS_WOQOD].[dbo].[vw_LomoOrders] a	
			Where
				a.OrderId in (select a.LomoOrderId from [ordering].[MST_DMS_Order] a where a.isActive = 1 and a.ShiftId = @ActualShiftId)

		) e
		On
			a.LomoOrderId = e.OrderId and e.Quantity <> 0
		Where
			a.isActive = 1 and a.ShiftId = @ActualShiftId
	) a
	Group By
		a.SiteNum, a.CustNum, a.SiteName, a.SiteLocation, a.CategoryId, a.Category, a.ProductId, a.ProductName

End

GO
/****** Object:  StoredProcedure [sticker].[GetIssueLog]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [sticker].[GetIssueLog]
As
Begin

	Select
		a.Id, a.WOQODTankEquipmentNumber, b.WoqodLogo, b.HighlyInflammable, b.TankReg, a.ModifiedOn
	From
		[tank].StorageTank a
	Inner Join
	(
		Select
			StorageTankId, [1] as WoqodLogo, isnull([2], 0) as HighlyInflammable, isnull([3], 0) as TankReg
		From
		(
			Select
				a.StorageTankId, a.StickerTypeId, a.Quantity 
			From
				[tank].StorageTankStickers a
		) a
		Pivot
		(
			sum(Quantity)
			for StickerTypeId in ([1], [2], [3])
		) as pvt
	) b
	On
		a.Id = b.StorageTankId 
	Where
		a.isActive = 1

End
GO
/****** Object:  StoredProcedure [sticker].[GetStickerCurrentInventory]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [sticker].[GetStickerCurrentInventory]
As
Begin

	Select
		a.StickerType, a.CurrentStock - b.CurrentStock  as CurrentStock
	From
	(
		Select
			b.StickerType, b.Id as StickerTypeId, isnull(SUM(a.Quantity), 0) as CurrentStock
		From
			[sticker].StickerType b
		Left Join
			[sticker].[StickerInventory] c
		On
			c.isActive = 1
		Left Join
			[sticker].StickerInventoryDetails a
		On
			a.StickerTypeId = b.Id and a.StickerInventoryId = c.Id
		Group By
			b.StickerType, b.OrderId, b.Id
	) a
	Left Join
	(

		Select
			c.StickerType, b.StickerTypeId , sum(b.Quantity) as CurrentStock
		From
			[tank].StorageTank a
		Inner Join
			[tank].StorageTankStickers b
		On
			a.Id = b.StorageTankId
		Left Join
			[sticker].StickerType c
		On
			b.StickerTypeId = c.Id
		Where
			a.isActive = 1
		Group By
			b.StickerTypeId, c.StickerType
	) b
	On
		a.StickerTypeId = b.StickerTypeId
	Order By
		a.StickerTypeId


End
GO
/****** Object:  StoredProcedure [supply].[AddPSDocument]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[AddPSDocument]
(
	@SiteId int,
	@ResourceId uniqueidentifier,
	@FileName nvarchar(100),
	@FileExtension varchar(5),
	@LoggedInUSerId int
)
As
Begin
	
	Insert into
		[supply].[DET_Site_Resources] (SiteId, ResourceId, FileName, FileExtension, isDeleted, CreatedBy, ModifiedBy)
	Values
		(@SiteId, @ResourceId, @FileName, @FileExtension, 0, @LoggedInUSerId, @LoggedInUSerId)

	Select CAST(1 as bit) as result

End
GO
/****** Object:  StoredProcedure [supply].[ArchivePSContact]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[ArchivePSContact]
(
	@Id int,
	@LoggedInUserId int
)
As
Begin

	UPDATE a
	Set
		a.isDeleted = 1,
		a.ModifiedBy = @LoggedInUserId,
		a.ModifiedOn = GETDATE()
	From
		[supply].[DET_Site_Contacts] a
	Where
		a.Id = @Id

	Select CAST(1 as bit) as Result


End
GO
/****** Object:  StoredProcedure [supply].[ArchivePSDepotDuration]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [supply].[ArchivePSDepotDuration]
(
	@Id int,
	@LoggedInUserId int
)
As
Begin

	UPDATE a
	Set
		a.isDeleted = 1,
		a.ModifiedBy = @LoggedInUserId,
		a.ModifiedOn = GETDATE()
	From
		[supply].[DET_Site_Depot_Durations] a
	Where
		a.Id = @Id

	Select CAST(1 as bit) as Result


End
GO
/****** Object:  StoredProcedure [supply].[ArchivePSDocument]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[ArchivePSDocument]
(
	@ResourceId uniqueidentifier,
	@LoggedInUserId int
)
As
Begin

	UPDATE a
	Set
		a.isDeleted = 1,
		a.ModifiedBy = @LoggedInUserId,
		a.ModifiedOn = GETDATE()
	From
		[supply].[DET_Site_Resources] a
	Where
		a.ResourceId = @ResourceId

	Select CAST(1 as bit) as Result


End
GO
/****** Object:  StoredProcedure [supply].[ArchivePSShift]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [supply].[ArchivePSShift]
(
	@Id int,
	@LoggedInUserId int
)
As
Begin

	UPDATE a
	Set
		a.isDeleted = 1,
		a.ModifiedBy = @LoggedInUserId,
		a.ModifiedOn = GETDATE()
	From
		[supply].[DET_Site_Shifts] a
	Where
		a.Id = @Id

	Select CAST(1 as bit) as Result


End
GO
/****** Object:  StoredProcedure [supply].[ArchivePSTanks]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [supply].[ArchivePSTanks]
(
	@Id int,
	@LoggedInUserId int
)
As
Begin

	UPDATE a
	Set
		a.isDeleted = 1,
		a.ModifiedBy = @LoggedInUserId,
		a.ModifiedOn = GETDATE()
	From
		[supply].[DET_Site_Tanks] a
	Where
		a.Id = @Id

	Select CAST(1 as bit) as Result


End
GO
/****** Object:  StoredProcedure [supply].[BulkSavePSContacts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[BulkSavePSContacts]
(
	@Contacts [supply].[PSContacts] readonly,
	@SiteId int
)
As
Begin

	Insert into 
		[supply].[DET_Site_Contacts] (SiteId, Name, PositionId, Mobile1, Mobile2, Telephone1, Telephone2, EmailId, CreatedBy, ModifiedBy)
	Select
		@SiteId, a.Name, a.PositionId, a.Mobile1, a.Mobile2, a.Telephone1, a.Telephone2, a.EmailId, a.ModifiedBy, a.ModifiedBy
	From
		@Contacts a
	Where
		a.Id = 0


	Update a
	Set
		a.Name = b.Name,
		a.PositionId = b.PositionId,
		a.Mobile1 = b.Mobile1,
		a.Mobile2 = b.Mobile2,
		a.Telephone1 = b.Telephone1,
		a.Telephone2 = b.Telephone2,
		a.EmailId = b.EmailId,
		a.ModifiedBy = b.ModifiedBy,
		a.ModifiedOn = GETDATE()
	From
		[supply].[DET_Site_Contacts] a
	Inner Join
		@Contacts b
	On
		a.Id = b.Id

	Select CAST(1 as bit) as result


End
GO
/****** Object:  StoredProcedure [supply].[BulkSavePSShifts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[BulkSavePSShifts]
(
	@Shifts [supply].[PSShifts] readonly,
	@SiteId int
)
As
Begin

	Insert into 
		[supply].[DET_Site_Shifts] (SiteId, ShiftName, ShiftStartTime, ShiftEndTime, CreatedBy, ModifiedBy)
	Select
		@SiteId, a.ShiftName, a.ShiftStartTime, a.ShiftEndTime, a.ModifiedBy, a.ModifiedBy
	From
		@Shifts a
	Where
		a.Id = 0


	Update a
	Set
		a.ShiftName = b.ShiftName,
		a.ShiftStartTime = b.ShiftStartTime,
		a.ShiftEndTime = b.ShiftEndTime,
		a.ModifiedBy = b.ModifiedBy,
		a.ModifiedOn = GETDATE()
	From
		[supply].[DET_Site_Shifts] a
	Inner Join
		@Shifts b
	On
		a.Id = b.Id

	Select CAST(1 as bit) as result


End
GO
/****** Object:  StoredProcedure [supply].[BulkSavePSTanks]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [supply].[BulkSavePSTanks]
(
	@Tanks [supply].[PSTanks] readonly,
	@SiteId int
)
As
Begin

	Insert into 
		[supply].[DET_Site_Tanks] (SiteId, ProductId, Capacity, XCoordinates, YCoordinates, isActive, CreatedBy, ModifiedBy)
	Select
		@SiteId, a.ProductId, a.Capacity, a.XCoordinates, a.YCoordinates, a.isActive, a.ModifiedBy, a.ModifiedBy
	From
		@Tanks a
	Where
		a.Id = 0


	Update a
	Set
		a.ProductId = b.ProductId,
		a.Capacity = b.Capacity,
		a.XCoordinates = b.XCoordinates,
		a.YCoordinates = b.YCoordinates,
		a.isActive = b.isActive,
		a.ModifiedBy = b.ModifiedBy,
		a.ModifiedOn = GETDATE()
	From
		[supply].[DET_Site_Tanks] a
	Inner Join
		@Tanks b
	On
		a.Id = b.Id

	Select CAST(1 as bit) as result


End
GO
/****** Object:  StoredProcedure [supply].[GetAvailableServices]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[GetAvailableServices]
(
	@SiteId int = 6331
)
As
Begin

	Select
		a.Id, a.Value as Name, Cast(Case when c.Id is null then 0 else 1 end as bit) as selected
	From
		[dbo].[MST_LookupsValues] a
	Inner Join
		[dbo].[MST_Lookups] b
	On
		a.MST_LookupId = b.Id and b.Code = 'PSAS'
	Left Join
		[supply].[DET_Site_AvailableServices] c
	On
		a.Id = c.AvailableServiceId and c.SiteId = @SiteId
	Where
		a.MarkAsDeleted = 0

End
GO
/****** Object:  StoredProcedure [supply].[GetDriverById]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[GetDriverById]
(
	@DriverId int
)
As
Begin

	Select
		a.Id, a.FullName, a.NationalityId, c.Description as Nationality, a.NationalityCategoryId, d.Description as NationalityCategory
		, a.DateOfBirth, a.JoiningDate, b.DrivingLicenseValidity, DATEDIFF(yy, getdate(), a.DateOfBirth) * -1 as Age
		, b.DrivingLicenseTypeId, b.DrivingLicenseValidity, a.Address, a.MobileNo1, a.MobileNo2, b.DrivingLicenseValidity
	From
		Employee a
	Inner Join
		supply.Driver b
	On
		a.Id = b.EmployeeId
	Inner Join
		supply.Nationality c
	On
		a.NationalityId = c.Id
	Inner Join
		supply.NationalityCategory d
	On
		a.NationalityCategoryId = d.Id
	Where
		b.Id = @DriverId

End
GO
/****** Object:  StoredProcedure [supply].[GetDriverList]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[GetDriverList]
(
	@Search nvarchar(200) = '1',
	@PageId smallint = 2,
	@NumberOfRows smallint = 10
)
As
Begin

	Select
		b.Id, a.StaffId, a.FullName, a.NationalityId, c.Description as Nationality, a.NationalityCategoryId, d.Description as NationalityCategory
		, a.DateOfBirth, a.JoiningDate, b.DrivingLicenseValidity, DATEDIFF(yy, getdate(), a.DateOfBirth) * -1 as Age 
		, COUNT(1) over() as TotalRows
	From
		Employee a
	Inner Join
		supply.Driver b
	On
		a.Id = b.EmployeeId
	Inner Join
		supply.Nationality c
	On
		a.NationalityId = c.Id
	Inner Join
		supply.NationalityCategory d
	On
		a.NationalityCategoryId = d.Id
	Where
		a.FullName like '%'+ @Search +'%' or a.StaffId like '%'+ @Search +'%'
		--Freetext(a.FullName, @Search) or Contains(a.StaffId, @Search)
	Order By
		b.ModifiedOn
	Offset
		@PageId * @NumberOfRows rows
	Fetch next 
		@NumberOfRows Rows only
End
GO
/****** Object:  StoredProcedure [supply].[GetFilesByFleetRequest]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [supply].[GetFilesByFleetRequest]
(
	@FRId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
		, a.Remarks, a.FileExtension
	From
		[Fleet].[DET_FleetServiceRequest_Resources] a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.FleetRequestId = @FRId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [supply].[GetFilesByPS]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [supply].[GetFilesByPS]
(
	@SiteId bigint
)
As
Begin

	Select
		a.ResourceId, b.stream_id as OriginalFileName, a.[FileName] as DownloadFileName
		, a.Remarks, a.FileExtension
	From
		[supply].DET_Site_Resources a
	Left Join
		DocumentStore b
	On
		a.ResourceId = b.stream_id
	Where
		a.SiteId = @SiteId and a.isDeleted = 0


End
GO
/****** Object:  StoredProcedure [supply].[GetGatePassRequirements]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [supply].[GetGatePassRequirements]
(
	@SiteId int = 6331
)
As
Begin

	Select
		a.Id, a.Value as Name, Cast(Case when c.Id is null then 0 else 1 end as bit) as selected
	From
		[dbo].[MST_LookupsValues] a
	Inner Join
		[dbo].[MST_Lookups] b
	On
		a.MST_LookupId = b.Id and b.Code = 'PSGPRS'
	Left Join
		[supply].[DET_Site_GatePassRequirements] c
	On
		a.Id = c.GPRId and c.SiteId = @SiteId
	Where
		a.MarkAsDeleted = 0

End
GO
/****** Object:  StoredProcedure [supply].[GetLookupDataByCode]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[GetLookupDataByCode]
(
	@LookUpCode varchar(10)
)
As
Begin

	Select
		b.Id, b.Value as Name, b.Prefix 
	From
		[dbo].[MST_Lookups] a
	Inner Join
		[dbo].[MST_LookupsValues] b
	On
		a.Id = b.MST_LookupId
	Where
		a.MarkAsDeleted = 0 and b.MarkAsDeleted = 0 and a.Code = @LookUpCode
	Order By
		b.SortOrder

End
GO
/****** Object:  StoredProcedure [supply].[GetPetrolStationById]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[GetPetrolStationById]
(
	@SiteId int = 5968
)
As
Begin

	if not exists (select 1 from [supply].[DET_PetrolStations] a where a.SiteId = @SiteId)
	Begin

		Declare @tmp table (FolderPath hierarchyId)

		Insert into @tmp (FolderPath)
		exec [dbo].[CreateDirectory]

		Declare @FolderPath nvarchar(max), @SystemUserId int
		Select
			@FolderPath = Cast(a.FolderPath as nvarchar(max))
		From
			@tmp a

		Select	
			@SystemUserId = a.UId
		From
			AspNetUsers a
		Where
			a.Email = 'system@woqod.com.qa'


		Insert into
			[supply].[DET_PetrolStations] (SiteId, FolderPath, CreatedBy, ModifiedBy)
		Values
			(@SiteId, @FolderPath, @SystemUserId, @SystemUserId)

	End

	Select
		a.Id, c.Id as SiteId, c.CUST_NUMBER as CustNum, c.SITE_NUMBER as SiteNum, c.LOCATION as ShortName, c.NAME as SiteName
		, a.PSLocation, a.OwnershipId, a.TypeId, a.OperationalStatusId, a.StatusId, a.PoBox, a.PIN
		, a.KarhamaNo, a.StreetName, a.Area, a.ZoneCode, a.CreatedBy, a.CreatedOn, a.ModifiedBy, a.ModifiedOn, b.FullName as LastModifiedBy
		, a.Lat, a.Long, a.Distance, d.Value as DistanceCategory, a.FolderPath, a.RequireGatePass
	From
		[SitesERP] c
	Left Join
		[supply].[DET_PetrolStations] a
	On
		c.ID = a.SiteId
	Left Join
		AspNetUsers b
	On
		a.ModifiedBy = b.UId
	Left Join
		MST_LookupsValues d
	On
		a.DistanceCategoryId = d.Id
	Where
		c.ID = @SiteId

End
GO
/****** Object:  StoredProcedure [supply].[GetPSContacts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[GetPSContacts]
(
	@SiteId int = 6993
)
As
Begin

	Select
		a.Id, a.Name, a.PositionId, b.Value as Position, b.Prefix as PositionPrefix, a.Mobile1CC, a.Mobile1, a.Mobile2CC, a.Mobile2, a.Telephone1CC, a.Telephone1, a.Telephone2CC, a.Telephone2
		, a.EmailId, CAST(0 as bit) as IsPortalUser
	From
		[supply].[DET_Site_Contacts] a
	Left Join
		[dbo].[MST_LookupsValues] b
	On
		a.PositionId = b.Id
	Where
		a.SiteId = @SiteId and a.isDeleted = 0

	union all

	Select
		b.Id, b.FullName as Name, null as PositionId, null as Position, null as PositionPrefix, null as Mobile1CC, b.MobileNum as Mobile1, null as Mobile2CC, null as Mobile2
		, null as Telephone1CC, b.LandlineNum as Telephone1, null as Telephone2CC, null as Telephone2
		, b.EmailId, Cast(1 as bit) as IsPortalUser
	From
		[orders].[PortalUserSites] a
	Inner Join
		[orders].[PortalUsers] b
	On
		a.PortalUserId = b.Id
	Where
		a.SiteId = @SiteId

End
GO
/****** Object:  StoredProcedure [supply].[GetPSDepotDurations]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[GetPSDepotDurations]
(
	@SiteId int = 6433
)
As
Begin

	Select
		b.Id, e.Id as DepotId, e.DepotName, c.Id as ShiftId, c.ShiftName, a.ProductId, d.ERPName as ProductName, b.TripDuration
	From
		[supply].[DET_Site_Products] a
	Cross Join
		[dbo].[MST_Depot] e
	Cross Join
		[ordering].[MST_Shift] c
	Left Join
		[supply].[DET_Site_Depot_Durations] b
	On
		a.ProductId = b.ProductId and a.SiteId = b.SiteId and b.DepotId = e.Id and c.Id = b.ShiftId
	Left Join
		[ordering].[MST_Products] d
	On
		a.ProductId = d.Id
	Where
		a.SiteId = @SiteId and e.IsValidForSupply = 1
	Order By
		e.DepotName

End
GO
/****** Object:  StoredProcedure [supply].[GetPSShifts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[GetPSShifts]
(
	@SiteId int = 6993
)
As
Begin

	Select
		a.Id, a.ShiftName, a.ShiftStartTime, a.ShiftEndTime
		, Right('0' + Cast(DatePart(HOUR, a.ShiftStartTime) as varchar(4)), 2)as STHH
		, Right('0' + Cast(DatePart(MINUTE, a.ShiftStartTime) as varchar(4)), 2) as STMM
		, Right('0' + Cast(DatePart(HOUR, a.ShiftEndTime) as varchar(4)), 2) as SEHH
		, Right('0' + Cast(DatePart(MINUTE, a.ShiftEndTime) as varchar(4)), 2) as SEMM

	From
		[supply].[DET_Site_Shifts] a
	Where
		a.SiteId = @SiteId and a.isDeleted = 0

End
GO
/****** Object:  StoredProcedure [supply].[GetPSTanks]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[GetPSTanks]
(
	@SiteId int = 6993
)
As
Begin

	Select
		a.Id, a.ProductId, b.ERPName as ProductName, a.Capacity, a.XCoordinates, a.YCoordinates, a.isActive
	From
		[supply].[DET_Site_Tanks] a
	Inner Join
		[ordering].[MST_Products] b
	On
		a.ProductId = b.Id
	Where
		a.SiteId = @SiteId and a.isDeleted = 0

End
GO
/****** Object:  StoredProcedure [supply].[SavePSAttachmentDetails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[SavePSAttachmentDetails]
(
	@ResourceId uniqueidentifier,
	@FileName nvarchar(100),
	@Remarks nvarchar(250),
	@LoggedInUserId int
)
As
Begin

	Update a
	Set
		a.FileName = @FileName,
		a.Remarks = @Remarks,
		a.ModifiedBy = @LoggedInUserId,
		a.ModifiedOn = GETDATE()
	From
		[supply].[DET_Site_Resources] a
	Where
		a.ResourceId = @ResourceId

	Select CAST(1 as bit) as result

End
GO
/****** Object:  StoredProcedure [supply].[SavePSAvailableServices]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [supply].[SavePSAvailableServices]
(
	@SiteId int,
	@AvailableServiceIds nvarchar(max),
	@LoggedInUserId int
)
As
Begin

	Delete a
	From 
		[supply].[DET_Site_AvailableServices] a
	Where	
		a.SiteId = @SiteId

	Insert into
		[supply].[DET_Site_AvailableServices] (SiteId, AvailableServiceId, CreatedBy, ModifiedBy)
	Select
		@SiteId, a.Item, @LoggedInUserId, @LoggedInUserId
	From
		dbo.SplitString(@AvailableServiceIds, ',') a

	select Cast(1 as bit) as result

End
GO
/****** Object:  StoredProcedure [supply].[SavePSContacts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[SavePSContacts]
(
	@Id int,
	@SiteId int,
	@Name nvarchar(100),
	@PositionId smallint = null,
	@Mobile1CC varchar(5) = null,
	@Mobile1 varchar(10) = null,
	@Mobile2CC varchar(5) = null,
	@Mobile2 varchar(10) = null,
	@Telephone1CC varchar(5) = null,
	@Telephone1 varchar(10) = null,
	@Telephone2CC varchar(5) = null,
	@Telephone2 varchar(10) = null,
	@EmailId varchar(320) = null,
	@LoggedInUserId int
)
As
Begin

	if (@Id = 0)
	Begin

		Insert INTO [supply].[DET_Site_Contacts]
			([SiteId], [Name], [PositionId], [Mobile1CC], [Mobile1], [Mobile2CC], [Mobile2], [Telephone1CC]
			, [Telephone1], [Telephone2CC], [Telephone2], [EmailId], [CreatedBy], [ModifiedBy])
		 Values
			(@SiteId, @Name, @PositionId, @Mobile1CC, @Mobile1, @Mobile2CC, @Mobile2, @Telephone1CC, @Telephone1
			 , @Telephone2CC, @Telephone2, @EmailId, @LoggedInUserId, @LoggedInUserId)

		select Cast(SCOPE_IDENTITY() as int) as result
	End
	else
	Begin

		Update a
		Set
			a.[SiteId] = @SiteId
			, a.[Name] = @Name
			, a.[PositionId] = @PositionId
			, a.[Mobile1CC] = @Mobile1CC
			, a.[Mobile1] = @Mobile1
			, a.[Mobile2CC] = @Mobile2CC
			, a.[Mobile2] = @Mobile2
			, a.[Telephone1CC] = @Telephone1CC
			, a.[Telephone1] = @Telephone1
			, a.[Telephone2CC] = @Telephone2CC
			, a.[Telephone2] = @Telephone2
			, a.[EmailId] = @EmailId
			, a.[ModifiedBy] = @LoggedInUserId
			, a.[ModifiedOn] = GETDATE()
		From
			[supply].[DET_Site_Contacts] a
		Where
			a.Id = @Id

		select @Id as result

	End

	

End


GO
/****** Object:  StoredProcedure [supply].[SavePSDepotDuration]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [supply].[SavePSDepotDuration]
(
	@Id int,
	@SiteId int,
	@ProductId smallint,
	@ShiftId tinyint,
	@DepotId tinyint,
	@TripDuration time(7),
	@LoggedInUserId int
)
As
Begin

	if (@Id = 0)
	Begin

		Insert INTO [supply].[DET_Site_Depot_Durations]
			([SiteId], ProductId, ShiftId, DepotId, TripDuration, [CreatedBy], [ModifiedBy])
		 Values
			(@SiteId, @ProductId, @ShiftId, @DepotId, @TripDuration, @LoggedInUserId, @LoggedInUserId)

		select Cast(SCOPE_IDENTITY() as int) as result

	End
	else
	Begin

		Update a
		Set
			a.[SiteId] = @SiteId
			, a.ProductId = @ProductId
			, a.ShiftId = @ShiftId
			, a.DepotId = @DepotId
			, a.TripDuration = @TripDuration
			, a.[ModifiedBy] = @LoggedInUserId
			, a.[ModifiedOn] = GETDATE()
		From
			[supply].[DET_Site_Depot_Durations] a
		Where
			a.Id = @Id

		select @Id as result

	End

	

End


GO
/****** Object:  StoredProcedure [supply].[SavePSDepots]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[SavePSDepots]
(
	@TripDuration [supply].[PSTripDuration] readonly,
	@SiteId int
)
As
Begin

	Insert into 
		[supply].[DET_Site_Depot_Durations] (SiteId, ShiftId, ProductId, DepotId, TripDuration, CreatedBy, ModifiedBy)
	Select
		@SiteId, a.ShiftId, a.ProductId, a.DepotId, a.TripDuration, a.ModifiedBy, a.ModifiedBy
	From
		@TripDuration a
	Where
		a.Id = 0 or a.Id is null


	Update a
	Set
		a.TripDuration = b.TripDuration,
		a.ModifiedBy = b.ModifiedBy,
		a.ModifiedOn = GETDATE()
	From
		[supply].[DET_Site_Depot_Durations] a
	Inner Join
		@TripDuration b
	On
		a.Id = b.Id

	Select CAST(1 as bit) as result


End
GO
/****** Object:  StoredProcedure [supply].[SavePSGatePassRequirements]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [supply].[SavePSGatePassRequirements]
(
	@SiteId int,
	@GatePassIds nvarchar(max),
	@LoggedInUserId int
)
As
Begin

	Delete a
	From 
		[supply].[DET_Site_GatePassRequirements] a
	Where	
		a.SiteId = @SiteId

	Insert into
		[supply].[DET_Site_GatePassRequirements] (SiteId, GPRId, CreatedBy, ModifiedBy)
	Select
		@SiteId, a.Item, @LoggedInUserId, @LoggedInUserId
	From
		dbo.SplitString(@GatePassIds, ',') a

	select Cast(1 as bit) as result

End
GO
/****** Object:  StoredProcedure [supply].[SavePSProducts]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[SavePSProducts]
(
	@SiteId int,
	@ProductIds nvarchar(max),
	@LoggedInUserId int
)
As
Begin

	Delete a
	From 
		[supply].[DET_Site_Products] a
	Where	
		a.SiteId = @SiteId

	Insert into
		[supply].[DET_Site_Products] (SiteId, ProductId, CreatedBy, ModifiedBy)
	Select
		@SiteId, a.Item, @LoggedInUserId, @LoggedInUserId
	From
		dbo.SplitString(@ProductIds, ',') a

	select Cast(1 as bit) as result

End
GO
/****** Object:  StoredProcedure [supply].[SavePSShift]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [supply].[SavePSShift]
(
	@Id int,
	@SiteId int,
	@ShiftName nvarchar(100),
	@ShiftStartTime datetime = null,
	@ShiftEndTime datetime = null,
	@LoggedInUserId int
)
As
Begin

	if (@Id = 0)
	Begin

		Insert INTO [supply].[DET_Site_Shifts]
			([SiteId], ShiftName, ShiftStartTime, ShiftEndTime, [CreatedBy], [ModifiedBy])
		 Values
			(@SiteId, @ShiftName, @ShiftStartTime, @ShiftEndTime, @LoggedInUserId, @LoggedInUserId)

		select Cast(SCOPE_IDENTITY() as int) as result

	End
	else
	Begin

		Update a
		Set
			a.[SiteId] = @SiteId
			, a.ShiftName = @ShiftName
			, a.ShiftStartTime = @ShiftStartTime
			, a.ShiftEndTime = @ShiftEndTime
			, a.[ModifiedBy] = @LoggedInUserId
			, a.[ModifiedOn] = GETDATE()
		From
			[supply].[DET_Site_Shifts] a
		Where
			a.Id = @Id

		select @Id as result

	End

	

End


GO
/****** Object:  StoredProcedure [supply].[SavePSTank]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[SavePSTank]
(
	@Id int,
	@SiteId int,
	@ProductId smallint,
	@Capacity varchar(10),
	@XCoordinates numeric(18, 6),
	@YCoordinates numeric(18, 6),
	@isActive bit,
	@LoggedInUserId int
)
As
Begin

	if (@Id = 0)
	Begin

		if not exists (select 1 from [supply].[DET_Site_Products] a where a.ProductId = @ProductId and a.SiteId = @SiteId)
		Begin

			Insert into
				[supply].[DET_Site_Products] (SiteId, ProductId, CreatedBy, ModifiedBy)
			Values
				(@SiteId, @ProductId, @LoggedInUserId, @LoggedInUserId)

		End

		Insert INTO [supply].[DET_Site_Tanks]
			([SiteId], ProductId, Capacity, XCoordinates, YCoordinates, isActive, [CreatedBy], [ModifiedBy])
		 Values
			(@SiteId, @ProductId, @Capacity, @XCoordinates, @YCoordinates, @isActive, @LoggedInUserId, @LoggedInUserId)

		select Cast(SCOPE_IDENTITY() as int) as result

	End
	else
	Begin

		Update a
		Set
			a.[SiteId] = @SiteId
			, a.ProductId = @ProductId
			, a.Capacity = @Capacity
			, a.XCoordinates = @XCoordinates
			, a.YCoordinates = @YCoordinates
			, isActive = @isActive
			, a.[ModifiedBy] = @LoggedInUserId
			, a.[ModifiedOn] = GETDATE()
		From
			[supply].[DET_Site_Tanks] a
		Where
			a.Id = @Id

		select @Id as result

	End

	

End


GO
/****** Object:  StoredProcedure [supply].[UpdatePSDetails]    Script Date: 12/17/2016 12:34:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [supply].[UpdatePSDetails]
(
	@SiteId int,
	@PSDetail [supply].[PSDetail] readonly,
	@LoggedInUserId int
)
As
Begin

	if exists (select 1 from [supply].[DET_PetrolStations] a where a.SiteId = @SiteId)
	Begin

		Update a
		Set
			a.PSLocation = b.PSLocation, a.OwnershipId = b.OwnershipId, a.TypeId = b.TypeId
			, a.OperationalStatusId = b.OperationalStatusId, a.StatusId = b.StatusId
			, a.PoBox = b.PoBox, a.PIN = b.PIN, a.KarhamaNo = b.KarhamaNo
			, a.StreetName = b.StreetName, a.Area = b.Area, a.ZoneCode = b.ZoneCode
			, a.ModifiedBy = @LoggedInUserId, a.Lat = b.Lat, a.Long = b.Long, a.Distance = b.Distance
			, a.DistanceCategoryId = b.DistanceCategoryId, a.RequireGatePass = b.RequireGatePass
		From
			[supply].DET_PetrolStations a
		Inner Join
			@PSDetail b
		On
			a.SiteId = b.SiteId

	End
	else
	Begin

		Declare @tmp table (FolderPath hierarchyId)

		Insert into @tmp (FolderPath)
		exec [dbo].[CreateDirectory]

		Declare @FolderPath nvarchar(max)
		Select
			@FolderPath = Cast(a.FolderPath as nvarchar(max))
		From
			@tmp a

		Insert into
			[supply].[DET_PetrolStations] (SiteId, PSLocation, OwnershipId, TypeId, OperationalStatusId, StatusId
											, PoBox, PIN, KarhamaNo, StreetName, Area, ZoneCode, Lat, Long, Distance
											, DistanceCategoryId, FolderPath, CreatedBy, ModifiedBy)
		Select
			@SiteId, a.PSLocation, a.OwnershipId, a.TypeId, a.OperationalStatusId, a.StatusId, a.PoBox, a.PIN, a.KarhamaNo
			, a.StreetName, a.Area, a.ZoneCode, a.Lat, a.Long, a.Distance, a.DistanceCategoryId, @FolderPath, @LoggedInUserId, @LoggedInUserId
		From
			@PSDetail a

	End

	Select Cast(1 as bit) as result


End
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0=insert,1=update,2=Approve,3=reject,4=Client Request' , @level0type=N'SCHEMA',@level0name=N'log', @level1type=N'TABLE',@level1name=N'PSPlaning_Log', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 46
               Left = 120
               Bottom = 258
               Right = 347
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 40
               Left = 848
               Bottom = 170
               Right = 1054
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ApplicationForApproval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ApplicationForApproval'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[26] 4[36] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 344
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 259
               Bottom = 136
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Customers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Customers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[46] 4[15] 2[1] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 235
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 35
               Left = 378
               Bottom = 257
               Right = 605
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 40
               Left = 862
               Bottom = 258
               Right = 1068
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MyTasks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MyTasks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[58] 4[3] 2[8] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ScheduleList (contract)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 302
               Right = 232
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "View_UnScheduledSiteVisits"
            Begin Extent = 
               Top = 7
               Left = 505
               Bottom = 280
               Right = 678
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AspNetUsers"
            Begin Extent = 
               Top = 93
               Left = 820
               Bottom = 423
               Right = 1044
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 3450
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ScheduledList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ScheduledList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[20] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 259
               Bottom = 136
               Right = 429
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Sites'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Sites'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Tank"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TankFinancials"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 232
               Right = 440
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "TankOpStatus"
            Begin Extent = 
               Top = 6
               Left = 478
               Bottom = 119
               Right = 648
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TankStatus"
            Begin Extent = 
               Top = 6
               Left = 686
               Bottom = 119
               Right = 856
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TankTypes"
            Begin Extent = 
               Top = 6
               Left = 894
               Bottom = 119
               Right = 1064
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TankSupplier"
            Begin Extent = 
               Top = 6
               Left = 1102
               Bottom = 194
               Right = 1272
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Widt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_StorageTankDetailed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'h = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_StorageTankDetailed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_StorageTankDetailed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Tank"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 266
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TankOpStatus"
            Begin Extent = 
               Top = 135
               Left = 1029
               Bottom = 248
               Right = 1199
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TankStatus"
            Begin Extent = 
               Top = 34
               Left = 737
               Bottom = 147
               Right = 907
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TankTypes"
            Begin Extent = 
               Top = 22
               Left = 387
               Bottom = 135
               Right = 557
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_StorageTanks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_StorageTanks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_StorageTanks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[46] 4[13] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 395
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 303
               Bottom = 349
               Right = 509
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UnScheduledSiteVisits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UnScheduledSiteVisits'
GO
