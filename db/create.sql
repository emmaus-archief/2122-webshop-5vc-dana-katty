--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  product_id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
  --type_of_phone_id TEXT,
  --colour_id INTEGER,
  --type_of_phonecase_id INTEGER
);

/*DROP TABLE IF EXISTS type_of_phonecase;
CREATE TABLE type_of_phonecase (
  type_of_phonecase_id INTEGER PRIMARY KEY,
  type_of_phonecase_name TEXT
)*/

DROP TABLE IF EXISTS type_of_phone;
CREATE TABLE type_of_phone (
  type_of_phone_id INTEGER PRIMARY KEY AUTOINCREMENT,
  type_of_phone_name TEXT
);

DROP TABLE IF EXISTS products.type_of_phone;
CREATE TABLE products.type_of_phone (
 products.type_of_phone_id INTEGER PRIMARY KEY AUTOINCREMENT,
 products_id INTEGER,
 type_of_phone_id INTEGER
);

/*DROP TABLE IF EXISTS type_of_phone.type_of_phonecase;
CREATE TABLE type_of_phone.type_of_phonecase (
  type_of_phone.type_of_phonecase_id INTEGER PRIMARY KEY,
  type_of_phone_id INTEGER,
  type_of_phonecase_id INTEGER
)*/

DROP TABLE IF EXISTS colour;
CREATE TABLE colour (
 colour_id INTEGER PRIMARY KEY AUTOINCREMENT,
 colour_name TEXT
);

DROP TABLE IF EXISTS product.colour;
CREATE TABLE product.colour (
  product.colour_id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_id INTEGER,
  colour_id INTEGER
)



--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Pink heart phone case', 'Roze telefoonhoesje met hartjes op de achterkant.', '816905633-0', 19.99);
insert into products (name, description, code, price) values ('green heart phone case', 'Groen telefoonhoesje met hartjes op de achterkant.', '077030122-3', 19.99);
insert into products (name, description, code, price) values ('Blue heart phone case', 'blauw telefoonhoesje met hartjes op de achterkant.', '445924201-X', 19.99);
insert into products (name, description, code, price) values ('Purple heart phone case', 'paars telefoonhoesje met hartjes op de achterkant.' , '693155505-7', 19.99);
insert into products (name, description, code, price) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 14);

insert into type_of_phone (type_of_phone_name) values ('Samsung Galaxy A52s');
insert into type_of_phone (type_of_phone_name) values ('Samsung Galaxy S20');
insert into type_of_phone (type_of_phone_name) values ('Apple iPhone SE');
insert into type_of_phone (type_of_phone_name) values ('Apple iPhone 11');
insert into type_of_phone (type_of_phone_name) values ('Apple iPhone 12');
insert into type_of_phone (type_of_phone_name) values ('Apple iPhone 13')
insert into type_of_phone (type_of_phone_name) values ('Xiaomi Poco X3 Pro ');
insert into type_of_phone (type_of_phone_name) values ('Huawei P30');

insert into products.type_of_phone (products_id, type_of_phone_id) values (1, 1);
insert into products.type_of_phone (products_id, type_of_phone_id) values (1, 2);
insert into products.type_of_phone (products_id, type_of_phone_id) values (1, 3);
insert into products.type_of_phone (products_id, type_of_phone_id) values (1, 4);
insert into products.type_of_phone (products_id, type_of_phone_id) values (1, 5);
insert into products.type_of_phone (products_id, type_of_phone_id) values (1, 6);
insert into products.type_of_phone (products_id, type_of_phone_id) values (1, 7);
insert into products.type_of_phone (products_id, type_of_phone_id) values (1, 8);
insert into products.type_of_phone (products_id, type_of_phone_id) values (2, 1);
insert into products.type_of_phone (products_id, type_of_phone_id) values (2, 2);
insert into products.type_of_phone (products_id, type_of_phone_id) values (2, 3);
insert into products.type_of_phone (products_id, type_of_phone_id) values (2, 4);
insert into products.type_of_phone (products_id, type_of_phone_id) values (2, 5);
insert into products.type_of_phone (products_id, type_of_phone_id) values (2, 6);
insert into products.type_of_phone (products_id, type_of_phone_id) values (2, 7);
insert into products.type_of_phone (products_id, type_of_phone_id) values (2, 8);

insert into colour (colour_name) values ('Pink');
insert into colour (colour_name) values ('Green');
insert into colour (colour_name) values ('Blue');
insert into colour (colour_name) values ('Purple');
insert into colour (colour_name) values ('Yellow');

insert into product.colour (product_id, colour_id) values (1, 1);
insert into product.colour (product_id, colour_ id) values (1, 2);
insert into product.colour (product_id, colour_ id) values (1, 3);
insert into product.colour (product_id, colour_ id) values (1, 4);
insert into product.colour (product_id, colour_ id) values (1, 5);
insert into product.colour (product_id, colour_ id) values (2, 1);
insert into product.colour (product_id, colour_ id) values (2, 2);
insert into product.colour (product_id, colour_ id) values (2, 3);
insert into product.colour (product_id, colour_ id) values (2, 4);
insert into product.colour (product_id, colour_ id) values (2, 5);



