-- Deploy: migrate/emails_module
-- made with <3 @ constructive.io

-- requires: migrate/invites_module


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

INSERT INTO metaschema_modules_public.emails_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  table_id,
  owner_table_id,
  table_name
) VALUES
  ('e72c6098-3009-cca8-d46c-9404c535312d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'c4122275-13d5-60b5-6e1c-89657a87ec34', 'df370469-c3cb-32a2-054c-173a2f06e5b7', 'c142ecba-4964-b3ec-3d3f-670c9fbc9a60', '5b5d99e1-9167-1378-cf99-58449ebc35bc', 'emails');


SET session_replication_role TO DEFAULT;


