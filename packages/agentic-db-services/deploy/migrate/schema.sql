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
  ('019d934f-850b-7813-9f83-812ad0c59d9b', '019d934f-84fc-7efb-8598-917bbf218b99', 'public', 'agentic_db_public', NULL, true),
  ('019d934f-850d-75d9-a768-aec5360b75e3', '019d934f-84fc-7efb-8598-917bbf218b99', 'private', 'agentic_db_private', NULL, false),
  ('019d934f-86cf-719c-a1e1-ae00d64d62a7', '019d934f-84fc-7efb-8598-917bbf218b99', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d934f-87bc-7e14-aa13-ebee531db15d', '019d934f-84fc-7efb-8598-917bbf218b99', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d934f-88b0-7c44-8fef-6ea1f4259d3a', '019d934f-84fc-7efb-8598-917bbf218b99', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d934f-8e3d-704c-8fdf-d84d858c8b17', '019d934f-84fc-7efb-8598-917bbf218b99', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d934f-913f-7c73-8f48-1dbb423814b9', '019d934f-84fc-7efb-8598-917bbf218b99', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d934f-9218-7cd9-857b-02961dca2504', '019d934f-84fc-7efb-8598-917bbf218b99', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d934f-972e-7422-8b8c-2f12fe866d0f', '019d934f-84fc-7efb-8598-917bbf218b99', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d934f-980b-72b0-a3e0-4e3c2a56ca1e', '019d934f-84fc-7efb-8598-917bbf218b99', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d934f-9cee-7bae-93fd-ad757080ee4a', '019d934f-84fc-7efb-8598-917bbf218b99', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d934f-b449-7b86-b434-c6dcc727af17', '019d934f-84fc-7efb-8598-917bbf218b99', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d934f-b534-709a-a6b2-49b1d3cf925e', '019d934f-84fc-7efb-8598-917bbf218b99', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d934f-c321-78b7-be72-01cbadd6f3c0', '019d934f-84fc-7efb-8598-917bbf218b99', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d934f-c40c-753c-b9d1-b4c643b5f733', '019d934f-84fc-7efb-8598-917bbf218b99', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d9350-4845-785b-93f6-30547a07a580', '019d934f-84fc-7efb-8598-917bbf218b99', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d9350-4d5c-7d60-bb51-0825b3c10185', '019d934f-84fc-7efb-8598-917bbf218b99', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d9350-6266-7279-99ec-06e05a2db139', '019d934f-84fc-7efb-8598-917bbf218b99', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d9350-6805-764f-b39f-ecdabb8e06b8', '019d934f-84fc-7efb-8598-917bbf218b99', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d9350-6aa4-7889-a98e-8295bc192844', '019d934f-84fc-7efb-8598-917bbf218b99', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d9350-6bd1-721a-ada9-5d48abfdaf4a', '019d934f-84fc-7efb-8598-917bbf218b99', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d9350-812d-747c-959c-e981a902de13', '019d934f-84fc-7efb-8598-917bbf218b99', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d9350-825f-777d-81e4-cd0520555cc8', '019d934f-84fc-7efb-8598-917bbf218b99', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d9350-a18e-74d0-9ec0-a47b53b0feb0', '019d934f-84fc-7efb-8598-917bbf218b99', 'logging_public', 'agentic_db_logging_public', NULL, true),
  ('019d9350-aa9f-7d47-aa40-23a84c5587a1', '019d934f-84fc-7efb-8598-917bbf218b99', 'storage_public', 'agentic_db_storage_public', NULL, true),
  ('019d9350-abe0-7055-a646-5c04848c6d72', '019d934f-84fc-7efb-8598-917bbf218b99', 'storage_private', 'agentic_db_storage_private', NULL, false);


SET session_replication_role TO DEFAULT;


