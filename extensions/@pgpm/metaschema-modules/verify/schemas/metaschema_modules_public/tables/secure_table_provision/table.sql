-- Verify schemas/metaschema_modules_public/tables/secure_table_provision/table on pg

BEGIN;

SELECT
    id,
    database_id,
    schema_id,
    table_id,
    table_name,
    use_rls,
    fields,
    grants,
    policies,
    out_fields
FROM metaschema_modules_public.secure_table_provision
WHERE FALSE;

ROLLBACK;
