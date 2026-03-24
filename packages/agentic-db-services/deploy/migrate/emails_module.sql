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
  ('a48d732e-064d-f169-aa7b-6a4b8d0d1fa3', 'fdf8a620-6969-72d5-d89a-ed384259d249', '11ce582f-ee6f-02b8-a5aa-5d630e8f9569', 'e0ca3db8-86c1-6d4a-9868-f63771343a59', '2398857e-08f4-f4e4-3e67-f662d241f1d2', 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'emails');


SET session_replication_role TO DEFAULT;


