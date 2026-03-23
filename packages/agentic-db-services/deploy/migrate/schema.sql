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
  ('019d19cf-021e-7cde-bdc7-7c4ab8669c9d', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'public', 'agentic_db_public', NULL, true),
  ('019d19cf-0220-7644-9117-ef242327829d', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'private', 'agentic_db_private', NULL, false),
  ('019d19cf-034d-76ab-a3fe-68d1866f8eb7', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d19cf-03d5-7bdc-b0c9-0cf820b45932', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d19cf-046b-702e-bf02-a9129bf1379d', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d19cf-0856-718d-a159-1e8137d9e65b', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d19cf-0a61-7a5a-9145-45b1f55c0d38', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d19cf-0af6-787e-8582-98cb6a40893e', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d19cf-0e86-7eb9-b558-3e6f5c17954b', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d19cf-0f18-7d02-acfc-a50c6bdcb569', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d19cf-126a-7c9b-a114-1a6fdeac1be9', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d19cf-2546-7c03-8ac0-024b62131d47', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d19cf-25dd-7bec-8590-2f1edefaa365', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d19cf-2fa0-7f9c-94ff-c9c0d905b63b', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d19cf-3043-7361-90a1-6e44583c87f2', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d19cf-9db8-7a4b-a9fd-d4a1c61dc063', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d19cf-a124-794b-b34d-0036b3830517', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d19cf-b1a2-7b27-8e25-23bafd3b2a95', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d19cf-b5aa-7a61-8218-1831188e4aa5', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d19cf-b6ff-7624-ae4f-10e3952b1e72', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d19cf-b7de-7e83-8ff2-4bbc282a7c89', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d19cf-ce38-73d6-990e-dbeb412ef697', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d19cf-cf22-7e87-8b6c-9e9cb2566956', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d19cf-e88b-7849-a529-c7fa2d84a650', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


