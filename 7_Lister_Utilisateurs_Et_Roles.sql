-- Lister les utilisateurs et leurs rôles

SELECT 
    dp.name AS UserName,
    dp.type_desc AS Type,
    rl.name AS RoleName
FROM sys.database_role_members drm
INNER JOIN sys.database_principals rl ON drm.role_principal_id = rl.principal_id
INNER JOIN sys.database_principals dp ON drm.member_principal_id = dp.principal_id
ORDER BY dp.name;
