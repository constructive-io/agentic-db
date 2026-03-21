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
  ('019d11d9-8325-780a-a95f-55c85e26c38e', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-8326-773f-9e95-2885ab65ca4e', '019d11d9-8406-7c35-8133-14b44cd60fbd', '019d11d9-84e3-7200-9cb7-df3d55a5a5a6', 'app_profiles', '019d11d9-8822-715b-a67b-fd1437a588be', 'app_profile_permissions', '019d11d9-8a15-76a7-9368-f312d38e942a', 'app_profile_grants', '019d11d9-8c8f-7df4-87a1-3f636ba4124e', 'app_profile_definition_grants', 1, NULL, '019d11d9-5aed-7673-b41b-b11528f73f79', '019d11d9-6176-7383-97c7-be4ad83ecdd6', '019d11d9-695f-741e-9518-2589c027a57e', 'app'),
  ('019d11d9-bc27-78e3-9505-7e92e4d771ad', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-8326-773f-9e95-2885ab65ca4e', '019d11d9-8406-7c35-8133-14b44cd60fbd', '019d11d9-bdd3-75ed-af4a-11d0ca3429c3', 'org_profiles', '019d11d9-c177-7b3b-827e-83aae79ecdaf', 'org_profile_permissions', '019d11d9-c3b9-73e2-9606-19bc7db3c303', 'org_profile_grants', '019d11d9-c6c4-776d-9009-c5f5c22b5a73', 'org_profile_definition_grants', 2, '019d11d9-5aed-7673-b41b-b11528f73f79', '019d11d9-5aed-7673-b41b-b11528f73f79', '019d11d9-9991-76e8-8d2b-2c7a59853f40', '019d11d9-a485-70d1-8ce0-a34dd4ec4db6', 'org');


SET session_replication_role TO DEFAULT;


