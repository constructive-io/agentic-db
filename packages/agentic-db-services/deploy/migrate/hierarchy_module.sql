-- Deploy: migrate/hierarchy_module
-- made with <3 @ constructive.io

-- requires: migrate/users_module


SET session_replication_role TO replica;
-- using replica in case we are deploying triggers to metaschema_public

-- unaccent, postgis affected and require grants
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public to public;

DO $LQLMIGRATION$
  DECLARE
  BEGIN

    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_user');
    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_admin');

  END;
$LQLMIGRATION$;

INSERT INTO metaschema_modules_public.hierarchy_module (
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
  is_manager_of_function
) VALUES
  ('019d9350-38c5-7643-8737-2d9d9d42ba75', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-8e3d-704c-8fdf-d84d858c8b17', '019d934f-9cee-7bae-93fd-ad757080ee4a', '019d9350-38cb-7e93-9aa0-57d2ac30337c', 'org_chart_edges', '019d9350-3d37-7d67-960e-a893fcbb57dd', 'org_hierarchy_sprts', '019d9350-3f95-72e4-8764-46f5686be68c', 'org_chart_edge_grants', '019d934f-898e-73d5-9f57-6c8589048db5', '019d934f-898e-73d5-9f57-6c8589048db5', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


