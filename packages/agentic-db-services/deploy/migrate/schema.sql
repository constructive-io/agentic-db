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
  ('019d21f8-209b-7077-813e-e6f6707463df', '019d21f8-208e-7d66-9eaa-e762489889c1', 'public', 'agentic_db_public', NULL, true),
  ('019d21f8-209c-7cec-9f66-64c5101ae6b2', '019d21f8-208e-7d66-9eaa-e762489889c1', 'private', 'agentic_db_private', NULL, false),
  ('019d21f8-21b1-7a51-b694-96cca3ed6960', '019d21f8-208e-7d66-9eaa-e762489889c1', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d21f8-222d-73f0-a4cc-0209282faedd', '019d21f8-208e-7d66-9eaa-e762489889c1', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d21f8-22b1-7c5e-a77f-41d8b2cb5317', '019d21f8-208e-7d66-9eaa-e762489889c1', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d21f8-2657-7bef-9962-72063119a6ea', '019d21f8-208e-7d66-9eaa-e762489889c1', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d21f8-2849-7219-9483-a75d7bafa769', '019d21f8-208e-7d66-9eaa-e762489889c1', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d21f8-28c8-7b62-b93c-4f08c2b4da92', '019d21f8-208e-7d66-9eaa-e762489889c1', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d21f8-2bec-79f0-a7bb-5e0d6e773656', '019d21f8-208e-7d66-9eaa-e762489889c1', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d21f8-2c68-7475-97d5-d1e68cdff909', '019d21f8-208e-7d66-9eaa-e762489889c1', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d21f8-2f64-7538-a3ae-5d1d0acf8c05', '019d21f8-208e-7d66-9eaa-e762489889c1', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d21f8-3e3c-75cf-a776-8578687f0b50', '019d21f8-208e-7d66-9eaa-e762489889c1', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d21f8-3eda-7130-ac10-5a5b0584deef', '019d21f8-208e-7d66-9eaa-e762489889c1', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d21f8-47d6-7cda-9767-53fc84de7a58', '019d21f8-208e-7d66-9eaa-e762489889c1', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d21f8-486b-7ceb-b5f6-e86b410c0fd5', '019d21f8-208e-7d66-9eaa-e762489889c1', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d21f8-9f80-7195-b2bd-67a8c0cb2d04', '019d21f8-208e-7d66-9eaa-e762489889c1', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d21f8-a2a9-75f2-8c2a-84a537139f8c', '019d21f8-208e-7d66-9eaa-e762489889c1', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d21f8-b1f5-74c3-85a2-6d4695e3539d', '019d21f8-208e-7d66-9eaa-e762489889c1', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d21f8-b5a3-7a53-bfd4-b7a0cfbc6b77', '019d21f8-208e-7d66-9eaa-e762489889c1', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d21f8-b6da-7128-8ff8-541fbe088f3a', '019d21f8-208e-7d66-9eaa-e762489889c1', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d21f8-b7a5-7ca0-8d11-ff90d2d1dcb7', '019d21f8-208e-7d66-9eaa-e762489889c1', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d21f8-c48d-763c-bfb7-fd044a8aa014', '019d21f8-208e-7d66-9eaa-e762489889c1', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d21f8-c565-71f3-a987-a5c08a5ef7eb', '019d21f8-208e-7d66-9eaa-e762489889c1', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d21f8-d8ee-7420-8e3f-7a0aa354484c', '019d21f8-208e-7d66-9eaa-e762489889c1', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


