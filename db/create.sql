--
-- create my tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  description TEXT,
  code VARCHAR(15),
  price NUMERIC(10, 2),
  type_of_case_id INTEGER,
  merk_id INTEGER
);

DROP TABLE IF EXISTS type_of_case;
CREATE TABLE type_of_case (
  c_id INTEGER PRIMARY KEY,
  type_of_case_name TEXT
); 

DROP TABLE IF EXISTS merk;
CREATE TABLE merk (
 m_id INTEGER PRIMARY KEY,
 merknaam TEXT
);

DROP TABLE IF EXISTS type_of_phone;
CREATE TABLE type_of_phone (
  p_id INTEGER PRIMARY KEY AUTOINCREMENT,
  type_of_phone_name TEXT
);

DROP TABLE IF EXISTS product_type;
CREATE TABLE product_type (
 pt_id INTEGER PRIMARY KEY AUTOINCREMENT,
 product_id INTEGER,
 p_id INTEGER
);

DROP TABLE IF EXISTS colour;
CREATE TABLE colour (
 c_id INTEGER PRIMARY KEY AUTOINCREMENT,
 colour_name TEXT
);

DROP TABLE IF EXISTS product_colour;
CREATE TABLE product_colour (
  pc_id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_id INTEGER,
  c_id INTEGER
);



--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (id, name, description, code, price, type_of_case_id, merk_id) values (0, 'Pink heart phone case', 'Roze telefoonhoesje met hartjes op de achterkant.', '816905633-0', 19.99, 0, 1);
insert into products (id, name, description, code, price, type_of_case_id, merk_id) values (1, 'green heart phone case', 'Groen telefoonhoesje met hartjes op de achterkant.', '077030122-3', 19.99, 1, 1);
insert into products (id, name, description, code, price, type_of_case_id, merk_id) values (2, 'green heart phone case', 'Groen telefoonhoesje met hartjes op de achterkant.', '077030122-3', 19.99, 1, 0);
insert into products (id, name, description, code, price, type_of_case_id, merk_id) values (3, 'green heart phone case', 'Groen telefoonhoesje met hartjes op de achterkant.', '077030122-3', 19.99, 0, 1);
insert into products (id, name, description, code, price, type_of_case_id, merk_id) values (4, 'Blue heart phone case', 'blauw telefoonhoesje met hartjes op de achterkant.', '445924201-X', 19.99, 1, 0);
insert into products (id, name, description, code, price, type_of_case_id, merk_id) values (5, 'Purple heart phone case', 'paars telefoonhoesje met hartjes op de achterkant.' , '693155505-7', 19.99, 1, 2);
insert into products (id, name, description, code, price, type_of_case_id, merk_id) values (6, 'nog naamloos', 'Beschrijving', '686928463-6', 14.99, 0, 2);
insert into products (id, name, description, code, price, type_of_case_id, merk_id) values (7, 'nog naamloos', 'Beschrijving', '492662523-7', 14.99, 1, 3);
insert into products (id, name, description, code, price, type_of_case_id, merk_id) values (8, 'nog naamloos', 'Beschrijving', '123453474-8', 20.99, 1, 3);
insert into products (id, name, description, code, price, type_of_case_id, merk_id) values (9, 'nog naamloos', 'Beschrijving', '123453474-8', 20.99, 1, 1);


insert into type_of_case (c_id, type_of_case_name) values (0, 'Flip cover');
insert into type_of_case (c_id, type_of_case_name) values (1, 'Sillicon cover');

insert into merk (m_id, merknaam) values (0, 'Katty Chanel');
insert into merk (m_id, merknaam) values (1, 'Dana Dior');
insert into merk (m_id, merknaam) values (2, 'Merkloos');

insert into type_of_phone (type_of_phone_name) values ('Samsung Galaxy A52s');
insert into type_of_phone (type_of_phone_name) values ('Samsung Galaxy S20');
insert into type_of_phone (type_of_phone_name) values ('Apple iPhone SE');
insert into type_of_phone (type_of_phone_name) values ('Apple iPhone 11');
insert into type_of_phone (type_of_phone_name) values ('Apple iPhone 12');
insert into type_of_phone (type_of_phone_name) values ('Apple iPhone 13');
insert into type_of_phone (type_of_phone_name) values ('Xiaomi Poco X3 Pro ');
insert into type_of_phone (type_of_phone_name) values ('Huawei P30');

insert into product_type (p_id, p_id) values (1, 1);
insert into product_type (p_id, p_id) values (1, 2);
insert into product_type (p_id, p_id) values (1, 3);
insert into product_type (p_id, p_id) values (1, 4);
insert into product_type (p_id, p_id) values (1, 5);
insert into product_type (p_id, p_id) values (1, 6);
insert into product_type (p_id, p_id) values (1, 7);
insert into product_type (p_id, p_id) values (1, 8);
insert into product_type (p_id, p_id) values (2, 1);
insert into product_type (p_id, p_id) values (2, 2);
insert into product_type (p_id, p_id) values (2, 3);
insert into product_type (p_id, p_id) values (2, 4);
insert into product_type (p_id, p_id) values (2, 5);
insert into product_type (p_id, p_id) values (2, 6);
insert into product_type (p_id, p_id) values (2, 7);
insert into product_type (p_id, p_id) values (2, 8);

insert into colour (colour_name) values ('Pink');
insert into colour (colour_name) values ('Green');
insert into colour (colour_name) values ('Blue');
insert into colour (colour_name) values ('Purple');
insert into colour (colour_name) values ('Yellow');

insert into product_colour (product_id, c_id) values (1, 1);
insert into product_colour (product_id, c_id) values (1, 2);
insert into product_colour (product_id, c_id) values (1, 3);
insert into product_colour (product_id, c_id) values (1, 4);
insert into product_colour (product_id, c_id) values (1, 5);
insert into product_colour (product_id, c_id) values (2, 1);
insert into product_colour (product_id, c_id) values (2, 2);
insert into product_colour (product_id, c_id) values (2, 3);
insert into product_colour (product_id, c_id) values (2, 4);
insert into product_colour (product_id, c_id) values (2, 5);



