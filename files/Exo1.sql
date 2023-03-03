-- Liste des requêtes pour l'exo 1.

-- 1.2 Effectuer les requêtes permettant d’afficher toutes les tables en base
SHOW tables;
-- 1.3 Décrire une table
DESC T_Articles;
--1.4 Ajouter à la table des articles
INSERT INTO T_Articles ( Description, Brand, UnitaryPrice ) VALUES ( 'TUF' , 'Asus', 2000);
--1.5 Modifier un article avant de vérifier si c’est pris en compte
UPDATE T_Articles SET UnitaryPrice = 500 WHERE IdArticle = 4; 
SELECT * FROM T_Articles;
-- 1.6 Supprimer un article puis vérifier
DELETE FROM `T_Articles` WHERE `IdArticle`= 8;
SELECT * FROM T_Articles;
-- 1.7 Sélectionner tous les articles dont le prix est supérieur à 100
SELECT * FROM T_Articles WHERE UnitaryPrice > 100;
--1.8 Sélectionner les articles dont le prix est compris entre 50 et 150
SELECT * FROM T_Articles WHERE UnitaryPrice BETWEEN 50 AND 100;
--1.9 Afficher les articles dans l'ordre croissant des prix
SELECT * FROM T_Articles ORDER BY UnitaryPrice;
--1.10 Afficher uniquement la description des articles
SELECT Description FROM T_Articles;
-- 1.11 Choisissez une requête particulièrement intéressante à présenter : 
-- Affichage des marques et de la somme des prix des articles d'une marque donnée
SELECT Brand, SUM(UnitaryPrice) FROM T_Articles GROUP BY Brand;
--1.13 Requête permettant de répondre à la demande
SELECT IdArticle, T_Articles.Description, Brand, UnitaryPrice, CatName FROM T_Articles INNER JOIN T_Categories 
ON T_Articles.IdCategory = T_Categories.IdCategory WHERE IdArticle>10 ORDER BY UnitaryPrice;