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
  ('a4547199-f261-a69c-b271-b0f8ad1f0a61', '14b01c2d-072a-5594-645a-675751a83d86', 'e77968b2-9aff-6a76-b82f-12052120fbdf', '5258dec3-0cde-6103-1859-08598c428740', 'users', 'b9a2458b-e527-2317-1c85-ccdc9a528eca', 'role_types');


SET session_replication_role TO DEFAULT;


