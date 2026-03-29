-- Deploy: migrate/secrets_module
-- made with <3 @ constructive.io

-- requires: migrate/sessions_module


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

INSERT INTO metaschema_modules_public.secrets_module (
  id,
  database_id,
  schema_id,
  table_id,
  table_name
) VALUES
  ('019d37ba-3e4c-76d4-a2c0-bb084dd3dc58', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-3e4c-7e4d-8037-192a98fe0f73', '019d37ba-3f14-72a9-9869-0956d3428991', 'secrets');


SET session_replication_role TO DEFAULT;


