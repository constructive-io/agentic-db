-- Verify schemas/metaschema_modules_public/tables/hierarchy_module/table on pg

BEGIN;

SELECT
    id,
    database_id,
    schema_id,
    private_schema_id,
    chart_edges_table_id,
    chart_edges_table_name,
    hierarchy_sprt_table_id,
    hierarchy_sprt_table_name,
    chart_edge_grants_table_id,
    chart_edge_grants_table_name,
    entity_table_id,
    users_table_id,
    prefix,
    private_schema_name,
    sprt_table_name,
    rebuild_hierarchy_function,
    get_subordinates_function,
    get_managers_function,
    is_manager_of_function,
    created_at
FROM metaschema_modules_public.hierarchy_module
WHERE FALSE;

ROLLBACK;
