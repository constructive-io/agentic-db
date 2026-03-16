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
  ('9dddc54a-b82d-467f-8e3e-1c78c234badc', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e340-94be-4446-ba8f-99e229f64eae', '9bc145f8-c7bb-4509-4eec-027bdb8b0157', '9bc1eddf-8431-42db-3857-c7f04679df06', 'app_profiles', '9bc18619-7424-4ddc-f567-1d2682c51c51', 'app_profile_permissions', '9bc17345-570d-4df5-a68f-6d160c8742c0', 'app_profile_grants', '9bc1c81f-1e39-4acf-784e-ca40b7294e59', 'app_profile_definition_grants', 1, NULL, '9bc12972-1a70-4812-beb6-f24029a19ea6', '9bc15426-7cb4-4f1e-cbf6-a2ada0a98188', '9bc13644-40f0-4c81-5715-1eccf4f6c73e', 'app'),
  ('a80a5d42-0081-45af-83d9-93b038430bba', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e340-94be-4446-ba8f-99e229f64eae', '9bc145f8-c7bb-4509-4eec-027bdb8b0157', '9bc1c078-0ed6-4204-a124-75f9d73a3b7e', 'org_profiles', '9bc159bd-72b6-42b4-ce31-1999d4255cfb', 'org_profile_permissions', '9bc1da60-7a75-49b1-ef0a-e14fdef74ac1', 'org_profile_grants', '9bc1c925-c77b-4094-8180-eddd1cc45982', 'org_profile_definition_grants', 2, '9bc12972-1a70-4812-beb6-f24029a19ea6', '9bc12972-1a70-4812-beb6-f24029a19ea6', '9bc17982-a20f-4da2-eb63-2f4bf9860571', '9bc185f6-50ad-4ada-e364-5ae50ff3908b', 'org');


SET session_replication_role TO DEFAULT;


