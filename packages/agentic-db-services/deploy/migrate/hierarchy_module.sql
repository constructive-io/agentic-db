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
  ('019d13bc-91b6-78d5-b925-1379e884e994', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2487-7b34-8538-87ad5885ba2a', '019d13bc-2d61-7958-8065-7db3e62795fc', '019d13bc-91bf-7ccb-b079-ea3d45d352b0', 'org_chart_edges', '019d13bc-94a1-7539-a77a-fe2514a4175b', 'org_hierarchy_sprts', '019d13bc-96e0-79a9-aea1-f51f99509f48', 'org_chart_edge_grants', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


