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
  ('019d3d14-e6df-7e83-9bd4-16f2013aed7b', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e6e0-7573-ab64-323d1cdd7cd6', '019d3d14-e756-7f18-bcd9-be9300e74947', 'users', '019d3d14-e88b-78b6-ab3b-5e55f950d705', 'role_types');


SET session_replication_role TO DEFAULT;


