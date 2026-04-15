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
  ('019d934f-c320-7e46-a4cd-1e90932776c0', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-c321-78b7-be72-01cbadd6f3c0', '019d934f-c40c-753c-b9d1-b4c643b5f733', '019d934f-c513-76c3-954b-6ff472caf6b0', 'app_profiles', '019d934f-c9db-7b89-a126-01d4d40dbcf8', 'app_profile_permissions', '019d934f-cc8a-7427-9dd2-35ae641d68c3', 'app_profile_grants', '019d934f-cfd2-7fcb-aefd-4cb7213d9d03', 'app_profile_definition_grants', 1, NULL, '019d934f-898e-73d5-9f57-6c8589048db5', '019d934f-92fc-7d5e-aef9-43e50d7a5049', '019d934f-9df9-7a59-a86d-b5b5dc33b0a7', 'app'),
  ('019d9350-0954-7b84-be5d-b5e9421f4e61', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-c321-78b7-be72-01cbadd6f3c0', '019d934f-c40c-753c-b9d1-b4c643b5f733', '019d9350-09b5-793c-a897-41a87691e618', 'org_profiles', '019d9350-0ea7-7384-9b91-fd7d6ce1f4f8', 'org_profile_permissions', '019d9350-1181-753e-93d4-30e7575e175a', 'org_profile_grants', '019d9350-166c-7c17-829e-3f19ed6e3235', 'org_profile_definition_grants', 2, '019d934f-898e-73d5-9f57-6c8589048db5', '019d934f-898e-73d5-9f57-6c8589048db5', '019d934f-dfa9-7350-84a0-f7a734116364', '019d934f-ea21-7619-abc0-635c9c963cd3', 'org');


SET session_replication_role TO DEFAULT;


