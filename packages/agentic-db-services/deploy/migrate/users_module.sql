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
  ('019d1795-48d5-7a17-a0e8-94be552a9f8b', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-48d6-712e-b0a5-7d603cff15b6', '019d1795-494e-7deb-bd76-39af3a5fa635', 'users', '019d1795-4a9b-7dcf-ab32-ab66575112db', 'role_types');


SET session_replication_role TO DEFAULT;


