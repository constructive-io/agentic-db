-- Deploy: migrate/phone_numbers_module
-- made with <3 @ constructive.io

-- requires: migrate/encrypted_secrets_module


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

INSERT INTO metaschema_modules_public.phone_numbers_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  table_id,
  owner_table_id,
  table_name
) VALUES
  ('43616f61-22b8-f48f-de43-7cd0e2731e51', '2ef50f93-192b-b168-969d-304c8e675e1d', '4b4d3a75-1494-5d8e-33ac-b6aeea6cddb7', '6fac8c0d-a376-0520-b5a9-4002080cbea9', 'a26bc763-90fc-5cb4-377a-4fdee57f8ed5', '5353e947-3e3f-3914-7fd1-1370926dd743', 'phone_numbers');


SET session_replication_role TO DEFAULT;


