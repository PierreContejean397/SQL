-- Taille des tables les plus lourdes

SELECT 
    t.NAME AS TableName,
    SUM(p.rows) AS RowCounts,
    SUM(a.total_pages) * 8 / 1024 AS TotalMB
FROM sys.tables t
INNER JOIN sys.indexes i ON t.OBJECT_ID = i.object_id
INNER JOIN sys.partitions p ON i.object_id = p.OBJECT_ID AND i.index_id = p.index_id
INNER JOIN sys.allocation_units a ON p.partition_id = a.container_id
GROUP BY t.NAME
ORDER BY TotalMB DESC;
