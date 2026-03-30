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
  ('019d4100-6cf3-75f1-a5c0-55ffd93a00dc', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-6cf3-7f32-8e37-14f0ed8367d0', '019d4100-6d8e-7377-ad82-a9d83931f7d7', '019d4100-6e44-7138-8908-4e752a880eb2', 'app_profiles', '019d4100-711d-7903-93d9-96788c7db370', 'app_profile_permissions', '019d4100-72fb-7b89-bb53-817d537f1ad9', 'app_profile_grants', '019d4100-754b-7546-8462-d61a5b034813', 'app_profile_definition_grants', 1, NULL, '019d4100-42f6-7ae2-9811-58ffe46470b0', '019d4100-492c-7bb1-b951-e489e54e0fea', '019d4100-5351-7ac1-ac02-e0becc92f374', 'app'),
  ('019d4100-a60a-7429-a040-7146845096c2', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-6cf3-7f32-8e37-14f0ed8367d0', '019d4100-6d8e-7377-ad82-a9d83931f7d7', '019d4100-a9a4-72db-92cb-04053723e629', 'org_profiles', '019d4100-ad43-7c13-887d-bf3caf9ddb13', 'org_profile_permissions', '019d4100-af64-791f-b029-560ffb8af6d5', 'org_profile_grants', '019d4100-b251-7891-9790-04e7c7686980', 'org_profile_definition_grants', 2, '019d4100-42f6-7ae2-9811-58ffe46470b0', '019d4100-42f6-7ae2-9811-58ffe46470b0', '019d4100-82d8-7e12-a4cc-c5e87ef9638b', '019d4100-904d-7f34-aa41-a9f2a17a18e9', 'org');


SET session_replication_role TO DEFAULT;


