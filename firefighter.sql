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
level INTEGER,
coins INTEGER,
speed INTEGER,
defense INTEGER,
healing INTEGER,
damage INTEGER
)ENGINE = InnoDB;

INSERT INTO User(username, email, password, birthdate, score, level, coins, speed, defense, healing, damage) VALUES ('Marta1','marta@gmail.com','9cb217e14b3f01505c764b0c440e5db7a4cf8458f13204cd0593055908fca9fc', '27/12/2000', 1500, 1, 0, 2, 10, 5, 2); 
INSERT INTO User(username, email, password, birthdate, score, level, coins, speed, defense, healing, damage)  VALUES ('Cacatua2','cacatua@gmail.com','dfe2dca2fab705b346041671e7317a90e456392ec74ad51eda726ed94f92a845', '27/02/1998', 1000, 1, 0, 2, 10, 5, 2);
INSERT INTO User(username, email, password, birthdate, score, level, coins, speed, defense, healing, damage)  VALUES ('Montse3','montse@gmail.com','73c9bd4f3552517488af0880fbff656c6109e90e95fbcc9846653ebcb2c857ab', '27/12/1997', 2000, 1, 0, 2, 10, 5, 2); 
INSERT INTO User(username, email, password, birthdate, score, level, coins, speed, defense, healing, damage)  VALUES ('Pere4','pere@gmail.com','e467c91d5d40934f1ee207814faa375b57e70ce5a2e6a06ddb391312618e925f', '27/12/1995', 3000, 1, 0, 2, 10, 5, 2); 
INSERT INTO User(username, email, password, birthdate, score, level, coins, speed, defense, healing, damage)  VALUES ('Alex5','alex@gmail.com','5a5b1147857716e6c81f37d115427a8d7e2951e606993e50d62d36dbd20e8d69', '27/02/1996', 5000, 1, 0, 2, 10, 5, 2);  
INSERT INTO User(username, email, password, birthdate, score, level, coins, speed, defense, healing, damage)  VALUES ('Meri6','meri@gmail.com','adfd551d488505017a3f5d921d634de13390c95735eb9e847679ca458c57d126', '27/08/1999', 8000, 1, 0, 2, 10, 5, 2);  
INSERT INTO User(username, email, password, birthdate, score, level, coins, speed, defense, healing, damage)  VALUES ('Sol7','sol@gmail.com','89e0a57deb5e7e483c35f15f28b019cfc998709819fc0bdaf79386a5e7be60c6', '27/10/1990', 200, 1, 0, 2, 10, 5, 2); 
INSERT INTO User(username, email, password, birthdate, score, level, coins, speed, defense, healing, damage)  VALUES ('Kei8','kei@gmail.com','774bc10a35da95c446b8a6f156f47d93cfddeb35282d89b115a6cc25518ac9b2', '23/06/1988', 15000, 1, 0, 2, 10, 5, 2); 


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

CREATE TABLE Item
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
name TEXT NOT NULL,
hit INTEGER,
defense INTEGER,
healing INTEGER,
damage INTEGER,
price INTEGER,
description TEXT,
image TEXT
)ENGINE = InnoDB;


INSERT INTO Item(name, hit, defense, healing, damage, price, description, image)  VALUES ('Aloe vera' , 1, 0, 0, 6,5, 'Cura tus quemaduras','\aloevera.png'); 
INSERT INTO Item(name, hit, defense, healing, damage, price, description, image)  VALUES ('Venda' , 1, 0, 0, 6,150,'Tapa tus quemaduras, si no las ves no estan','\venda.png'); 
INSERT INTO Item(name, hit, defense, healing, damage, price, description, image)  VALUES ('Agua' , 1, 0, 0, 6,10,'Se puede beber','\agua.3.png'); 
INSERT INTO Item(name, hit, defense, healing, damage, price, description, image)  VALUES ('Escudo' , 1, 0, 0, 6,10,'Te protege de los ataques','\escudo.png'); 
INSERT INTO Item(name, hit, defense, healing, damage, price, description, image)  VALUES ('Mascara' , 1, 0, 0, 6,100,'No te quemaras la cara','\mascara.png'); 
INSERT INTO Item(name, hit, defense, healing, damage, price, description, image)  VALUES ('Pastilla magica' , 1, 0, 0, 6,75,'Misteriosamente te hace sentir mejor','\pastilla.png'); 
INSERT INTO Item(name, hit, defense, healing, damage, price, description, image)  VALUES ('Extintor' , 1, 0, 0, 6,10,'Apaga el mal','\extintor.png'); 
INSERT INTO Item(name, hit, defense, healing, damage, price, description, image)  VALUES ('Mangera' , 1, 0, 0, 6,100,'Tira agua','\mangera.png'); 
INSERT INTO Item(name, hit, defense, healing, damage, price, description, image)  VALUES ('Hacha' , 1, 0, 0, 6,75,'Abrete paso por las malas','\hacha.png'); 

CREATE TABLE Inventory 
(id_user INTEGER,
 id_item INTEGER,
 quantity INTEGER,
 quantityShop INTEGER,
 FOREIGN KEY (id_user) REFERENCES User (id) ON DELETE CASCADE,
 FOREIGN KEY (id_item) REFERENCES Item (id) ON DELETE CASCADE
) ENGINE = InnoDB;

INSERT INTO Inventory VALUES (1,1,1,8); 
INSERT INTO Inventory VALUES (1,2,3,5);
INSERT INTO Inventory VALUES (2,1,1,3);
INSERT INTO Inventory VALUES (2,2,1,24);


CREATE TABLE UserGame			
(id_user INTEGER,
 id_game INTEGER,
 FOREIGN KEY (id_user) REFERENCES User (id) ON DELETE CASCADE,
 FOREIGN KEY (id_game) REFERENCES Game(id) ON DELETE CASCADE
) ENGINE = InnoDB;

INSERT INTO UserGame VALUES (1,1); 
INSERT INTO UserGame VALUES (2,2); 
INSERT INTO UserGame VALUES (2,3); 
INSERT INTO UserGame VALUES (4,4); 
INSERT INTO UserGame VALUES (5,5); 
INSERT INTO UserGame VALUES (6,6); 
INSERT INTO UserGame VALUES (7,7); 

CREATE TABLE Enemy
( id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
name TEXT NOT NULL, 
hit INTEGER,
defense INTEGER,
healing INTEGER,
damage INTEGER
)ENGINE = InnoDB;

INSERT INTO Enemy(name , hit, defense, healing, damage) VALUES ('Enemy1', 1, 2, 5, 1);
INSERT INTO Enemy(name , hit, defense, healing, damage) VALUES ('Enemy2', 2, 3, 5, 2); 
INSERT INTO Enemy(name , hit, defense, healing, damage) VALUES ('Enemy3', 3, 4, 5, 3); 
INSERT INTO Enemy(name , hit, defense, healing, damage) VALUES ('Enemy4', 4, 5, 5, 4);

CREATE TABLE Map
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
name TEXT NOT NULL,
description TEXT,
price INTEGER 
)ENGINE = InnoDB;

INSERT INTO Map(name, description, price)  VALUES ('PrimerMapa' ,'kasjhdkajshk',5); 
INSERT INTO Map(name, description, price)  VALUES ('SegundoMapa' ,'kasjhdkajshk',150); 
INSERT INTO Map(name, description, price)  VALUES ('TercerMapa' ,'kasjhdkajshk',10);
