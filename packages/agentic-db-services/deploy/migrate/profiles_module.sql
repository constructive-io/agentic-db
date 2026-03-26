-- Deploy: migrate/profiles_module
-- made with <3 @ constructive.io

-- requires: migrate/secrets_module


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

INSERT INTO metaschema_modules_public.profiles_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  table_id,
  table_name,
  profile_permissions_table_id,
  profile_permissions_table_name,
  profile_grants_table_id,
  profile_grants_table_name,
  profile_definition_grants_table_id,
  profile_definition_grants_table_name,
  membership_type,
  entity_table_id,
  actor_table_id,
  permissions_table_id,
  memberships_table_id,
  prefix
) VALUES
  ('019d2831-8c87-7148-b067-2357d5b68aba', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-8c87-793e-8f2e-72321e670b1e', '019d2831-8d24-72bd-bb46-255f5e515fb6', '019d2831-8de5-7ceb-a6ae-418c096528a0', 'app_profiles', '019d2831-90d5-76d7-9e8e-34aba2a6195c', 'app_profile_permissions', '019d2831-92d1-7412-ae65-6aa00fd70fd0', 'app_profile_grants', '019d2831-9534-75b6-ab6e-e1779d7dbe76', 'app_profile_definition_grants', 1, NULL, '019d2831-6349-7cde-a517-c115bf8f4bff', '019d2831-6993-7415-bc88-2c55d7aa6811', '019d2831-732a-76c6-a425-65abcce0f160', 'app'),
  ('019d2831-c7ed-7662-b807-1b324db61cfc', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-8c87-793e-8f2e-72321e670b1e', '019d2831-8d24-72bd-bb46-255f5e515fb6', '019d2831-cc63-7ceb-ad7f-dbde95a08a75', 'org_profiles', '019d2831-cff0-7d5c-b751-5370d5dc45ad', 'org_profile_permissions', '019d2831-d211-727b-8d47-6f6fee891b77', 'org_profile_grants', '019d2831-d51b-7655-993d-5491a27c8b0b', 'org_profile_definition_grants', 2, '019d2831-6349-7cde-a517-c115bf8f4bff', '019d2831-6349-7cde-a517-c115bf8f4bff', '019d2831-a3ad-7ec2-a3ba-39b15c9e4901', '019d2831-b271-7396-ab85-a73b6b789548', 'org');


SET session_replication_role TO DEFAULT;


