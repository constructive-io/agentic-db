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
  ('ce6af735-a6cd-ff1d-c100-ccd277366f9a', '2ef50f93-192b-b168-969d-304c8e675e1d', '2a7b615d-ddb5-8955-0458-298a538f5b11', '98ae2e0e-b2fc-f6c8-505c-3aab7d43dfa2', 'be390931-dcdf-fa6e-81f3-3fa64288fdfa', 'org_chart_edges', '0d330462-b90c-5549-0c0b-1778b717cf52', 'org_hierarchy_sprts', '7b2a7128-b3d8-b9de-bbb0-66e464d7b0fc', 'org_chart_edge_grants', '5353e947-3e3f-3914-7fd1-1370926dd743', '5353e947-3e3f-3914-7fd1-1370926dd743', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


