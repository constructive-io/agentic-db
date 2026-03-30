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
  ('019d3dab-2701-71ec-9df6-5b61efffe510', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-2701-792f-9b98-c31129eaf70e', '019d3dab-27a3-7c0c-85f7-b500af68c433', '019d3dab-285f-7dbd-bbe1-202b830e2774', 'app_profiles', '019d3dab-2b59-7eb9-af0c-9ef01e025be2', 'app_profile_permissions', '019d3dab-2d37-72a1-a20e-4cf4ada1ae34', 'app_profile_grants', '019d3dab-2f94-7e87-a15b-26e2cfaba3a5', 'app_profile_definition_grants', 1, NULL, '019d3dab-00a9-731d-b66d-d5d69c0909a6', '019d3dab-06c8-70c7-9344-b913b26b3813', '019d3dab-0e10-73fe-8495-800d7f4fdaae', 'app'),
  ('019d3dab-5940-7334-8a3a-d6d89016b74a', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-2701-792f-9b98-c31129eaf70e', '019d3dab-27a3-7c0c-85f7-b500af68c433', '019d3dab-5964-71b3-8055-0746d56e6ff0', 'org_profiles', '019d3dab-5d05-755e-baa1-685aac222c24', 'org_profile_permissions', '019d3dab-5f4e-79b4-abad-6fd717907388', 'org_profile_grants', '019d3dab-6294-7a25-a73d-a4eeff88e8cc', 'org_profile_definition_grants', 2, '019d3dab-00a9-731d-b66d-d5d69c0909a6', '019d3dab-00a9-731d-b66d-d5d69c0909a6', '019d3dab-3a54-7306-a038-93110afa9aff', '019d3dab-4320-762d-8e0b-a0f2fa7986ad', 'org');


SET session_replication_role TO DEFAULT;


