// character and numeric

TABLE person(id BIGSERIAL NOT NULL PRIMARY KEY, first_name CHARACTER VARYING(10),last_name VARCHAR(100) NOT NULL,
 salary decimal(10,3),address TEXT);
CREATE TABLE
INSERT INTO person(id,first_name,last_name,salary,address) VALUES (1,'jill','pugal',40000,'nova');
INSERT 0 1
INSERT INTO person(id,first_name,last_name,salary,address) VALUES (2,'raj','kumar',30000,'lova');
INSERT 0 1
SELECT *FROM person;
 
//boolean datatypes

CREATE TABLE bool_price(product_id INT PRIMARY KEY,
available BOOLEAN NOT NULL,price money);
CREATE TABLE                   ^
INSERT INTO bool_price(product_id,available,price) VALUES (100,TRUE,'$9.99');
INSERT 0 1
                                                                      ^
INSERT INTO bool_price(product_id,available,price) VALUES (200,FALSE,(9.99));
INSERT 0 1                                                   ^
INSERT INTO bool_price(product_id,available,price) VALUES (300,'t',(9.98996998));
INSERT 0 1
INSERT INTO bool_price(product_id,available,price) VALUES (400,'f',(9.998998889));
INSERT 0 1
SELECT *FROM bool_price;
SELECT *FROM bool_price WHERE available='yes';

//array datatype

CREATE TABLE monthly_saving(name TEXT,saving_per_quarter  integer[],scheme text[][]);
CREATE TABLE
INSERT INTO monthly_saving VALUES ('Thaara','{20000,14600,23500,13250}','{{"PF","EF"},{"PF","Property"}}');
INSERT 0 1
SELECT name FROM monthly_saving WHERE saving_per_quarter[2] > saving_per_quarter[4];

//datetime datatype

CREATE TABLE datetime(ts  TIMESTAMP,tstz TIMESTAMPTZ);
CREATE TABLE
SET timezone = 'America/Los_Angeles';
SET
SHOW TIMEZONE;
SELECT LOCALTIME;
INSERT INTO datetime (ts, tstz)
VALUES('2016-06-22 19:10:25-07','2016-06-22 19:10:25-07');
INSERT 0 1
SELECT ts, tstz FROM datetime;
SELECT CURRENT_TIMESTAMP;

SELECT TIMEOFDAY();

//bitstring

CREATE TABLE bit_string (a BIT(3), b BIT VARYING(5));
CREATE TABLE
INSERT INTO bit_string VALUES (B'101', B'00');
INSERT 0 1
INSERT INTO bit_string VALUES (B'10'::bit(3), B'101');
INSERT 0 1
SELECT *FROM bit_string;

//json datatypes

CREATE TABLE js(id serial primary key, extra json);
CREATE TABLE
INSERT INTO js(extra) values ('[1, 2, 3, 4]'),('[2, 3, 5, 8]'),('{"key": "value"}');
INSERT 0 3
ALTER TABLE js alter column extra type jsonb;
ALTER TABLE
select * from js where extra @> '2';
select * from js where extra @> '[2,4]';

//uuid datatypes

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION
SELECT uuid_generate_v1();
CREATE TABLE contact(contact_id uuid DEFAULT uuid_generate_v4 (),name VARCHAR NOT NULL,
phone VARCHAR,PRIMARY KEY (contact_id));
CREATE TABLE
INSERT INTO contact(contact_id,name,phone) VALUES ('choc',67586999);
INSERT INTO contact(name,phone) VALUES ('choc',67586999);
INSERT 0 1
INSERT INTO contact(name,phone) VALUES ('choci',67586349);
INSERT 0 1
 SELECT *FROM contact;




