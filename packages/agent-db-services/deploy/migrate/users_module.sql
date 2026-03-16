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
  ('a2b09331-9ac1-499b-8701-0a1df3576c44', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1130e-d66c-4f53-1b19-a63641ce65c4', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'users', 'bfc1e538-6e45-43b8-f65d-6e85b24dd75a', 'role_types');


SET session_replication_role TO DEFAULT;


