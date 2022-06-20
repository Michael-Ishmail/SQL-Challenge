USE employeeDB;

INSERT INTO department (name)
VALUES ("Owner");
INSERT INTO department (name)
VALUES ("Finance");
INSERT INTO department (name)
VALUES ("Engineering");
INSERT INTO department (name)
VALUES ("Marketing");

INSERT INTO role (title, salary, department_id)
VALUES ("Company Owner", 999999, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Senior Financial Analyst", 200000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Junior Financial Analyst", 100000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Senior Software Engineer", 200000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Junior Software Engineer", 100000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Creative Director", 180000, 4);
INSERT INTO role (title, salary, department_id)
VALUES ("Marketing Analyst", 100000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Michael", "Ishmail", 1, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Daniel", "Smith", 2, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jane", "Jones", 3, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Hannah", "Jackson", 4, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("George", "Ameer", 5, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Stephanie", "LeClerk", 6, 4);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Dylan", "Sleewa", 7, null);