

create table RoleMaster
(
  RoleID int identity primary key,
  RoleDescription varchar(50),
  CreatedOn Datetime,
  CreaedBy varchar(50),
  IsActive bit
)
insert into RoleMaster (RoleDescription,CreatedOn,CreaedBy,IsActive)
values
('SuperAdmin',getdate(),'System',1),
('Admin',getdate(),'System',1),
('Agent',getdate(),'System',1),
('User',getdate(),'System',1)

create table BranchMaster
(
  BranchCode int identity primary key,
  BranchName varchar(50),
  IsActive bit
)
insert into BranchMaster (BranchName,IsActive)
values
('Hyderabad',1),('Chennai',1),('Banglore',1)

create table UserMaster
(
   UID bigint identity primary key,
   UserName varchar(50) UNIQUE,
   Password varchar(50),
   FirstName varchar(50),
   LastName varchar(50),
   Age int,
   Gender varchar(20),
   ContactNumber varchar(15),
   EMail varchar(150),
   IsActive bit,
   CreatedOn datetime,
   CreatedBy varchar(50),
   IsApprovedOn datetime,
   IsApprovedBy varchar(50),
   RoleId int References RoleMaster(RoleID),
   BranchId int references BranchMaster(BranchCode)
)
insert into UserMaster
(UserName,Password,FirstName,LastName,Age,Gender,ContactNumber,EMail,IsActive,CreatedOn,CreatedBy,IsApprovedOn,IsApprovedBy,RoleId,BranchId)
values
('superadmin','123456','Super','Administrator',25,'Male','9848012345','superadmin@gmail.com',1,getdate(),'System',getdate(),'System',1,1),
('admin','123456','Administrator','Sample',20,'Male','9849012345','admin@gmail.com',1,getdate(),'System',getdate(),'System',2,1),
('agent','123456','Agent','Sample',22,'Male','9899012345','agent@gmail.com',1,getdate(),'System',getdate(),'System',3,1),
('user','123456','User','Sample',22,'Male','7899012345','user@gmail.com',1,getdate(),'System',getdate(),'System',4,1)

create table VehicleInfo
(
  VehicleId bigint identity(1230,1) primary key,
  VehicleNumber varchar(20),
  BranchCode int references BranchMaster(BranchCode),
  VehicleType varchar(20),
  InsuranceExpiryDate date,
  LastServicedDate date,
  ServiceDueDate date,
  IsActive bit,
  CreatedOn Datetime,
  CreatedBy varchar(50),
  PriceperDay bigint 
)
alter table vehicleinfo
add
 Model varchar(10),
  Year int

alter table vehicleInfo
alter column Model varchar(100)

create table BookingData
(
   BookingID bigint identity primary key,
   VehicleId bigint references VehicleInfo(VehicleId),
   BookingDate datetime,
   BookedfromDate datetime,
   BookedToDate datetime,
   TotalNoOfDays int,
   Amount bigint,
   PaymentMode varchar(50),
   PaymentReferenceId varchar(50),
   BookingUserId bigint references UserMaster(UID),
   BranchCode int references BranchMaster(BranchCode),
   IsBookingApproved bit,
   IsBookingCancelled bit,
   ApprovedBy varchar(50),
   ApprovedOn datetime,
   CancelledBy varchar(50),
   CancelledOn Datetime,
   Remarks varchar(150)   
)	