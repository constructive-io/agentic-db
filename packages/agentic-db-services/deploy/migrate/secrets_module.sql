-- Deploy: migrate/secrets_module
-- made with <3 @ constructive.io

-- requires: migrate/sessions_module


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

INSERT INTO metaschema_modules_public.secrets_module (
  id,
  database_id,
  schema_id,
  table_id,
  table_name
) VALUES
  ('019d1736-d034-7250-b2d4-21c02d68b5f4', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-d034-7b92-8d8c-d8d73b808d57', '019d1736-d0ee-7a2b-9541-ec1bcdb1426d', 'secrets');


SET session_replication_role TO DEFAULT;


