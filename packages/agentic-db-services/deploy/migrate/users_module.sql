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
  ('019d0ffe-5004-7d3b-91fa-931a57f417ab', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5005-7453-aa5a-524b38bb4964', '019d0ffe-509c-7e69-b073-260da2d7f651', 'users', '019d0ffe-5213-7996-ac42-aaee916243da', 'role_types');


SET session_replication_role TO DEFAULT;


