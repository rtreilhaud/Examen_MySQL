-- *1. Faites une requête qui diminue de 40% le salaire des pilotes de la compagnie AUS.

UPDATE `pilots`
SET `salary` = `salary` - 0.4 * `salary`
WHERE `compagny` = 'AUS';


-- *2. Vérifiez que les salaires des pilotes australiens sont tous inférieurs aux autres salaires des pilotes des autres compagnies.

SELECT `name`, `compagny`, `salary` FROM `pilots` 
WHERE `salary` < ALL(
    SELECT `salary` FROM `pilots` 
    WHERE `compagny` != 'AUS'
);