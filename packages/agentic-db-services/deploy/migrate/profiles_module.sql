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
  ('69bba5d2-32fb-544c-e1c9-19aa4dfc63c4', '14b01c2d-072a-5594-645a-675751a83d86', '402d4be8-210c-4a45-d7bb-2c14a959dacf', '386e074d-5dd4-7d6e-7ecd-3611254961c5', '35cc2134-a97e-f20e-a6f8-88c65b0b8f89', 'org_profiles', '87fa782d-b9c2-6a42-cd27-67fb4cb4cbe0', 'org_profile_permissions', 'c9c7b02f-c98e-9ba2-99ef-6385f9244a75', 'org_profile_grants', '64032b25-9902-679d-6f24-d365d2d5a46b', 'org_profile_definition_grants', 2, '5258dec3-0cde-6103-1859-08598c428740', '5258dec3-0cde-6103-1859-08598c428740', '9dec1b06-3907-c9a5-e893-502982e3c0cb', '2f03d3e4-62f8-6a6a-84bf-07c88511b6da', 'org'),
  ('8f58b9a4-89ba-dea1-4d8b-eb87c82114de', '14b01c2d-072a-5594-645a-675751a83d86', '402d4be8-210c-4a45-d7bb-2c14a959dacf', '386e074d-5dd4-7d6e-7ecd-3611254961c5', '96ceae43-e0d1-1589-98c8-e37ab1a156a2', 'app_profiles', 'd1a8d056-d28c-59c8-df9f-1360083f4bac', 'app_profile_permissions', 'b2224d56-7a0f-4bcf-0a7c-94deba62f045', 'app_profile_grants', '1c00e016-a31e-0a66-452c-7defe4d84782', 'app_profile_definition_grants', 1, NULL, '5258dec3-0cde-6103-1859-08598c428740', 'f25a8ee5-7a16-ce38-e44a-b946418a9251', 'c62dac65-8ef3-b442-327f-bf51371e997d', 'app');


SET session_replication_role TO DEFAULT;


