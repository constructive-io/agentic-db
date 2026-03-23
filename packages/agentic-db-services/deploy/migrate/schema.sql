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
  ('0d110a49-7d72-7da5-b7e0-6723b10451ca', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'public', 'agentic_db_public', NULL, true),
  ('b24bcaa5-c86c-47d1-8a22-44a1add68332', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'private', 'agentic_db_private', NULL, false),
  ('57f59ebf-2bbd-02cc-078c-24de57b20d72', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'app_public', 'agentic_db_app_public', NULL, true),
  ('026ebbb8-29d6-6943-7c7e-8fe5495c8959', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'app_private', 'agentic_db_app_private', NULL, false),
  ('e3016d98-2f74-e10d-e261-1f344b73221c', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'users_public', 'agentic_db_users_public', NULL, true),
  ('b6a5ec83-0ccd-ffd2-6986-03855824ead2', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('1eb676bd-efec-b03f-c481-02d66f5661b4', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('97c5db8e-f200-bbf1-5070-324f26b08e19', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('d1dc6b60-1fea-6c67-edaf-861a5409e953', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('80bd8b60-df08-4f5a-d8aa-1e96eaa35431', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('363e32c6-5928-0187-5bf0-d6e3c60641bb', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('87da6cfc-f93f-9650-e6d0-ee5ec4efcb31', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'status_public', 'agentic_db_status_public', NULL, true),
  ('fe765cb3-c2e5-fc6a-c1df-d034dbcae169', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'status_private', 'agentic_db_status_private', NULL, false),
  ('dcd1ab85-9748-27a6-2adf-15fffd2ac95d', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('23064c1c-d74e-fbca-ad66-0717f46b7fee', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('1fa932b6-21cb-37ec-8e38-4187880b3d18', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('1464c5a1-1149-ffdc-99c9-e0a4a2e561f2', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('0f25cdd0-2259-3a86-08c3-4235c5c30be5', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('4a9a13b9-d2a2-cc30-855d-7b0727cfcc25', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('f8aa7ca8-38f6-d759-7629-8b4d99b9eca7', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('c059c259-67d4-6198-4cdf-badacdd556e5', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('66adacfb-2f2a-8624-f08e-87d9239e2c72', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('636ed544-85b9-bc40-15d5-32f32727d851', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('86191c7a-22fc-db1f-3808-cd00ead6a666', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


