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
  ('b2e2ad01-687b-ea62-b61c-1f3cd8379136', '2ef50f93-192b-b168-969d-304c8e675e1d', '22a37e39-a81a-1afb-f4dd-d895806b24a5', '5353e947-3e3f-3914-7fd1-1370926dd743', 'users', '5cb94294-8c01-fc80-8e8f-1e34ef5743f9', 'role_types');


SET session_replication_role TO DEFAULT;


