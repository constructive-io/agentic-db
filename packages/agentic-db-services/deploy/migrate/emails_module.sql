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
  ('019d0ffe-ec7e-7823-b318-be74d57d64fa', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-ec7f-7063-8b91-80cd2dd12080', '019d0ffe-ed54-7fef-933f-dacbeb5ee307', '019d0ffe-ee29-7bb1-8b74-03c7f795b113', '019d0ffe-509c-7e69-b073-260da2d7f651', 'emails');


SET session_replication_role TO DEFAULT;


