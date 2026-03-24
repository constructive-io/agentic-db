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
  ('019d1dbf-d800-752b-ad00-cfd3e9b6b449', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'public', 'agentic_db_public', NULL, true),
  ('019d1dbf-d801-7f3c-a7f6-897ce7071d54', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'private', 'agentic_db_private', NULL, false),
  ('019d1dbf-d916-7f9e-b053-cd834ccf7c73', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d1dbf-d993-770b-93bd-d0eabb8adba7', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d1dbf-da1b-74e1-ad0c-325e810d428a', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d1dbf-ddbb-7fbf-9505-8db63eca57ee', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d1dbf-dfa6-7e3d-bdb1-3ff7b34348ef', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d1dbf-e02f-7d4d-8fb4-875790017881', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d1dbf-e374-7235-b758-72d345f56181', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d1dbf-e3f6-78ef-9642-13f3dec365eb', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d1dbf-e6fd-7837-9225-5b98c59d42dc', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d1dbf-f8da-7041-87cd-74e01456db0c', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d1dbf-f96f-786d-8c51-061c426cf98f', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d1dc0-030c-71b5-8d95-fe3ed949ed16', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d1dc0-03ac-77a8-9359-14b68f627f73', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d1dc0-7037-7615-903e-b746e81e9c80', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d1dc0-7355-7fc9-9605-627035d2a03b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d1dc0-8284-724f-89c7-49478a97f812', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d1dc0-8646-78cc-8723-be1a92282296', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d1dc0-877b-7228-a004-e1126128d743', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d1dc0-8842-76be-9040-db1ef7c49140', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d1dc0-9c66-768f-aad1-253050d10132', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d1dc0-9d34-7344-8783-d9e73c699e74', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d1dc0-b3ff-7ebd-81bf-a2b6f38198c3', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


