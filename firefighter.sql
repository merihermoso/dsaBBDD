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


INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Marta1','marta@gmail.com','9cb217e14b3f01505c764b0c440e5db7a4cf8458f13204cd0593055908fca9fc', '27/12/2000', 'http://192.168.1.127:8080/Media/profile.png', 1500); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Cacatua2','cacatua@gmail.com','dfe2dca2fab705b346041671e7317a90e456392ec74ad51eda726ed94f92a845', '27/02/1998', 'http://192.168.1.127:8080/Media/profile.png', 1000);
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Montse3','montse@gmail.com','73c9bd4f3552517488af0880fbff656c6109e90e95fbcc9846653ebcb2c857ab', '27/12/1997', 'http://192.168.1.127:8080/Media/profile.png', 2000); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Pere4','pere@gmail.com','e467c91d5d40934f1ee207814faa375b57e70ce5a2e6a06ddb391312618e925f', '27/12/1995', 'http://192.168.1.127:8080/Media/profile.png', 3000); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Alex5','alex@gmail.com','5a5b1147857716e6c81f37d115427a8d7e2951e606993e50d62d36dbd20e8d69', '27/02/1996', 'http://192.168.1.127:8080/Media/profile.png', 5000);  
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Meri6','meri@gmail.com','adfd551d488505017a3f5d921d634de13390c95735eb9e847679ca458c57d126', '30/10/1995', 'http://192.168.1.127:8080/Media/profile.png', 66000);  
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Sol7','sol@gmail.com','89e0a57deb5e7e483c35f15f28b019cfc998709819fc0bdaf79386a5e7be60c6', '27/10/1990', 'http://192.168.1.127:8080/Media/profile.png', 200); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Kei8','kei@gmail.com','774bc10a35da95c446b8a6f156f47d93cfddeb35282d89b115a6cc25518ac9b2', '23/06/1988', 'http://192.168.1.127:8080/Media/profile.png', 15000); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Sumaya','sumaya@gmail.com','e45ca072a784e00aa8a6f8e2f65ffe1d14cc4bc5d7a432802f3bf661a50f242a', '28/02/1996', 'http://192.168.1.127:8080/Media/profile.png', 5000);  
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Suhail','suhail@gmail.com','9a25937c84961e24d8e6e034d9c513a8b5bcb40d9f67837d43d2b15742d85d9d', '27/08/1999', 'http://192.168.1.127:8080/Media/profile.png', 8600);  
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Eric','eric@gmail.com','40b3f50c15588c59dd6d6e15bc631a925b49e419b7bdaf400f864a51b144273f', '31/10/1990', 'http://192.168.1.127:8080/Media/profile.png', 200); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Lluis','lluis@gmail.com','7118388ccc2969dd5af116b859b8b3a2693f10a8e30d9ee5684c7dad96742f62', '23/06/1988', 'http://192.168.1.127:8080/Media/profile.png', 65000); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Gerard','gerard@gmail.com','23aee609e796769922355075f26b0def2dd86c640e0b7a5277677c31209a6e5d', '31/10/1997', 'http://192.168.1.127:8080/Media/profile.png', 65000); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Mariano','mariano@gmail.com','b113277a8325332399d967294d2410e25c120abafc582e7d0725a26d9b8b53b0', '23/06/1988', 'http://192.168.1.127:8080/Media/profile.png', 15000); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Mariana','mariana@gmail.com','f4ead2e16419cdd233a294d10a523e7c93199fe4130689b254b6489bbf53bb90', '28/02/1996', 'http://192.168.1.127:8080/Media/profile.png', 5000);  
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Andrea','andrea@gmail.com','d08da0ef71ff2568d428bdbd18078f940329f1e7a7fb0ecb19a672307a97b206', '27/08/1999', 'http://192.168.1.127:8080/Media/profile.png', 8600);  
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Aida','aida@gmail.com','59f11e76fa9dc10fc241e02881514ec1795ab1a643efb6a4138200d75c008a36', '31/10/1990', 'http://192.168.1.127:8080/Media/profile.png', 200); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Toni','toni@gmail.com','f38b6d0a7cec4da45c2972ccb1279a4bc2fe054b5b2517a636a619f843c47515', '23/06/1988', 'http://192.168.1.127:8080/Media/profile.png', 58000); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Juan','juan@gmail.com','e6611ebf689b9bc39fa1bc6834d3233f7d47b7d7cc5480a80461c51d23e4da54', '30/06/1988', 'http://192.168.1.127:8080/Media/profile.png', 58000); 
INSERT INTO User(username, email, password, birthdate, profile_photo, score) VALUES ('Miguel','miguel@gmail.com','6d590feac7d4fb868f46869724c5fd8eef6cfdc98914a7021a2a93defbad1f8c', '30/06/1988', 'http://192.168.1.127:8080/Media/profile.png', 500); 


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

INSERT INTO Map(name, description, content)  VALUES ('Maze I' , 'This is the first Firefighter Adventure map description', 

'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+           +     +        +     +     +              +      
+  ++++++++++  +  +  +  ++++  +  +  +  +  +  +++++++  ++++  +
+              +  +  +     +  +     +     +        +        +
+++++++  +++++++  +  ++++  +  +++++++++++++++++++  +++++++  +
+     +  +     +     +  +                    +  +     +     +
+  +  ++++  +  ++++  +  +++++++++++++++++++  +  ++++  +  ++++
+  +  +     +     +  +           +        +     +     +     +
+  +  +  +++++++  +++++++++++++  +  ++++  +  ++++  +++++++  +
+  +     +     +     +     +     +  +     +  +     +        +
+  ++++++++++  ++++  +  +  +  ++++  ++++  ++++  ++++  +++++++
+  +           +  +  +  +  +  +        +     +     +        +
+  +  +++++++  +  +  +  +  +  +  ++++  ++++  ++++  +  +++++++
+  +        +  +  +  +  +     +     +  +  +     +  +  +     +
+  ++++  +  +  +  +  +  ++++++++++  +  +  ++++  +  ++++  +  +
+     +  +  +  +  +     +           +  +     +  +        +  +
++++  ++++  +  +  +++++++++++++++++++  ++++  +  +  +++++++  +
+  +        +  +     +                 +     +  +  +        +
+  ++++++++++  +  +  +  ++++++++++++++++  ++++  ++++  ++++  +
                  +     +                             +     +
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'); 

INSERT INTO Map(name, description, content)  VALUES ('Maze II', 'This is the second Firefighter Adventure map description', 

'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+     +           +                    +                 +  +
+  +  +  +  ++++  +  +++++++++++++  ++++  +++++++  ++++  +  +
+  +  +  +     +  +     +        +        +     +     +     +
+  +  +  ++++  +++++++  ++++  +  +++++++++++++  ++++  ++++  +
+  +     +  +           +     +  +                 +     +  +
+  +++++++  +++++++++++++  ++++  ++++++++++  ++++  ++++  +  +
+  +                       +  +           +     +  +     +  +
+  +++++++++++++++++++  ++++  ++++++++++  ++++  ++++  +++++++
+        +           +  +              +        +     +     +
+++++++  +  +++++++  +  ++++  +++++++++++++  ++++  ++++  +  +
+     +  +  +     +  +     +     +           +     +     +  +
++++  +  +  ++++  +  ++++  ++++  +  ++++++++++  ++++  ++++  +
+     +     +     +     +     +  +        +     +        +  +
+  ++++++++++  +++++++  +  +  +  +++++++  +  ++++  +++++++  +
+        +              +  +  +           +        +         
+++++++  ++++  +++++++++++++  ++++++++++  +++++++  +  ++++  +
+     +     +                 +        +  +     +  +  +  +  +
+  +++++++  +++++++++++++++++++  ++++  ++++  +  ++++  +  +  +
                                 +           +        +     +
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'); 

INSERT INTO Map(name, description, content)  VALUES ('Maze III', 'This is the third Firefighter Adventure map description', 

'+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+  +        +     +  +              +     +                 +
+  +  +  +  +  +  +  +  +++++++  +  +  +  +  +++++++  ++++  +
+  +  +  +     +     +        +  +  +  +           +  +     +
+  +  +  +++++++++++++++++++  +  ++++  +++++++++++++  +  ++++
+     +  +              +     +        +              +      
+  ++++  +  +++++++  ++++  +++++++++++++  ++++++++++++++++  +
      +     +  +  +        +        +     +     +        +  +
++++  +++++++  +  ++++++++++  ++++  +  +++++++  +  ++++  +  +
+  +  +        +        +     +  +  +  +     +  +     +     +
+  +  +  ++++  +++++++  +  ++++  +  +  +  +  +  ++++  +++++++
+     +  +     +     +  +  +     +  +     +  +        +     +
+  +++++++  +  +  +  +  +  ++++  +  +++++++  +++++++  ++++  +
+  +        +  +  +  +  +     +  +     +     +     +        +
+  ++++  +  ++++  +  +  +  +  +  ++++  +  ++++  +  +++++++  +
+        +  +     +     +  +  +     +  +  +     +  +     +  +
++++++++++  +  +++++++++++++  +  ++++  +  +  ++++  +  ++++  +
+     +     +        +        +        +        +  +  +     +
+  +  +  ++++++++++  ++++  ++++  ++++++++++++++++  +  +  ++++
+  +              +        +                       +        +
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');



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

INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (1, 1, '14/12/2020', '11:00', '14/12/2020', '11:30', '11/01/2020', '11:30', 600, 50, 1000, 20, 30, 10, 35, 50, 50); 
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (1, 3, '15/12/2020', '4:00', '', '', '11/01/2020', '11:30', 300, 20, 1000, 20, 30, 10, 35, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (2, 1, '14/12/2020', '21:00', '14/12/2020', '22:00', '11/01/2020', '11:30', 500, 30, 1000, 0, 0, 0, 1, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (2, 2, '14/12/2020', '22:00', '', '', '11/01/2020', '11:30', 700, 25, 1000, 20, 30, 10, 35, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (3, 1, '14/12/2020', '6:00', '', '', '11/01/2020', '11:30', 100, 10, 1000, 20, 30, 10, 35, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (3, 2, '14/12/2020', '9:00', '14/12/2020', '19:00', '11/01/2020', '11:30', 200, 7, 1000, 0, 0, 0, 1, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (4, 3, '15/12/2020', '15:00', '15/12/2020', '19:00', '11/01/2020', '11:30', 500, 90, 1000, 0, 0, 0, 1, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (5, 1, '14/12/2020', '12:00', '', '', '11/01/2020', '11:30', 600, 75, 1000, 0, 0, 0, 1, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (4, 1, '14/12/2020', '11:00', '14/12/2020', '11:30', '11/01/2020', '11:30', 600, 50, 1000, 20, 30, 10, 35, 50, 50); 
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (4, 3, '15/12/2020', '4:00', '', '', '11/01/2020', '11:30', 300, 20, 1000, 40, 10, 5, 30, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (4, 1, '14/12/2020', '21:00', '14/12/2020', '22:00', '11/01/2020', '11:30', 500, 30, 1000, 27, 39, 5, 0, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (4, 2, '14/12/2020', '22:00', '', '', '11/01/2020', '11:30', 700, 25, 1000, 20, 30, 10, 35, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (4, 1, '14/12/2020', '6:00', '', '', '11/01/2020', '11:30', 100, 10, 1000, 0, 31, 3, 24, 50, 50);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, dateLast, timeLast, score, coins, health, attack, defense, healing, speed, x, y) VALUES (4, 2, '14/12/2020', '9:00', '14/12/2020', '19:00', '11/01/2020', '11:30', 200, 7, 1000, 20, 30, 10, 35, 50, 50);


CREATE TABLE Item
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
name TEXT NOT NULL,
price INTEGER,
description TEXT NOT NULL,
image TEXT NOT NULL
)ENGINE = InnoDB;


INSERT INTO Item(name, price, description, image)  VALUES ('Aloe vera', 1, 'Cura tus quemaduras','/Media/aloevera.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Venda', 2, 'Tapa tus quemaduras, si no las ves no estan','/Media/venda.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Agua', 3, 'Se puede beber','/Media/agua.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Escudo', 1, 'Te protege de los ataques','/Media/escudo.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Mascara', 2, 'No te quemaras la cara','/Media/mascara.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Pastilla magica', 3, 'Misteriosamente te hace sentir mejor','/Media/pastilla.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Extintor', 4, 'Apaga el mal','/Media/extintor.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Manguera', 1, 'Tira agua','/Media/mangera.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Hacha', 1, 'Abrete paso por las malas','/Media/hacha.png'); 



CREATE TABLE Orders
(id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
 id_user INTEGER,
 id_item INTEGER,
 orderDate TEXT NOT NULL,
 orderTime TEXT NOT NULL,
 quantity INTEGER,
 FOREIGN KEY (id_user) REFERENCES User (id) ON DELETE CASCADE,
 FOREIGN KEY (id_item) REFERENCES Item (id) ON DELETE CASCADE
) ENGINE = InnoDB;

INSERT INTO Orders(id_user, id_item, orderDate, orderTime, quantity) VALUES (4, 1, '27/12/2020', '16:35', 1); 
INSERT INTO Orders(id_user, id_item, orderDate, orderTime, quantity) VALUES (4, 2, '22/10/2020', '13:21', 1); 
INSERT INTO Orders(id_user, id_item, orderDate, orderTime, quantity) VALUES (4, 1, '1/8/2020', '14:57', 1); 
INSERT INTO Orders(id_user, id_item, orderDate, orderTime, quantity) VALUES (4, 2, '7/9/2019', '15:02', 1); 



CREATE TABLE Inventory 
(id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
 id_game INTEGER,
 id_item INTEGER,
 quantity INTEGER,
 FOREIGN KEY (id_game) REFERENCES Game (id) ON DELETE CASCADE,
 FOREIGN KEY (id_item) REFERENCES Item (id) ON DELETE CASCADE
) ENGINE = InnoDB;

INSERT INTO Inventory(id_game, id_item, quantity) VALUES (1, 1, 1); 
INSERT INTO Inventory(id_game, id_item, quantity) VALUES (1, 2, 1);
INSERT INTO Inventory(id_game, id_item, quantity) VALUES (2, 1, 1);
INSERT INTO Inventory(id_game, id_item, quantity) VALUES (2, 2, 1);


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

