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
  ('019d19cf-2fa0-778d-9d31-a238b730dd0c', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-2fa0-7f9c-94ff-c9c0d905b63b', '019d19cf-3043-7361-90a1-6e44583c87f2', '019d19cf-30fc-7523-b7b2-cbdc0c8c73c7', 'app_profiles', '019d19cf-33e4-736b-9f45-b980c5440d51', 'app_profile_permissions', '019d19cf-35e6-7241-b324-9fda8c4b6254', 'app_profile_grants', '019d19cf-3853-7e87-ace4-035fd2c39d5a', 'app_profile_definition_grants', 1, NULL, '019d19cf-04f9-762a-946a-add4e6430409', '019d19cf-0b8b-7b80-baa2-11475a5f5696', '019d19cf-15bb-7455-9e1b-7b0edfbb3cb5', 'app'),
  ('019d19cf-6a3b-7c35-8119-23084fd62835', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-2fa0-7f9c-94ff-c9c0d905b63b', '019d19cf-3043-7361-90a1-6e44583c87f2', '019d19cf-6db4-7668-adc9-bb14469aac92', 'org_profiles', '019d19cf-7140-7d9a-b90e-0e336fbe397a', 'org_profile_permissions', '019d19cf-7364-7d1e-afcb-58017e2de6dc', 'org_profile_grants', '019d19cf-7678-7fba-b0dd-5cfa64857701', 'org_profile_definition_grants', 2, '019d19cf-04f9-762a-946a-add4e6430409', '019d19cf-04f9-762a-946a-add4e6430409', '019d19cf-4653-7f50-b3dd-b0636904ddb9', '019d19cf-53f0-7b8b-a2b4-1b32ffbe20c0', 'org');


SET session_replication_role TO DEFAULT;


