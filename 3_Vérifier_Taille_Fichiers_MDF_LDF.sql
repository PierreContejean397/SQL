-- Vérifier la taille des fichiers MDF et LDF

SELECT
    DB_NAME(database_id) AS DatabaseName,
    Name AS FileName,
    size * 8 / 1024 AS SizeMB,
    physical_name
FROM sys.master_files
ORDER BY SizeMB DESC;
