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
  ('019d1736-5888-725c-a61a-bb7e1ef6e719', '019d1736-587a-73df-addd-59801f8d68ca', 'public', 'agentic_db_public', NULL, true),
  ('019d1736-588a-703e-9ecc-c70daaaab8ac', '019d1736-587a-73df-addd-59801f8d68ca', 'private', 'agentic_db_private', NULL, false),
  ('019d1736-598c-769b-be6e-86d64b52b70b', '019d1736-587a-73df-addd-59801f8d68ca', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d1736-5a06-75dd-a00c-752589c0424f', '019d1736-587a-73df-addd-59801f8d68ca', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d1736-5a90-7362-80e0-c9cf3c5ff198', '019d1736-587a-73df-addd-59801f8d68ca', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d1736-5dde-7edf-9435-18611c6fa94e', '019d1736-587a-73df-addd-59801f8d68ca', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d1736-5f93-774f-a377-2f1fcbc9793f', '019d1736-587a-73df-addd-59801f8d68ca', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d1736-600b-7c38-9e90-3dfb75ceada9', '019d1736-587a-73df-addd-59801f8d68ca', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d1736-62e4-7fa8-bf7c-9cc71dcb0873', '019d1736-587a-73df-addd-59801f8d68ca', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d1736-635e-78c0-983d-73e509f72ac8', '019d1736-587a-73df-addd-59801f8d68ca', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d1736-6621-77a9-a38f-5d297c68ea95', '019d1736-587a-73df-addd-59801f8d68ca', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d1736-73fa-76db-b254-e0f8632658a4', '019d1736-587a-73df-addd-59801f8d68ca', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d1736-7484-76d1-b753-afa075ca8490', '019d1736-587a-73df-addd-59801f8d68ca', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d1736-7d1d-7504-b23b-a3b157e8661f', '019d1736-587a-73df-addd-59801f8d68ca', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d1736-7da9-7ccd-a31c-213695710c32', '019d1736-587a-73df-addd-59801f8d68ca', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d1736-d034-7b92-8d8c-d8d73b808d57', '019d1736-587a-73df-addd-59801f8d68ca', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d1736-d324-7b0c-a6f3-8e7873a32522', '019d1736-587a-73df-addd-59801f8d68ca', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d1736-e12a-7894-aa33-3ba3c677fd10', '019d1736-587a-73df-addd-59801f8d68ca', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d1736-e4a2-7ff4-8340-618a60f05c9a', '019d1736-587a-73df-addd-59801f8d68ca', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d1736-e5ca-7a34-b722-ca6747e9fecf', '019d1736-587a-73df-addd-59801f8d68ca', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d1736-e68e-7fbd-96f6-2db90ef5b971', '019d1736-587a-73df-addd-59801f8d68ca', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d1736-f322-7351-91d7-45caecc5196f', '019d1736-587a-73df-addd-59801f8d68ca', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d1736-f3f1-797c-ae7e-14fa0326913f', '019d1736-587a-73df-addd-59801f8d68ca', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d1737-067f-71f1-bdd0-1f6cce971d05', '019d1736-587a-73df-addd-59801f8d68ca', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


