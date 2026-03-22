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
  ('019d130c-f094-7ba9-befe-df8055719bed', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f095-7044-9f6d-6b3bd1c994f0', '019d130c-f14b-7ef8-94e3-e005503a699d', 'users', '019d130c-f317-76be-a3a9-d9329bdd8fd5', 'role_types');


SET session_replication_role TO DEFAULT;


