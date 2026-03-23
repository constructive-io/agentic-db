-- Verify schemas/metaschema_modules_public/tables/secure_table_provision/table on pg

BEGIN;

SELECT
    id,
    database_id,
    schema_id,
    table_id,
    table_name,
    node_type,
    use_rls,
    node_data,
    fields,
    grant_roles,
    grant_privileges,
    policy_type,
    policy_privileges,
    policy_role,
    policy_permissive,
    policy_name,
    policy_data,
    out_fields
FROM metaschema_modules_public.secure_table_provision
WHERE FALSE;

ROLLBACK;
