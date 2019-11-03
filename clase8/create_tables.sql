CREATE DATABASE human_resources;

use  human_resources;
	
CREATE TABLE employees(
    id INT,
    first_name VARCHAR(20),
    last_name varchar(254),
    email varchar(25),
    phone_number varchar(20),
    hire_date date,
    job_id int,
    salary int,
    manager_id int,
    department_id int,
    role_id  int,
    created_at date,
    updated_at date
);

CREATE TABLE departments(
    id INT,
    name VARCHAR(30),
    manager_id Int,
    location_id int,
    created_at date,
    updated_at  date
);

CREATE TABLE jobs(
    id Int,
    title varchar(35),
    min_salary Int,
    max_salary Int,
    created_at Date,
    updated_at Date
);

CREATE TABLE roles(
    id INT,
    title VARCHAR(20),
    created_at date,
    updated_at date
);

CREATE TABLE locations(
    id INT,
    street_address VARCHAR(25),
    postal_code VARCHAR(12),
    city VARCHAR(30),
    state_province VARCHAR(15),
    country_id INT,
    created_at DATE,
    updated_at DATE
);

CREATE TABLE countries(
    id INT,
    name VARCHAR(40),
    region_id  int,
    created_at date,
    updated_at date
);

CREATE TABLE regions(
    id INT,
    name VARCHAR(40),
    created_at  date,
    updated_at date
);

INSERT INTO regions(id,name,created_at,updated_at)
VALUES (1,"Sudamerica", "2019-09-24", "2019-09-24"),
(2,"Europa", "2019-09-24", "2019-09-24"),
(3,"Norteamerica", "2019-09-24", "2019-09-24"),
(4,"Asia", "2019-09-24", "2019-09-24");

INSERT INTO countries(id,name,region_id,created_at,updated_at)
VALUES (1,"Chile", 1,"2019-09-24", "2019-09-24"),
(2,"Francia", 2,"2019-09-24", "2019-09-24"),
(3,"USA", 3,"2019-09-24", "2019-09-24"),
(4,"China", 4,"2019-09-24", "2019-09-24");
	
INSERT INTO locations(id,street_address,postal_code,city,state_province,country_id,created_at,updated_at)
VALUES (1,"La mica",001,"Santiago", "Santiago", 1,"2019-09-24", "2019-09-24"),
(2,"Paris",002,"Paris", "´Paris", 2,"2019-09-24", "2019-09-24"),
(3,"California",003,"California", "California", 3,"2019-09-24", "2019-09-24"),
(4,"Dragon",004,"dragon", "dragon", 4,"2019-09-24", "2019-09-24");

INSERT INTO jobs(id,title,min_salary,max_salary,created_at,updated_at)
VALUES (1,"Piloto",500000,1000000,"2019-09-24", "2019-09-24"),
(2,"Guarda",400000,9000000,"2019-09-24", "2019-09-24"),
(3,"Secretaria",450000,950000,"2019-09-24", "2019-09-24"),
(4,"Miscelaneo",350000,850000,"2019-09-24", "2019-09-24");

INSERT INTO roles(id,title,created_at,updated_at)
VALUES (1,"Seguridad", "2019-09-24", "2019-09-24"),
(2,"Transporte", "2019-09-24", "2019-09-24"),
(3,"Limpieza", "2019-09-24", "2019-09-24"),
(4,"Atencion Publico", "2019-09-24", "2019-09-24");

INSERT INTO departments(id,name,manager_id,location_id,created_at,updated_at)
VALUES (1,"R.H", 1, 4,"2019-09-24", "2019-09-24"),
(2,"R.H 1", 2, 3,"2019-09-24", "2019-09-24"),
(3,"R H 2", 3, 2,"2019-09-24", "2019-09-24"),
(4,"R H 3", 4, 1,"2019-09-24", "2019-09-24");

INSERT INTO employees(id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id,role_id,created_at,updated_at)
VALUES (1,"Bryan", "Calderon", "b.calderon@hotmail.com", "87218943", "2010-09-24", 1,1000000, 4, 4, 2,"2019-09-24", "2019-09-24"),
(2,"Charles", "Manson", "c.manson@hotmail.com", "12345687", "2015-09-24", 2,9000000, 3, 3, 1,"2019-09-24", "2019-09-24"),
(3,"Walter", "White", "w.white@hotmail.com", "9876543", "2012-09-24", 4,850000, 2, 2, 3,"2019-09-24", "2019-09-24"),
(4,"Snoop", "Dog", "snoopdog@hotmail.com", "56789951", "2016-09-24", 3,950000, 1, 1, 4,"2019-09-24", "2019-09-24");


