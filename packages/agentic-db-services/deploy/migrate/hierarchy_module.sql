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
  ('019d130d-80f0-72cf-8cbd-5bc24169a2d0', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f528-7521-ad98-5049be733d14', '019d130d-0086-7cc7-9efe-8faaa639cb1e', '019d130d-80f9-7a4c-8d0e-798524f732de', 'org_chart_edges', '019d130d-8487-73ca-973a-ac33a76e3141', 'org_hierarchy_sprts', '019d130d-866f-7f66-923e-0d4ddb84847c', 'org_chart_edge_grants', '019d130c-f14b-7ef8-94e3-e005503a699d', '019d130c-f14b-7ef8-94e3-e005503a699d', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


