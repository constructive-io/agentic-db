-- Verify schemas/metaschema_modules_public/tables/catalog_module/table on pg

BEGIN;

SELECT id, database_id, scope, domains_table_id, apis_table_id, sites_table_id
FROM metaschema_modules_public.catalog_module
WHERE false;

ROLLBACK;
