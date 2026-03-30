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
  ('019d3d15-7336-738f-a61d-436e881e4411', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-7336-7a3d-886a-97420e3e69cb', '019d3d15-73f7-7913-908f-626b5096c71c', '019d3d15-74c8-7325-b628-72fb80678dc9', '019d3d14-e756-7f18-bcd9-be9300e74947', 'emails');


SET session_replication_role TO DEFAULT;


