-- Deploy: migrate/users_module
-- made with <3 @ constructive.io

-- requires: migrate/levels_module


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

INSERT INTO metaschema_modules_public.users_module (
  id,
  database_id,
  schema_id,
  table_id,
  table_name,
  type_table_id,
  type_table_name
) VALUES
  ('019d3dab-002a-7a6d-a089-58b03cce67d6', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-002a-7fad-85d1-275b4f59abee', '019d3dab-00a9-731d-b66d-d5d69c0909a6', 'users', '019d3dab-020b-7f3a-9f50-282a80e58578', 'role_types');


SET session_replication_role TO DEFAULT;


