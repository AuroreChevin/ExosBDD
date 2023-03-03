--1.1 Création d'une base de données à l’aide du script Shop.sql
DROP DATABASE IF EXISTS Shop;
CREATE DATABASE Shop;
USE Shop;

CREATE TABLE T_Articles (
	IdArticle		int(4)			PRIMARY KEY AUTO_INCREMENT,
	Description		varchar(30)		NOT NULL,
	Brand			varchar(30)		NOT NULL,
	UnitaryPrice	float(8)		NOT NULL
) ENGINE = InnoDB;

INSERT INTO T_Articles ( Description, Brand, UnitaryPrice ) VALUES ( 'Souris' , 'Logitoch', 65);
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice ) VALUES ( 'Clavier' , 'Microhard', 49.5);
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice ) VALUES ( 'System d''exploitation' , 'Fenetres Vistouille', 150);
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice ) VALUES ( 'Tapis souris' , 'Chapeau Bleu', 5);
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice ) VALUES ( 'Cle USB 8 To' , 'Syno', 8);
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice ) VALUES ( 'Laptop' , 'PH', 1199);
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice ) VALUES ( 'CD x 500' , 'CETME', 250);
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice ) VALUES ( 'DVD-R x 100' , 'CETME', 99);
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice ) VALUES ( 'DVD+R x 100' , 'CETME', 105);
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice ) VALUES ( 'Batterie Laptop' , 'PH', 80);
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice ) VALUES ( 'Casque Audio' , 'Syno', 105);
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice ) VALUES ( 'WebCam' , 'Logitoch', 0);

--1.12 Ajout de la table des catégories
CREATE TABLE T_Categories (
	IdCategory		int(4)			PRIMARY KEY AUTO_INCREMENT,
	CatName			varchar(30)		NOT NULL,
	Description		varchar(100)	NOT NULL
) ENGINE = InnoDB;
--Insertion des valeurs dans la table T_Categories
INSERT INTO T_Categories ( CatName, Description ) VALUES ( 'PC' , 'Ordinateur portable ou pas' );
INSERT INTO T_Categories ( CatName, Description ) VALUES ( 'Smartphone' , 'Telephone de derniere generation avec ecran tactile + applis' );
INSERT INTO T_Categories ( CatName, Description ) VALUES ( 'Materiel info' , 'Tout materiel informatique physique en lien avec un ordinateur' );
INSERT INTO T_Categories ( CatName, Description ) VALUES ( 'Logiciel ' , 'Tout logiciel au systeme' );

--1.13 Requêtes permettant de mettre en relation les 2 tables
ALTER TABLE T_Articles ADD COLUMN IdCategory int(4);
ALTER TABLE T_Articles ADD FOREIGN KEY(IdCategory) REFERENCES T_Categories(IdCategory);
--Mises à jour de la colonne IdCategory pour la table T_Articles
UPDATE T_Articles SET IdCategory = 3 WHERE IdArticle = 12;
UPDATE T_Articles SET IdCategory = 4 WHERE IdArticle = 3;
UPDATE T_Articles SET IdCategory = 3 WHERE IdArticle = 1;
UPDATE T_Articles SET IdCategory = 3 WHERE IdArticle = 2;
UPDATE T_Articles SET IdCategory = 3 WHERE IdArticle = 4;
UPDATE T_Articles SET IdCategory = 3 WHERE IdArticle = 5;
UPDATE T_Articles SET IdCategory = 1 WHERE IdArticle = 6;
UPDATE T_Articles SET IdCategory = 3 WHERE IdArticle = 7;
UPDATE T_Articles SET IdCategory = 3 WHERE IdArticle = 8;
UPDATE T_Articles SET IdCategory = 3 WHERE IdArticle = 9;
UPDATE T_Articles SET IdCategory = 3 WHERE IdArticle = 10;
UPDATE T_Articles SET IdCategory = 3 WHERE IdArticle = 11;
--Insertion de nouveaux articles dans la table T_Categories
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice, IdCategory ) VALUES ( 'Macbook' , 'Apple', 2000, 1);
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice, IdCategory ) VALUES ( 'S10' , 'Samsung', 2000, 2);
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice, IdCategory ) VALUES ( 'Iphone50' , 'Apple', 20000, 2);
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice, IdCategory ) VALUES ( 'Office' , 'Microsoft', 150, 4);

