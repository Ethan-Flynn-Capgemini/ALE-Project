DROP DATABASE IF EXISTS RentATree;
CREATE DATABASE RentATree;
USE RentATree;

DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer (
	Username VARCHAR(20),
    Password VARCHAR(30),
	firstName VARCHAR(45),
    lastName VARCHAR(45),
	contactEmail VARCHAR(30),
    phoneNumber VARCHAR(11)
);


INSERT INTO customer(Username, Password, firstName, lastName, contactEmail, phoneNumber) VALUES('lisasmith','pinklima','Lisa', 'Smith','lisasmith@gmail.com', '02948464001');
INSERT INTO customer(Username, Password, firstName, lastName, contactEmail, phoneNumber) VALUES('sidsam', 'orangegiraffe','Sid', 'Sam', 'sidsam@gmail.com', '02977464001');
INSERT INTO customer(Username, Password, firstName, lastName, contactEmail, phoneNumber) VALUES('petesmithhh','yellowdino','Pete', 'Smith', 'petesmith@gmail.com' , '04637388399');
INSERT INTO customer(Username, Password, firstName, lastName, contactEmail, phoneNumber) VALUES('wazobmike','blueclio','Mike', 'wazob','mikewazob@gmail.com' , '03726294801');
INSERT INTO customer(Username, Password, firstName, lastName, contactEmail, phoneNumber) VALUES('goodmantoby','greenstar','Toby', 'goodman', 'tobygoodman@gmail.com' , '00680045901');
INSERT INTO customer(Username, Password, firstName, lastName, contactEmail, phoneNumber) VALUES('mikepaulpin','hedgehog','Paul', 'Pin', 'paul@gmail.com' , '04783748001');
INSERT INTO customer(Username, Password, firstName, lastName, contactEmail, phoneNumber) VALUES('popsdavid','pinkpony','Poppy', 'David','poppydavid@gmail.com' , '04896542016');

ALTER TABLE Customer 
ADD CONSTRAINT emailCheck
check (ContactEmail like '%@%.%');

ALTER TABLE Customer 
ADD CONSTRAINT phoneCheck
check (phoneNumber not like '%[^0-9]%');
 
 
 Select FirstName, LastName, Username
 From Customer




/*
DROP TABLE IF EXISTS Tree;
CREATE TABLE Tree (
TreeID INT (10) PRIMARY KEY auto_increment,
TreeType VARCHAR (10),
TreeDescription VARCHAR(50),
TreeMaterial VARCHAR(20),
ApproxTreeHeight INT,
TreeSupplier VARCHAR(100),
DailyRentPrice INT
);

INSERT INTO TREE (TreeType,TreeDescription, TreeMaterial, ApproxTreeHeight, TreeSupplier, DailyRentPrice)VALUES('Cedar', 'Cedar is a majestic, evergreen conifer which can grow to 35m. The bark is blackish-brown with closely spaced ridges and cracks, and twigs are brown and slightly hairy.','Coniferous wood',170,'Brown John',12);
INSERT INTO TREE (TreeType,TreeDescription, TreeMaterial, ApproxTreeHeight, TreeSupplier, DailyRentPrice)VALUES('Pine','The leaves of the pine tree are soft, flexible and bluish-green to silver green in color and are regularly arranged in bundles of five.','PVC',164,'Cultiv-8',17);
INSERT INTO TREE (TreeType,TreeDescription, TreeMaterial, ApproxTreeHeight, TreeSupplier, DailyRentPrice)VALUES('Spruce','Spruce trees have single needles connected to their stems. Their needles are sharp, square-shaped, and break easily if you bend them. In addition, this tree has the traditional full Christmas tree shape.','Mixture of Premium PU & PVC',127,'Hutchings',28);
INSERT INTO TREE (TreeType,TreeDescription, TreeMaterial, ApproxTreeHeight, TreeSupplier, DailyRentPrice)VALUES('Noble Fir','The tips of the Noble Fir are designed so that they can be placed in any direction without the risk of damage. The PVC needles are placed near the trunk, where they give the Christmas tree a lush appearance','PVC',183,'Bournewood',15);
INSERT INTO TREE (TreeType,TreeDescription, TreeMaterial, ApproxTreeHeight, TreeSupplier, DailyRentPrice)VALUES('Fraser Fir','This slimline Fraser fir Christmas tree is a fantastic a great option for those with less space.An irresistible slice of festive charm.','Mixture of PE & PVC',189,'Lodgers',26);


CREATE TABLE treeOrder (
OrderID INT (7) PRIMARY KEY auto_increment,
OrderTime DATETIME(50),
BillingAddress VARCHAR(100),
DeliveryAddress VARCHAR(100),
RentalDuration INT,
CustomerID FOREIGN KEY
);

ALTER TABLE
Add Constraint RentalDuration
check (RentalDuration>3)



INSERT INTO ORDER (OrderTime, BillingAddress, DeliveryAddress,RentalDuration,CustomerId)VALUES('2022-07-23 12:18;56','2 Belford Place, Harrogate,HG1 1HX', '2 Belford Place, Harrogate,HG1 1HX',5,);
INSERT INTO ORDER (OrderTime, BillingAddress, DeliveryAddress,RentalDuration,CustomerId)VALUES('2022-03-13 18:12;36','Lynchets, Upper Lambourn,RG17 8QN', 'Amazon Locker, Newtown Shopping Centre, Lambourn L19 2SA',7,);
INSERT INTO ORDER (OrderTime, BillingAddress, DeliveryAddress,RentalDuration,CustomerId)VALUES('2022-07-23 14:58;13','Old Homestead, Shepherds Hill, Colemans Hatch,TN7 4HP', 'Old Homestead, Shepherds Hill, Colemans Hatch,TN7 4HP',21,);
INSERT INTO ORDER (OrderTime, BillingAddress, DeliveryAddress,RentalDuration,CustomerId)VALUES('2022-07-23 20:14;50','17 Mordsley Place, Harrogate,FG1 HX', 'Amazon Locker, Riverside Road, Harrogate ,FG14 4PU',9,);
INSERT INTO ORDER (OrderTime, BillingAddress, DeliveryAddress,RentalDuration,CustomerId)VALUES('2022-07-23 19:31;35','22 Meling Road, Coventry, CO1 9HW', '22 Meling Road, Coventry, CO1 9HW',16,);






*/









