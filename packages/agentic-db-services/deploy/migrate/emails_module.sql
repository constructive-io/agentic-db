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
  ('019d21f8-b6d9-7bf3-96bc-ff69112e41b7', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b6da-7128-8ff8-541fbe088f3a', '019d21f8-b7a5-7ca0-8d11-ff90d2d1dcb7', '019d21f8-b880-7ce0-aaf7-439bd50fd939', '019d21f8-2335-70cb-b636-53bf74d97668', 'emails');


SET session_replication_role TO DEFAULT;


