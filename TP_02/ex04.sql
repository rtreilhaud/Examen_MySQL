-- Quels sont les pilotes qui n'ont pas de trajet ?

SELECT `name`, `certificate` FROM `pilots`
WHERE `certificate` NOT IN (
    SELECT `certificate` FROM `pilot_trip`
);

-- Alan, Yan, Harry, Benoit et Pierre