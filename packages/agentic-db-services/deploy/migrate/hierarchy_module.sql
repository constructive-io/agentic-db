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
  ('019d4100-cded-70ab-af03-38a7da9bbe88', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-462b-77b8-87ba-02549f2d20fa', '019d4100-4fd2-7821-879b-f9a0e18d11a4', '019d4100-cdf6-7160-aadd-4a7717b56775', 'org_chart_edges', '019d4100-d108-7771-80ec-96ec2026e0db', 'org_hierarchy_sprts', '019d4100-d2cc-75cc-85cd-5f2ab00fa278', 'org_chart_edge_grants', '019d4100-42f6-7ae2-9811-58ffe46470b0', '019d4100-42f6-7ae2-9811-58ffe46470b0', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


