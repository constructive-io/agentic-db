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
  ('019d3dab-7b83-7e5a-a9e4-1fd84437c75d', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-03c6-7630-a278-03cc476571de', '019d3dab-0d59-7a36-8f13-1f1eaa4266c4', '019d3dab-7b8d-7459-8340-dcaa406e5d21', 'org_chart_edges', '019d3dab-7e9a-7fea-96c4-cf069e25ab6b', 'org_hierarchy_sprts', '019d3dab-8053-71bc-bf4e-c50358437c84', 'org_chart_edge_grants', '019d3dab-00a9-731d-b66d-d5d69c0909a6', '019d3dab-00a9-731d-b66d-d5d69c0909a6', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


