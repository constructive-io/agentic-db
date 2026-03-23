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
  ('019d19cf-92a6-7bb2-9789-c466ab5fd2e6', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0856-718d-a159-1e8137d9e65b', '019d19cf-126a-7c9b-a114-1a6fdeac1be9', '019d19cf-92af-7930-b4d8-fc08df9d1a36', 'org_chart_edges', '019d19cf-95da-7293-af05-8f4ebc5ee348', 'org_hierarchy_sprts', '019d19cf-9795-72ee-92ae-3d0192695677', 'org_chart_edge_grants', '019d19cf-04f9-762a-946a-add4e6430409', '019d19cf-04f9-762a-946a-add4e6430409', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


