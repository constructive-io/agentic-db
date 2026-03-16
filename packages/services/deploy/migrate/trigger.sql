-- Deploy: migrate/trigger
-- made with <3 @ constructive.io

-- requires: migrate/index


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

INSERT INTO metaschema_public.trigger (
  id,
  database_id,
  table_id,
  name,
  event,
  function_name
) VALUES
  ('bfc189a1-3fac-4344-7f98-923aeeecfbbc', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc131f7-8b42-4379-e0d8-989cd25245cd', 'encrypted_secrets_update_tg', NULL, NULL),
  ('bfc1707c-c569-47d6-1880-804501e4919b', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc131f7-8b42-4379-e0d8-989cd25245cd', 'encrypted_secrets_insert_tg', NULL, NULL);


SET session_replication_role TO DEFAULT;


