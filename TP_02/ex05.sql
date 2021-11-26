-- Sélectionnez les trajets de tous les pilotes.

-- Tous les pilotes
SELECT p.`name`, pt.`trip_id` FROM `pilots` AS p
LEFT JOIN  `pilot_trip` AS pt
ON p.`certificate` = pt.`certificate`;

-- Seulement les pilotes avec des trajets
SELECT p.`name`, pt.`trip_id`, t.`departure`, t.`arrival` FROM `pilots` AS p
LEFT JOIN  `pilot_trip` AS pt
ON p.`certificate` = pt.`certificate`
INNER JOIN `trips` AS t
ON t.`id` = pt.`trip_id`;



