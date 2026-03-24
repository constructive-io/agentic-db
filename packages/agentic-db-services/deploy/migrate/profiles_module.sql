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
  ('019d21f8-47d6-7515-9686-86877e3b66f4', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-47d6-7cda-9767-53fc84de7a58', '019d21f8-486b-7ceb-b5f6-e86b410c0fd5', '019d21f8-4921-7d6d-bd39-bf1ae3227fbd', 'app_profiles', '019d21f8-4bee-72c1-b19d-d7f3e04403d7', 'app_profile_permissions', '019d21f8-4db4-7171-93a2-66b3a7bbc939', 'app_profile_grants', '019d21f8-4fea-75ed-a852-8a0fd29968b5', 'app_profile_definition_grants', 1, NULL, '019d21f8-2335-70cb-b636-53bf74d97668', '019d21f8-2951-765c-8106-b76a4e38815f', '019d21f8-300b-7a76-ba47-3b4b59d21a0d', 'app'),
  ('019d21f8-75b6-70c1-a7f0-432e98eb1df3', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-47d6-7cda-9767-53fc84de7a58', '019d21f8-486b-7ceb-b5f6-e86b410c0fd5', '019d21f8-75db-70bd-98c8-e74388aad3dd', 'org_profiles', '019d21f8-798b-7cd7-868f-e2cb8ac132e2', 'org_profile_permissions', '019d21f8-7b8d-7d58-b05d-5d18e587d8cb', 'org_profile_grants', '019d21f8-7e50-792f-8224-044cb874779c', 'org_profile_definition_grants', 2, '019d21f8-2335-70cb-b636-53bf74d97668', '019d21f8-2335-70cb-b636-53bf74d97668', '019d21f8-5a09-7708-a88f-0e91d961aeda', '019d21f8-60c4-7ef7-b869-3aef059f54c4', 'org');


SET session_replication_role TO DEFAULT;


