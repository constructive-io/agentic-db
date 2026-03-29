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
  ('019d37ba-3386-7279-8a37-d97a82961c3f', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bb21-792b-800c-4cfd5fc2db67', '019d37b9-c48f-7769-a7a8-70fded63c6ee', '019d37ba-338d-72e0-a05b-78b915b15742', 'org_chart_edges', '019d37ba-365c-7cb3-9182-21f7dee4fc67', 'org_hierarchy_sprts', '019d37ba-3814-72e3-b845-0287c7298224', 'org_chart_edge_grants', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


