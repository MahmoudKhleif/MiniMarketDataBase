

--Create Embloyee table which has a primary key EmbloyeeID and other attributes
CREATE TABLE Embloyee
(
EmbloyeeID Smallint IDENTITY (1,1) Not Null,
FirstName varchar(25) NOT Null,
LastName  Varchar(25) Not Null,
PersonNumber int unique Not Null,
phone int unique Not Null,
EmailAddress varchar(50) Not Null,
Address varchar(50) Not Null,
Constraint PID  primary key(EmbloyeeID)
)

 --Create Product table which has a primary key ProductID and other attributes
 CREATE TABLE Product
(
ProductID Smallint IDENTITY (1,1)Not Null,
Name varchar(25) NOT Null,
Price money  Not Null,
productionDate varchar(15),
Expirtiondate varchar(15) Not Null,
Constraint ProductID  primary key(ProductID)
)


--Create Customer table which has a primary key CustomerID and other attributes

CREATE TABLE Customer
(
CustomerID Smallint IDENTITY (1,1)Not Null,
FirstName varchar(25) NOT Null,
LastName  Varchar(25) Not Null,
PersonNumber int unique Not Null,
phone int unique Not Null,
EmailAddress varchar(50) Not Null,
Address varchar(50) Not Null,
Constraint CustomerID primary key(CustomerID)
)



 --Create  SElls table with 2 forigen keys EmBlId and PRODID
 Create table SalesRevenues
 (
 EmBlId smallint NOT NULL,
 PRODID SMALLINT NOT NULL,
 TheTotallsellAmount Money,
 Datee varchar (25)Not Null,
 constraint EmblloyeeId foreign key(EmBlId)
 references Embloyee (EmbloyeeID),
 constraint ProID foreign key (PRODID)
 references Product(ProductID)
 )

 --Create  Regestiration table with 2 forigen keys EmpID and CustID 

 Create table Regestiration
 (
 EmpID smallint NOT NULL,
 CustID SMALLINT NOT NULL,
 DateOfregestration varchar (25)Not Null,
 constraint EmblloyeId foreign key(EmpID )
 references Embloyee (EmbloyeeID),
 constraint CustomerrID foreign key (CustID)
 references Customer (CustomerID)
 )

 --Create  Pruchases table with 2 forigen keys CustID and ProID

 Create table Pruchases
 (
 CustID smallint NOT NULL,
 ProID SMALLINT NOT NULL,
 TheTotallBuyAmount Money Not null,
 Datee varchar (25)Not Null,
 constraint CustomarID foreign key(CustID)
 references Customer (CustomerID),
 constraint ProdddID foreign key (ProID)
 references Product (ProductID)
 )
 


