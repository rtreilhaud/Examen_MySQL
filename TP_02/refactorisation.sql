/*
Créez la table planes avec les colonnes suivantes :

id PK de type INT UNSIGNED AUTO INCREMENT

name CHAR(5)

description type TEXT

numFlying type DECIMAL(8,1)
*/

CREATE TABLE `planes` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `name` CHAR(5),
    `description` TEXT,
    `numFlying` DECIMAL(8,1),
    PRIMARY KEY (`id`)
);

/*
Vous insererez les données suivantes dans la table planes :

+----+------+--------------------------------+-----------+
| id | name | description                    | numFlying |
+----+------+--------------------------------+-----------+
|  1 | A380 | Gros porteur                   |   12000.0 |
|  2 | A320 | Avion de ligne quadriréacteur  |   17000.0 |
|  3 | A340 | moyen courrier                 |   50000.0 |
+----+------+--------------------------------+-----------+
*/

INSERT INTO `planes` (`name`, `description`, `numFlying`)
VALUES ('A380', 'Gros porteur', 12000),
('A320', 'Avion de ligne quadriréacteur', 17000),
('A340', 'Moyen courrier', 50000);

-- Créez maintenant la clé étrangère plane_id dans la table pilots. Cette clé est exactement du même type que la clé primaire de la table planes.

ALTER TABLE `pilots`
ADD `plane_id` INT UNSIGNED;

ALTER TABLE `pilots`
ADD CONSTRAINT `fk_pilots_planes`
FOREIGN KEY (`plane_id`) REFERENCES `planes`(`id`)
ON DELETE SET NULL;

-- Supprimez maintenant la colonne plane dans la table pilots, elle n'est plus utile.

ALTER TABLE `pilots`
DROP `plane`;

/*
Nous voulons créez une table trips. Elle contiendra les colonnes suivantes. Choisissez le type de ces champs en fonction de ce qu'ils représentent :

id INT UNSIGNED PK
name
departure
arrival
*/

CREATE TABLE `trips` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `name` VARCHAR(255),
    `departure` VARCHAR(255),
    `arrival` VARCHAR(255),
    `created` DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);