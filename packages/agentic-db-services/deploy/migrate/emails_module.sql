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
  ('53184e5d-5d78-edc1-0278-7f1cbc73f3a8', '14b01c2d-072a-5594-645a-675751a83d86', 'ad44e072-783e-1315-4950-4c52779e8bd0', '73486766-2491-e7d3-2837-0af7a0aa0dc1', 'b2be63d4-8218-bca7-145e-c843c64b2e34', '5258dec3-0cde-6103-1859-08598c428740', 'emails');


SET session_replication_role TO DEFAULT;


