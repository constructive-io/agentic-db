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
  ('019d1dc0-65d6-78c9-86a3-fdc553ec5299', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-ddbb-7fbf-9505-8db63eca57ee', '019d1dbf-e6fd-7837-9225-5b98c59d42dc', '019d1dc0-65e0-7325-b8f8-8a9cc5e98161', 'org_chart_edges', '019d1dc0-68dc-74e1-9c44-c49aac9ebf14', 'org_hierarchy_sprts', '019d1dc0-6a84-7d0f-be97-511726ca6f39', 'org_chart_edge_grants', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


