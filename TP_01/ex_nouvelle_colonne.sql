-- Ajoutez la colonne salary, salaire annuel, dans la table pilots, définissez son type.

ALTER TABLE `pilots`
ADD salary DECIMAL(10,2) UNSIGNED;

-- Puis faites une requête pour ajouter les salaires respectifs suivants :

UPDATE `pilots`
SET `salary` = (
    CASE 
        WHEN `name` IN ('Alan', 'Sophie', 'Albert', 'Benoit') THEN 2000
        WHEN `name` IN ('Tom', 'Yi', 'Yan') THEN 1500
        WHEN `name` IN ('Jhon', 'Pierre') THEN 3000
    END
);