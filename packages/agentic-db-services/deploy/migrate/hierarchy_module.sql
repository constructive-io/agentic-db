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
  ('42e5ddb3-fcf9-81bc-a793-024ca8a971a5', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'b0fef0a3-d187-0423-4152-0887820a558a', '5255939a-a6c7-e342-1d6f-d3c93fc9b7f9', '687d60b7-c1b5-5537-2a6e-52f922ae4a8b', 'org_chart_edges', '78ad8788-2842-57bc-7bad-954fabbc74be', 'org_hierarchy_sprts', '408c8279-1b81-08be-91f2-64eb10275c37', 'org_chart_edge_grants', '5b5d99e1-9167-1378-cf99-58449ebc35bc', '5b5d99e1-9167-1378-cf99-58449ebc35bc', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


