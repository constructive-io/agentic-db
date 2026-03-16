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
  ('bfc174e0-ab72-4925-5ee9-91915c80ae07', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'public', 'agent_db_public', NULL, true),
  ('bfc177db-8631-42ce-aeb8-748d124a58c3', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'private', 'agent_db_private', NULL, false),
  ('bfc1db41-7d31-47fd-63e9-dfe5d0e1bd61', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'app_public', 'agent_db_app_public', NULL, true),
  ('bfc14e35-319a-429d-aab0-d3bfc9f409a4', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'app_private', 'agent_db_app_private', NULL, false),
  ('bfc1130e-d66c-4f53-1b19-a63641ce65c4', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'users_public', 'agent_db_users_public', NULL, true),
  ('bfc19723-899f-453d-575a-d60edcc86e01', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'memberships_public', 'agent_db_memberships_public', NULL, true),
  ('bfc1817b-ebb4-483c-4f07-fc9ebbeacad9', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'permissions_public', 'agent_db_permissions_public', NULL, true),
  ('bfc129e4-d17c-4a8a-b410-e16d12419a4d', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'permissions_private', 'agent_db_permissions_private', NULL, false),
  ('bfc1aad7-6afb-49b2-3154-fe524d813e59', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'limits_public', 'agent_db_limits_public', NULL, true),
  ('bfc11eab-3ff8-4448-6b3e-3b7222e1da66', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'limits_private', 'agent_db_limits_private', NULL, false),
  ('bfc13b6f-0401-4a31-bd38-1d3e2e771636', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'memberships_private', 'agent_db_memberships_private', NULL, false),
  ('bfc1644f-2005-42f2-7502-6b79b5418380', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'status_public', 'agent_db_status_public', NULL, true),
  ('bfc12466-188e-402f-9505-21943ccb2435', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'status_private', 'agent_db_status_private', NULL, false),
  ('bfc14b67-c07a-46be-8616-6c64da0d5b76', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'profiles_public', 'agent_db_profiles_public', NULL, true),
  ('bfc1d430-e1ba-45c7-bc9d-78331c98a834', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'profiles_private', 'agent_db_profiles_private', NULL, false),
  ('bfc100e0-955f-4a61-8706-95da2886e82a', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'simple_secrets', 'agent_db_simple_secrets', NULL, true),
  ('bfc1edd0-98c3-47df-acaa-c04878b922b4', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'auth_private', 'agent_db_auth_private', NULL, false),
  ('bfc19c6c-15f4-4efc-ecee-aa0c16303577', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'encrypted', 'agent_db_encrypted', NULL, true),
  ('bfc12230-ad6e-4e94-6ec2-8add6b1da502', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'auth_public', 'agent_db_auth_public', NULL, true),
  ('bfc157f1-b8a9-4049-ea78-232642a0ffa0', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'user_identifiers_public', 'agent_db_user_identifiers_public', NULL, true),
  ('bfc19237-75e3-4cad-dd4b-ffb4d65f4d2e', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'user_identifiers_private', 'agent_db_user_identifiers_private', NULL, false),
  ('bfc1c6cb-01d0-40c7-179a-20ce7352530d', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'invites_public', 'agent_db_invites_public', NULL, true),
  ('bfc1a717-7122-438d-c06b-60187fd44683', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'invites_private', 'agent_db_invites_private', NULL, false),
  ('bfc11f94-2f12-4d1a-7ca1-512946bc8f67', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'logging_public', 'agent_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


