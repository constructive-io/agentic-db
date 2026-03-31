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
  ('019d416f-bfc9-72a2-8fb5-af56eccac771', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3c9c-7189-bb0c-e43871321173', '019d416f-47b0-78b7-8a15-68d1c1a5cd20', '019d416f-bfd2-7e14-bf60-c12dea5faeb9', 'org_chart_edges', '019d416f-c32f-7b01-ab46-099ff70ddaf9', 'org_hierarchy_sprts', '019d416f-c558-7831-821b-bc2b3c64c58d', 'org_chart_edge_grants', '019d416f-384a-79e2-9379-99ca3460e274', '019d416f-384a-79e2-9379-99ca3460e274', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


