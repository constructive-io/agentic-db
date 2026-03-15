-- Verify schemas/metaschema_modules_public/tables/relation_provision/table on pg

BEGIN;

SELECT
    id,
    database_id,
    relation_type,
    source_table_id,
    target_table_id,
    field_name,
    delete_action,
    is_required,
    junction_table_id,
    junction_table_name,
    junction_schema_id,
    source_field_name,
    target_field_name,
    use_composite_key,
    node_type,
    node_data,
    grant_roles,
    grant_privileges,
    policy_type,
    policy_privileges,
    policy_role,
    policy_permissive,
    policy_data,
    out_field_id,
    out_junction_table_id,
    out_source_field_id,
    out_target_field_id
FROM metaschema_modules_public.relation_provision
WHERE FALSE;

ROLLBACK;
