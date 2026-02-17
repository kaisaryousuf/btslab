CREATE DATABASE IF NOT EXISTS bts;
USE bts;

CREATE TABLE users (
    ID int NOT NULL AUTO_INCREMENT,
    username varchar(30),
    email varchar(60),
    password varchar(40),
    about varchar(50),
    privilege varchar(20),
    avatar TEXT,
    PRIMARY KEY (id)
);

INSERT INTO users (username, password, email, about, avatar, privilege)
VALUES ('admin', SHA1('password'), 'admin@localhost', 'I am the admin of this page', 'default.jpg', 'admin');

CREATE TABLE posts (
    postid int NOT NULL AUTO_INCREMENT,
    content TEXT,
    title varchar(100),
    user varchar(30),
    PRIMARY KEY (postid)
);

INSERT INTO posts (content, title, user)
VALUES ('Feel free to ask any questions about BTS Lab', 'First Post', 'admin');

CREATE TABLE tdata (
    id int,
    page varchar(30)
);

INSERT INTO tdata VALUES (1, 'ext1.html');
INSERT INTO tdata VALUES (2, 'ext2.html');

CREATE TABLE Messages (
    msgid int NOT NULL AUTO_INCREMENT,
    name varchar(30),
    email varchar(60),
    msg varchar(500),
    PRIMARY KEY (msgid)
);

INSERT INTO Messages (name, email, msg)
VALUES ('TestUser', 'Test@localhost', 'Hi admin, how are you');
