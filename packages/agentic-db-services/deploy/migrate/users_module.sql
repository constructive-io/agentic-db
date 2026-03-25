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
  ('019d21f8-22b1-7729-a220-419eb0bec608', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-22b1-7c5e-a77f-41d8b2cb5317', '019d21f8-2335-70cb-b636-53bf74d97668', 'users', '019d21f8-24a4-745e-a181-df20331a1416', 'role_types');


SET session_replication_role TO DEFAULT;


