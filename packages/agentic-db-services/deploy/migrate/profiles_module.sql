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
  ('019d37b9-dde0-7f06-90b8-098f28107b3f', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-dde1-795e-8157-90638d814b56', '019d37b9-de6f-7eb8-a051-7006f1d96b09', '019d37b9-df17-774f-a30a-8d5a929eded1', 'app_profiles', '019d37b9-e1d4-7f52-8d94-fce066de191b', 'app_profile_permissions', '019d37b9-e37b-79e9-8685-affa41b9af74', 'app_profile_grants', '019d37b9-e5a9-7d66-a458-cf4ae8d13dba', 'app_profile_definition_grants', 1, NULL, '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', '019d37b9-be51-7edc-9a46-789aa38be324', '019d37b9-c690-7938-a48b-4231af4d2ef4', 'app'),
  ('019d37ba-1083-7bcb-88b9-b56ea4c94d23', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-dde1-795e-8157-90638d814b56', '019d37b9-de6f-7eb8-a051-7006f1d96b09', '019d37ba-12ed-7e2d-9bf5-c90d8467b071', 'org_profiles', '019d37ba-1653-7bcc-955b-0fd4b389d5f7', 'org_profile_permissions', '019d37ba-183a-7630-be79-89004aa4e72b', 'org_profile_grants', '019d37ba-1aec-7c7f-98b8-2b6c67f2bcb3', 'org_profile_definition_grants', 2, '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', '019d37b9-f1c4-7631-be74-02fadb8f3940', '019d37b9-fc8e-72c0-ba2d-4d58f95d8eb5', 'org');


SET session_replication_role TO DEFAULT;


