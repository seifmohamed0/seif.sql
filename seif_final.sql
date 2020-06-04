create database Resturant;
use Restaurant;
create table Customers(
	Customer_id int NOT NULL,
	First_name varchar(20) NOT NULL,
	Last_name varchar(20) NOT NULL,
	Phone_number int,
	Email varchar(80),	
	PRIMARY KEY (Customer_id),
	);
	
	create table Waiter(
	Waiter_id int not null,
	First_name varchar(20) NOT NULL,
	Last_name varchar(20) NOT NULL,
	Phone_number int,
  	Salary varchar(30) DEFAULT NULL,
	
	PRIMARY KEY (Waiter_id),
);
create table Cashier(
	Cashier_Id int NOT null,
	First_name varchar(20) NOT NULL,
	Last_name varchar(20) NOT NULL,
	Phone_number int,
  	Salary varchar(30) DEFAULT NULL,
	Gender char(1) DEFAULT NULL,
	PRIMARY KEY (Cashier_Id),
);

create table Menu(
	Menu_id int NOT NULL,
	Name varchar(100) NOT NULL,
	Price varchar(20) NOT NULL,
	Category varchar(30) NOT NULL,
	PRIMARY KEY(Menu_id,Name),
);
create table Tables(
	Table_number varchar(10) NOT NULL,
	Details varchar(200) DEFAULT NULL,
	PRIMARY KEY (Table_number)
);
create table Booking(
	Booking_id int NOT NULL,
	Table_num varchar(10) NOT NULL,
	Date varchar(30) NOT NULL,
	Time varchar(30) NOT NULL,
	Cust_id int NOT NULL,
	PRIMARY KEY (Booking_id),
	FOREIGN KEY (Cust_id) REFERENCES Customers (Customer_id),
	FOREIGN KEY (Table_num) REFERENCES Tables(Table_number),
	);

create table Orders(
   Order_id int not null,
   Cust_id int not null,
   Table_num varchar(10) not null,
   Food_id int not null,
   primary key (Order_id,Food_id),
   foreign key(Cust_id) references Customers (Customer_id),
   foreign key(Table_num) references Tables(Table_number),
);
	
insert into Tables values ('1','Capacity 4 People');
insert into Tables values ('2','Capacity 3 People');
insert into Tables values ('3','Capacity 2 People');
insert into Tables values ('4','Capacity 1 People');
insert into Tables values ('5','Capacity 8 People');

insert into Waiter values (1,'Ali','Mohamed',01111223366,'1600');
insert into Waiter values (2,'Seif','Mohamed',0122348960,'5000');
insert into Waiter values (3,'Hamoudi','Elsayed',01012839854,'3800');
insert into Waiter values (4,'Abdallah','Nasr',01157542366,'2500');
insert into Waiter values (5,'Ahmed','Hussien',01164597886,'4200');

select * from Waiter;
select * from Tables;

insert into Menu values(1,'Vegetable Pakora','3.00','Starters');
insert into Menu values(2,'Vegetable Samosa','3.00','Starters');
insert into Menu values(3,'Onion Bhaji','3.00','Starters');
insert into Menu values(4,'Potato and Mushroom Chaat','3.75','Starters');
insert into Menu values(5,'Mushroom Garlic Fry','3.50','Starters');
insert into Menu values(6,'Chicken Tikka','4.00','Starters');
insert into Menu values(7,'Lamb Tikka','4.00','Starters');
insert into Menu values(8,'King Prawn on Puree','5.99','SeaFood');
insert into Menu values(9,'Prawn Bhuna on Puree','3.95','SeaFood');
insert into Menu values(10,'Prawn Cocktail','5.50','SeaFood');
insert into Menu values(11,'Mushroom Rice','3.20','Rice');
insert into Menu values(12,'Garlic Naan','2.50','Bread');
insert into Menu values(13,'Chapati','1,00','Bread');
insert into Menu values(14,'Ice Cream','2.95','Dessert');
insert into Menu values(15,'Ras Malai','2.95','Dessert');

select * from Menu;

insert into Cashier values(1,'Ahmed','Mohammed',0101023457,1600,'M');
insert into Cashier values(2,'Mohammed','Kamal',0123288900,2500,'M');
insert into Cashier values(3,'Youmna','Hussien',01111248395,3000,'F');


select * from Cashier;

insert into Customers values(1,'Noha','Ahmed',01212334455,'noha12@gmail.com');
insert into Customers values(2,'Lila','Sameh',0111200055,'lila@gmail.com');
insert into Customers values(3,'Nada','Ali',0138549374,'nada@gmail.com');
insert into Customers values(4,'Seif','Kamal',01224563754,'seif@gmail.com');
insert into Customers values(5,'Ali','Alwan',0121433543,'ali2@gmail.com');
insert into Customers values(6,'Ahmed','Abdallah',010546454,'ahmed@gmail.com');
insert into Customers values(7,'Marwan','Hady',01254656235,'maro12@gmail.com');
insert into Customers values(8,'Morad','Abdelhafiz',01244876545,'moroo12@gmail.com');
insert into Customers values(9,'Mazen','Mohammed',0127564321,'mazen@gmail.com');
insert into Customers values(10,'Mohab','Mohammed',01015446435,'mohab@gmail.com');
insert into Customers values(11,'Rewan','Nasr',0111145445,'rere@gmail.com');
insert into Customers values(12,'Abdo','Shokr',010456677,'abdoo@gmail.com');
insert into Customers values(13,'Maryan','Ehab',0126644443,'maryy@gmail.com');
insert into Customers values(14,'Sandy','Adel',0111465456,'soso@gmail.com');

select * from Customers;

insert into Booking values (1,1,'12-7-2020','12:00',1);
insert into Booking values (2,2,'3-7-2020','23:00',2);
insert into Booking values (3,2,'24-4-2021','16:00',13);
insert into Booking values (4,3,'23-7-2020','18:00',7);
insert into Booking values (5,4,'9-12-2020','13:00',3);
insert into Booking values (6,5,'5-1-2020','15:00',9);
insert into Booking values (7,5,'10-4-2020','22:00',10);

select * from Booking;

insert into Orders values (1,5,'2',2);
insert into Orders values (2,7,'1',15);
insert into Orders values (3,13,'3',4);
insert into Orders values (4,12,'5',13);
insert into Orders values (5,9,'4',12);
insert into Orders values (6,3,'1',11);

select * from Orders;
use Restaurant;
select * from Waiter;
select * from Tables;
select * from Booking;
select * from Menu;
select * from Orders;
select * from Customers;
select Phone_number from Customers;
select First_name from Customers;
select Last_name from Customers;
select Last_name,Phone_number,Email from Customers;
select First_name,Last_name from Waiter;
select Salary from Waiter;
select First_name,Salary from Waiter;
select First_name,Gender from Cashier;
select Last_name,Phone_number,Salary from Cashier;
select Booking_id,Table_num from Booking;
select Date,Time,Table_num from Booking;
select Table_num,Cust_id from Booking;
select Name,Category,Price from Menu;
select Details from Tables;
select * from Customers where First_name like 'A%';
select Name from Menu where Category = 'Starters';
select Last_name from Cashier where Gender='M';

select count(Cust_id), Cust_id 
from Booking 
group by Cust_id; 

select First_name,Phone_number from Customers 
where Last_name like 'A%'
group by First_name,Phone_number; 

use Restaurant;
insert into Waiter values(18,'Laila','Alaa',012347684,'2100');
insert into Customers values(17,'Mina','Moheb',012279325,'mina@gmail.com');
insert into Cashier values (4,'Saad','Mohsen',0113734256,'2500','M');
insert into Menu values(19,'English cake','3.90','Dessert');
insert into Tables values(10,'For Birthdays');

UPDATE Waiter SET Salary = 2500 WHERE Waiter_id = 4;
UPDATE Tables SET Details = 'Capacity 4 People' WHERE Table_number = 4;
UPDATE Customers SET First_name = 'Ali' WHERE Last_name = 'Ahmed';
UPDATE Menu SET Name = 'Chocolate Cake' WHERE Name = 'English cake';
UPDATE Cashier SET Salary = 2900 WHERE Last_name = 'Kamal';

delete from Customers where First_name='Noha';
delete from Customers where Last_name='Nasr';
delete from Cashier where Salary='2500' and Gender='M';
delete from Tables where Table_number=10;
delete from Waiter where Waiter_id=18;
use Restaurant;

select * from Customers
right join Booking on Booking.Cust_id = Customers.Customer_id; 

select Tables.Table_number , Booking.Table_num 
from Tables
left join Booking on Booking.Table_num = Tables.Table_number; 

select * from Tables
inner join Booking on Booking.Table_num = Tables.Table_number;

select Customers.First_name , Booking.Cust_id
from Customers
full outer join Booking on Booking.Cust_id = Customers.Customer_id;

select Tables.Details, Tables.Table_number, Booking.Table_num
from Tables
right join Booking on Booking.Table_num = Tables.Table_number;