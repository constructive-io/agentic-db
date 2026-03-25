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
  ('019d21f8-94fc-7f55-9003-ab571afc690f', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2657-7bef-9962-72063119a6ea', '019d21f8-2f64-7538-a3ae-5d1d0acf8c05', '019d21f8-9505-7ff1-91b3-f64f2ea4917b', 'org_chart_edges', '019d21f8-97fb-7389-9369-a9e0c4cc9548', 'org_hierarchy_sprts', '019d21f8-99d3-7ded-9336-347f786fd5fd', 'org_chart_edge_grants', '019d21f8-2335-70cb-b636-53bf74d97668', '019d21f8-2335-70cb-b636-53bf74d97668', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


