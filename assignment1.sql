drop database if exists assignment1;
create database assignment1;
use assignment1;

create table Community(
id int not null auto_increment, 
com_name varchar(50) not null, 
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Price(
id int not null auto_increment, 
value int not null, 
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Color(
id int not null auto_increment, 
col_name varchar(50) not null, 
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Label(
id int not null auto_increment, 
label_name varchar(50) not null, 
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Rating_Alternatives(
id int not null auto_increment, 
options varchar(50) not null, 
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Category(
id int not null auto_increment, 
cat_name varchar(50) not null, 
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Customer(
id int not null auto_increment, 
First_Name varchar(50) not null, 
Last_Name varchar(50) not null, 
Adress varchar(50) not null, 
Community_id int not null,
primary key(id),
foreign key (Community_id) references Community(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Size(
id int not null auto_increment, 
Size_id int not null,
Size_name varchar(50) not null,
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Name(
id int not null auto_increment, 
Name_id int not null,
Shoe_name varchar(50) not null,
primary key(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Shoe(
id int not null auto_increment, 
Label_id int not null, 
Color_id int,  
Price_id int not null,
Name_id int not null,
Size_id int not null,
primary key(id),
foreign key (Label_id) references Label(id),
foreign key (Color_id) references Color(id),
foreign key (Price_id) references Price(id),
foreign key (Name_id) references Name(id),
foreign key (Size_id) references Size(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Divide_into_Category(
id int not null auto_increment, 
Shoe_id int not null,
Category_id int,
primary key(id),
foreign key (Shoe_id) references Shoe(id),
foreign key (Category_id) references Category(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Orders(
id int not null auto_increment, 
date Date not null,
Customer_id int not null,
primary key(id),
foreign key (Customer_id) references Customer(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Order_includes(
id int not null auto_increment, 
Orders_id int not null,
Shoe_id int not null,
primary key(id),
foreign key (Orders_id) references Orders(id),
foreign key (Shoe_id) references Shoe(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);

create table Rating(
id int not null auto_increment, 
Comment varchar(150),
RatingAlternatives_id int not null,
Shoe_id int not null,
Customer_id int not null, 
primary key(id),
foreign key (RatingAlternatives_id) references Rating_Alternatives(id),
foreign key (Shoe_id) references Shoe(id),
foreign key (Customer_id) references Customer(id),
created timestamp default current_timestamp, 
lastupdate timestamp default current_timestamp on update current_timestamp);


