CREATE DATABASE COZASTORE;
USE COZASTORE;

CREATE TABLE carousel(

id int auto_increment,
image varchar(255),
title varchar(255),
content text,
id_category int,
primary key (id)
);

CREATE TABLE category(

id int auto_increment,
name varchar(255),
primary key (id)
);

CREATE TABLE product(

id int auto_increment,
name varchar(255),
images varchar(255),
price int,
id_category int,
description text,
id_size int,
id_color int,
quantity int,
primary key(id)
);

CREATE TABLE color(

id int auto_increment,
name varchar(255),
primary key (id)
);

CREATE TABLE siZe	(

id int auto_increment,
name varchar(255),
primary key (id)
);

CREATE TABLE Userr(
id int auto_increment,
username varchar(255),
pass_word varchar(255),
enail varchar(255),
primary key(id)

);

CREATE TABLE cart(

id int auto_increment,
id_product int,
quantity int,
id_user int,
primary key (id)
);

CREATE TABLE oder(

id int auto_increment,
id_user int,
id_status int,
create_date date,
primary key(id)
);

CREATE TABLE product_oder(
id_product int ,
id_oder int ,
quantity int,
price int,
primary key(id_product,id_oder)

);

CREATE TABLE status(
id int auto_increment,
name varchar(255),
primary key(id)

);

CREATE TABLE blog(

id int auto_increment,
title text,
image varchar(255),
content text,
create_date date,
id_user int,
primary key (id)
);

CREATE TABLE comment(

id int auto_increment,
content text,
email varchar(255),
name varchar(255),
id_blog int,
primary key (id)
);

CREATE TABLE tag(

id int auto_increment,
name varchar(255),
create_date date,

primary key(id)
);

CREATE TABLE blog_tag(
id_blog int,
id_tag int,
create_date date,

primary key(id_blog,id_tag)
);


ALTER TABLE carousel ADD CONSTRAINT FK_id_category_carousel_category FOREIGN KEY(id_category)REFERENCES category(id);
ALTER TABLE product ADD CONSTRAINT FK_id_category_product_category FOREIGN KEY(id_category)REFERENCES category(id);
ALTER TABLE product ADD CONSTRAINT FK_id_size_product_siZe FOREIGN KEY(id_size)REFERENCES siZe(id);
ALTER TABLE product ADD CONSTRAINT FK_id_color_product_color FOREIGN KEY(id_color)REFERENCES color(id);
ALTER TABLE cart ADD CONSTRAINT FK_id_user_cart_Userr FOREIGN KEY(id_user)REFERENCES Userr(id);
ALTER TABLE cart ADD CONSTRAINT FK_id_product_cart_product FOREIGN KEY(id_product)REFERENCES product(id);
ALTER TABLE oder ADD CONSTRAINT FK_id_user_oder_Userr FOREIGN KEY(id_user)REFERENCES Userr(id);
ALTER TABLE oder ADD CONSTRAINT FK_id_status_oder_status FOREIGN KEY(id_status)REFERENCES status(id);
ALTER TABLE product_oder ADD CONSTRAINT FK_id_product_product_oder_product FOREIGN KEY(id_product)REFERENCES product(id);
ALTER TABLE product_oder ADD CONSTRAINT FK_id_oder_product_oder_oder FOREIGN KEY(id_oder)REFERENCES oder(id);
ALTER TABLE blog ADD CONSTRAINT FK_id_user_blog_Userr FOREIGN KEY(id_user)REFERENCES Userr(id);
ALTER TABLE comment ADD CONSTRAINT FK_id_blog_comment_blog FOREIGN KEY(id_blog)REFERENCES blog(id);
ALTER TABLE blog_tag ADD CONSTRAINT FK_id_blog_blog_tag_blog FOREIGN KEY(id_blog)REFERENCES blog(id);
ALTER TABLE blog_tag ADD CONSTRAINT FK_id_tag_blog_tag_tag FOREIGN KEY(id_tag)REFERENCES tag(id);
