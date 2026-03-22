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
  ('019d1736-c653-7a17-a9ab-bd2254bb1f13', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5dde-7edf-9435-18611c6fa94e', '019d1736-6621-77a9-a38f-5d297c68ea95', '019d1736-c65a-7489-b0fe-00723a147365', 'org_chart_edges', '019d1736-c90a-74c9-97e2-f3cef7985fa3', 'org_hierarchy_sprts', '019d1736-ca9c-7a35-a11b-6aa75bec8a54', 'org_chart_edge_grants', '019d1736-5b0d-7766-9f99-3cf518199163', '019d1736-5b0d-7766-9f99-3cf518199163', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


