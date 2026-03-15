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
  ('a00816fb-bca4-4e67-6e1f-3b1e1a106bbe', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'public', 'agent_db_services_public', NULL, true),
  ('a00854f5-4b8d-41a6-088b-8520011b17b4', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'private', 'agent_db_services_private', NULL, false),
  ('a008a53d-0b70-48d6-5e13-1682a4fd4f75', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'app_public', 'agent_db_services_app_public', NULL, true),
  ('a008738f-1b63-4dd7-1d8e-73e90046a53a', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'app_private', 'agent_db_services_app_private', NULL, false),
  ('a008cadd-c4c5-4c88-4033-6c9fd5982ee3', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'users_public', 'agent_db_services_users_public', NULL, true),
  ('a0087970-3d1f-473c-4c81-937a8d8eeb0c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'memberships_public', 'agent_db_services_memberships_public', NULL, true),
  ('a008c1a4-1633-460e-0e29-b4a5f9612958', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'permissions_public', 'agent_db_services_permissions_public', NULL, true),
  ('a008a5aa-ce13-493e-c9a8-a75193a14795', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'permissions_private', 'agent_db_services_permissions_private', NULL, false),
  ('a00833b1-9fd1-4dfc-9b9c-13d14a04fc38', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'limits_public', 'agent_db_services_limits_public', NULL, true),
  ('a0088e12-b10a-4ebd-fac0-60096f51bd8c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'limits_private', 'agent_db_services_limits_private', NULL, false),
  ('a008cef5-a8b2-4e8e-a661-699d408148cc', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'memberships_private', 'agent_db_services_memberships_private', NULL, false),
  ('a008be4f-09fb-47fd-01fa-c08da866a712', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'status_public', 'agent_db_services_status_public', NULL, true),
  ('a008173a-a0a7-4f93-3657-ce27c46f7964', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'status_private', 'agent_db_services_status_private', NULL, false),
  ('a0082352-e9aa-438c-33bf-bf8133b18d61', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'profiles_public', 'agent_db_services_profiles_public', NULL, true),
  ('a008e060-acc4-4224-2479-4b6c9d15367a', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'profiles_private', 'agent_db_services_profiles_private', NULL, false),
  ('a008afdd-6d77-4ced-08f3-925ea97c8df2', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'simple_secrets', 'agent_db_services_simple_secrets', NULL, true),
  ('a0081108-0bf8-4a86-9a05-a0669b2c1d4b', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'auth_private', 'agent_db_services_auth_private', NULL, false),
  ('a008da9c-2867-43e7-2755-5949d3ceffd4', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'encrypted', 'agent_db_services_encrypted', NULL, true),
  ('a0081397-cee5-40ce-2fe9-6495cc0516a4', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'auth_public', 'agent_db_services_auth_public', NULL, true),
  ('a0087c97-015d-40d8-69ee-7fe276989655', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'user_identifiers_public', 'agent_db_services_user_identifiers_public', NULL, true),
  ('a0084057-323a-4174-3199-c0f7d710381c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'user_identifiers_private', 'agent_db_services_user_identifiers_private', NULL, false),
  ('a0084f98-8b27-43b8-3b87-48168ff156f4', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'invites_public', 'agent_db_services_invites_public', NULL, true),
  ('a008e048-1a39-4a79-9697-cd4186f343b6', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'invites_private', 'agent_db_services_invites_private', NULL, false),
  ('a0087acf-ae83-4e8b-ee41-1447ce3746f2', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'logging_public', 'agent_db_services_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


