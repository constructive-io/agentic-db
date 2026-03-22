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
  ('3d7abd21-f70a-60d8-046f-f6f4926c6b8b', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a1472811-e8bf-d6d5-57aa-ed725576e8a0', '63d36554-dc1f-cb6d-8af7-5d38aa8f3fcc', 'bb40e62d-b9fe-c9fa-01f6-0bf8fc749264', 'af63b0f7-468e-80da-17d5-937b1eddfff5', '5d9c849b-e962-041a-de77-54774d5d1e62', 'authenticate', 'authenticate_strict', 'current_user', 'current_user_id');


SET session_replication_role TO DEFAULT;


