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
  ('579eb33c-3df9-4182-a009-bcfb66feeba0', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087c97-015d-40d8-69ee-7fe276989655', 'a0084057-323a-4174-3199-c0f7d710381c', 'a0080662-94ca-42f8-8e50-94eeff2e979a', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'emails');


SET session_replication_role TO DEFAULT;


