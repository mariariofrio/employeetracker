DROP DATABASE IF EXISTS employeer_DB;
CREATE database employeer_DB;

USE employeer_DB;

CREATE TABLE employees (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary decimal NOT NULL,
  department_id INT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

SELECT * FROM employees;
SELECT * FROM role;
SELECT * FROM department; 