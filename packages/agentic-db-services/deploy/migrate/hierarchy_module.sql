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
  ('b4e8f1f9-48fd-63e2-70b7-ee1de68a3b1e', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b6a5ec83-0ccd-ffd2-6986-03855824ead2', '363e32c6-5928-0187-5bf0-d6e3c60641bb', 'bee9acf5-642f-dbd7-9013-3b0c23097da9', 'org_chart_edges', 'ba44f9f7-c7aa-8715-0665-dbdd2aaf3f9e', 'org_hierarchy_sprts', '42cca0ae-d816-4e87-cd3f-8bd2a60ea977', 'org_chart_edge_grants', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


