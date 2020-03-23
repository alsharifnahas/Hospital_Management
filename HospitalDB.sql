/******* Object: Hospital Database ********/ 
IF DB_ID('HospitalDB') IS NOT NULL 
	DROP DATABASE HospitalDB
GO
/****** Object:  Database [HospitalDB]    Script Date: 10/5/2018 2:29:50 PM ******/
CREATE DATABASE [HospitalDB]
 GO
USE [HospitalDB]
GO

CREATE TABLE [Appointment]
( 
	[AppointmentID]      int  IDENTITY ( 1,1 )  NOT NULL ,
	[DoctorID]           int  NOT NULL ,
	[PatientID]          int  NOT NULL ,
	[AdmittanceTime]     smallDateTime  NOT NULL ,
	[DischargeTime]      smallDateTime  NULL ,
	CONSTRAINT [XPKAppointment] PRIMARY KEY  CLUSTERED ([AppointmentID] ASC)
)
go

CREATE TABLE [Department]
( 
	[DepartmentID]       int  IDENTITY ( 1,1 )  NOT NULL ,
	[DepartmentName]     varchar(100)  NULL ,
	CONSTRAINT [XPKDepartment] PRIMARY KEY  CLUSTERED ([DepartmentID] ASC)
)
go

CREATE TABLE [Doctor]
( 
	[DoctorID]           int  IDENTITY ( 1,1 )  NOT NULL ,
	[DepartmentID]       int  NULL ,
	[FirstName]          varchar(32)  NULL ,
	[LastName]           varchar(32)  NULL ,
	[DOB]                SMALLDATETIME  NULL ,
	[SSN]                varchar(9)  NULL ,
	[Gender]             varchar(16)  NULL ,
	[Address]            varchar(64)  NULL ,
	[Phone]              varchar(16)  NULL ,
	CONSTRAINT [XPKDoctor] PRIMARY KEY  CLUSTERED ([DoctorID] ASC)
)
go

CREATE TABLE [LabTesting]
( 
	[PatientID]          int  NOT NULL ,
	[LabTestID]          int  IDENTITY ( 1,1 )  NOT NULL ,
	[LabTime]           SMALLDATETIME  NULL ,
	[OrderBy]            int  NOT NULL ,
	[DoneBy]             int  NULL ,
	CONSTRAINT [XPKLabTesting] PRIMARY KEY  CLUSTERED ([LabTestID] ASC)
)
go

CREATE TABLE [Login]
( 
	[LoginID]            int  IDENTITY ( 1,1 )  NOT NULL ,
	[LoginName]          varchar(32)  NULL ,
	[LoginPassword]      varchar(128)  NULL ,
	[DoctorID]           int  NOT NULL ,
	CONSTRAINT [XPKLogin] PRIMARY KEY  CLUSTERED ([LoginID] ASC)
)
go

ALTER TABLE [Login]
	ADD CONSTRAINT [XAK1Login] UNIQUE ([LoginName]  ASC)
go

ALTER TABLE [Login]
	ADD CONSTRAINT [Doctor_ID] UNIQUE ([DoctorID]  ASC)
go

CREATE TABLE [Logon]
( 
	[LogonID]            int  IDENTITY ( 1,1 )  NOT NULL ,
	[LogonName]          varchar(32)  NULL ,
	[LogonPassword]      varchar(128)  NULL ,
	[PatientID]          int  NOT NULL ,
	CONSTRAINT [XPKLogon] PRIMARY KEY  CLUSTERED ([LogonID] ASC)
)
go

ALTER TABLE [Logon]
	ADD CONSTRAINT [XAK1Logon] UNIQUE ([LogonName]  ASC)
go

ALTER TABLE [Logon]
	ADD CONSTRAINT [Patient_ID] UNIQUE ([PatientID]  ASC)
go

CREATE TABLE [MeasuredResults]
( 
	[ResultsID]          int  IDENTITY ( 1,1 )  NOT NULL ,
	[MeasurementID]      int  NOT NULL ,
	[LabTestID]          int  NOT NULL ,
	[Value]              real  NULL ,
	[RangeOK]            bit  NULL ,
	[Comment]            varchar(200)  NULL ,
	CONSTRAINT [XPKMeasuredResults] PRIMARY KEY  CLUSTERED ([ResultsID] ASC)
)
go

CREATE TABLE [Measurements]
( 
	[MeasurementID]      int  IDENTITY ( 1,1 )  NOT NULL ,
	[Name]               varchar(32)  NULL ,
	[Purpose]            varchar(200)  NULL ,
	[Method]             varchar(200)  NULL ,
	[LowRange]           real  NULL ,
	[HighRange]          real  NULL ,
	CONSTRAINT [XPKMeasurements] PRIMARY KEY  CLUSTERED ([MeasurementID] ASC)
)
go

CREATE TABLE [Patient]
( 
	[PatientID]          int  IDENTITY ( 1,1 )  NOT NULL ,
	[FirstName]          varchar(32)  NULL ,
	[LastName]           varchar(32)  NULL ,
	[Address]            varchar(64)  NULL ,
	[Phone]              varchar(12)  NULL ,
	[DOB]                SMALLDATETIME  NULL ,
	[Gender]             varchar(16)  NULL ,
	[SSN]                varchar(12)  NULL ,
	CONSTRAINT [XPKPatient] PRIMARY KEY  CLUSTERED ([PatientID] ASC)
)
GO

SET IDENTITY_INSERT [dbo].[Appointment] ON 

INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (1, 1, 6, CAST(N'1991-06-01T03:31:00' AS SmallDateTime), CAST(N'1991-07-20T02:29:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (2, 2, 5, CAST(N'2007-02-16T10:39:00' AS SmallDateTime), CAST(N'2007-04-16T21:42:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (3, 3, 4, CAST(N'2013-08-21T06:30:00' AS SmallDateTime), CAST(N'2013-09-24T02:37:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (4, 4, 3, CAST(N'1987-09-20T08:26:00' AS SmallDateTime), CAST(N'1987-10-15T01:37:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (5, 5, 2, CAST(N'2001-10-18T04:56:00' AS SmallDateTime), CAST(N'2001-10-18T22:10:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (6, 6, 1, CAST(N'1987-01-08T22:23:00' AS SmallDateTime), CAST(N'1987-01-12T04:49:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (7, 7, 2, CAST(N'1989-09-23T19:12:00' AS SmallDateTime), CAST(N'1989-11-04T16:41:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (8, 8, 3, CAST(N'2016-11-01T11:18:00' AS SmallDateTime), CAST(N'2016-11-28T09:44:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (9, 9, 4, CAST(N'1993-07-23T22:23:00' AS SmallDateTime), CAST(N'1993-08-21T06:40:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (10, 10, 5, CAST(N'1994-10-10T22:05:00' AS SmallDateTime), CAST(N'1994-11-24T20:14:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (11, 1, 6, CAST(N'1999-07-11T19:09:00' AS SmallDateTime), CAST(N'1999-07-26T03:04:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (12, 2, 7, CAST(N'2011-06-24T13:01:00' AS SmallDateTime), CAST(N'2011-07-29T22:52:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (13, 3, 8, CAST(N'2007-01-10T22:54:00' AS SmallDateTime), CAST(N'2007-02-02T21:39:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (14, 4, 9, CAST(N'1981-03-06T01:32:00' AS SmallDateTime), CAST(N'1981-04-08T02:18:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (15, 5, 10, CAST(N'1983-03-11T16:15:00' AS SmallDateTime), CAST(N'1983-04-27T14:23:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (16, 6, 11, CAST(N'2015-02-25T10:01:00' AS SmallDateTime), CAST(N'2015-03-29T02:59:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (17, 7, 12, CAST(N'1984-10-19T10:42:00' AS SmallDateTime), CAST(N'1984-11-21T01:47:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (18, 8, 13, CAST(N'2013-04-06T07:43:00' AS SmallDateTime), CAST(N'2013-05-04T20:13:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (19, 9, 14, CAST(N'2009-06-29T04:55:00' AS SmallDateTime), CAST(N'2009-08-15T07:59:00' AS SmallDateTime))
INSERT [dbo].[Appointment] ([AppointmentID], [DoctorID], [PatientID], [admittanceTime], [dischargeTime]) ValueS (20, 10, 15, CAST(N'1998-07-09T00:52:00' AS SmallDateTime), CAST(N'1998-08-29T20:11:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Appointment] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 
INSERT [dbo].[Department] ([departmentID], [departmentName]) ValueS (1, N'Diagnostic Imaging')
INSERT [dbo].[Department] ([departmentID], [departmentName]) ValueS (2, N'Nephrology')
INSERT [dbo].[Department] ([departmentID], [departmentName]) ValueS (3, N'Discharge Lounge')
INSERT [dbo].[Department] ([departmentID], [departmentName]) ValueS (4, N'General Surgery')
INSERT [dbo].[Department] ([departmentID], [departmentName]) ValueS (5, N'Social Work')
INSERT [dbo].[Department] ([departmentID], [departmentName]) ValueS (6, N'General Services')
INSERT [dbo].[Department] ([departmentID], [departmentName]) ValueS (7, N'Coronary Care Unit')
INSERT [dbo].[Department] ([departmentID], [departmentName]) ValueS (8, N'Oncology')
INSERT [dbo].[Department] ([departmentID], [departmentName]) ValueS (9, N'Patient Services')
INSERT [dbo].[Department] ([departmentID], [departmentName]) ValueS (10, N'Elderly services')
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Doctor] ON 
INSERT [dbo].[Doctor] ([DoctorID], [departmentID], [FirstName], [LastName], [DOB], [SSN], [Gender], [Address], [Phone]) ValueS (1, 1, N'Glenda', N'Campbell', CAST(N'1981-03-26T04:29:40.190' AS SmallDateTime),  N'372617508', N'Male', N'787 Second Street, Jesup,  FL, 35552', N'245-403-7297')
INSERT [dbo].[Doctor] ([DoctorID], [departmentID], [FirstName], [LastName], [DOB], [SSN], [Gender], [Address], [Phone]) ValueS (2, 2, N'Garry', N'Conley', CAST(N'1987-09-01T07:07:46.480' AS SmallDateTime), N'983817365', N'Female', N'37 West Blvd., Savannah, GA', N'674-890-0165')
INSERT [dbo].[Doctor] ([DoctorID], [departmentID], [FirstName], [LastName], [DOB], [SSN], [Gender], [Address], [Phone]) ValueS (3, 3, N'Josh', N'Marks', CAST(N'1956-06-22T03:50:09.760' AS SmallDateTime), N'125745842',  N'Male', N'676 First Way, Columbus, GA, 33646', N'581-686-2693')
INSERT [dbo].[Doctor] ([DoctorID], [departmentID], [FirstName], [LastName], [DOB], [SSN], [Gender], [Address], [Phone]) ValueS (4, 4, N'Janice', N'Rowland', CAST(N'1973-08-20T12:19:57.410' AS SmallDateTime), N'814246424',  N'Female', N'12 White Fabien Boulevard', N'736-190-0354')
INSERT [dbo].[Doctor] ([DoctorID], [departmentID], [FirstName], [LastName], [DOB], [SSN], [Gender], [Address], [Phone]) ValueS (5, 5, N'Aisha', N'Molina', CAST(N'1977-11-17T21:56:14.570' AS SmallDateTime), N'172627404', N'Male',  N'353 Fabien Way, Macon, GA, 36287', N'242-982-5819')
INSERT [dbo].[Doctor] ([DoctorID], [departmentID], [FirstName], [LastName], [DOB], [SSN], [Gender], [Address], [Phone]) ValueS (6, 6, N'Roy', N'Jackson', CAST(N'1980-04-25T04:29:40.190' AS SmallDateTime), N'827238432',  N'Male', N'27 South Freeway, Augusta, FL, 35231', N'083-219-4060')
INSERT [dbo].[Doctor] ([DoctorID], [departmentID], [FirstName], [LastName], [DOB], [SSN], [Gender], [Address], [Phone]) ValueS (7, 7, N'Lili', N'Combs', CAST(N'1988-02-05T07:07:46.480' AS SmallDateTime), N'737837525',  N'Female', N'208 Second Road, Valdosta, SC, 25235', N'101-349-4219')
INSERT [dbo].[Doctor] ([DoctorID], [departmentID], [FirstName], [LastName], [DOB], [SSN], [Gender], [Address], [Phone]) ValueS (8, 8, N'Bret', N'Walker', CAST(N'1976-08-22T03:50:09.760' AS SmallDateTime), N'212617463',  N'Male', N'700 Bull Ave, New Town, NC, 43249', N'649-005-8154')
INSERT [dbo].[Doctor] ([DoctorID], [departmentID], [FirstName], [LastName], [DOB], [SSN], [Gender], [Address], [Phone]) ValueS (9, 9, N'Lydia', N'Martin', CAST(N'1989-12-22T12:19:57.410' AS SmallDateTime), N'643574263',  N'Female', N'317 Tren Avenue, Pooler,  SC, 31448', N'894-938-0923')
INSERT [dbo].[Doctor] ([DoctorID], [departmentID], [FirstName], [LastName], [DOB], [SSN], [Gender], [Address], [Phone]) ValueS (10, 10, N'Boyce', N'Cooper', CAST(N'1990-10-15T21:56:14.570' AS SmallDateTime), N'572617353',  N'Male', N'82 Lee Circle, Lafayette,  OH, 33745', N'385-515-5442')
SET IDENTITY_INSERT [dbo].[Doctor] OFF
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([LoginID], [LoginName], [LoginPassword], [DoctorID]) ValueS (1, N'Doctor1', N'password1', 1)
INSERT [dbo].[Login] ([LoginID], [LoginName], [LoginPassword], [DoctorID]) ValueS (2, N'Doctor2', N'password2', 2)
INSERT [dbo].[Login] ([LoginID], [LoginName], [LoginPassword], [DoctorID]) ValueS (3, N'Doctor3', N'password3', 3)
INSERT [dbo].[Login] ([LoginID], [LoginName], [LoginPassword], [DoctorID]) ValueS (4, N'Doctor4', N'password4', 4)
INSERT [dbo].[Login] ([LoginID], [LoginName], [LoginPassword], [DoctorID]) ValueS (5, N'Doctor5', N'password5', 5)
INSERT [dbo].[Login] ([LoginID], [LoginName], [LoginPassword], [DoctorID]) ValueS (6, N'Doctor6', N'password6', 6)
INSERT [dbo].[Login] ([LoginID], [LoginName], [LoginPassword], [DoctorID]) ValueS (7, N'Doctor7', N'password7', 7)
INSERT [dbo].[Login] ([LoginID], [LoginName], [LoginPassword], [DoctorID]) ValueS (8, N'Doctor8', N'password8', 8)
INSERT [dbo].[Login] ([LoginID], [LoginName], [LoginPassword], [DoctorID]) ValueS (9, N'Doctor9', N'password9', 9)
INSERT [dbo].[Login] ([LoginID], [LoginName], [LoginPassword], [DoctorID]) ValueS (10, N'Doctor10', N'password10', 10)
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[LabTesting] ON 

INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (11, 1, CAST(N'2016-10-01T03:30:13.480' AS SmallDateTime), 4, 5)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (13, 2, CAST(N'2014-06-25T12:52:19.220' AS SmallDateTime), 5, 3)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (10, 3, CAST(N'2014-04-29T13:39:03.430' AS SmallDateTime), 4, 3)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (7, 4, CAST(N'2014-06-26T13:36:02.880' AS SmallDateTime), 3, 3)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (3, 5, CAST(N'2015-05-15T03:53:53.180' AS SmallDateTime), 2, 2)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (3, 6, CAST(N'2017-10-01T16:35:46.450' AS SmallDateTime), 3, 3)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (15, 7, CAST(N'2013-04-03T19:09:57.800' AS SmallDateTime), 5, 3)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (5, 8, CAST(N'2015-01-26T05:52:24.960' AS SmallDateTime), 3, 1)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (14, 9, CAST(N'2018-10-23T04:59:16.470' AS SmallDateTime), 5, 5)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (2, 10, CAST(N'2015-06-30T09:19:42.320' AS SmallDateTime), 2, 2)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (1, 11, CAST(N'2016-10-01T03:30:13.480' AS SmallDateTime), 4, 5)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (13, 12, CAST(N'2014-06-25T12:52:19.220' AS SmallDateTime), 5, 3)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (10, 13, CAST(N'2014-04-29T13:39:03.430' AS SmallDateTime), 4, 3)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (7, 14, CAST(N'2014-06-26T13:36:02.880' AS SmallDateTime), 3, 3)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (3, 15, CAST(N'2015-05-15T03:53:53.180' AS SmallDateTime), 2, 2)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (3, 16, CAST(N'2017-10-01T16:35:46.450' AS SmallDateTime), 3, 3)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (15, 17, CAST(N'2013-04-03T19:09:57.800' AS SmallDateTime), 5, 3)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (5, 18, CAST(N'2015-01-26T05:52:24.960' AS SmallDateTime), 3, 1)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (14, 19, CAST(N'2018-10-23T04:59:16.470' AS SmallDateTime), 5, 5)
INSERT [dbo].[LabTesting] ([PatientID], [LabTestID], [LabTime], [OrderBy], [DoneBy]) ValueS (2, 20, CAST(N'2015-06-30T09:19:42.320' AS SmallDateTime), 2, 2)
SET IDENTITY_INSERT [dbo].[LabTesting] OFF
SET IDENTITY_INSERT [dbo].[MeasuredResults] ON 
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (1,  1, 10, 113, 1, N'OK')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (2,  3, 9, 101, 1, N'OK')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (3,  3, 8, 150, 0, N'Need to be placed on treatment')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (4,  2, 7, 305, 0, N'Need to be placed on treatment')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (5,  3, 6, 140, 0, N'Need to be placed on treatment')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (6,  6, 5, 104, 0, N'Need to be placed on treatment')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (7,  4, 4, 50, 0, N'Need to be placed on treatment')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (8,  4, 3, 100, 1, N'OK')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (9,  4, 2, 70, 1, N'OK')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (10, 5, 1, 100, 0, N'Need to be placed on treatment')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (11, 5, 11, 97, 1, N'OK')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (12, 8, 12, 110, 0, N'Need to be placed on treatment')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (13, 6, 13, 110, 0, N'Need to be placed on treatment')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (14, 7, 14, 200, 1, N'OK')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (15, 6, 15, 70, 1, N'OK')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (16, 7, 16, 750, 0, N'Need to be placed on treatment')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (17, 7, 17, 240, 1, N'OK')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (18, 8, 18, 112, 0, N'Need to be placed on treatment')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (19, 8, 19, 94, 1, N'OK')
INSERT [dbo].[MeasuredResults] ([ResultsID], [MeasurementID], [LabTestID],[Value], [RangeOK], [Comment]) ValueS (20, 8, 20, 80, 1, N'OK')


SET IDENTITY_INSERT [dbo].[MeasuredResults] OFF
SET IDENTITY_INSERT [dbo].[Measurements] ON 

INSERT [dbo].[Measurements] ([MeasurementID], [Name], [Purpose], [Method], [LowRange], [HighRange]) ValueS (1, 'weight', 'kg, measure of weight', 'use scale', 0, 260)
INSERT [dbo].[Measurements] ([MeasurementID], [Name], [Purpose], [Method], [LowRange], [HighRange]) ValueS (2, 'height',  'cm, measure of height', 'use measuring tape', 0, 300)
INSERT [dbo].[Measurements] ([MeasurementID], [Name], [Purpose], [Method], [LowRange], [HighRange]) ValueS (3, 'systolic BP', 'mmHg, measure of blood pressure when heart beats', 'blood pressure cuff', 90, 120)
INSERT [dbo].[Measurements] ([MeasurementID], [Name], [Purpose], [Method], [LowRange], [HighRange]) ValueS (4, 'diastolic BP', 'mmHG, measure of blood pressure when heart rests', 'blood pressure cuff', 60, 80)
INSERT [dbo].[Measurements] ([MeasurementID], [Name], [Purpose], [Method], [LowRange], [HighRange]) ValueS (5, 'temperature', 'Celsius, measure of body temperatue', 'thermometer', 97.0, 99.0)
INSERT [dbo].[Measurements] ([MeasurementID], [Name], [Purpose], [Method], [LowRange], [HighRange]) ValueS (6, 'LDL cholesterol', ' mg/dL, measure of arterial cholesterol buildup', 'blood test following fast', 0, 100) 
INSERT [dbo].[Measurements] ([MeasurementID], [Name], [Purpose], [Method], [LowRange], [HighRange]) ValueS (7, 'HDL cholesterol', 'mg,dL, prevents arterial buildup of LDL', 'blood test following fast', 60, 300) 
INSERT [dbo].[Measurements] ([MeasurementID], [Name], [Purpose], [Method], [LowRange], [HighRange]) ValueS (8, 'heartrate', 'beats per minute, unusual heartrate can indicate heart problems', 'pulse check', 50, 100)
SET IDENTITY_INSERT [dbo].[Measurements] OFF
SET IDENTITY_INSERT [dbo].[Patient] ON 

INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB], [Gender], [SSN]) ValueS (1, N'Maggie', N'Woodard', N'191 White Milton Way', N'293-135-9170', CAST(N'1912-03-23T00:32:16.850' AS SmallDateTime),  N'Male', N'372617408')
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB],  [Gender], [SSN]) ValueS (2, N'Tracy', N'Wade', N'259 White First Road', N'106-837-0554', CAST(N'1949-04-15T16:16:24.290' AS SmallDateTime),  N'Male', N'895192379')
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB],  [Gender], [SSN]) ValueS (3, N'Jamison', N'Patrick', N'30 Fabien Blvd.', N'551-637-5905', CAST(N'1957-12-21T02:39:23.300' AS SmallDateTime), N'Male', N'069349837')
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB], [Gender], [SSN]) ValueS (4, N'Seth', N'Horne', N'24 Hague Avenue', N'425-274-8161', CAST(N'1955-11-01T04:55:09.720' AS SmallDateTime),  N'Male', N'825383278')
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB],  [Gender], [SSN]) ValueS (5, N'Roger', N'Mullen', N'63 First Street', N'621-378-8910', CAST(N'1967-01-19T08:14:57.430' AS SmallDateTime),  N'Female', N'619406720')
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB], [Gender], [SSN]) ValueS (6, N'Candice', N'Ramsey', N'43 Milton Drive', N'427-150-9482', CAST(N'1907-06-05T00:02:00.150' AS SmallDateTime), N'Male', N'184494235')
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB],  [Gender], [SSN]) ValueS (7, N'Yolanda', N'Harrell', N'787 Green First Freeway', N'803-447-7574', CAST(N'1976-01-20T05:48:31.170' AS SmallDateTime), N'Female', N'449452779')
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB], [Gender], [SSN]) ValueS (8, N'Rochelle', N'Sawyer', N'248 Green Clarendon Way', N'372-248-3102', CAST(N'1907-02-15T06:52:45.410' AS SmallDateTime),  N'Male', N'485015143')
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB],  [Gender], [SSN]) ValueS (9, N'Jeffrey', N'Bass', N'90 Green Nobel Way', N'003-739-9761', CAST(N'1939-07-30T17:08:03.800' AS SmallDateTime), N'Female', N'439843504')
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB],  [Gender], [SSN]) ValueS (10, N'Donald', N'Bush', N'66 Cowley Street', N'628-691-2333', CAST(N'1933-04-21T07:00:53.760' AS SmallDateTime),  N'Male', N'171583815')
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB],  [Gender], [SSN]) ValueS (11, N'Donnie', N'Mccann', N'361 New Parkway', N'435-835-4730', CAST(N'1979-10-25T23:11:42.640' AS SmallDateTime),  N'Female', N'403899041')
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB],  [Gender], [SSN]) ValueS (12, N'Alana', N'Rosales', N'22 White First Drive', N'455-964-7686', CAST(N'1951-04-15T06:03:29.580' AS SmallDateTime), N'Male', N'633863447')
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB], [Gender], [SSN]) ValueS (13, N'Alice', N'Preston', N'757 Cowley St.', N'004-703-8553', CAST(N'1967-07-24T12:52:59.400' AS SmallDateTime), N'Male', N'930192739')
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB],  [Gender], [SSN]) ValueS (14, N'Dianna', N'Swanson', N'27 Fabien Drive', N'261-546-5508', CAST(N'1927-09-02T05:44:27.570' AS SmallDateTime),  N'Male', N'085447605')
INSERT [dbo].[Patient] ([PatientID], [FirstName], [LastName], [Address], [Phone], [DOB], [Gender], [SSN]) ValueS (15, N'Franklin', N'Benjamin', N'660 East Rocky Clarendon Boulevard', N'794-769-3496', CAST(N'1981-08-02T22:23:53.020' AS SmallDateTime), N'Male', N'495519301')
SET IDENTITY_INSERT [dbo].[Patient] OFF
SET IDENTITY_INSERT [dbo].[Logon] ON 

INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (1, N'Patient1', N'password1', 1)
INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (2, N'Patient2', N'password2', 3)
INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (3,N'Patient3', N'password3', 2)
INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (4, N'Patient4', N'password4', 5)
INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (5, N'Patient5', N'password5', 4)
INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (6, N'Patient6', N'password6', 9)
INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (7, N'Patient7', N'password7', 8)
INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (8, N'Patient8', N'password8', 7)
INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (9, N'Patient9', N'password9', 6)
INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (10, N'Patient10', N'password10', 11)
INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (11, N'Patient11', N'password11', 12)
INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (12, N'Patient12', N'password12', 13)
INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (13, N'Patient13', N'password13', 14)
INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (14, N'Patient14', N'password14', 10)
INSERT [dbo].[Logon] ([LogonID], [LogonName], [LogonPassword], [PatientID]) ValueS (15, N'Patient15', N'password15', 15)
SET IDENTITY_INSERT [dbo].[Logon] OFF

ALTER TABLE [Patient]
	ADD CONSTRAINT [Patient_SSN] UNIQUE ([SSN]  ASC)
go


ALTER TABLE [Appointment] WITH CHECK 
	ADD CONSTRAINT [R_2] FOREIGN KEY ([PatientID]) REFERENCES [Patient]([PatientID])
		ON DELETE CASCADE
go

ALTER TABLE [Appointment]
	  WITH CHECK CHECK CONSTRAINT [R_2]
go

ALTER TABLE [Appointment] WITH CHECK 
	ADD CONSTRAINT [R_3] FOREIGN KEY ([DoctorID]) REFERENCES [Doctor]([DoctorID])
		ON DELETE CASCADE
go

ALTER TABLE [Appointment]
	  WITH CHECK CHECK CONSTRAINT [R_3]
go


ALTER TABLE [Doctor] WITH CHECK 
	ADD CONSTRAINT [R_1] FOREIGN KEY ([DepartmentID]) REFERENCES [Department]([DepartmentID])
		ON DELETE SET NULL
go

ALTER TABLE [Doctor]
	  WITH CHECK CHECK CONSTRAINT [R_1]
go


ALTER TABLE [LabTesting] WITH CHECK 
	ADD CONSTRAINT [R_6] FOREIGN KEY ([PatientID]) REFERENCES [Patient]([PatientID])
go

ALTER TABLE [LabTesting]
	  WITH CHECK CHECK CONSTRAINT [R_6]
go

ALTER TABLE [LabTesting] WITH CHECK 
	ADD CONSTRAINT [R_7] FOREIGN KEY ([OrderBy]) REFERENCES [Doctor]([DoctorID])
go

ALTER TABLE [LabTesting]
	  WITH CHECK CHECK CONSTRAINT [R_7]
go

ALTER TABLE [LabTesting] WITH CHECK 
	ADD CONSTRAINT [R_8] FOREIGN KEY ([DoneBy]) REFERENCES [Doctor]([DoctorID])
go

ALTER TABLE [LabTesting]
	  WITH CHECK CHECK CONSTRAINT [R_8]
go


ALTER TABLE [Login] WITH CHECK 
	ADD CONSTRAINT [R_10] FOREIGN KEY ([DoctorID]) REFERENCES [Doctor]([DoctorID])
		ON DELETE CASCADE
go

ALTER TABLE [Login]
	  WITH CHECK CHECK CONSTRAINT [R_10]
go


ALTER TABLE [Logon] WITH CHECK 
	ADD CONSTRAINT [R_9] FOREIGN KEY ([PatientID]) REFERENCES [Patient]([PatientID])
		ON DELETE CASCADE
go

ALTER TABLE [Logon]
	  WITH CHECK CHECK CONSTRAINT [R_9]
go


ALTER TABLE [MeasuredResults] WITH CHECK 
	ADD CONSTRAINT [R_4] FOREIGN KEY ([MeasurementID]) REFERENCES [Measurements]([MeasurementID])
go

ALTER TABLE [MeasuredResults]
	  WITH CHECK CHECK CONSTRAINT [R_4]
go

ALTER TABLE [MeasuredResults] WITH CHECK 
	ADD CONSTRAINT [R_5] FOREIGN KEY ([LabTestID]) REFERENCES [LabTesting]([LabTestID])
go

ALTER TABLE [MeasuredResults]
	  WITH CHECK CHECK CONSTRAINT [R_5]
go
