-- Afficher le plan d’exécution sans exécuter la requête (utile en support).

SET SHOWPLAN_ALL ON;
-- Tapez ensuite votre requête ici
-- Exemple :
SELECT * FROM Clients WHERE Nom LIKE '%Dupont%';
SET SHOWPLAN_ALL OFF;
