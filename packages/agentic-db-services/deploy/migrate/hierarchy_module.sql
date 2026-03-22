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
  ('e5132a55-8289-0984-89cc-19af405229d8', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a8090207-c915-30c6-0984-f42a82be403d', '8ef2f646-75ef-3277-eeb8-f2a25c531296', 'ef9ac65a-cb9f-377d-81d5-5db94c8cd271', 'org_chart_edges', '3244bbae-941c-effa-4621-0d587a67d04c', 'org_hierarchy_sprts', '100aac8f-49be-e445-5cd1-d4dcfce660fb', 'org_chart_edge_grants', '5d9c849b-e962-041a-de77-54774d5d1e62', '5d9c849b-e962-041a-de77-54774d5d1e62', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


