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

INSERT INTO User(username, email, password, birthdate, score, level) VALUES ('Marta1','marta@gmail.com','Martacontra', '27/12/1998', 0, 1); 
INSERT INTO User(username, email, password, birthdate, score, level)  VALUES ('Cacatua2','cacatua@gmail.com','Cacatuacontra', '27/12/1998', 0, 1);
INSERT INTO User(username, email, password, birthdate, score, level)  VALUES ('Montse3','montse@gmail.com','Montsecontra', '27/12/1998', 0, 1); 
INSERT INTO User(username, email, password, birthdate, score, level)  VALUES ('Pere4','pere@gmail.com','Perecontra', '27/12/1998', 0, 1); 
INSERT INTO User(username, email, password, birthdate, score, level)  VALUES ('Alex5','alex@gmail.com','Mericontra', '27/12/1998', 0, 1);  
INSERT INTO User(username, email, password, birthdate, score, level)  VALUES ('Meri6','meri@gmail.com','Mericontra', '27/12/1998', 0, 1);  
INSERT INTO User(username, email, password, birthdate, score, level)  VALUES ('Sol7','sol@gmail.com','Solcontra', '27/12/1998', 0, 1); 
INSERT INTO User(username, email, password, birthdate, score, level)  VALUES ('Kei8','kei@gmail.com','Keicontra', '27/12/1998', 0, 1); 


CREATE TABLE Partida
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
fechaInicio TEXT NOT NULL,
horaInicio TEXT ,
fechaFin TEXT NOT NULL, 
horaFin TEXT , 
score_partida INTEGER 
)ENGINE = InnoDB;

INSERT INTO Partida(fechaInicio, horaInicio, fechaFin, horaFin, score_partida)  VALUES ('14-12-20','11:00','14-12-20','11:30',600); 
INSERT INTO Partida(fechaInicio, horaInicio, fechaFin, horaFin, score_partida)  VALUES ('15-12-20','4:00','15-12-20','4:45',300);
INSERT INTO Partida(fechaInicio, horaInicio, fechaFin, horaFin, score_partida)  VALUES ('14-12-20','21:00','14-12-20','22:00',500);
INSERT INTO Partida(fechaInicio, horaInicio, fechaFin, horaFin, score_partida)  VALUES ('14-12-20','22:00','14-12-20','23:30',700);
INSERT INTO Partida(fechaInicio, horaInicio, fechaFin, horaFin, score_partida)  VALUES ('14-12-20','6:00','14-12-20','9:00',100);
INSERT INTO Partida(fechaInicio, horaInicio, fechaFin, horaFin, score_partida)  VALUES ('14-12-20','9:00','14-12-20','19:00',200);
INSERT INTO Partida(fechaInicio, horaInicio, fechaFin, horaFin, score_partida)  VALUES ('15-12-20','15:00','15-12-20','19:00',500);
INSERT INTO Partida(fechaInicio, horaInicio, fechaFin, horaFin, score_partida)  VALUES ('14-12-20','12:00','14-12-20','13:00',600);

CREATE TABLE UsersPartidas			
(id_player INTEGER,
 id_game INTEGER,
 FOREIGN KEY (id_player) REFERENCES User (id),
 FOREIGN KEY (id_game) REFERENCES Partida (id)
) ENGINE = InnoDB;

INSERT INTO UsersPartidas VALUES (1,1); 
INSERT INTO UsersPartidas VALUES (2,2); 
INSERT INTO UsersPartidas VALUES (2,3); 
INSERT INTO UsersPartidas VALUES (4,4); 
INSERT INTO UsersPartidas VALUES (5,5); 
INSERT INTO UsersPartidas VALUES (6,6); 
INSERT INTO UsersPartidas VALUES (7,7); 
INSERT INTO UsersPartidas VALUES (8,8); 


CREATE TABLE Orders
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
data TEXT NOT NULL,
time TEXT NOT NULL,
price INTEGER
)ENGINE = InnoDB;

INSERT INTO Orders(data, time , price) VALUES ('17-10-20','2:23',20); 
INSERT INTO Orders(data, time , price) VALUES ('27-10-20','16:21',50); 
INSERT INTO Orders(data, time , price) VALUES ('07-11-20','14:23',60); 
INSERT INTO Orders(data, time , price) VALUES ('26-11-20','19:46',10);
INSERT INTO Orders(data, time , price) VALUES ('23-12-20','18:36',100); 
INSERT INTO Orders(data, time , price) VALUES ('28-12-20','06:43',600);


CREATE TABLE Items
( id  INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
name TEXT NOT NULL,
description TEXT,
price INTEGER 
)ENGINE = InnoDB;

INSERT INTO Items(name, description, price)  VALUES ('Aloe vera' ,'Cura tus quemaduras',5); 
INSERT INTO Items(name, description, price)  VALUES ('Hacha' ,'Mata a tus enemigos de un golpe',150); 
INSERT INTO Items(name, description, price)  VALUES ('Desparalizante' ,'Librate de la paralisis',10); 
INSERT INTO Items(name, description, price)  VALUES ('Cuerda huida' ,'Vuelve al punto de inicio',10); 
INSERT INTO Items(name, description, price)  VALUES ('Casco invisible' ,'Hazte invisible 30s',100); 
INSERT INTO Items(name, description, price)  VALUES ('Pastilla magica' ,'Aumenta la capacidad de vida',75); 


CREATE TABLE OrdersItems	
(id_order INTEGER,
 id_item INTEGER,
 FOREIGN KEY (id_order) REFERENCES Orders (id),
 FOREIGN KEY (id_item) REFERENCES Items (id)
) ENGINE = InnoDB;

INSERT INTO OrdersItems VALUES (1,6); 
INSERT INTO OrdersItems VALUES (2,5); 
INSERT INTO OrdersItems VALUES (3,4); 
INSERT INTO OrdersItems VALUES (4,3); 
INSERT INTO OrdersItems VALUES (5,2); 
INSERT INTO OrdersItems VALUES (6,1); 
