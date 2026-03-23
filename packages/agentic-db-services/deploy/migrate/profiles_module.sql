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
  ('412c4971-44d7-6f04-4987-4014b5ec4eff', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'dcd1ab85-9748-27a6-2adf-15fffd2ac95d', '23064c1c-d74e-fbca-ad66-0717f46b7fee', '24d4c77f-5d7d-c6cf-8785-a0ec18533031', 'app_profiles', 'ab33f42d-769f-8680-11be-8070f4412a6d', 'app_profile_permissions', '471de11f-dc85-9124-9a53-8e9a668937a0', 'app_profile_grants', '545ff7d9-295b-c56d-dcc4-32bc412ded90', 'app_profile_definition_grants', 1, NULL, '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', '80787704-825b-81da-49d3-1461649de732', '2ec31c57-f7ee-376a-4efa-145ec220fa1c', 'app'),
  ('52a08d2a-6f47-7487-28a9-5c2530833a7e', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'dcd1ab85-9748-27a6-2adf-15fffd2ac95d', '23064c1c-d74e-fbca-ad66-0717f46b7fee', 'a84f9c2e-6334-381a-fdd1-2c9e3ee1edc7', 'org_profiles', '25df8413-93ca-95ff-e35e-1d6f337243f6', 'org_profile_permissions', '67e0ef0a-c64b-daaa-85df-f69055cafd65', 'org_profile_grants', '7ee84fb0-8c58-9f27-3c0d-5fe54d638a6b', 'org_profile_definition_grants', 2, '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', '04110344-716c-1565-2ef3-0b5d077c109d', 'be1e267e-799f-a20f-b246-13adbb6a0f13', 'org');


SET session_replication_role TO DEFAULT;


