-- Creacion de la base de datos
CREATE DATABASE ALKAWALLET; 

-- Indicamos que usaremos la base de datos creada
USE ALKAWALLET;

-- Creamos tabla moneda
CREATE TABLE Moneda (
currency_id int primary key auto_increment,
currency_name varchar(20) not null,
currency_symbol varchar(5) not null
);

-- Creamos tabla usuario
-- se agrega moneda_id para indicar que moneda eligio el usuario
CREATE TABLE Usuario (
user_id int primary key auto_increment,
nombre varchar(50) not null,
correo_electronico varchar(50) unique not null,
contraseña varchar(20) not null,
saldo float not null,
moneda_id int not null,
foreign key(moneda_id)
references Moneda(currency_id)
);

-- Creamos tabla transaccion
-- se agrega moneda_id para indicar con que moneda está hecha la transaccion
CREATE TABLE Transaccion (
transaction_id int primary key auto_increment,
sender_user_id int not null,
receiver_user_id int not null,
importe float not null,
transaction_date date not null,
moneda_id int not null,
foreign key (sender_user_id)
references Usuario (user_id),
foreign key (receiver_user_id)
references Usuario (user_id),
foreign key(moneda_id)
references Moneda(currency_id)
);

