CREATE DATABASE Pharmacy;

USE Pharmacy;

CREATE TABLE Doctor(
Doctor_Id int primary key,
Doctor_Name varchar(50) not null,
Doctor_Prescription varchar(100) not null,
Doctor_PhoneNumber varchar(20) not null,
Patient_History varchar(100) not null,
Patient_Information varchar(200) not null

);

CREATE TABLE Customer(
Customer_Id int primary key,
Customer_Name varchar(50) not null,
Customer_Address varchar(100) not null,
Customer_Prescription varchar(100) not null,
Customer_Phone varchar(50) not null,
Customer_Gender varchar(50) not null,
Customer_Health_History varchar(50) not null,
Doctor_Id int,
FOREIGN KEY (Doctor_Id) REFERENCES Doctor(Doctor_Id),


);

CREATE TABLE Cart(
cart_id int primary key,
foreign key (cart_id) references Customer(Customer_Id),
cart_qty int,
cart_subtotal float,
cart_items int,
cart_medicine_qty int,
employee_id int,
FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)

);

CREATE TABLE Employee(
employee_id int primary key,
employee_name varchar(60) not null
);