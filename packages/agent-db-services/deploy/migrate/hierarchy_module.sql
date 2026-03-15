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
  ('64fd98ec-4b1d-4ac8-8719-4658501fd219', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087970-3d1f-473c-4c81-937a8d8eeb0c', 'a008cef5-a8b2-4e8e-a661-699d408148cc', 'a008fa84-9155-47af-551f-5c7448fc2b82', 'org_chart_edges', 'a008b925-c195-45fe-45eb-ec1a314c2018', 'org_hierarchy_sprts', 'a008cdc0-3d5c-4119-b02e-1f67916ea037', 'org_chart_edge_grants', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'org', 'agent_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


