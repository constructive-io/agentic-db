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
  ('019d20cd-f566-71c6-9386-fd3b12aa7151', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7d80-7824-a07d-cdd3cd495d95', '019d20cd-8712-70a5-a537-f9df3e9c5af1', '019d20cd-f56f-7ba8-8af0-a22f13d8c3ea', 'org_chart_edges', '019d20cd-f8a7-7a39-a328-2a4a63015220', 'org_hierarchy_sprts', '019d20cd-fa7a-7343-ac96-fb41e259c6fb', 'org_chart_edge_grants', '019d20cd-7a20-7176-823e-cca436cf06f3', '019d20cd-7a20-7176-823e-cca436cf06f3', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


