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
  ('a0085fbe-7b8f-428c-72f8-db68d8213228', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0088ff1-7a1c-4128-2a86-09094ab2efc2', 'encrypted_secrets_update_tg', NULL, NULL),
  ('a0088f3c-e652-4f89-0930-85ba668b447f', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0088ff1-7a1c-4128-2a86-09094ab2efc2', 'encrypted_secrets_insert_tg', NULL, NULL);


SET session_replication_role TO DEFAULT;


