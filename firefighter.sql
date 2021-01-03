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
fechaInicio DATE NOT NULL,
horaInicio TIME ,
fechaFin DATE NOT NULL, 
horaFin TIME , 
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

CREATE TABLE UserPartida			
(id_player INTEGER,
 id_game INTEGER,
 FOREIGN KEY (id_player) REFERENCES User (id),
 FOREIGN KEY (id_game) REFERENCES Partida (id)
) ENGINE = InnoDB;

INSERT INTO UserPartida VALUES (1,1); 
INSERT INTO UserPartida VALUES (2,2); 
INSERT INTO UserPartida VALUES (3,3); 
INSERT INTO UserPartida VALUES (4,4); 
INSERT INTO UserPartida VALUES (5,5); 
INSERT INTO UserPartida VALUES (6,6); 
INSERT INTO UserPartida VALUES (7,7); 
INSERT INTO UserPartida VALUES (8,8); 

CREATE TABLE Orders
(id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
fecha DATE NOT NULL,
hora TIME
)ENGINE = InnoDB;

INSERT INTO Orders(fecha, hora) VALUES ('6-2-20','11:00'); 
INSERT INTO Orders(fecha, hora) VALUES ('5-6-20','4:00');
INSERT INTO Orders(fecha, hora) VALUES ('9-7-20','21:00');
INSERT INTO Orders(fecha, hora) VALUES ('7-10-20','22:00');
INSERT INTO Orders(fecha, hora) VALUES ('4-3-20','6:00');
INSERT INTO Orders(fecha, hora) VALUES ('8-11-20','9:00');
INSERT INTO Orders(fecha, hora) VALUES ('5-10-20','15:00');
INSERT INTO Orders(fecha, hora) VALUES ('4-12-20','12:00');

CREATE TABLE Products
(id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL, 
name TEXT NOT NULL,
description TEXT NOT NULL
)ENGINE = InnoDB;

INSERT INTO Products(name, description) VALUES ('AloeVera','Cura heridas'); 
INSERT INTO Products(name, description) VALUES ('Extintor','Apaga fuegos a 2 pixels de distancia'); 
INSERT INTO Products(name, description) VALUES ('Manguera','Apaga fuegos a 3 pixels de distancia'); 
INSERT INTO Products(name, description) VALUES ('Moneda','testing'); 
INSERT INTO Products(name, description) VALUES ('Diamante','2testing'); 

CREATE TABLE ProductOrder		
(orderID INTEGER,
 productID INTEGER,
 FOREIGN KEY (orderID) REFERENCES Orders (id),
 FOREIGN KEY (productID) REFERENCES Products (id)
) ENGINE = InnoDB;

INSERT INTO ProductOrder VALUES (1,1); 
INSERT INTO ProductOrder VALUES (2,1);
INSERT INTO ProductOrder VALUES (3,2);
INSERT INTO ProductOrder VALUES (4,2);
INSERT INTO ProductOrder VALUES (5,3);
INSERT INTO ProductOrder VALUES (6,4);