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
  ('019d2727-70d2-7af3-95a6-ec9723f5eb53', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-70d2-7ff6-9f58-1e1b136e5302', '019d2727-7153-7bae-b8ec-6f398ecf0b75', 'users', '019d2727-7291-764f-9aa8-cb6ac34640c2', 'role_types');


SET session_replication_role TO DEFAULT;


