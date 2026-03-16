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
  ('8063ec9f-401b-46ce-9676-4207f7e98756', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc174e0-ab72-4925-5ee9-91915c80ae07', 'uuid_generate_v4', '569edc6d-3f84-4a51-a145-e5d82d9c06d3');


SET session_replication_role TO DEFAULT;


