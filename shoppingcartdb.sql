/*
** A database to store customers,orders and products records
*/



CREATE TABLE customers (
	id integer PRIMARY KEY,
	firstname varchar(30) not null,
	lastname varchar(30) not null,
	email varchar(30) not null,
	password varchar(10) not null,
	phoneno varchar(11) not null
);


CREATE TABLE orders (
	id integer PRIMARY KEY,
	customer_id integer(5) not null,
	product_id integer(5) not null,
	status varchar (10) not null,
	quantity integer(5) not null,
	order_date varchar(30) not null,
  FOREIGN KEY(`customer_id`) REFERENCES customers(id),
  FOREIGN KEY(`product_id`) REFERENCES products(id)
);


CREATE TABLE products (
	id integer PRIMARY KEY,
	name varchar(30) not null,
	description varchar(200) not null,
	price varchar(10) not null,
	verify_status varchar(10) not null
);


insert into customers values(178,'Nelson','Rotimi','nelsonabieno@gmail.com','stream','08035685854');
insert into customers values(584,'James','Onatere','jamesonatere@gmail.com','reefy','08063812345');
insert into customers values(903,'Victoria','Saliu','vicky2016@gmail.com','star321','08093817302');

insert into orders values(1,'584','10','Pending',2,'24-10-2016');
insert into orders values(2,'903','20','Completed',1,'24-10-2016');
insert into orders values(3,'178','30','Ordering',1,'24-10-2016');

insert into products values(10,'Milano Shirt','An Italian Styles shirt','15000','verified');
insert into products values(20,'Swiss Polo Cap','A Swiss Special Design Cap for guys','4000','verified');
insert into products values(30,'Dolce and Gabana Shoe','A Classic Italian Design','17000','unverified');

Update customers set firstname = 'Caroline', lastname ='Badmus' where id = 903;
Update orders set status = 'Completed' where customer_id = 178;
Update products set name = 'Arkansas Belt ',description="American belt for boys",price='4500' where id = 20;

select * from customers;
select * from orders order by id asc;
select id,name,description,price from products;

delete from customers where id = 584;
delete from orders where id = 1;
delete from products where id = 20;


