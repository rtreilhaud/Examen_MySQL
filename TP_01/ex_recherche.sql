-- *1. On aimerait savoir quels sont les types d'avions en commun que la compagnie AUS et FRE1 exploitent.

SELECT DISTINCT `plane` FROM `pilots`
WHERE `compagny` = 'AUS' AND `plane` IN (
    SELECT DISTINCT `plane` FROM `pilots`
    WHERE `compagny` = 'FRE1'
);

-- Il n'y en a aucun


-- *2. Quels sont les types d'avion que ces deux compagnies AUS et FRE1 exploitent (c'est l'UNION ici) ?

SELECT DISTINCT `plane` FROM `pilots`
WHERE `compagny` = 'AUS'
UNION
SELECT DISTINCT `plane` FROM `pilots`
WHERE `compagny` = 'FRE1';

-- A380 et A320