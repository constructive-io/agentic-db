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
  ('019d4100-426f-766c-aad6-295935a8b2af', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-426f-7cf3-aac9-0253633a24da', '019d4100-42f6-7ae2-9811-58ffe46470b0', 'users', '019d4100-445c-7561-a4c9-0deb1eaa3905', 'role_types');


SET session_replication_role TO DEFAULT;


