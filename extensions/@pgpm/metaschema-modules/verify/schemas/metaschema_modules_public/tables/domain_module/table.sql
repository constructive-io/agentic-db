-- Verify schemas/metaschema_modules_public/tables/domain_module/table on pg

BEGIN;

SELECT id, database_id, scope, domains_table_id
FROM metaschema_modules_public.domain_module
WHERE false;

ROLLBACK;
