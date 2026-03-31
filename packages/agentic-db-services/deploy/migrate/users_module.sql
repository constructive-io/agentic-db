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
  ('019d416f-377c-7e8a-985b-46348658221b', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-377d-7503-9eca-199aa3a1bcdb', '019d416f-384a-79e2-9379-99ca3460e274', 'users', '019d416f-3a38-7648-90d6-409a2f6b704d', 'role_types');


SET session_replication_role TO DEFAULT;


