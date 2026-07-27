-- Verify schemas/metaschema_modules_public/tables/site_surface_module/table on pg

BEGIN;

SELECT id, database_id, scope, sites_table_id
FROM metaschema_modules_public.site_surface_module
WHERE false;

ROLLBACK;
