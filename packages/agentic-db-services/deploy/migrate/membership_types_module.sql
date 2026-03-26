-- Deploy: migrate/membership_types_module
-- made with <3 @ constructive.io

-- requires: migrate/hierarchy_module


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

INSERT INTO metaschema_modules_public.membership_types_module (
  id,
  database_id,
  schema_id,
  table_id,
  table_name
) VALUES
  ('019d2831-667f-7729-ab7b-8048d4fb3792', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-667f-7d04-8346-45045ab70d5c', '019d2831-6704-7244-a966-c4345e556441', 'membership_types');


SET session_replication_role TO DEFAULT;


