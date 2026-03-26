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
  ('019d2831-608e-7f46-9d56-446eaee3a824', '019d2831-6080-7e86-a360-21cd48c6ce49', 'public', 'agentic_db_public', NULL, true),
  ('019d2831-6090-792d-9861-7dcdaaf0b256', '019d2831-6080-7e86-a360-21cd48c6ce49', 'private', 'agentic_db_private', NULL, false),
  ('019d2831-61aa-774b-8230-c14620e5c085', '019d2831-6080-7e86-a360-21cd48c6ce49', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d2831-622e-727a-b8f7-74a29be0fa18', '019d2831-6080-7e86-a360-21cd48c6ce49', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d2831-62c0-7a9d-9df1-38d16ac6491c', '019d2831-6080-7e86-a360-21cd48c6ce49', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d2831-667f-7d04-8346-45045ab70d5c', '019d2831-6080-7e86-a360-21cd48c6ce49', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d2831-687c-75b3-bd5d-e4621eef4b99', '019d2831-6080-7e86-a360-21cd48c6ce49', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d2831-6906-7f9b-900a-a76aba4f8850', '019d2831-6080-7e86-a360-21cd48c6ce49', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d2831-6c5a-7621-8f3b-bfd18a2a008a', '019d2831-6080-7e86-a360-21cd48c6ce49', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d2831-6ce0-7fe0-a125-bfce08a40dfe', '019d2831-6080-7e86-a360-21cd48c6ce49', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d2831-6ff3-7744-8389-bc9167060dbe', '019d2831-6080-7e86-a360-21cd48c6ce49', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d2831-8242-76a0-960a-c3d061c2b4f5', '019d2831-6080-7e86-a360-21cd48c6ce49', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d2831-82de-7d77-9f6a-db142ac57172', '019d2831-6080-7e86-a360-21cd48c6ce49', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d2831-8c87-793e-8f2e-72321e670b1e', '019d2831-6080-7e86-a360-21cd48c6ce49', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d2831-8d24-72bd-bb46-255f5e515fb6', '019d2831-6080-7e86-a360-21cd48c6ce49', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d2831-fbe4-7044-acf8-116219ceb909', '019d2831-6080-7e86-a360-21cd48c6ce49', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d2831-ff21-7762-b954-2246c850f297', '019d2831-6080-7e86-a360-21cd48c6ce49', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d2832-0e75-7d6b-9434-1bb5751ab420', '019d2831-6080-7e86-a360-21cd48c6ce49', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d2832-1244-7e20-87ce-9c2c416ac919', '019d2831-6080-7e86-a360-21cd48c6ce49', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d2832-1382-7e2d-a593-789721ef4d4c', '019d2831-6080-7e86-a360-21cd48c6ce49', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d2832-1456-702c-8ded-db3f420fc155', '019d2831-6080-7e86-a360-21cd48c6ce49', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d2832-29a1-7ccd-8ca7-8a58c363115b', '019d2831-6080-7e86-a360-21cd48c6ce49', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d2832-2a75-77fa-86b4-3c1f2cca2270', '019d2831-6080-7e86-a360-21cd48c6ce49', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d2832-433c-75c6-bad2-dcc36b599875', '019d2831-6080-7e86-a360-21cd48c6ce49', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


