-- seed the employee_tracker_db with the following data
INSERT INTO department (name)
VALUES ("Marketing"),
       ("Finance"),
       ("Software Development"),
       ("Information Technology"),
       ("Human Resources");

INSERT INTO role (title, salary, department_id)
VALUES ("Marketing Manager", 100000, 1), -- 1
       ("Marketing Assistant", 55000, 1), -- 2
       ("Financial Manager", 110000, 2), -- 3
       ("Financial Analyst", 75000, 2), -- 4
       ("Senior Software Engineer", 150000, 3), -- 5
       ("Software Engineer", 120000, 3), -- 6
       ("Junior Software Engineer", 80000, 3), -- 7
       ("IT Manager", 100000, 4), -- 8
       ("IT Support", 60000, 4), -- 9
       ("HR Manager", 100000, 5), -- 10
       ("HR Assistant", 55000, 5); -- 11

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Smith", 1, NULL),
       ("George", "Constanza", 2, 1),
       ("Jane", "Doe", 2, 1),
       ("Marty", "McFly", 3, NULL),
       ("Sally", "Moriarty", 4, 4),
       ("Mark", "Davis", 4, 4),
       ("Mike", "Ferrari", 5, NULL),
       ("Sarah", "Miller", 6, 7),
       ("Greg", "Schmidt", 7, 7),
       ("Mary", "Wilson", 8, NULL),
       ("Bob", "Moore", 9, 10),
       ("Edward", "Cortez", 9, 10),
       ("Jennifer", "Taylor", 10, NULL),
       ("Karen", "White", 11, 13),
       ("David", "Jackson", 11, 13);
