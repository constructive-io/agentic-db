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
  ('82dfa266-c847-d211-8a4a-180d60aaf62b', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'f8aa7ca8-38f6-d759-7629-8b4d99b9eca7', 'c059c259-67d4-6198-4cdf-badacdd556e5', 'd6a52f9e-276e-9abe-6b34-8fdc543037b6', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', 'emails');


SET session_replication_role TO DEFAULT;


