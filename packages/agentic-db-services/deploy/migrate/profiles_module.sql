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
  ('b7ce0403-693e-f57c-c3d7-1a0cf6b41afc', '2ef50f93-192b-b168-969d-304c8e675e1d', '73a2c77f-aeee-fb24-2630-e6c96ba888fe', '4e508e09-6aa9-6239-ded2-01f8853a87cf', '5c04eea7-e5d9-423f-4918-077a3525d5af', 'app_profiles', '7039d7e8-4ff9-89a0-6819-cd579beba62d', 'app_profile_permissions', '2dc41b3a-c07f-2f5c-74e9-adb8e945fa5f', 'app_profile_grants', '964b442b-5c6f-a60a-11bf-75bfe37ba1f0', 'app_profile_definition_grants', 1, NULL, '5353e947-3e3f-3914-7fd1-1370926dd743', '97c66666-071d-6f46-7967-85437fc3c183', '858bf26f-f856-cd9b-385b-79fcfcdde069', 'app'),
  ('f10612b3-6256-dd0a-ebbf-5de4d7b5a926', '2ef50f93-192b-b168-969d-304c8e675e1d', '73a2c77f-aeee-fb24-2630-e6c96ba888fe', '4e508e09-6aa9-6239-ded2-01f8853a87cf', '8524a208-96ae-2e44-348a-21704203d5f3', 'org_profiles', '52eb7909-b8a8-1448-7990-e2c328f0e783', 'org_profile_permissions', 'e97e4297-d376-9593-c6fc-eb3278ead4a0', 'org_profile_grants', 'c0bc1082-4398-f554-b5ed-cbf95e3b5dad', 'org_profile_definition_grants', 2, '5353e947-3e3f-3914-7fd1-1370926dd743', '5353e947-3e3f-3914-7fd1-1370926dd743', 'ee8f193d-af6d-6828-39e5-ed25f55fc9a3', '5baecdd4-5337-9003-bac4-4ad1c8b84332', 'org');


SET session_replication_role TO DEFAULT;


