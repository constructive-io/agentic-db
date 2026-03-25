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
  ('019d2727-f337-7790-90a9-6cb6cc96137e', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7441-782b-8fbb-66db0def84ca', '019d2727-7d11-762f-a2e0-1e65abab72fe', '019d2727-f33f-79db-9f54-b31a4bb3c77b', 'org_chart_edges', '019d2727-f628-7968-820f-bdbb8e2ea44c', 'org_hierarchy_sprts', '019d2727-f7d6-756f-9f89-64a5cb854bc4', 'org_chart_edge_grants', '019d2727-7153-7bae-b8ec-6f398ecf0b75', '019d2727-7153-7bae-b8ec-6f398ecf0b75', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


