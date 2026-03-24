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
  ('019d1dc0-877a-7dd7-a9ce-b84c5986e031', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-877b-7228-a004-e1126128d743', '019d1dc0-8842-76be-9040-db1ef7c49140', '019d1dc0-8927-74fe-b83b-edb01201576e', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', 'emails');


SET session_replication_role TO DEFAULT;


