-- Deploy: migrate/encrypted_secrets_module
-- made with <3 @ constructive.io

-- requires: migrate/profiles_module


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

INSERT INTO metaschema_modules_public.encrypted_secrets_module (
  id,
  database_id,
  schema_id,
  table_id,
  table_name
) VALUES
  ('019d2832-0e75-79ff-b67d-4da4b32a7337', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-0e75-7d6b-9434-1bb5751ab420', '019d2832-0f3f-76a4-a9da-9451e625e8c0', 'encrypted_secrets');


SET session_replication_role TO DEFAULT;


