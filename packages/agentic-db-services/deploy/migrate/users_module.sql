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
  ('019d13bc-212d-7a51-ba0d-47e5c2b12b77', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-212d-7f3b-8919-9567227a7198', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', 'users', '019d13bc-22ee-7e54-b7f4-49189e0164a8', 'role_types');


SET session_replication_role TO DEFAULT;


