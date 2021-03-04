CREATE TABLE Patient (
  PatientID INT PRIMARY KEY  IDENTITY,
  UserName varchar(20), 
  password varchar(20) NOT NULL,
  PatientFName varchar(20) NOT NULL,
  PatientLName varchar(20) NOT NULL,
  Phone varchar(20) NOT NULL,
  DOB Date NOT NULL,
  Address1 varchar(50) NOT NULL,
  City1 varchar(16) NOT NULL,
  State1 varchar(7) NOT NULL,
  Zip1 int NOT NULL,
  Gender char(6) not null
);

INSERT INTO Patient (UserName, password, PatientFName, PatientLName, Phone, DOB, Address1, City1, State1, Zip1, Gender) VALUES
('Adam@gmail.com', 'adam123', 'Adam', 'Eve', '5642317896', '2019-12-03', '1156', 'Boston', 'MA', 2216, 'Male'),
( 'paul@gmail.com', 'paul12343', 'Paul', 'Smith', '9807661234', '2019-12-24', '1123', 'Mumbai', 'MH', 9989, 'Female'),
( 'joe@gmail.com', '12joe3', 'Joe', 'Stevens', '7865789123', '2019-12-24', '112', 'Lawrence', 'MA', 98801, 'Male'),
( 'fred@yahoo.com', 'fre123', 'Fred', 'Stone', '9801829909', '2019-12-01', '32', 'Paris', 'CA', 88912, 'Male'),
( 'pete@hotmail.com', 'pete567', 'Pete', 'Parker', '7891279323', '2019-12-15', '321', 'Burlington', 'MA', 77812, 'Male'),
( 'mira@gmail.com', 'myr431', 'Mira', 'Seth', '5612789345', '2019-02-03', '343', 'Boston', 'MA', 1109, 'Female'),
( 'amanda@gmail.com', 'aman132', 'Amanda', 'Jolie', '8791236543', '2019-04-07', '1156', 'Los Angeles', 'CA', 5671, 'Female'),
( 'murr@yahoo.com', 'murr@456', 'James', 'Murray', '9801237689', '2019-02-17', '1134', 'Mumbai', 'MH', 3321, 'Male'),
( 'tom@gmail.com', 'tom342', 'Tom', 'Jerry', '8890125676', '2019-12-19', '1132', 'Boston', 'MA', 2213, 'Male'),
( 'jill@yahoo.com', 'jill3412', 'Jill', 'Cerny', '9901289312', '2019-09-16', '189', 'Mumbai', 'MH', 9921, 'Female');

Create Table Address(
AddressID INT Primary key identity,
AddressLine1 varchar(100) not null,
City varchar(50) not null,
State varchar(20) not null,
Zipcode int not null,
PatientID int not null,
FOREIGN KEY (PatientID) REFERENCES Patient(PatientID));

Insert into Address values ('1178 Huntington Ave', 'Boston', 'MA', 02287, 1)
Insert into Address values ('230 Boylston Street', 'New York', 'NY', 02216, 4)
Insert into Address values ('450 Park Street', 'Jersey', 'CA', 77382, 3)
Insert into Address values ('110 Prudential', 'New Hampshire', 'NY', 12673, 5)
Insert into Address values ('1165 Mass Ave', 'Dorchester', 'MA', 02298, 2)
Insert into Address values ('1189 Lawrence', 'Boston', 'CA', 11782, 4)
Insert into Address values ('156 Dorchester', 'Jersey', 'WA', 09393, 1)
Insert into Address values ('190 Boylston Street', 'New York', 'TX', 22818, 7)
Insert into Address values ('650 Back Bay', 'New Hampshire', 'CA', 02291, 9)
Insert into Address values ('1176 Mass Ave', 'Waltham', 'MA', 26637, 5)

CREATE TABLE Patientemergency (
  EmerPatientID           INT            PRIMARY KEY  IDENTITY,
  PatientFName        varchar(20)          NOT NULL,
  PatientLName         varchar(20)          NOT NULL,
  EPhone varchar(10) NOT NULL,
  PatientID int not null,
  FOREIGN KEY (PatientID) REFERENCES Patient(PatientID));


Insert into Patientemergency values('Aakash', 'Shah',8575882247,1)
Insert into Patientemergency values('Isha', 'Madan',8828845654,2)
Insert into Patientemergency values('Virat', 'Kohli',9594304517,3)
Insert into Patientemergency values('Anushka', 'Sharma',8752126566,4)
Insert into Patientemergency values('Zaheer', 'Khan',9825098205,5)
Insert into Patientemergency values('Sagarika', 'Ghatke',7548521544,6)
Insert into Patientemergency values('Paul', 'Walker',8575882217,7)
Insert into Patientemergency values('Adam', 'Apple',8565449456,8)
Insert into Patientemergency values('Jacquline', 'Mehta',9851456123,9)
Insert into Patientemergency values('Wendy', 'Misquith',8456321578,10)

Create table Drugs(
DrugID int Primary Key identity,
DrugName varchar(40) not null,
DrugUsage varchar(200) not null
)

Insert into Drugs values ('Local anesthesia', 'Used to reduce pain')
Insert into Drugs values ('Anesthesia', 'Used for surgery')
Insert into Drugs values ('Anti-inflammatory drugs', 'To relieve redness and discomfort in mouth')
Insert into Drugs values ('Tylenol', 'Used to reduce pain')
Insert into Drugs values ('Local anesthesia', 'Fever reducer')
Insert into Drugs values ('Nitrous Oxide', 'Used for relaxation')
Insert into Drugs values ('Intravenous sedation', 'Used to relax the mouth veins')
Insert into Drugs values ('Amoxicillin', 'Preventing bacterial infections')

Create Table InsuranceCompany(
CompanyID int Primary Key identity,
CompanyName varchar(50) not null,
Contact varchar(10) not null,
Address varchar(150) not null,
City char(20) not null,
State char(25) not null,
Zip Int not null)

Insert into InsuranceCompany values('BajajAlliance', 1190229801, '1175 Huntington Ave', 'Boston', 'MA', 02216)
Insert into InsuranceCompany values('UHCS', 9192298012, '230 Boylston Street', 'New York', 'CA', 02245)
Insert into InsuranceCompany values('Lawrence', 9510227841, '117 Tremont Street', 'Syracuse', 'NY', 12344)
Insert into InsuranceCompany values('Brigham Health', 9983018293, '901 Park Street', 'New Jersey', 'WD', 87956)
Insert into InsuranceCompany values('Brigham', 4482929292, '721 Prudential', 'Los Angeles', 'CA', 02393)
Insert into InsuranceCompany values('Tufts', 3391029302, '113 Boylston Street', 'Dallas', 'DC', 02909)
Insert into InsuranceCompany values('MassHealth', 4483220202, '978 Mass Ave', 'Boston', 'TX', 16748);
Insert into InsuranceCompany values('StarHealth', 4493020394, '135 Huntington Ave', 'New Jersey', 'FL', 44848)
Insert into InsuranceCompany values('ICICI', 4449494933, '240 Tremont Street', 'Syracuse', 'WA', 00291)
Insert into InsuranceCompany values('LIC', 9910284895, '787 Lawrence', 'New York', 'ST', 11672)
Insert into InsuranceCompany values('BlueCross', 7217382828, '219 Park Street', 'Worchester', 'MA', 02219)

Create Table PatientInsurance(
InsuranceID		INT				PRIMARY KEY IDENTITY,
InsurancePolicy	varchar(25)		NOT NULL,
InsuranceAmount Float			NOT NULL,
StartDate		Date			NOT NULL,
ExpiryDate		Date			NOT NULL,
CompanyID		INT				NOT NULL,
PatientID		INT				NOT NULL,
FOREIGN KEY (CompanyID) REFERENCES InsuranceCompany(CompanyID),
FOREIGN KEY (PatientID) REFERENCES Patient(PatientID))

Insert into PatientInsurance values ('Whole Life Insurance', 270, '2019-01-10', '2029-10-10', 8, 4)
Insert into PatientInsurance values ('Whole Life Insurance', 270, '2019-01-10', '2029-10-10', 2, 5)
Insert into PatientInsurance values ('Unit Linked Plans', 360, '2019-12-13', '2029-12-12', 1, 8)
Insert into PatientInsurance values ('Money Back Life Insurance', 170, '2018-01-11', '2028-11-09', 5, 7)
Insert into PatientInsurance values ('Whole Life Insurance', 570, '2017-08-08', '2027-12-05', 4, 6)
Insert into PatientInsurance values ('Child Plan', 650, '2019-01-15', '2029-02-01', 6, 10)
Insert into PatientInsurance values ('Retirement Plan', 570, '2016-12-12', '2020-11-15', 3, 8)
Insert into PatientInsurance values ('Term Life Insurance', 465, '2015-08-11', '2029-11-10', 9, 9)
Insert into PatientInsurance values ('Endowment Plans', 235, '2017-09-09', '2025-11-15', 10, 4)
Insert into PatientInsurance values ('Whole Life Insurance', 900, '2018-07-11', '2022-06-03', 7, 6)


Create Table CardDetails(
CardNumber		varchar(16)	PRIMARY KEY,
ExpiryDate		Date			NOT NULL,
NameonCard		Char(20)		NOT NULL
)

Insert into CardDetails values (0012920192001929, '2023-10-9', 'Adam Gilchrist')
Insert into CardDetails values (2371818282882828, '2021-11-08', 'Ken Adams')
Insert into CardDetails values (8893929299110284, '2022-04-04', 'Jill Cerny')
Insert into CardDetails values (4405029393939210, '2020-01-03', 'Ricky Marsh')
Insert into CardDetails values (3949110474826442, '2022-12-15', 'Shaun Malik')
Insert into CardDetails values (8829103838195049, '2023-11-11', 'Amanda Hill')
Insert into CardDetails values (0018390274949391, '2021-04-13', 'Jack Ma')
Insert into CardDetails values (6687935104314230, '2022-08-08', 'Jake Harper')
Insert into CardDetails values (3201934909449827, '2020-07-16', 'Angelina Jules')
Insert into CardDetails values (3382940382748002, '2022-09-18', 'Chris Martin')

Create Table Room(
  RoomID INT PRIMARY KEY IDENTITY,
  RoomType varchar(15) NOT NULL,
  RoomName varchar(15) NOT NULL);

Insert into Room values ('Surgery', 'DMC01')
Insert into Room values ('Cavity', 'AB01')
Insert into Room values ('Cleaning', 'PA09')
Insert into Room values ('Flossing', 'SA59')
Insert into Room values ('Filling', 'XYZ67')
Insert into Room values ('Cleaning', 'PA11')
Insert into Room values ('Cavity', 'AB02')
Insert into Room values ('Flossing', 'SA60')
Insert into Room values ('Surgery', 'DMC02')
Insert into Room values ('Cleaning', 'PA10')

 Create Table Vendor(
  VendorID INT PRIMARY KEY IDENTITY,
  VendorName varchar(200) not null)

  Insert into Vendor values('M4 Dental Supplies')
  Insert into Vendor values('Patterson Dental')
  Insert into Vendor values('Henry Schein Dental')
  Insert into Vendor values('Benco Vendors')
  Insert into Vendor values('Nanova Biomaterials')
  Insert into Vendor values('Premier Medical Products')
  Insert into Vendor values('PulDent')
  Insert into Vendor values('Colgate Oral Pharmaceuticals')
  Insert into Vendor values('Ivoclar Vivident Inc.')
  Insert into Vendor values('Dentra Supplies')

  Create Table Inventory(
  InventoryID INT PRIMARY KEY IDENTITY,
  ItemName varchar(20) NOT NULL,
  Quantity varchar(20) NOt null,
  VendorID INT Not null,
  FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID));

  INSERT INTO Inventory values('Gloves',55,2)
  INSERT INTO Inventory values('Scissors',70,10)
  INSERT INTO Inventory values('Masks',36,8)
  INSERT INTO Inventory values('Syringes',45,1)
  INSERT INTO Inventory values('Alcohol Wipes',72,5)
  INSERT INTO Inventory values('Tounge depressors',12,9)
  INSERT INTO Inventory values('Dental wax',80,3)
  INSERT INTO Inventory values('Dental floss',38,6)
  INSERT INTO Inventory values('Bandages',97,4)
  INSERT INTO Inventory values('First-Aid kits',8,7)

  
   Create Table Equipment(
  EquipmentID INT PRIMARY KEY IDENTITY,
  EquipmentName varchar(200) NOT NULL,
  Elocation varchar(200) NOt null,
  LastMaintenance Date NOT NULL,
  NextMaintenance Date NOT NULL,
  VendorID INT Not null,
  FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID));

  Insert into Equipment values('X-ray Machine','RoomA','2019-09-09','2019-10-10',1)
  Insert into Equipment values('Dental chairs','DMC01','2017-01-01','2019-12-09',2)
  Insert into Equipment values('Sterilizers','AB02','2018-05-08','2019-12-09',3)
  Insert into Equipment values('Ultrasonic Cleaners','DMC01','2019-12-09','2019-12-09',3)
  Insert into Equipment values('Laser Welders','SS02','2019-11-09','2020-01-01',4)
  Insert into Equipment values('Vacuum Mixers','HA01','2019-01-01','2020-02-02',5)
  Insert into Equipment values('Pinhole Drilling Units','RM08','2019-05-05','2020-05-05',6)
  Insert into Equipment values('3D printers','SS02','2019-02-02','2019-12-12',7)
  Insert into Equipment values('Dust Collectors','DMC01','2018-12-12','2019-12-12',8)
  Insert into Equipment values('Abrasive Blasters','AB02','2018-12-09','2020-08-09',9)

   Create Table Location(
  LocationID INT PRIMARY KEY IDENTITY,
  Address1          VARCHAR(50)    NOT NULL,
  City1        varCHAR(16)       NOT NULL,
  State1       varCHAR(7)        NOT NULL,
  Zip1  INT            NOT NULL,
  RoomID INT NOT NULL,
  FOREIGN KEY (RoomID) REFERENCES room(RoomID));

insert into location values('1 Torpie Street','Boston','MA',02120,1)
insert into location values('Marino Center','Boston','MA',02120,3)
insert into location values('1572 Tremont Street','Boston','MA',02120,5)
insert into location values('2 Jersey Street','Boston','MA',02120,2)
insert into location values('10 Stevens Center','Boston','MA',02120,10)
insert into location values('8 Ell HALL','Boston','MA',02120,4)
insert into location values('21 Lowell IT Park','Boston','MA',02120,8)
insert into location values('88 Huntington Avenue','Boston','MA',02120,6)

Create Table Dentist(
DentistID INT PRIMARY KEY IDENTITY,
FName			char(20)		NOT NULL,
LName			char(20)		NOT NULL,
Phone			varchar(10)		NOT NULL
)

Insert into Dentist values ('John', 'Adams', '8897096613')
Insert into Dentist values ('Freddy', 'Flintstone', '7790126748')
Insert into Dentist values ('Alex', 'Ferguson', '8890457894')
Insert into Dentist values ('Luke', 'Shaw', '9904789434')
Insert into Dentist values ('Paul', 'Sterling', '9908675842')
Insert into Dentist values ('Jake', 'Gill', '8890478956')
Insert into Dentist values ('Mike', 'Hussey', '8750984567')
Insert into Dentist values ('Mat', 'Hayden', '8890135489')
Insert into Dentist values ('Tom', 'Holland', '8904839302')
Insert into Dentist values ('Robert', 'Downney', '9908563421')

Create Table DentistSecure(
SSN varchar(9) not null,
PersonalPhone varchar(10) not null,
TaxPayerID varchar(10) not null,
DentistID int not null,
Foreign Key (DentistID) References Dentist(DentistID)
)
Insert into DentistSecure values (118728172, 9928281828, 1029382828, 1)
Insert into DentistSecure values (281928281, 2012938281, 3828191928, 3)
Insert into DentistSecure values (383138171, 3927193727, 4848229227, 4)
Insert into DentistSecure values (399288388, 4838381199, 5922392039, 6)
Insert into DentistSecure values (392048383, 8584783838, 3028483392, 2)
Insert into DentistSecure values (950328494, 4838248483, 4252324924, 5)
Insert into DentistSecure values (495719488, 7574937348, 5948295858, 10)
Insert into DentistSecure values (503947474, 4929484848, 5839375747, 9)
Insert into DentistSecure values (658454854, 8603049848, 4029483948, 7)
Insert into DentistSecure values (503483439, 5939483989, 4048539483, 8)

Create Table Licenses(
LicenseType char(25) not null,
Specialization char(25) not null,
Qualifications char(25),
DentistID int not null,
Foreign Key (DentistID) references Dentist(DentistID)
)

Insert into Licenses values ('OklahomaState', 'Surgeon','BU', 2)
Insert into Licenses values ('Hygenist', 'Orthodontist','WA', 3)
Insert into Licenses values ('County', 'Periodontist','Syracuse', 8)
Insert into Licenses values ('MasState', 'Endodontist','NEU', 7)
Insert into Licenses values ('Anesthesia','Maxillofacial','NYU', 1)
Insert into Licenses values ('OklahmaState','Endodontist','BU', 2)
Insert into Licenses values ('County','Surgeon','Syracuse', 8)
Insert into Licenses values ('MassState','Maxillofacial','NEU', 7)
Insert into Licenses values ('Anesthesia','Orthodontist','NYU', 1)
Insert into Licenses values ('Hygenist','Endodontist','WA', 3)

Create Table Appointment(
  AppointmentID INT PRIMARY KEY  IDENTITY,
  AppointmentDate Date NOT NULL,
  AppointmentTime Time NOT NULL,
  PatientID INT NOT NULL,
  DentistID INT NOT NULL,
  RoomID INT NOT NULL,
  FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
  FOREIGN KEY (DentistID) REFERENCES Dentist(DentistID),
  FOREIGN KEY (RoomID) REFERENCES room(RoomID))

insert into Appointment values ('2019-12-30','09:30:00', 2, 3, 7)
insert into Appointment values ('2019-12-10','10:15:00', 3, 4, 8)
insert into Appointment values ('2020-01-11','09:15:00', 7, 7, 10)
insert into Appointment values ('2020-05-09','20:15:00', 8, 8, 5)
insert into Appointment values ('2019-12-31','17:50:00', 9, 10, 4)
insert into Appointment values ('2019-12-19','10:30:00', 4, 9, 2)
insert into Appointment values ('2020-02-02','09:20:00', 5, 3, 1)
insert into Appointment values ('2019-12-07','13:35:00', 6, 6, 3)
insert into Appointment values ('2019-12-04','15:30:00', 2, 4, 6)
insert into Appointment values ('2019-12-25','08:25:00', 7, 7, 9)
insert into Appointment values ('2019-12-20','10:35:00', 8, 1, 4)
insert into Appointment values ('2019-12-04','14:45:00', 5, 3, 2)
insert into Appointment values ('2019-12-02','16:45:00', 1, 2, 3)
insert into Appointment values ('2019-12-28','17:00:00', 10, 8, 1)
insert into Appointment values ('2020-01-04','13:00:00', 3, 6, 8)
insert into Appointment values ('2020-01-08','10:30:00', 8, 5, 10)
insert into Appointment values ('2019-12-12','10:30:00', 9, 2, 10)
insert into Appointment values ('2019-12-12','12:30:00', 8, 2, 9)
insert into Appointment values ('2019-12-12','13:00:00', 7, 2, 8)
insert into Appointment values ('2019-12-13','10:30:00', 7, 2, 9)
insert into Appointment values ('2019-12-15','12:00:00', 5, 2, 10)
insert into Appointment values ('2019-12-16','11:00:00', 5, 2, 10)
insert into Appointment values ('2019-12-17','10:00:00', 5, 2, 10)

Create Table Tooth(
ToothID INT Primary key identity,
ToothName varchar(20) not null,
ToothType varchar(20) not null,
Plaque varchar(15) not null,
Abrasions varchar(20) not null,
Color varchar(20) not null);

Insert into Tooth values ('Molars', 'Third Molar', 'yes' ,'Linear','white')
Insert into Tooth values ('Molars', 'Second Molar', 'no' ,'Grazed' ,'yellow')
Insert into Tooth values ('Molars', 'First Molar', 'no' ,'Imprint','white')
Insert into Tooth values ('Premolars', 'Second Premolar', 'yes' ,'Friction','yellow')
Insert into Tooth values ('Premolars', 'First Premolar', 'yes' ,'Linear','white')
Insert into Tooth values ('Canines', 'Canine', 'no' ,'Grazed','yellow')
Insert into Tooth values ('Incisors', 'Lateral Incisor', 'yes' ,'Friction','yellow')
Insert into Tooth values ('Incisors', 'Central Incisor', 'no' ,'Grazed','white')
Insert into Tooth values ('Incisors', 'Central Incisor', 'no' ,'Friction','yellow')
Insert into Tooth values ('Incisors', 'Lateral Incisor', 'yes' ,'Linear','white')
Insert into Tooth values ('Canines', 'Canine', 'yes' ,'Linear','white')
Insert into Tooth values ('Premolars', 'First Premolar', 'no' ,'Grazed' ,'yellow')
Insert into Tooth values ('Premolars', 'Second Premolar', 'no' ,'Imprint','white')
Insert into Tooth values ('Molars', 'First Molar', 'yes' ,'Friction','yellow')
Insert into Tooth values ('Molars', 'Second Molar', 'yes' ,'Linear','white')
Insert into Tooth values ('Molars', 'Third Molar', 'no' ,'Grazed','yellow')
Insert into Tooth values ('Molars', 'Third Molar', 'yes' ,'Friction','yellow')
Insert into Tooth values ('Molars', 'Second Molar', 'no' ,'Grazed','white')
Insert into Tooth values ('Molars', 'First Molar', 'no' ,'Friction','yellow')
Insert into Tooth values ('Premolars', 'Second Premolar', 'yes' ,'Linear','white')
Insert into Tooth values ('Premolars', 'First Premolar', 'yes' ,'Linear','white')
Insert into Tooth values ('Canines', 'Canine', 'no' ,'Grazed' ,'yellow')
Insert into Tooth values ('Incisors', 'Lateral Incisor', 'no' ,'Imprint','white')
Insert into Tooth values ('Incisors', 'Central Incisor', 'yes' ,'Friction','yellow')
Insert into Tooth values ('Incisors', 'Central Incisor', 'yes' ,'Linear','white')
Insert into Tooth values ('Incisors', 'Lateral Incisor', 'yes' ,'Linear','white')
Insert into Tooth values ('Canines', 'Canine', 'no' ,'Grazed' ,'yellow')
Insert into Tooth values ('Premolars', 'First Premolar', 'no' ,'Imprint','white')
Insert into Tooth values ('Premolars', 'Second Premolar', 'yes' ,'Friction','yellow')
Insert into Tooth values ('Molars', 'First Molar', 'yes' ,'Linear','white')
Insert into Tooth values ('Molars', 'Second Molar', 'no' ,'Grazed','yellow')
Insert into Tooth values ('Molars', 'Third Molar', 'yes' ,'Friction','yellow')
Insert into Tooth values ('Miscellanious', 'Miscellanious', 'no' ,'Grazed','white')

Create table PatientTooth(
PatientToothID INT PRIMARY KEY IDENTITY,
PatientID INT not NULL,
ToothID INT not null,
IsToothPresent Char(1) not null,
Comments varchar(50)
FOREIGN KEY (ToothID) REFERENCES Tooth(ToothID),
FOREIGN KEY (PatientID) REFERENCES Patient(PatientID))

Insert into PatientTooth(PatientID,ToothID,IsToothPresent) values(1,1,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,2,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,3,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,4,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,5,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,6,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,7,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,8,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,9,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,10,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,11,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,12,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,13,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,14,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,15,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,16,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,17,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,18,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,19,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,20,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,21,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,22,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,23,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,24,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,25,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,26,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,27,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,28,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,29,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,30,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,31,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(1,32,'Y')


Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,1,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,2,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,3,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,4,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,5,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,6,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,7,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,8,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,9,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,10,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,11,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,12,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,13,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,14,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,15,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,16,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,17,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,18,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,19,'N')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,20,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,21,'N')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,22,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,23,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,24,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,25,'N')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,26,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,27,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,28,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,29,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,30,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,31,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(2,32,'Y')


Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,1,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,2,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,3,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,4,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,5,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,6,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,7,'N')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,8,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,9,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,10,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,11,'N')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,12,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,13,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,14,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,15,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,16,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,17,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,18,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,19,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,20,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,21,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,22,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,23,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,24,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,25,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,26,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,27,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,28,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,29,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,30,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,31,'Y')
Insert into PatientTooth (PatientID,ToothID,IsToothPresent)values(3,32,'Y')

Create Table Treatment(
TreatmentID	INT	PRIMARY KEY,
Description	varchar(200)	NOT NULL,
SuggestedMeasures varchar(200),
PatientToothID INT	NOT NULL,
FOREIGN KEY (PatientToothID) REFERENCES PatientTooth(PatientToothID)
)

ALTER table treatment
ADD TreatmentCost Float 

Insert into Treatment values (1,'Surgery and crown filling is needed to be performed', 'Avoid hot food', 1)
Insert into Treatment values (2,'Cleaning is required', 'Brush twice', 2)
Insert into Treatment values (3,'Surgery is needed', 'Avoid solid food', 3)
Insert into Treatment values (4,'Crown filling is needed', 'Do not eat gum', 40)
Insert into Treatment values (5,'Cavity filling is required', 'Avoid gum', 44)
Insert into Treatment values (6,'Tooth is perfect', 'Perfect going', 46)
Insert into Treatment values (7,'Abrasions are present', 'Levelling of mouth is needed', 33)
Insert into Treatment values (8,'Tooth has some Stains', 'Avoid outside food', 23)
Insert into Treatment values (9,'Recession is present', 'Avoid hot food', 24)
Insert into Treatment values (10,'Overhangs are present', 'Avoid gum', 26)

INSERT into Treatment([TreatmentCost]) values ('100')

Create Table PatientHistory(
HistoryID int Primary Key Identity,
AppointmentID int not null,
TreatmentID int not null,
PatientID int not null,
Allergies varchar(50),
Diseases char(50),
Foreign Key (AppointmentID) References Appointment(AppointmentID),
Foreign Key (TreatmentID) References Treatment(TreatmentID),
Foreign Key (PatientID) References Patient(PatientID)
)

Insert into PatientHistory values (1,3,2,'Latex','Active TB')
Insert into PatientHistory values (1,4,2,'Acrylates','MERS')
Insert into PatientHistory values (3,8,6,'Formaldeyde','Flu')
Insert into PatientHistory values (10,5,5,'Acrylates','Flu')
Insert into PatientHistory values (8,7,4,'Porcelain','Flu')
Insert into PatientHistory values (7,6,1,'Latex','Active TB')
Insert into PatientHistory values (6,4,7,'Formaldehyde','Active TB')
Insert into PatientHistory values (5,2,10,'Acrylates','SARS')
Insert into PatientHistory values (9,1,9,'Latex','MERS')
Insert into PatientHistory values (2,3,8,'Porcelain','SARS')

Create Table Invoice(
InvoiceID int Primary Key identity,
PatientID int not null,
TreatmentID int not null,
Date date not null,
Amount float not null,
Description varchar(100),
Foreign Key (PatientID) references Patient(PatientID),
Foreign Key (TreatmentID) References Treatment(TreatmentID)
)

insert into Invoice values (2,1,'2019-10-10',170,'Billed for surgery')
insert into Invoice values (4,2,'2019-11-08',200,'Billed for crown filling')
insert into Invoice values (3,3,'2019-08-11',250,'Billed for cleaning')
insert into Invoice values (7,4,'2019-09-30',300,'Billed for cavity filling')
insert into Invoice values (8,5,'2019-07-17',150,'Billed for tooth extraction')
insert into Invoice values (9,6,'2019-05-20',400,'Billed for surgery')
insert into Invoice values (1,1,'2019-10-28',550,'Billed for cavity fillng')
insert into Invoice values (5,2,'2019-07-11',600,'Billed for crown fitting')
insert into Invoice values (6,7,'2019-10-08',450,'Billed for cleaning')
insert into Invoice values (4,8,'2019-10-08',450,'Billed for crown filling')
insert into Invoice values (7,9,'2019-10-08',450,'Billed for Abrasions')
insert into Invoice values (1,10,'2019-06-06',320,'Billed for cavity filling')


Create Table Prescription(
PrescriptionID int Primary Key identity,
PatientID int not null,
DentistID int not null,
TreatmentID int not null,
Date date not null,
Notes varchar(200) not null,
DrugID int not null,
Foreign Key (PatientID) References Patient(PatientID),
Foreign Key (DentistID) References Dentist(DentistID),
Foreign Key (TreatmentID) References Treatment(TreatmentID),
Foreign Key (DrugID) References Drugs(DrugID)
)

Insert into Prescription values (1,8,10,'2019-10-09','Get this medicine for surgery',2)
Insert into Prescription values (3,10,8,'2019-10-09','Take this twice to reduce swelling',4)
Insert into Prescription values (5,7,9,'2019-10-09','Take this to reduce pain',7)
Insert into Prescription values (2,9,6,'2019-10-09','Get this medicine for soothing pain',1)
Insert into Prescription values (4,6,7,'2019-10-09','Take this pill to reduce swelling',3)
Insert into Prescription values (10,5,4,'2019-10-09','Get this medicine for surgery',8)
Insert into Prescription values (9,2,5,'2019-10-09','Get this medicine for surgery',5)
Insert into Prescription values (7,4,2,'2019-10-09','Get this medicine for soothing pain',6)
Insert into Prescription values (8,3,1,'2019-10-09','Get this medicine for surgery',3)
Insert into Prescription values (6,1,3,'2019-10-09','Get this medicine to reduce pain',1)

Create Table Payment(
PaymentID int primary key identity,
PaymentDate date not null,
PaymentTime time not null,
CardNumber varchar(16),
InvoiceID int not null,
InsuranceID int not null,
ModeOfPayment varchar(50) not null,
Foreign Key (CardNumber) References CardDetails(CardNumber),
Foreign Key (InvoiceID) References Invoice(InvoiceID),
Foreign Key (InsuranceID) References PatientInsurance(InsuranceID),
)

Insert into Payment values ('2019-10-10','11:09:00', 0012920192001929,1,2,'Card')
Insert into Payment values ('2019-11-09','13:10:15', NULL,4,6,'Cash and Insurance')
Insert into Payment values ('2019-12-10','15:16:34', 2371818282882828,1,7,'Card')
Insert into Payment values ('2019-08-08','12:20:00', 8893929299110284,5,8,'Card')
Insert into Payment values ('2019-06-15','08:25:30', 4405029393939210,2,10,'Card')
Insert into Payment values ('2019-02-10','14:30:55', 3949110474826442,10,9,'Card')
Insert into Payment values ('2019-09-17','16:32:45', 8829103838195049,8,3,'Card')
Insert into Payment values ('2019-05-25','10:25:50', 0018390274949391,9,4,'Card')
Insert into Payment values ('2019-04-08','14:20:25', 6687935104314230,7,5,'Card')
Insert into Payment values ('2019-10-20','18:10:10', NULL,6,1,'Cash and Insurance')



--Function to check number of Appointments by Doctors at the clinic till now.
ALTER Function [dbo].[AppointmentCount]()
RETURNS TABLE 
AS
RETURN
(
SELECT DentistID,COUNT(AppointmentID) AS Count from Appointment
WHERE AppointmentDate < GETDATE()
GROUP BY DentistID)

select * from dbo.AppointmentCount()











CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Password';

CREATE CERTIFICATE Certificate1 WITH SUBJECT = 'Protect Data';

CREATE SYMMETRIC KEY Skey 
WITH ALGORITHM = AES_128
ENCRYPTION BY CERTIFICATE Certificate1;

OPEN SYMMETRIC KEY SKey
DECRYPTION BY CERTIFICATE Certificate1;
GO
Update DentistSecure
SET 
SSN_encrypt = EncryptByKey(Key_GUID('Skey'), SSN)
from DentistSecure

go
CLOSE SYMMETRIC KEY Skey

select * from DentistSecure




alter table DentistSecure
add SSN_encrypt varbinary(max) NULL



ALTER PROCEDURE CalculateTax @u INT, 
@o INT OUTPUT
AS 
BEGIN
SELECT @o = Amount+(Amount*0.06)
FROM [dbo].[Invoice] i
WHERE i.InvoiceID = @u
END

SELECT * FROM Invoice

DECLARE @o INT
Exec CalculateTax 2,@o OUTPUT
PRINT @o











create table PaymentBackup
(
PaymentRecordID int primary key not null identity(1,1),
PaymentDate Date,
CardNumber varchar(16),
InvoiceID int,
InsuranceID int,
ModeOfPayment varchar(25),
ActionDate date
)

drop table PaymentBackup

select * from PaymentBackup
select * from Invoice 

CREATE TRIGGER PaymentTracking ON Payment
FOR UPDATE
AS
BEGIN
INSERT INTO PaymentBackup
(PaymentDate,
CardNumber,
InvoiceID,
InsuranceID,
ModeOfPayment,
ActionDate)

SELECT p.PaymentDate, p.CardNumber, p.InvoiceID, p.InsuranceID, p.ModeOfPayment, GETDATE()
FROM DELETED p
JOIN Payment py ON 
p.InvoiceID = py.InvoiceID
JOIN Invoice i ON
i.InvoiceID = py.InvoiceID
END


select * from PaymentBackup

update Payment set ModeOfPayment = 'Cash' where PaymentID = 2