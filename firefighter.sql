DROP DATABASE IF EXISTS dsaBBDD; 
CREATE DATABASE dsaBBDD; 
USE dsaBBDD; 

CREATE TABLE User
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
username TEXT NOT NULL,
email TEXT NOT NULL, 
password TEXT NOT NULL, 
birthdate TEXT NOT NULL,
score INTEGER
)ENGINE = InnoDB;

INSERT INTO User(username, email, password, birthdate, score) VALUES ('Marta1','marta@gmail.com','9cb217e14b3f01505c764b0c440e5db7a4cf8458f13204cd0593055908fca9fc', '27/12/2000', 1500); 
INSERT INTO User(username, email, password, birthdate, score)  VALUES ('Cacatua2','cacatua@gmail.com','dfe2dca2fab705b346041671e7317a90e456392ec74ad51eda726ed94f92a845', '27/02/1998', 1000);
INSERT INTO User(username, email, password, birthdate, score)  VALUES ('Montse3','montse@gmail.com','73c9bd4f3552517488af0880fbff656c6109e90e95fbcc9846653ebcb2c857ab', '27/12/1997', 2000); 
INSERT INTO User(username, email, password, birthdate, score)  VALUES ('Pere4','pere@gmail.com','e467c91d5d40934f1ee207814faa375b57e70ce5a2e6a06ddb391312618e925f', '27/12/1995', 3000); 
INSERT INTO User(username, email, password, birthdate, score)  VALUES ('Alex5','alex@gmail.com','5a5b1147857716e6c81f37d115427a8d7e2951e606993e50d62d36dbd20e8d69', '27/02/1996', 5000);  
INSERT INTO User(username, email, password, birthdate, score)  VALUES ('Meri6','meri@gmail.com','adfd551d488505017a3f5d921d634de13390c95735eb9e847679ca458c57d126', '27/08/1999', 8000);  
INSERT INTO User(username, email, password, birthdate, score)  VALUES ('Sol7','sol@gmail.com','89e0a57deb5e7e483c35f15f28b019cfc998709819fc0bdaf79386a5e7be60c6', '27/10/1990', 200); 
INSERT INTO User(username, email, password, birthdate, score)  VALUES ('Kei8','kei@gmail.com','774bc10a35da95c446b8a6f156f47d93cfddeb35282d89b115a6cc25518ac9b2', '23/06/1988', 15000); 



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
score INTEGER,
coins INTEGER,
health INTEGER,
damage INTEGER,
defense INTEGER,
healing INTEGER,
speed INTEGER,
FOREIGN KEY (id_user) REFERENCES User (id) ON DELETE CASCADE,
FOREIGN KEY (id_map) REFERENCES Map (id) ON DELETE CASCADE
)ENGINE = InnoDB;

INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, score, coins, health, damage, defense, healing, speed) VALUES (1, 1, '14/12/20','11:00','14/12/20','11:30', 600, 50, 1000, 0, 0, 0, 0); 
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, score, coins, health, damage, defense, healing, speed) VALUES (1, 3, '15/12/20','4:00','15/12/20','4:45', 300, 20, 1000, 0, 0, 0, 0);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, score, coins, health, damage, defense, healing, speed) VALUES (2, 1, '14/12/20','21:00','14/12/20','22:00', 500, 30, 1000, 0, 0, 0, 0);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, score, coins, health, damage, defense, healing, speed) VALUES (2, 2, '14/12/20','22:00','14/12/20','23:30', 700, 25, 1000, 0, 0, 0, 0);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, score, coins, health, damage, defense, healing, speed) VALUES (3, 1, '14/12/20','6:00','14/12/20','9:00', 100, 10, 1000, 0, 0, 0, 0);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, score, coins, health, damage, defense, healing, speed) VALUES (3, 2, '14/12/20','9:00','14/12/20','19:00', 200, 7, 1000, 0, 0, 0, 0);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, score, coins, health, damage, defense, healing, speed) VALUES (4, 3, '15/12/20','15:00','15/12/20','19:00', 500, 90, 1000, 0, 0, 0, 0);
INSERT INTO Game(id_user, id_map, dateStart, timeStart, dateEnd, timeEnd, score, coins, health, damage, defense, healing, speed) VALUES (5, 1, '14/12/20','12:00','14/12/20','13:00', 600, 75, 1000, 0, 0, 0, 0);



CREATE TABLE Item
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
name TEXT NOT NULL,
price INTEGER,
description TEXT NOT NULL,
image TEXT NOT NULL
)ENGINE = InnoDB;


INSERT INTO Item(name, price, description, image)  VALUES ('Aloe vera', 1, 'Cura tus quemaduras','\aloevera.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Venda', 2, 'Tapa tus quemaduras, si no las ves no estan','\venda.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Agua', 3, 'Se puede beber','\agua.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Escudo', 1, 'Te protege de los ataques','\escudo.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Mascara', 2, 'No te quemaras la cara','\mascara.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Pastilla magica', 3, 'Misteriosamente te hace sentir mejor','\pastilla.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Extintor', 4, 'Apaga el mal','\extintor.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Manguera', 1, 'Tira agua','\mangera.png'); 
INSERT INTO Item(name, price, description, image)  VALUES ('Hacha', 1, 'Abrete paso por las malas','\hacha.png'); 



CREATE TABLE Inventory 
(id_game INTEGER,
 id_item INTEGER,
 quantity INTEGER,
 FOREIGN KEY (id_game) REFERENCES Game (id) ON DELETE CASCADE,
 FOREIGN KEY (id_item) REFERENCES Item (id) ON DELETE CASCADE
) ENGINE = InnoDB;

INSERT INTO Inventory VALUES (1, 1, 8); 
INSERT INTO Inventory VALUES (1, 2, 5);
INSERT INTO Inventory VALUES (2, 1, 3);
INSERT INTO Inventory VALUES (2, 2, 24);


CREATE TABLE Enemy
( id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
name TEXT NOT NULL, 
max_health INTEGER,
reward INTEGER,
damage INTEGER
)ENGINE = InnoDB;

INSERT INTO Enemy(name, max_health, reward, damage) VALUES ('Enemy1', 1000, 1, 50);
INSERT INTO Enemy(name, max_health, reward, damage) VALUES ('Enemy2', 2000, 2, 100); 
INSERT INTO Enemy(name, max_health, reward, damage) VALUES ('Enemy3', 3000, 4, 150); 
INSERT INTO Enemy(name, max_health, reward, damage) VALUES ('Enemy4', 4000, 6, 200);
