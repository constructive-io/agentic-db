-- Deploy: migrate/rls_module
-- made with <3 @ constructive.io

-- requires: migrate/api_schemas


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

INSERT INTO metaschema_modules_public.rls_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  session_credentials_table_id,
  sessions_table_id,
  users_table_id,
  authenticate,
  authenticate_strict,
  "current_role",
  current_role_id
) VALUES
  ('521e0613-b2e7-fcad-86be-8ef8a064b74d', '2ef50f93-192b-b168-969d-304c8e675e1d', '9ccd1a15-747d-b3dc-6ed2-41691cff035e', 'd17fa32f-9906-df6a-43d7-290faf7c818a', '445ed90f-4b8d-a2d2-f7e8-09a18da42629', '34851162-80bb-d63c-10ff-0e95ab327b22', '5353e947-3e3f-3914-7fd1-1370926dd743', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


