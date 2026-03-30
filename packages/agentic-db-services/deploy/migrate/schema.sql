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
  ('019d4100-402f-7b7c-923e-4c80817815a0', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'public', 'agentic_db_public', NULL, true),
  ('019d4100-4031-765d-be6a-f1edfb9ef4fc', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'private', 'agentic_db_private', NULL, false),
  ('019d4100-4154-72f1-8623-47841b98f962', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d4100-41df-7c01-bf88-d26d19a898a8', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d4100-426f-7cf3-aac9-0253633a24da', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d4100-462b-77b8-87ba-02549f2d20fa', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d4100-481c-72d3-b7e1-773b577348a9', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d4100-489e-77a4-8e46-01d516ab83df', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d4100-4bfd-7cba-9df3-7205fb4bee7c', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d4100-4c8b-7ef6-b5ba-efe1e5fe80d8', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d4100-4fd2-7821-879b-f9a0e18d11a4', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d4100-62f3-7a62-98ba-43c01a18a9cf', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d4100-6389-7a8d-9a65-7a0cee4749fc', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d4100-6cf3-7f32-8e37-14f0ed8367d0', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d4100-6d8e-7377-ad82-a9d83931f7d7', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d4100-d8f4-7fc2-859a-7a00a1f06af1', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d4100-dc43-701a-a204-4c93ab1d9795', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d4100-ec07-731d-bf2c-a646930faaab', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d4100-f000-7391-bec6-8772210a7114', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d4100-f141-7a23-8533-2abc139814ad', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d4100-f21d-738d-8750-7d80f3fc01fe', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d4101-07c7-7285-91f6-168d28d3b82a', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d4101-08a3-7de8-9ad1-71510ef27e68', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d4101-210f-78a8-8af6-db5dd10d3616', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


