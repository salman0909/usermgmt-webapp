--INSERT INTO webappdb.user (userid, email_address, first_name, last_name, password, ssn, user_name) 
--VALUES ("101", "eoc-admin@gmail.com", "Salman", "EOC", "$2a$10$w.2Z0pQl9K5GOMVT.y2Jz.UW4Au7819nbzNh8nZIYhbnjCi6MG8Qu", "ssn01", "admin101");	
--INSERT INTO webappdb.role (roleid, role) VALUES ("201", "ADMIN");
--INSERT INTO webappdb.user_role (userid, roleid) VALUES ("101", "201");

INSERT INTO webappdb.user (userid, email_address, first_name, last_name, password, ssn, user_name) 
VALUES ("101", "eoc-admin@gmail.com", "Salman", "EOC", "$2a$10$w.2Z0pQl9K5GOMVT.y2Jz.UW4Au7819nbzNh8nZIYhbnjCi6MG8Qu", "ssn01", "admin101");	
INSERT INTO webappdb.role (roleid, role) VALUES ("201", "ADMIN");
INSERT INTO webappdb.user_role (userid, roleid) VALUES ("101", "201");
