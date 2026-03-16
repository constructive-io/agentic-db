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
  ('b5df25ec-f081-4a8a-84d1-d50f777973de', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19723-899f-453d-575a-d60edcc86e01', 'bfc13b6f-0401-4a31-bd38-1d3e2e771636', 'bfc1d3ce-f18f-447a-b100-39155e5e62eb', 'org_chart_edges', 'bfc191c3-8132-454d-5d50-ef9692168d53', 'org_hierarchy_sprts', 'bfc1e6cc-b714-4283-59d7-a16f4030ed7e', 'org_chart_edge_grants', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'org', 'agent_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


