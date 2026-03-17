-- Deploy: migrate/uuid_module
-- made with <3 @ constructive.io

-- requires: migrate/secure_table_provision


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

INSERT INTO metaschema_modules_public.uuid_module (
  id,
  database_id,
  schema_id,
  uuid_function,
  uuid_seed
) VALUES
  ('43b95ca1-8a1b-4cdd-9eea-163c924b36b7', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15f10-1fd4-453f-651b-f69a8ecc64d6', 'uuid_generate_v4', '14d9536f-0092-4ddb-87f8-eddad14902bd');


SET session_replication_role TO DEFAULT;


