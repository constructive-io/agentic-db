-- Deploy: migrate/users_module
-- made with <3 @ constructive.io

-- requires: migrate/levels_module


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

INSERT INTO metaschema_modules_public.users_module (
  id,
  database_id,
  schema_id,
  table_id,
  table_name,
  type_table_id,
  type_table_name
) VALUES
  ('019d20cd-7988-7c50-91a9-60b00f1e126c', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7989-7590-b1bd-5347d43beb9d', '019d20cd-7a20-7176-823e-cca436cf06f3', 'users', '019d20cd-7ba7-7833-9e8a-d9dc8e078bc0', 'role_types');


SET session_replication_role TO DEFAULT;


