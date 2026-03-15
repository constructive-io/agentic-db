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
  ('37ec5eb1-e075-4e44-be76-c1789804dcce', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082352-e9aa-438c-33bf-bf8133b18d61', 'a008e060-acc4-4224-2479-4b6c9d15367a', 'a0082238-2820-4272-6947-2f2efcebe1bf', 'app_profiles', 'a00807c8-ab07-4d78-dec5-453e31954f66', 'app_profile_permissions', 'a008a272-62d1-4b91-1e71-37de22fac781', 'app_profile_grants', 'a0086d26-3972-4b87-0bc3-3fa25e1bfea3', 'app_profile_definition_grants', 1, NULL, 'a0082485-cf01-4c72-8c4f-76422cceded1', 'a0080e21-0752-4f6a-54c2-1466fb5b80d4', 'a0087809-679b-438a-8804-52b910786123', 'app'),
  ('0c333e0b-fe21-4c79-9488-f42c56eba170', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082352-e9aa-438c-33bf-bf8133b18d61', 'a008e060-acc4-4224-2479-4b6c9d15367a', 'a0080b61-70d9-45d0-8de6-8490de5c51b1', 'org_profiles', 'a0087a6e-d0b0-4c38-220f-4a230c4c4bec', 'org_profile_permissions', 'a008164e-8951-4249-c493-256def8b4b15', 'org_profile_grants', 'a008853e-ceb1-47b6-5274-970ce04cdbbb', 'org_profile_definition_grants', 2, 'a0082485-cf01-4c72-8c4f-76422cceded1', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'a0088dd5-9f3c-438c-af88-593142359c1a', 'a008a174-5a85-46f7-d872-786586168654', 'org');


SET session_replication_role TO DEFAULT;


