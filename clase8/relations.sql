USE  human_resources;

-- MAKE "ID" AS PRIMARY KEY
ALTER TABLE employees ADD PRIMARY KEY (ID);
ALTER TABLE departments ADD PRIMARY KEY (ID);
ALTER TABLE jobs ADD PRIMARY KEY (ID);
ALTER TABLE roles ADD PRIMARY KEY (ID);
ALTER TABLE locations ADD PRIMARY KEY (ID);
ALTER TABLE countries ADD PRIMARY KEY (ID);
ALTER TABLE regions ADD PRIMARY KEY (ID);

-- Make "ID" NOT NULL & AUTO_INCREMENT
ALTER TABLE employees CHANGE 
    id 
    id INT NOT NULL AUTO_INCREMENT;
ALTER TABLE departments CHANGE
    id 
    id INT NOT NULL AUTO_INCREMENT;
ALTER TABLE jobs CHANGE
    id 
    id INT NOT NULL AUTO_INCREMENT;
ALTER TABLE roles CHANGE 
    id 
    id INT NOT NULL AUTO_INCREMENT;
ALTER TABLE locations CHANGE
    id 
    id INT NOT NULL AUTO_INCREMENT;
ALTER TABLE countries CHANGE
    id 
    id INT NOT NULL AUTO_INCREMENT;
ALTER TABLE regions CHANGE
    id 
    id INT NOT NULL AUTO_INCREMENT;



-- ADD FKs
ALTER TABLE employees ADD FOREIGN KEY (job_id) REFERENCES jobs(id);
ALTER TABLE employees ADD FOREIGN KEY (manager_id) REFERENCES employees(id);
ALTER TABLE employees ADD FOREIGN KEY (department_id) REFERENCES departments(id);
ALTER TABLE employees ADD FOREIGN KEY (role_id) REFERENCES roles(id);

ALTER TABLE departments ADD FOREIGN KEY (manager_id) REFERENCES employees(id);
ALTER TABLE departments ADD FOREIGN KEY (location_id) REFERENCES locations(id);

ALTER TABLE locations ADD FOREIGN KEY (country_id) REFERENCES countries(id);


DESCRIBE employees;
