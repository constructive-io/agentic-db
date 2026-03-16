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
  ('9bc11c80-5ec1-40f8-48ec-374645fffa98', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc18620-fd63-48b7-71f3-dd8a5a4000b5', 'encrypted_secrets_update_tg', NULL, NULL),
  ('9bc10cde-e0e0-424e-9bc4-e3cb1449bedb', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc18620-fd63-48b7-71f3-dd8a5a4000b5', 'encrypted_secrets_insert_tg', NULL, NULL);


SET session_replication_role TO DEFAULT;


