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
  ('019d20cd-7734-7db9-aef3-cff73c2e9017', '019d20cd-7722-776e-8fb8-f96db2895639', 'public', 'agentic_db_public', NULL, true),
  ('019d20cd-7737-7669-9538-212258ab0cf6', '019d20cd-7722-776e-8fb8-f96db2895639', 'private', 'agentic_db_private', NULL, false),
  ('019d20cd-785e-7b1f-a03f-2bcbd7bd263e', '019d20cd-7722-776e-8fb8-f96db2895639', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d20cd-78e4-7f37-a28f-380b9fd2a60f', '019d20cd-7722-776e-8fb8-f96db2895639', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d20cd-7989-7590-b1bd-5347d43beb9d', '019d20cd-7722-776e-8fb8-f96db2895639', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d20cd-7d80-7824-a07d-cdd3cd495d95', '019d20cd-7722-776e-8fb8-f96db2895639', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d20cd-7f83-756f-beec-4c80721bb185', '019d20cd-7722-776e-8fb8-f96db2895639', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d20cd-800c-7d58-86d7-7f79ef279fdc', '019d20cd-7722-776e-8fb8-f96db2895639', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d20cd-8367-728f-934d-dda7aac19fad', '019d20cd-7722-776e-8fb8-f96db2895639', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d20cd-83f0-7511-8493-096051b60318', '019d20cd-7722-776e-8fb8-f96db2895639', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d20cd-8712-70a5-a537-f9df3e9c5af1', '019d20cd-7722-776e-8fb8-f96db2895639', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d20cd-96d1-7340-a5a1-f4a157852688', '019d20cd-7722-776e-8fb8-f96db2895639', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d20cd-9768-738c-9adb-ae0eac103b6f', '019d20cd-7722-776e-8fb8-f96db2895639', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d20cd-a115-7835-b894-11934151e604', '019d20cd-7722-776e-8fb8-f96db2895639', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d20cd-a1b6-76ee-aa9a-49abc7abd4ce', '019d20cd-7722-776e-8fb8-f96db2895639', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d20ce-00cd-7de9-ac2f-df41e132f181', '019d20cd-7722-776e-8fb8-f96db2895639', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d20ce-044e-70ee-9930-99df038c7fd4', '019d20cd-7722-776e-8fb8-f96db2895639', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d20ce-1466-7de4-901f-669c732ca9d2', '019d20cd-7722-776e-8fb8-f96db2895639', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d20ce-1863-7917-acc8-8e111e137cd1', '019d20cd-7722-776e-8fb8-f96db2895639', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d20ce-19b6-7f06-8b7a-6fb6ff1d8cf1', '019d20cd-7722-776e-8fb8-f96db2895639', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d20ce-1aa3-7f70-8343-8ef4750e37a1', '019d20cd-7722-776e-8fb8-f96db2895639', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d20ce-2936-73b8-b230-6265d0ac39d1', '019d20cd-7722-776e-8fb8-f96db2895639', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d20ce-2a20-7b18-938c-08072bcf174b', '019d20cd-7722-776e-8fb8-f96db2895639', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d20ce-4056-7d86-8b16-56eae37cb455', '019d20cd-7722-776e-8fb8-f96db2895639', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


