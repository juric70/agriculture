CREATE DATABASE agriculture

USE agriculture;

CREATE TABLE country(
id int NOT NULL, 
name varchar(100) NOT NULL,
PRIMARY KEY (id)
);


CREATE TABLE city(
id int NOT NULL,
name varchar(100),
postal_code varchar(20),
country_id int NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (country_id) REFERENCES country(id)
);

CREATE TABLE role(
id int NOT NULL,
name varchar(100) NOT NULL,
description varchar(5000) NOT NULL,
PRIMARY KEY (id),
);

CREATE TABLE ground(
id int NOT NULL,
name varchar(100) NOT NULL,
description varchar(5000) NOT NULL,
PRIMARY KEY (id),
);

CREATE TABLE plant_type(
id int NOT NULL,
name varchar(100) NOT NULL,
description varchar(5000) NOT NULL,
PRIMARY KEY (id),
);

CREATE TABLE goods_type(
id int NOT NULL,
name varchar(100) NOT NULL,
PRIMARY KEY (id),
);

CREATE TABLE terrain(
id int NOT NULL,
name varchar(100) NOT NULL,
sun_persence varchar(100),
ground_slope int,
PRIMARY KEY (id),
);

CREATE TABLE chore(
id int NOT NULL,
name varchar(100) NOT NULL,
description varchar(5000) NOT NULL,
duration float,
PRIMARY KEY (id),
);

CREATE TABLE chore_status(
id int NOT NULL,
name varchar(100) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE order_status(
id int NOT NULL,
name varchar(100) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE person(
id int NOT NULL,
full_name varchar(256) NOT NULL,
phone_number varchar NOT NULL,
email varchar(256),
adress varchar(256) NOT NULL,
city_id int,
role_id int,
FOREIGN KEY (city_id) REFERENCES city(id),
FOREIGN KEY (role_id) REFERENCES role(id),
PRIMARY KEY (id)
);

CREATE TABLE chore_person(
id int NOT NULL,
description varchar(5000),
order_status_id int NOT NULL,
chore_id int NOT NULL,
person_id int NOT NULL,
FOREIGN KEY (order_status_id) REFERENCES order_status(id),
FOREIGN KEY (chore_id) REFERENCES chore(id),
FOREIGN KEY (person_id) REFERENCES person(id),
PRIMARY KEY (id)
);

CREATE TABLE plot(
id int NOT NULL,
name varchar(100) NOT NULL,
coordinates varchar(256),
longitudes varchar(256),
corners varchar(256),
ground_id int,
terrain_id int,
owner_id int,
FOREIGN KEY (ground_id) REFERENCES ground(id),
FOREIGN KEY (terrain_id) REFERENCES terrain(id),
FOREIGN KEY (owner_id) REFERENCES person(id),
PRIMARY KEY (id),
);

CREATE TABLE contract(
id int NOT NULL,
name varchar(100) NOT NULL,
provider_id int NOT NULL,
beneficiary_id int NOT NULL,
date_of_conclusion varchar(256) NOT NULL,
date_of_expiration varchar (256) NOT NULL,
FOREIGN KEY (provider_id) REFERENCES person(id),
FOREIGN KEY (beneficiary_id) REFERENCES person(id),
PRIMARY KEY (id)
);

CREATE TABLE contract_plot(
id int NOT NULL,
contract_id int,
plot_id int,
FOREIGN KEY (contract_id) REFERENCES contract(id),
FOREIGN KEY (plot_id) REFERENCES plot(id),
PRIMARY KEY (id)
);

CREATE TABLE plant(
id int NOT NULL,
name varchar(256) NOT NULL,
description varchar(5000),
subspecies_name varchar(256),
amount_of_goods float,
price float,
plant_type_id int,
goods_type_id int,
manufacturer_id int,
FOREIGN KEY (plant_type_id) REFERENCES plant_type(id),
FOREIGN KEY (goods_type_id) REFERENCES goods_type(id),
FOREIGN KEY (manufacturer_id) REFERENCES person(id),
PRIMARY KEY (id)
);

CREATE TABLE income_and_expenses(
id int NOT NULL, 
plot_id int, 
plant_id int,
amount_of_plants float,
price float, 
date_of_planting varchar(256),
end_date_of_planting varchar(256),
amount_of_goods float,
FOREIGN KEY (plot_id) REFERENCES plot(id),
FOREIGN KEY (plant_id) REFERENCES plant(id),
PRIMARY KEY (id)
);

CREATE TABLE "order"(
id int NOT NULL, 
amount_of_goods float,
customer_id int NOT NULL,
plant_id int NOT NULL,
order_status_id int NOT NULL,
FOREIGN KEY (customer_id) REFERENCES person(id),
FOREIGN KEY (plant_id) REFERENCES plant(id),
FOREIGN KEY (order_status_id) REFERENCES order_status(id),
PRIMARY KEY (id)
);

