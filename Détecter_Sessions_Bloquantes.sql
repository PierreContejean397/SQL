-- Détecter les sections bloquantes (verrous)

SELECT
    blocking_session_id AS BlockingID,
    session_id AS BlockedID,
    wait_type,
    wait_time,
    resource_description
FROM sys.dm_os_waiting_tasks
WHERE blocking_session_id IS NOT NULL;
