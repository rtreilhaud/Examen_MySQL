-- *1. Quel est le salaire moyen.

SELECT AVG(`salary`) FROM `pilots`;

-- 2055,56


-- *2. Calculez le salaire moyen par compagnie.

SELECT `compagny`, AVG(`salary`) FROM `pilots`
GROUP BY `compagny`;

-- +----------+---------------+
-- | compagny | AVG(`salary`) |
-- +----------+---------------+
-- | NULL     |          NULL |
-- | AUS      |   2000.000000 |
-- | CHI      |   3000.000000 |
-- | FRE1     |   2250.000000 |
-- | SIN      |   1500.000000 |
-- +----------+---------------+


-- *3. Quels sont les pilots qui sont au-dessus du salaire moyen.

SELECT `name`, `salary` FROM `pilots`
WHERE `salary` > (SELECT AVG(`salary`) FROM `pilots`);

-- Jhon et Pierre


-- *4. Calculez l'étendu des salaires.

SELECT MIN(`salary`), MAX(`salary`), MAX(`salary`) - MIN(`salary`) AS `range_salary`
FROM `pilots`;

-- 1500 d'étendue entre 1500 (min) et 3000 (max)


-- *5. Quels sont les noms des compagnies qui payent leurs pilotes au-dessus de la moyenne ?

SELECT `name` FROM `compagnies`
WHERE `comp` IN (
    SELECT `compagny` FROM `pilots`
    WHERE `salary` > (SELECT AVG(`salary`) FROM `pilots`)
    GROUP BY `compagny`
);

-- CHINA Air et Air France


-- *6 Quels sont les pilotes qui par compagnie dépasse(nt) le salaire moyen ?

SELECT `name` FROM `pilots` AS p1
WHERE `salary` > (
    SELECT AVG(`salary`) FROM `pilots` AS p2
    WHERE p1.`compagny` = p2.`compagny`
);

-- Jhon


