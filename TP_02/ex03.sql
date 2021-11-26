-- Implémentez le code pour rendre effectif votre représentation des relations dans MySQL.

CREATE TABLE `pilot_trip` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `certificate` VARCHAR(6) NOT NULL ,
    `trip_id` INT(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`id`)
);

ALTER TABLE `pilot_trip`
ADD CONSTRAINT `fk_pilots_certificate_trips`
FOREIGN KEY (`certificate`) REFERENCES `pilots`(`certificate`);

ALTER TABLE `pilot_trip`
ADD CONSTRAINT `fk_trips_id_pilots`
FOREIGN KEY (`trip_id`) REFERENCES `trips`(`id`);

-- Vous allez maintenant ajouter les enregistrements suivants

INSERT INTO `trips`
 (`name`, `departure`, `arrival`, `created`)
VALUES
('direct', 'Paris', 'Brest',  '2020-01-01 00:00:00'),
('direct', 'Paris', 'Berlin',  '2020-02-01 00:00:00'),
('direct', 'Paris', 'Barcelone',  '2020-08-01 00:00:00'),
('direct', 'Amsterdan', 'Brest',  '2020-11-11 00:00:00'),
('direct', 'Alger', 'Paris',  '2020-09-01 00:00:00'),
('direct', 'Brest', 'Paris',  '2020-12-01 00:00:00');

INSERT INTO `pilot_trip`
(`certificate`, `trip_id`)
VALUES
('ct-10', 1),
('ct-6', 2),
('ct-100', 1),
('ct-11', 3),
('ct-12', 4),
('ct-10', 4),
('ct-12', 5);