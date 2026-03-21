-- Deploy: migrate/rls_module
-- made with <3 @ constructive.io

-- requires: migrate/api_schemas


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

INSERT INTO metaschema_modules_public.rls_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  session_credentials_table_id,
  sessions_table_id,
  users_table_id,
  authenticate,
  authenticate_strict,
  "current_role",
  current_role_id
) VALUES
  ('019d0ffe-eb32-74f8-9b43-1f2c044970cf', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-eb33-7292-8ac2-b92b377281ba', '019d0ffe-d8bb-787d-afd6-15360479f5b7', '019d0ffe-dda4-7960-b035-02a7353ebb5e', '019d0ffe-d97c-73e8-b436-ea49ff4aa015', '019d0ffe-509c-7e69-b073-260da2d7f651', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


