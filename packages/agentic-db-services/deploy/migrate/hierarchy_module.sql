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
  ('019d4300-483c-7436-8c4c-31307ec404f1', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ce03-722d-82bd-39b558050ea6', '019d42ff-d89c-73d4-b046-df54a48af77e', '019d4300-4846-73f6-b3c0-3d2de11edd10', 'org_chart_edges', '019d4300-4b73-79db-a67f-92870cdd221b', 'org_hierarchy_sprts', '019d4300-4d42-757b-b0a9-bd5b7d740424', 'org_chart_edge_grants', '019d42ff-ca62-77a0-ab97-b8d784c420dc', '019d42ff-ca62-77a0-ab97-b8d784c420dc', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


