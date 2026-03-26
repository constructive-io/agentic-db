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
  ('019d2831-f140-7542-8454-b0cf8572bfa6', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-667f-7d04-8346-45045ab70d5c', '019d2831-6ff3-7744-8389-bc9167060dbe', '019d2831-f149-7d89-a983-3a738af9398d', 'org_chart_edges', '019d2831-f445-765d-b3b8-9505bec1fcfe', 'org_hierarchy_sprts', '019d2831-f607-7bbe-b47c-e6baa4828889', 'org_chart_edge_grants', '019d2831-6349-7cde-a517-c115bf8f4bff', '019d2831-6349-7cde-a517-c115bf8f4bff', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


