-- Sélectionnez les trajets de tous les pilotes.

SELECT p.`name`, t.`name`, t.`departure`, t.`arrival` FROM `pilots` AS p
LEFT JOIN  `pilot_trip` AS pt
ON p.`certificate` = pt.`certificate`
LEFT JOIN `trips` AS t
ON t.`id` = pt.`trip_id`;



