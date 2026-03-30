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
  ('019d3d15-0a2c-7df5-8358-d81b5956e68d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-0a2d-7891-a59e-8dff9fa730ee', '019d3d15-0ac0-7558-a324-5b320ea79f50', '019d3d15-0b69-7a11-910d-51b48961ffd1', 'app_profiles', '019d3d15-0e0c-714b-9ba3-1b8f47802552', 'app_profile_permissions', '019d3d15-0fb2-7e21-a843-591b7f91af4a', 'app_profile_grants', '019d3d15-11bd-7305-9eb7-953d3071bc14', 'app_profile_definition_grants', 1, NULL, '019d3d14-e756-7f18-bcd9-be9300e74947', '019d3d14-ecb8-72e1-b8b6-00f4f113f945', '019d3d14-f316-7fc5-99bb-153e1dcb17b9', 'app'),
  ('019d3d15-35da-7fd3-af56-acc8c3ea1bc8', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-0a2d-7891-a59e-8dff9fa730ee', '019d3d15-0ac0-7558-a324-5b320ea79f50', '019d3d15-35f0-738c-8518-ef62812fc95c', 'org_profiles', '019d3d15-3931-7266-9aee-d08ccd8b781f', 'org_profile_permissions', '019d3d15-3b18-768d-a41a-fbe6dcc888fa', 'org_profile_grants', '019d3d15-3dd1-7091-b535-17747368a502', 'org_profile_definition_grants', 2, '019d3d14-e756-7f18-bcd9-be9300e74947', '019d3d14-e756-7f18-bcd9-be9300e74947', '019d3d15-1bd4-7c7b-8a37-5486c1c9b8cd', '019d3d15-2253-7e8f-af81-7edafd37ab7e', 'org');


SET session_replication_role TO DEFAULT;


