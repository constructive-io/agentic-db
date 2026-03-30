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
  ('019d4100-f141-7478-bf8c-04bb458c4df6', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-f141-7a23-8533-2abc139814ad', '019d4100-f21d-738d-8750-7d80f3fc01fe', '019d4100-f2f6-72ee-947e-103acbda3543', '019d4100-42f6-7ae2-9811-58ffe46470b0', 'emails');


SET session_replication_role TO DEFAULT;


