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
  ('019d4300-6c86-70f0-9a21-4eb0b5af7a35', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6c86-786a-b55f-0c75438df2a1', '019d4300-6d68-7dee-aad9-7434f9b11bbe', '019d4300-6e5f-7970-86cd-e5e4637e320d', '019d42ff-ca62-77a0-ab97-b8d784c420dc', 'emails');


SET session_replication_role TO DEFAULT;


