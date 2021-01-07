DROP DATABASE IF EXISTS dsaBBDD; 
CREATE DATABASE dsaBBDD; 
USE dsaBBDD; 

CREATE TABLE User
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
username TEXT NOT NULL,
email TEXT NOT NULL, 
password TEXT NOT NULL, 
birthdate TEXT NOT NULL,
score INTEGER,
level INTEGER
)ENGINE = InnoDB;

INSERT INTO User(username, email, password, birthdate, score, level) VALUES ('Marta1','marta@gmail.com','9cb217e14b3f01505c764b0c440e5db7a4cf8458f13204cd0593055908fca9fc', '27/12/2000', 1500, 1); 
INSERT INTO User(username, email, password, birthdate, score, level)  VALUES ('Cacatua2','cacatua@gmail.com','dfe2dca2fab705b346041671e7317a90e456392ec74ad51eda726ed94f92a845', '27/02/1998', 1000, 1);
INSERT INTO User(username, email, password, birthdate, score, level)  VALUES ('Montse3','montse@gmail.com','73c9bd4f3552517488af0880fbff656c6109e90e95fbcc9846653ebcb2c857ab', '27/12/1997', 2000, 1); 
INSERT INTO User(username, email, password, birthdate, score, level)  VALUES ('Pere4','pere@gmail.com','e467c91d5d40934f1ee207814faa375b57e70ce5a2e6a06ddb391312618e925f', '27/12/1995', 3000, 1); 
INSERT INTO User(username, email, password, birthdate, score, level)  VALUES ('Alex5','alex@gmail.com','5a5b1147857716e6c81f37d115427a8d7e2951e606993e50d62d36dbd20e8d69', '27/02/1996', 5000, 1);  
INSERT INTO User(username, email, password, birthdate, score, level)  VALUES ('Meri6','meri@gmail.com','adfd551d488505017a3f5d921d634de13390c95735eb9e847679ca458c57d126', '27/08/1999', 8000, 1);  
INSERT INTO User(username, email, password, birthdate, score, level)  VALUES ('Sol7','sol@gmail.com','89e0a57deb5e7e483c35f15f28b019cfc998709819fc0bdaf79386a5e7be60c6', '27/10/1990', 200, 1); 
INSERT INTO User(username, email, password, birthdate, score, level)  VALUES ('Kei8','kei@gmail.com','774bc10a35da95c446b8a6f156f47d93cfddeb35282d89b115a6cc25518ac9b2', '23/06/1988', 15000, 1); 

CREATE TABLE Game
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
dateStart TEXT NOT NULL,
timeStart TEXT ,
dateEnd TEXT NOT NULL, 
timeEnd TEXT , 
score INTEGER 
)ENGINE = InnoDB;

INSERT INTO Game(dateStart, timeStart, dateEnd, timeEnd, score)  VALUES ('14-12-20','11:00','14-12-20','11:30',600); 
INSERT INTO Game(dateStart, timeStart, dateEnd, timeEnd, score)  VALUES ('15-12-20','4:00','15-12-20','4:45',300);
INSERT INTO Game(dateStart, timeStart, dateEnd, timeEnd, score)  VALUES ('14-12-20','21:00','14-12-20','22:00',500);
INSERT INTO Game(dateStart, timeStart, dateEnd, timeEnd, score)  VALUES ('14-12-20','22:00','14-12-20','23:30',700);
INSERT INTO Game(dateStart, timeStart, dateEnd, timeEnd, score)  VALUES ('14-12-20','6:00','14-12-20','9:00',100);
INSERT INTO Game(dateStart, timeStart, dateEnd, timeEnd, score)  VALUES ('14-12-20','9:00','14-12-20','19:00',200);
INSERT INTO Game(dateStart, timeStart, dateEnd, timeEnd, score)  VALUES ('15-12-20','15:00','15-12-20','19:00',500);
INSERT INTO Game(dateStart, timeStart, dateEnd, timeEnd, score)  VALUES ('14-12-20','12:00','14-12-20','13:00',600);

CREATE TABLE UserGame			
(id_player INTEGER,
 id_game INTEGER,
 FOREIGN KEY (id_player) REFERENCES User (id),
 FOREIGN KEY (id_game) REFERENCES Game(id)
) ENGINE = InnoDB;

INSERT INTO UserGame VALUES (1,1); 
INSERT INTO UserGame VALUES (2,2); 
INSERT INTO UserGame VALUES (2,3); 
INSERT INTO UserGame VALUES (4,4); 
INSERT INTO UserGame VALUES (5,5); 
INSERT INTO UserGame VALUES (6,6); 
INSERT INTO UserGame VALUES (7,7); 
INSERT INTO UserGame VALUES (8,8); 


CREATE TABLE Orders
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
date TEXT NOT NULL,
time TEXT NOT NULL,
price INTEGER
)ENGINE = InnoDB;

INSERT INTO Orders(date, time , price) VALUES ('17-10-20','2:23',20); 
INSERT INTO Orders(date, time , price) VALUES ('27-10-20','16:21',50); 
INSERT INTO Orders(date, time , price) VALUES ('07-11-20','14:23',60); 
INSERT INTO Orders(date, time , price) VALUES ('26-11-20','19:46',10);
INSERT INTO Orders(date, time , price) VALUES ('23-12-20','18:36',100); 
INSERT INTO Orders(date, time , price) VALUES ('28-12-20','06:43',600);

CREATE TABLE UserOrder	
(id_user INTEGER,
 id_order INTEGER,
 FOREIGN KEY (id_user) REFERENCES User (id),
 FOREIGN KEY (id_order) REFERENCES Orders (id)
) ENGINE = InnoDB;

INSERT INTO UserOrder VALUES (1,6); 
INSERT INTO UserOrder VALUES (2,5); 
INSERT INTO UserOrder VALUES (3,4); 
INSERT INTO UserOrder VALUES (4,3); 
INSERT INTO UserOrder VALUES (6,2); 
INSERT INTO UserOrder VALUES (6,1); 

CREATE TABLE Element
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
name TEXT NOT NULL,
description TEXT,
price INTEGER 
)ENGINE = InnoDB;

INSERT INTO Element(name, description, price)  VALUES ('Aloe vera' ,'Cura tus quemaduras',5); 
INSERT INTO Element(name, description, price)  VALUES ('Hacha' ,'Mata a tus enemigos de un golpe',150); 
INSERT INTO Element(name, description, price)  VALUES ('Desparalizante' ,'Librate de la paralisis',10); 
INSERT INTO Element(name, description, price)  VALUES ('Cuerda huida' ,'Vuelve al punto de inicio',10); 
INSERT INTO Element(name, description, price)  VALUES ('Casco invisible' ,'Hazte invisible 30s',100); 
INSERT INTO Element(name, description, price)  VALUES ('Pastilla magica' ,'Aumenta la capacidad de vida',75); 


CREATE TABLE OrderElement	
(id_order INTEGER,
 id_element INTEGER,
 FOREIGN KEY (id_order) REFERENCES Orders (id),
 FOREIGN KEY (id_element) REFERENCES Element (id)
) ENGINE = InnoDB;

INSERT INTO OrderElement VALUES (1,6); 
INSERT INTO OrderElement VALUES (2,5); 
INSERT INTO OrderElement VALUES (3,4); 
INSERT INTO OrderElement VALUES (4,3); 
INSERT INTO OrderElement VALUES (5,2); 
INSERT INTO OrderElement VALUES (6,1); 

CREATE TABLE Item
( id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
name TEXT NOT NULL, 
hit INTEGER,
defense INTEGER,
healing INTEGER,
damage INTEGER
)ENGINE = InnoDB;

INSERT INTO Item(name , hit, defense, healing, damage) VALUES ('Defense', 3, 4, 5, 6);
INSERT INTO Item(name , hit, defense, healing, damage) VALUES ('Weapone', 3, 0, 0, 4); 
INSERT INTO Item(name , hit, defense, healing, damage) VALUES ('Weapone', 1, 0, 0, 6); 
INSERT INTO Item(name , hit, defense, healing, damage) VALUES ('Defense', 5, 0, 5, 0);

CREATE TABLE Player
( id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
name TEXT NOT NULL, 
hit INTEGER,
defense INTEGER,
healing INTEGER,
damage INTEGER
)ENGINE = InnoDB;

INSERT INTO Player(name , hit, defense, healing, damage) VALUES ('NewPlayer', 3, 3, 3, 3);


CREATE TABLE Inventory 
(id_player INTEGER,
 id_item INTEGER,
 FOREIGN KEY (id_player) REFERENCES Player (id),
 FOREIGN KEY (id_item) REFERENCES Item (id),
 quantity INTEGER
) ENGINE = InnoDB;


CREATE TABLE Enemy
( id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
name TEXT NOT NULL, 
hit INTEGER,
defense INTEGER,
healing INTEGER,
damage INTEGER
)ENGINE = InnoDB;

INSERT INTO Enemy(name , hit, defense, healing, damage) VALUES ('Defense', 3, 4, 5, 6);
INSERT INTO Enemy(name , hit, defense, healing, damage) VALUES ('Weapone', 3, 0, 0, 4); 
INSERT INTO Enemy(name , hit, defense, healing, damage) VALUES ('Weapone', 1, 0, 0, 6); 
INSERT INTO Enemy(name , hit, defense, healing, damage) VALUES ('Defense', 5, 0, 5, 0);


CREATE TABLE Map
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
name TEXT NOT NULL,
description TEXT,
price INTEGER 
)ENGINE = InnoDB;

INSERT INTO Map(name, description, price)  VALUES ('PrimerMapa' ,'kasjhdkajshk',5); 
INSERT INTO Map(name, description, price)  VALUES ('SegundoMapa' ,'kasjhdkajshk',150); 
INSERT INTO Map(name, description, price)  VALUES ('TercerMapa' ,'kasjhdkajshk',10);
