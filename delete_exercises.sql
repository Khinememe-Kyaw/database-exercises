USE codeup_test_db;
--     Albums released after 1991
    SELECT * FROM albums where release_date >1991;
    DELETE FROM albums where release_date >1991;
-- Albums with the genre 'disco'
    SELECT * FROM albums where genre = 'disco';
    DELETE FROM albums where genre = 'disco';
-- Albums by 'Whitney Houston' (...or maybe an artist of your choice)
    SELECT * FROM albums where artist = 'Whitney Houston';
    DELETE FROM albums where artist = 'Whitney Houston';
    SELECT * FROM albums;


create database join_test_db;
show databases ;
Use join_test_db;
CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null);
INSERT INTO users (name, email, role_id) VALUES
                                             ('khine', 'khine@example.com', 2),
                                             ('mimi', 'mimi@example.com', 2),
                                             ('kyaw', 'kyaw@example.com', null),
                                             ('zack', 'zack@example.com', 3);
show tables;
describe roles;
describe users;
SELECT users.name as user_name, roles.name as role_name
FROM users
         JOIN roles ON users.role_id = roles.id;
drop table users;
drop table roles;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM roles
         LEFT JOIN users ON users.role_id = roles.id
GROUP BY roles.name, users.name;

SELECT roles.name AS role_name, COUNT(users.id) AS user_count
FROM roles
         LEFT JOIN users ON roles.id = users.role_id
GROUP BY roles.name;






