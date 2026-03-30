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
  ('019d3dab-863e-70a8-b65e-eac7b41334e0', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-863e-765e-a862-79daa7dfbec1', '019d3dab-8718-7be4-a566-b10d72950c34', 'secrets');


SET session_replication_role TO DEFAULT;


