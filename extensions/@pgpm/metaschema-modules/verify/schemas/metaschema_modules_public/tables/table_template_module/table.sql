-- Verify schemas/metaschema_modules_public/tables/table_template_module/table on pg

BEGIN;

SELECT
    id,
    database_id,
    schema_id,
    private_schema_id,
    table_id,
    owner_table_id,
    table_name,
    node_type,
    data
FROM metaschema_modules_public.table_template_module
WHERE FALSE;

ROLLBACK;
