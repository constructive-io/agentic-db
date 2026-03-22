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
  ('019d1795-be7c-735d-90e5-1fba4a1d397e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4c1b-7a59-8ae4-3c48b8349459', '019d1795-547c-772e-88aa-b0d16f40b989', '019d1795-be82-7e06-b957-376065ac3926', 'org_chart_edges', '019d1795-c181-791c-b52c-a2759f890c61', 'org_hierarchy_sprts', '019d1795-c339-7e48-bba2-49d426cf30cb', 'org_chart_edge_grants', '019d1795-494e-7deb-bd76-39af3a5fa635', '019d1795-494e-7deb-bd76-39af3a5fa635', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


