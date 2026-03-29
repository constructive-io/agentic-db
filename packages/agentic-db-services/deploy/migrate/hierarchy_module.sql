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
  ('4327d536-9e11-1050-1916-fbd199a21147', '14b01c2d-072a-5594-645a-675751a83d86', '34fb2c11-bc37-0c63-a3ed-1949ae860cd7', '946258fc-eb29-ce55-7946-86e554402d12', '75e3c6b8-7c7f-e855-311f-f1507052e8df', 'org_chart_edges', '9bf7e8e0-e34d-0a95-db21-d7874d3b7756', 'org_hierarchy_sprts', '102f5289-53a6-4680-c4f1-249598af0ca9', 'org_chart_edge_grants', '5258dec3-0cde-6103-1859-08598c428740', '5258dec3-0cde-6103-1859-08598c428740', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


