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
  ('644ad574-6fc3-4c10-8e46-f2a670097644', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc14b67-c07a-46be-8616-6c64da0d5b76', 'bfc1d430-e1ba-45c7-bc9d-78331c98a834', 'bfc11d16-d4a3-4624-94fd-25fd5a1f6082', 'app_profiles', 'bfc1dc53-ced2-4503-b569-beda61b26fa2', 'app_profile_permissions', 'bfc15566-4f0c-49d2-9ed8-58e687e83398', 'app_profile_grants', 'bfc1ed61-9f47-4b15-1bf9-dc8762f77efb', 'app_profile_definition_grants', 1, NULL, 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'bfc1f6ea-64e0-47d5-ca83-acf100c9d998', 'bfc1eb59-c6b5-4140-f6d7-1b9a3a4c8fe6', 'app'),
  ('e498cd9a-346d-4b69-9dd1-ff7e2fe306c0', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc14b67-c07a-46be-8616-6c64da0d5b76', 'bfc1d430-e1ba-45c7-bc9d-78331c98a834', 'bfc1b377-6c23-416e-a032-67159147dc44', 'org_profiles', 'bfc17a2d-9bc5-446d-b733-ad001217c27f', 'org_profile_permissions', 'bfc10226-6a4b-4ff3-be61-169460f560b2', 'org_profile_grants', 'bfc145d5-23cf-46d1-3145-8ca3398be8fc', 'org_profile_definition_grants', 2, 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'bfc19ae3-2460-43f0-9a1b-9bfb6230c3a5', 'bfc10c0b-43db-44e3-29fd-759dd6ea0087', 'org');


SET session_replication_role TO DEFAULT;


