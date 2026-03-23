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
  ('019d19cf-046a-7ab0-8525-aa924937a78c', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-046b-702e-bf02-a9129bf1379d', '019d19cf-04f9-762a-946a-add4e6430409', 'users', '019d19cf-0673-752c-976c-6f3f68b0fc27', 'role_types');


SET session_replication_role TO DEFAULT;


