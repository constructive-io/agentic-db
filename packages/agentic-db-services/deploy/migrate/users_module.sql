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
  ('019d934f-88b0-73f9-89ae-d347570e270f', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-88b0-7c44-8fef-6ea1f4259d3a', '019d934f-898e-73d5-9f57-6c8589048db5', 'users', '019d934f-8b8d-76a5-997f-e81f50a32a16', 'role_types');


SET session_replication_role TO DEFAULT;


