USE [TotalligentMedical]
GO
/****** Object:  Table [dbo].[TT_BankPaymentDetails]    Script Date: 1/24/2022 6:22:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_BankPaymentDetails](
	[BankPaymentDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[Bank] [nvarchar](50) NULL,
	[BankBranch] [nvarchar](50) NULL,
	[BankAccountNbr] [bigint] NULL,
	[LedgerAccountNbr] [bigint] NULL,
	[IFSCCode] [nvarchar](25) NULL,
	[SWIFTCode] [nvarchar](25) NULL,
	[ComputationMethod] [nvarchar](25) NULL,
	[AgeComputation] [bigint] NULL,
	[SpecificPremiumDate] [datetime] NULL,
	[Type] [nvarchar](25) NULL,
	[SettleClaimBording] [nvarchar](20) NULL,
	[Currency] [nvarchar](20) NULL,
	[Status] [nvarchar](45) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BankPaymentDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_CompanyProfile]    Script Date: 1/24/2022 6:22:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_CompanyProfile](
	[CompanyProfileId] [bigint] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](100) NULL,
	[OfficialCompanyName] [nvarchar](100) NULL,
	[CompanyDescription] [nvarchar](500) NULL,
	[PersoninCharge] [nvarchar](100) NULL,
	[CompanyBranch] [nvarchar](100) NULL,
	[LocalCurrency] [nvarchar](100) NULL,
	[SecondCurrency] [nvarchar](100) NULL,
	[TaxRegistrationNumber] [bigint] NULL,
	[Status] [nvarchar](45) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_CompanyProfileAddress]    Script Date: 1/24/2022 6:22:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_CompanyProfileAddress](
	[CompanyProfileAddressId] [bigint] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[PostalCode] [bigint] NULL,
	[POBox] [bigint] NULL,
	[Country] [nvarchar](100) NULL,
	[Region] [nvarchar](100) NULL,
	[District] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[Longitude] [nvarchar](100) NULL,
	[Latitude] [nvarchar](100) NULL,
	[Telephone] [nvarchar](100) NULL,
	[Status] [nvarchar](45) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyProfileAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_InsuranceCompanyMaster]    Script Date: 1/24/2022 6:22:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_InsuranceCompanyMaster](
	[ICMId] [bigint] IDENTITY(1,1) NOT NULL,
	[InsuranceCompanyCode] [nvarchar](100) NULL,
	[InsuranceCompanyName] [nvarchar](100) NULL,
	[RegulatoryLicenseNumber] [bigint] NULL,
	[VATNumber] [bigint] NULL,
	[TaxNumber] [bigint] NULL,
	[CommercialRegistrationLicenseNumber] [bigint] NULL,
	[PositionType] [nvarchar](40) NULL,
	[Position] [nvarchar](100) NULL,
	[ContactNumber] [bigint] NULL,
	[EmailID] [nvarchar](100) NULL,
	[Contract] [nvarchar](100) NULL,
	[ContractDocument] [nvarchar](100) NULL,
	[Status] [nvarchar](45) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ICMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_InsuranceCompanyMasterAddress]    Script Date: 1/24/2022 6:22:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_InsuranceCompanyMasterAddress](
	[ICMAddressId] [bigint] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[PostalCode] [bigint] NULL,
	[POBox] [bigint] NULL,
	[Country] [nvarchar](100) NULL,
	[Region] [nvarchar](100) NULL,
	[District] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[Longitude] [nvarchar](100) NULL,
	[Latitude] [nvarchar](100) NULL,
	[Telephone] [nvarchar](100) NULL,
	[Emailaddress] [nvarchar](100) NULL,
	[Fax] [nvarchar](100) NULL,
	[Website] [nvarchar](100) NULL,
	[Status] [nvarchar](45) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ICMAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_Login]    Script Date: 1/24/2022 6:22:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_Login](
	[LoginId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](25) NULL,
	[Password] [nvarchar](100) NULL,
	[EmailId] [nvarchar](80) NULL,
	[IsPasswordChanged] [char](1) NULL,
	[Status] [char](1) NULL,
	[CreatedAt] [datetime] NULL,
	[CreatedBy] [nvarchar](40) NULL,
	[UpdatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_PaymentMethodFees]    Script Date: 1/24/2022 6:22:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_PaymentMethodFees](
	[PaymentMethodFeesId] [bigint] IDENTITY(1,1) NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[PaymentMethod] [nvarchar](50) NULL,
	[Fee] [decimal](18, 3) NULL,
	[Status] [nvarchar](45) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentMethodFeesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_PremiumRefund]    Script Date: 1/24/2022 6:22:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_PremiumRefund](
	[PremiumRefundId] [bigint] IDENTITY(1,1) NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[ElapsedDays] [bigint] NULL,
	[Refund] [decimal](18, 3) NULL,
	[Status] [nvarchar](45) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PremiumRefundId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_ReInsurer]    Script Date: 1/24/2022 6:22:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_ReInsurer](
	[ReInsurerId] [bigint] IDENTITY(1,1) NOT NULL,
	[ReinsurerCode] [nvarchar](40) NULL,
	[ReinsurerName] [nvarchar](40) NULL,
	[ReinsurerOfficialName] [nvarchar](40) NULL,
	[PersonInCharge] [nvarchar](40) NULL,
	[Currency] [nvarchar](15) NULL,
	[Status] [nvarchar](45) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReInsurerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_ReInsurerAddress]    Script Date: 1/24/2022 6:22:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_ReInsurerAddress](
	[ReInsurerAddressId] [bigint] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[PostalCode] [bigint] NULL,
	[POBox] [bigint] NULL,
	[Country] [nvarchar](100) NULL,
	[Region] [nvarchar](100) NULL,
	[District] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[Longitude] [nvarchar](100) NULL,
	[Latitude] [nvarchar](100) NULL,
	[Telephone] [nvarchar](100) NULL,
	[Emailaddress] [nvarchar](100) NULL,
	[Fax] [nvarchar](100) NULL,
	[Website] [nvarchar](100) NULL,
	[Status] [nvarchar](45) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReInsurerAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_ReInsurerShare]    Script Date: 1/24/2022 6:22:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_ReInsurerShare](
	[ReInsurerShareId] [bigint] IDENTITY(1,1) NOT NULL,
	[InsuranceCompany] [nvarchar](50) NULL,
	[Package] [nvarchar](50) NULL,
	[EffectiveDate] [datetime] NULL,
	[Level] [nvarchar](25) NULL,
	[PremiumLevelValue] [datetime] NULL,
	[Reinsurer] [nvarchar](20) NULL,
	[IndividualShare] [nvarchar](20) NULL,
	[GroupShare] [nvarchar](21) NULL,
	[Status] [nvarchar](45) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReInsurerShareId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_SurCharges]    Script Date: 1/24/2022 6:22:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_SurCharges](
	[SurchargesId] [bigint] IDENTITY(1,1) NOT NULL,
	[EffectiveDate] [datetime] NULL,
	[PolicyType] [nvarchar](50) NULL,
	[FlatFee] [decimal](18, 3) NULL,
	[PeriodNumber] [bigint] NULL,
	[PolicyFees] [decimal](18, 3) NULL,
	[Stamp] [decimal](18, 3) NULL,
	[Tax] [decimal](18, 3) NULL,
	[Status] [nvarchar](45) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SurchargesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TT_BankPaymentDetails] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TT_CompanyProfileAddress] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TT_InsuranceCompanyMaster] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TT_InsuranceCompanyMasterAddress] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TT_Login] ADD  DEFAULT ('N') FOR [IsPasswordChanged]
GO
ALTER TABLE [dbo].[TT_Login] ADD  DEFAULT ('D') FOR [Status]
GO
ALTER TABLE [dbo].[TT_Login] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TT_PaymentMethodFees] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TT_PremiumRefund] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TT_ReInsurer] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TT_ReInsurerAddress] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TT_ReInsurerShare] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[TT_SurCharges] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
