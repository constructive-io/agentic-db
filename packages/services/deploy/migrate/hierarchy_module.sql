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
  ('1904b38f-c256-4d51-9579-6fe52c13e862', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc182c5-302d-474c-c74c-02be749f675f', '9bc15150-00d3-4748-493e-ce24299e8088', '9bc11169-3cdb-4a02-10ea-abee16d31433', 'org_chart_edges', '9bc1cfe0-cae4-44cf-4f04-2d3ce342debf', 'org_hierarchy_sprts', '9bc1620a-c756-4306-4c69-8773a2522050', 'org_chart_edge_grants', '9bc12972-1a70-4812-beb6-f24029a19ea6', '9bc12972-1a70-4812-beb6-f24029a19ea6', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


