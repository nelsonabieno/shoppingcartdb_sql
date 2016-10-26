# shoppingcartdb_sql

# shoppingcartdb_sql


Welcome to SQL

## Name of Application 
 *A Shopping Cart Database Application
 
## Why Database?
We need the database to store 
	1. featured products by merchant, 
	2. customer's records and 
	3. the products they place order for
  
where can the be used? It can be used with online shoping cart applicatio n, electronic store
## What is ? 
	SQL is Structured Query Language used to communicate with the database in order to perform some operations on them e.g. create, read, update and delete

## where can the application be used? 
It can be used with online shoping cart application, electronic store

## Overview
The SQL is generally used to model a database for a shopping cart application.

## Definition of Tables 
The shopping cart database application was modelled into 3 tables namely:
	1. customers,
	2. orders and 
	3. products
Creating Tables: The following SQL was used to create customers table with the field name, data type and size specified.
The folowing SQL creates customers table 
CREATE TABLE customers (
	id integer PRIMARY KEY,
	firstname varchar(30) not null,
	lastname varchar(30) not null,
	email varchar(30) not null,
	password varchar(10) not null,
	phoneno varchar(11) not null
);

**Note:** Primary Key is a unique which differentitates a record from another

## Creating Tables with  Relationship(Foreign Key)

A foreign key is used to establish relationship betweeen tables.
The below SQL creates table orders with relationship to customers and products table using customer_id and product_id as foreign keys
    **CREATE TABLE orders (
      id integer PRIMARY KEY,
      customer_id integer(5) not null,
      product_id integer(5) not null,
      status varchar (10) not null,
      quantity integer(5) not null,
      order_date varchar(30) not null,
      FOREIGN KEY(`customer_id`) REFERENCES customers(id),
      FOREIGN KEY(`product_id`) REFERENCES products(id)
    );**


## Inserting into Tables

The following SQL inserts some values into customers table Inserting values into tables
  *insert into customers values(178,'Nelson','Rotimi','nelsonabieno@gmail.com','2s@tr#am','08035685854');*

## Read Tables and Select Records 

The following SQL select all fields from customers table:

  *select * from customers;*

The following SQL select all fields from orders table ordered in ascending order
  *select * from orders order by id asc;*
The SQL below selects  records from products table based on specified fields
  *select id,name,description,price from products;*

## Delete Records from table

The following SQL delete specific records from a specified table based on the id
 
 *delete from customers where id = 584;
  delete from orders where id = 1;
  delete from products where id = 20;*



