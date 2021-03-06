DROP DATABASE IF EXISTS employeeCRM_DB;
CREATE database empolyeeCRM_DB;

USE employeeCRM_DB;

CREATE TABLE department (
  id INT(10) NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT(10) NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10,4) NOT NULL,
  department_id INT(10),
  PRIMARY KEY (id)
);

CREATE TABLE employee (
  id INT(10) NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT(10) NOT NULL,
  manager_id INT(10) NULL,
  PRIMARY KEY (id)
);