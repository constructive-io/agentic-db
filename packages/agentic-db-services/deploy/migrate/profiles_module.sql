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
  ('019d1795-6bc9-7f60-9828-a03a0fb27ebb', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6bca-79c3-94ab-c5e751df8b3e', '019d1795-6c55-7a13-bde4-a881c0a9ccc2', '019d1795-6d09-7787-a20b-c9cf9448ddb0', 'app_profiles', '019d1795-6f9d-71e2-9232-26be265514ef', 'app_profile_permissions', '019d1795-716f-7e06-bb8b-85849f1cb36f', 'app_profile_grants', '019d1795-73af-787d-9068-0f7bd6be513e', 'app_profile_definition_grants', 1, NULL, '019d1795-494e-7deb-bd76-39af3a5fa635', '019d1795-4ece-7922-a931-77d9305f9fc3', '019d1795-552c-7ab5-ac15-b718d9e93b05', 'app'),
  ('019d1795-9d37-751f-a71b-7b035cc255e2', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6bca-79c3-94ab-c5e751df8b3e', '019d1795-6c55-7a13-bde4-a881c0a9ccc2', '019d1795-9dd9-78a7-9ae5-cc4e5ff9a239', 'org_profiles', '019d1795-a161-794e-b663-07e037d4f8eb', 'org_profile_permissions', '019d1795-a355-7c4f-9604-72ff16ec5061', 'org_profile_grants', '019d1795-a64f-702b-a96e-a4860bbf53f8', 'org_profile_definition_grants', 2, '019d1795-494e-7deb-bd76-39af3a5fa635', '019d1795-494e-7deb-bd76-39af3a5fa635', '019d1795-7e77-75a1-8cdd-77613c886fd7', '019d1795-8689-767b-9b73-2d73aa886b27', 'org');


SET session_replication_role TO DEFAULT;


