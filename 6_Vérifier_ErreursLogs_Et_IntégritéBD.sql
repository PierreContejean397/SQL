-- Vérifier les erreurs dans les logs SQL Server
EXEC xp_readerrorlog 0, 1, NULL, NULL, NULL, NULL, 'DESC';

Vérifier l’intégrité d'une base de données
DBCC CHECKDB ('NomDeLaBase');

