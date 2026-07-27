-- Verify schemas/metaschema_modules_public/tables/api_surface_module/table on pg

BEGIN;

SELECT id, database_id, scope, apis_table_id
FROM metaschema_modules_public.api_surface_module
WHERE false;

ROLLBACK;
