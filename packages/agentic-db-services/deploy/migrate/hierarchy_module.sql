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
  ('019d11d9-e13d-7be2-bfb1-d270f68ea563', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5e47-76cc-9644-05e7a92626a9', '019d11d9-67f0-73cf-ae19-ce25b6d1ba46', '019d11d9-e145-74f3-9183-4eca0131036e', 'org_chart_edges', '019d11d9-e434-7ab3-bdfa-1d04fd3197fa', 'org_hierarchy_sprts', '019d11d9-e5f9-71aa-83f2-d2aea64da67d', 'org_chart_edge_grants', '019d11d9-5aed-7673-b41b-b11528f73f79', '019d11d9-5aed-7673-b41b-b11528f73f79', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


