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
  ('019d19cf-b6ff-70eb-b9ad-f7b4340718cc', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b6ff-7624-ae4f-10e3952b1e72', '019d19cf-b7de-7e83-8ff2-4bbc282a7c89', '019d19cf-b8d2-7041-beac-5232995045d1', '019d19cf-04f9-762a-946a-add4e6430409', 'emails');


SET session_replication_role TO DEFAULT;


