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
  ('019d0ffe-cabb-726e-946f-ea409fab87ec', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-53ea-7609-a293-cf598cb70844', '019d0ffe-5db3-7d04-bb81-f7a810b15714', '019d0ffe-cac1-78c8-8481-0ad71fc8f6ed', 'org_chart_edges', '019d0ffe-cdd4-7e60-a42d-cef638563aa9', 'org_hierarchy_sprts', '019d0ffe-cfb1-70c0-8847-f68ecd94861f', 'org_chart_edge_grants', '019d0ffe-509c-7e69-b073-260da2d7f651', '019d0ffe-509c-7e69-b073-260da2d7f651', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


