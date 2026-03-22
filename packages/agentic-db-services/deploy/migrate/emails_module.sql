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
  ('019d130d-a815-7f88-968f-06bf696a09c1', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a816-7411-a7a6-8f45bce99505', '019d130d-a908-7ac6-b490-603417d4ece9', '019d130d-aa20-7722-8e58-161d5b072411', '019d130c-f14b-7ef8-94e3-e005503a699d', 'emails');


SET session_replication_role TO DEFAULT;


