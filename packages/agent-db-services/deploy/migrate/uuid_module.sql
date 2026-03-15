-- Deploy: migrate/uuid_module
-- made with <3 @ constructive.io

-- requires: migrate/secure_table_provision


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

INSERT INTO metaschema_modules_public.uuid_module (
  id,
  database_id,
  schema_id,
  uuid_function,
  uuid_seed
) VALUES
  ('f7b54b8f-14fa-4624-b619-573b225c1239', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00816fb-bca4-4e67-6e1f-3b1e1a106bbe', 'uuid_generate_v4', '9085366f-6c6f-49b7-a4c9-c82d816fded5');


SET session_replication_role TO DEFAULT;


