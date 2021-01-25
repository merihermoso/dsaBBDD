DROP DATABASE IF EXISTS dsaBBDD; 
CREATE DATABASE dsaBBDD; 
USE dsaBBDD; 

CREATE TABLE User
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
username TEXT NOT NULL,
email TEXT NOT NULL, 
password TEXT NOT NULL, 
birthdate TEXT NOT NULL,
profile_photo TEXT NOT NULL,
score INTEGER
)ENGINE = InnoDB;

INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Marta1','marta@gmail.com','9cb217e14b3f01505c764b0c440e5db7a4cf8458f13204cd0593055908fca9fc', '27/12/2000', '/Media/profile.png', 1500); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Cacatua2','cacatua@gmail.com','dfe2dca2fab705b346041671e7317a90e456392ec74ad51eda726ed94f92a845', '27/02/1998', '/Media/profile.png', 1000);
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Montse3','montse@gmail.com','73c9bd4f3552517488af0880fbff656c6109e90e95fbcc9846653ebcb2c857ab', '27/12/1997', '/Media/profile.png', 2000); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Pere4','pere@gmail.com','e467c91d5d40934f1ee207814faa375b57e70ce5a2e6a06ddb391312618e925f', '27/12/1995', '/Media/profile.png', 3000); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Alex5','alex@gmail.com','5a5b1147857716e6c81f37d115427a8d7e2951e606993e50d62d36dbd20e8d69', '27/02/1996', '/Media/profile.png', 5000);  
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Meri6','meri@gmail.com','adfd551d488505017a3f5d921d634de13390c95735eb9e847679ca458c57d126', '27/08/1999', '/Media/profile.png', 8000);  
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Sol7','sol@gmail.com','89e0a57deb5e7e483c35f15f28b019cfc998709819fc0bdaf79386a5e7be60c6', '27/10/1990', '/Media/profile.png', 200); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Kei8','kei@gmail.com','774bc10a35da95c446b8a6f156f47d93cfddeb35282d89b115a6cc25518ac9b2', '23/06/1988', '/Media/profile.png', 15000); 


CREATE TABLE UserSettings
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	username_min_length INTEGER,
	username_max_length INTEGER,
	password_min_length INTEGER,
	password_max_length INTEGER,
	email_min_length INTEGER,
	email_max_length INTEGER,
	min_age INTEGER
)ENGINE = InnoDB;

INSERT INTO UserSettings(username_min_length, username_max_length, password_min_length, password_max_length, email_min_length, email_max_length, min_age) VALUES (4, 20, 4, 20, 4, 30, 15); 



CREATE TABLE GameSettings
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	min_health INTEGER,
	max_health INTEGER,
	max_attack INTEGER,
	max_defense INTEGER,
	max_healing INTEGER,
	max_speed INTEGER
)ENGINE = InnoDB;

INSERT INTO GameSettings(min_health, max_health, max_attack, max_defense, max_healing, max_speed) VALUES (1000, 5000, 40, 40, 40, 40); 



CREATE TABLE Map
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
name TEXT NOT NULL,
description TEXT NOT NULL,
content TEXT NOT NULL
)ENGINE = InnoDB;

INSERT INTO Map(name, description, content)  VALUES ('First Firefighter Adventure map' , 'This is the first Firefighter Adventure map description', '######'); 
INSERT INTO Map(name, description, content)  VALUES ('Second Firefighter Adventure map', 'This is the second Firefighter Adventure map description', '######'); 
INSERT INTO Map(name, description, content)  VALUES ('Third Firefighter Adventure map', 'This is the third Firefighter Adventure map description', '######');



CREATE TABLE Game
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
id_user INTEGER,
id_map INTEGER,
dateStart TEXT NOT NULL,
timeStart TEXT NOT NULL,
dateEnd TEXT, 
timeEnd TEXT,
dateLast TEXT NOT NULL,
timeLast TEXT NOT NULL,
score INTEGER,
coins INTEGER,
health INTEGER,
attack INTEGER,
defense INTEGER,
healing INTEGER,
speed INTEGER,
x INTEGER,
y INTEGER,
FOREIGN KEY (id_user) REFERENCES User (id) ON DELETE CASCADE,
FOREIGN KEY (id_map) REFERENCES Map (id) ON DELETE CASCADE
)ENGINE = InnoDB;

INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (1, 1, '14/12/2021', '11:00', '14/12/2021', '11:30', '11/01/2021', '11:30', 600, 50, 1000, 20, 30, 10, 35, 50, 50); 
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (1, 3, '15/12/2021', '4:00', '', '', '11/01/2021', '11:30', 300, 20, 1000, 20, 30, 10, 35, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (2, 1, '14/12/2021', '21:00', '14/12/2021', '22:00', '11/01/2021', '11:30', 500, 30, 1000, 0, 0, 0, 1, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (2, 2, '14/12/2021', '22:00', '', '', '11/01/2021', '11:30', 700, 25, 1000, 20, 30, 10, 35, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (3, 1, '14/12/2021', '6:00', '', '', '11/01/2021', '11:30', 100, 10, 1000, 20, 30, 10, 35, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (3, 2, '14/12/2021', '9:00', '14/12/2021', '19:00', '11/01/2021', '11:30', 200, 7, 1000, 0, 0, 0, 1, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (4, 3, '15/12/2021', '15:00', '15/12/2021', '19:00', '11/01/2021', '11:30', 500, 90, 1000, 0, 0, 0, 1, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (5, 1, '14/12/2021', '12:00', '', '', '11/01/2021', '11:30', 600, 75, 1000, 0, 0, 0, 1, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (4, 1, '14/12/2021', '11:00', '14/12/2021', '11:30', '11/01/2021', '11:30', 600, 50, 1000, 20, 30, 10, 35, 50, 50); 
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (4, 3, '15/12/2021', '4:00', '', '', '11/01/2021', '11:30', 300, 20, 1000, 40, 10, 5, 30, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (4, 1, '14/12/2021', '21:00', '14/12/2021', '22:00', '11/01/2021', '11:30', 500, 30, 1000, 27, 39, 5, 0, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (4, 2, '14/12/2021', '22:00', '', '', '11/01/2021', '11:30', 700, 25, 1000, 20, 30, 10, 35, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (4, 1, '14/12/2021', '6:00', '', '', '11/01/2021', '11:30', 100, 10, 1000, 0, 31, 3, 24, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (4, 2, '14/12/2021', '9:00', '14/12/2021', '19:00', '11/01/2021', '11:30', 200, 7, 1000, 20, 30, 10, 35, 50, 50);


CREATE TABLE Item
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
name TEXT NOT NULL,
price INTEGER,
description TEXT NOT NULL,
image TEXT NOT NULL
)ENGINE = InnoDB;


INSERT INTO Item(name, price, description, image)  VALUES ('Aloe vera', 1, 'Cura tus quemaduras','/Media/1.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Venda', 2, 'Tapa tus quemaduras, si no las ves no estan','/Media/venda.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Agua', 3, 'Se puede beber','/Media/agua.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Escudo', 1, 'Te protege de los ataques','/Media/escudo.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Mascara', 2, 'No te quemaras la cara','/Media/5.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Pastilla magica', 3, 'Misteriosamente te hace sentir mejor','/Media/6.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Extintor', 4, 'Apaga el mal','/Media/extintor.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Manguera', 1, 'Tira agua','/Media/mangera.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Hacha', 1, 'Abrete paso por las malas','/Media/2.png'); 



CREATE TABLE Orders
(id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
 id_user INTEGER,
 id_item INTEGER,
 quantity INTEGER,
 orderDate TEXT NOT NULL,
 orderTime TEXT NOT NULL,
 FOREIGN KEY (id_user) REFERENCES User (id) ON DELETE CASCADE,
 FOREIGN KEY (id_item) REFERENCES Item (id) ON DELETE CASCADE
) ENGINE = InnoDB;

INSERT INTO Orders(id_user, id_item, quantity, orderDate, orderTime) VALUES (1, 1, 8, '27/12/2020', '16:35'); 
INSERT INTO Orders(id_user, id_item, quantity, orderDate, orderTime)  VALUES (1, 2, 5, '22/10/2020', '13:21'); 
INSERT INTO Orders(id_user, id_item, quantity, orderDate, orderTime)  VALUES (2, 1, 3, '1/8/2020', '14:57'); 
INSERT INTO Orders(id_user, id_item, quantity, orderDate, orderTime)  VALUES (2, 2, 24, '7/9/2019', '15:02'); 



CREATE TABLE Inventory 
(id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
 id_game INTEGER,
 id_item INTEGER,
 quantity INTEGER,
 FOREIGN KEY (id_game) REFERENCES Game (id) ON DELETE CASCADE,
 FOREIGN KEY (id_item) REFERENCES Item (id) ON DELETE CASCADE
) ENGINE = InnoDB;

INSERT INTO Inventory(id_game, id_item, quantity) VALUES (1, 1, 8); 
INSERT INTO Inventory(id_game, id_item, quantity) VALUES (1, 2, 5);
INSERT INTO Inventory(id_game, id_item, quantity) VALUES (2, 1, 3);
INSERT INTO Inventory(id_game, id_item, quantity) VALUES (2, 2, 24);


CREATE TABLE Entity
( id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
name TEXT NOT NULL, 
max_health INTEGER,
reward INTEGER,
attack INTEGER
)ENGINE = InnoDB;

INSERT INTO Entity(name, max_health, reward, attack) VALUES ('Enemy1', 1000, 1, 50);
INSERT INTO Entity(name, max_health, reward, attack) VALUES ('Enemy2', 2000, 2, 100); 
INSERT INTO Entity(name, max_health, reward, attack) VALUES ('Enemy3', 3000, 4, 150); 
INSERT INTO Entity(name, max_health, reward, attack) VALUES ('Enemy4', 4000, 6, 200);


CREATE TABLE GameEntity
(id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
 id_game INTEGER,
 id_entity INTEGER,
 x INTEGER,
 y INTEGER,
 FOREIGN KEY (id_game) REFERENCES Game (id) ON DELETE CASCADE,
 FOREIGN KEY (id_entity) REFERENCES Entity (id) ON DELETE CASCADE
) ENGINE = InnoDB;

INSERT INTO GameEntity(id_game, id_entity, x, y) VALUES (1, 1, 0, 0); 
INSERT INTO GameEntity(id_game, id_entity, x, y) VALUES (1, 2, 50, 100);
INSERT INTO GameEntity(id_game, id_entity, x, y) VALUES (2, 1, 70, 35);
INSERT INTO GameEntity(id_game, id_entity, x, y) VALUES (2, 2, 100, 0);

