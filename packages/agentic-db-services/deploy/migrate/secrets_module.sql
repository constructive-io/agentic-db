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
  ('c8ee24bf-09bc-fcd0-7f1a-c497f841d346', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e695c734-fa1c-d164-4946-4587a97f3b04', 'a42d3838-c59b-b8fc-2b55-757cd14c427e', 'secrets');


SET session_replication_role TO DEFAULT;


