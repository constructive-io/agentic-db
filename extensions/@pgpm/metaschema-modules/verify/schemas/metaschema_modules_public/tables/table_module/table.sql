-- Verify schemas/metaschema_modules_public/tables/table_module/table on pg

BEGIN;

SELECT
    id,
    database_id,
    schema_id,
    table_id,
    table_name,
    node_type,
    use_rls,
    data,
    fields
FROM metaschema_modules_public.table_module
WHERE FALSE;

ROLLBACK;
