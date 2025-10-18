-- Lister les derniers statuts de tâches (jobs)

SELECT 
    j.name AS JobName,
    run_status = CASE h.run_status
        WHEN 0 THEN 'Failed'
        WHEN 1 THEN 'Succeeded'
        WHEN 2 THEN 'Retry'
        WHEN 3 THEN 'Canceled'
    END,
    h.run_date,
    h.run_time
FROM msdb.dbo.sysjobs j
JOIN msdb.dbo.sysjobhistory h ON j.job_id = h.job_id
WHERE h.run_date = CONVERT(VARCHAR(8), GETDATE(), 112)
ORDER BY h.run_time DESC;
