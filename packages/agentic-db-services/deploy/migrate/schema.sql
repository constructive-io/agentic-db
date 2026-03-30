-- Deploy: migrate/schema
-- made with <3 @ constructive.io

-- requires: migrate/database


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

INSERT INTO metaschema_public.schema (
  id,
  database_id,
  name,
  schema_name,
  description,
  is_public
) VALUES
  ('019d3d14-e4e7-7c24-8410-ba082ff14805', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'public', 'agentic_db_public', NULL, true),
  ('019d3d14-e4e9-7ba4-977e-1842b1c622be', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'private', 'agentic_db_private', NULL, false),
  ('019d3d14-e5ec-7079-b124-44e841c2c66b', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d3d14-e65c-7a7f-ba81-49bacc79816d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d3d14-e6e0-7573-ab64-323d1cdd7cd6', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d3d14-ea14-72c7-ab2a-04b31513f93e', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d3d14-ebc2-7b69-8a32-3c7696c40ef3', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d3d14-ec35-72f7-943d-fbc2a569424a', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d3d14-ef38-7646-a438-2558ec621de0', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d3d14-efb1-794e-8eee-db9422566dca', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d3d14-f282-7e09-b26b-97ab505e6016', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d3d15-00e0-7300-94bf-42cdbc3e8b9e', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d3d15-016c-7a1a-b35f-2013f481914b', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d3d15-0a2d-7891-a59e-8dff9fa730ee', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d3d15-0ac0-7558-a324-5b320ea79f50', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d3d15-5d56-75b7-9b8f-6d84bd05eb11', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d3d15-6043-7486-bb54-456ca2316406', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d3d15-6e78-7942-b67d-c7673e22a59a', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d3d15-720a-7844-b950-86f630c27d9d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d3d15-7336-7a3d-886a-97420e3e69cb', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d3d15-73f7-7913-908f-626b5096c71c', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d3d15-80e5-79c7-86a8-8635225b77e9', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d3d15-81af-7d10-9a0f-f99867462fec', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d3d15-9483-7920-8090-41a359bea798', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


