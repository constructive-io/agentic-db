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
  ('182bf678-5f2d-c100-543b-72ef77f8c0be', 'fdf8a620-6969-72d5-d89a-ed384259d249', '87f71f30-fdc9-e2b0-53e3-d11ad859f75e', 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'users', '3f665f69-03b5-acb4-9c56-797a83553e43', 'role_types');


SET session_replication_role TO DEFAULT;


