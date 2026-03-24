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
  ('9c5cc5bf-ad66-89f5-19e8-2194b63be42b', 'fdf8a620-6969-72d5-d89a-ed384259d249', '7652b564-62c7-22d6-ad88-2b68efdaab16', 'a2eb6b64-0376-3481-e713-9258e486fdba', 'b71f5daf-cde9-c59f-45f5-663c3117d780', 'org_chart_edges', '02a9cc23-fd51-816d-77f2-2cd07e6c048d', 'org_hierarchy_sprts', 'cd10ca8c-e0a8-5a31-7f95-78a001462211', 'org_chart_edge_grants', 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'org', 'agentic_db_memberships_private', 'org_hierarchy_sprts', 'org_rebuild_org_hierarchy_sprt', 'org_get_subordinates', 'org_get_managers', 'org_is_manager_of');


SET session_replication_role TO DEFAULT;


