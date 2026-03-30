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
  ('019d3d15-5391-7db4-832b-1ab53e32126b', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ea14-72c7-ab2a-04b31513f93e', '019d3d14-f282-7e09-b26b-97ab505e6016', '019d3d15-5398-7503-b27c-dabeaf0ec5cc', 'org_chart_edges', '019d3d15-5642-7983-b14a-a98c0192590f', 'org_hierarchy_sprts', '019d3d15-57cb-7661-9299-a37d9ac2f520', 'org_chart_edge_grants', '019d3d14-e756-7f18-bcd9-be9300e74947', '019d3d14-e756-7f18-bcd9-be9300e74947', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


