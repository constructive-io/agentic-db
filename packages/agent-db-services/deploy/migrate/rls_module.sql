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
  ('c778f779-d40d-4551-b079-62a7d38ef76e', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc12230-ad6e-4e94-6ec2-8add6b1da502', 'bfc1edd0-98c3-47df-acaa-c04878b922b4', 'bfc1aafe-89d4-40f3-a2dc-598b6f4bef42', 'bfc134f1-e2c5-4f75-d523-1ecc60ab663e', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


