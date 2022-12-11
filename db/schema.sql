-- create database named employee_tracker_db
DROP DATABASE IF EXISTS employee_tracker_db;
CREATE DATABASE employee_tracker_db;

-- user the employee_tracker_db
USE employee_tracker_db;

-- create a database schema with the following tables:
-- department - id, name
-- role - id, title, salary, department_id
-- employee - id, first_name, last_name, role_id, manager_id

-- department table
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

-- role table
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2) NOT NULL, -- max salary is 99,999,999.99
    department_id INT NOT NULL,
    FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE CASCADE -- if a department is deleted then all roles in that department are deleted
);

-- employee table
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT, -- can be NULL if the employee has no manager
    FOREIGN KEY (role_id) 
    REFERENCES role(id)
    ON DELETE CASCADE, -- if a role is deleted then all employees in that role are deleted
    FOREIGN KEY (manager_id)
    REFERENCES employee(id)
    ON DELETE SET NULL -- if an employee that is a manager is deleted then all employees with that manager are updated to have no manager (NULL)
);