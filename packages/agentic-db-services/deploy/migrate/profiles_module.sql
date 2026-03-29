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
  ('05537660-2457-212d-d369-8c87515f83c3', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '0bbabd9e-b4d7-8d68-1bf5-0b49d841b9ee', 'af50636a-cc1b-4aba-4f61-3212a897fc81', '15d34e0e-c0c2-5434-24a0-a921074cbb1e', 'app_profiles', '8683be89-d3b0-72ca-e123-7e3260fa464e', 'app_profile_permissions', 'f53ed9b4-056f-19b8-57b0-1ea9660f2c94', 'app_profile_grants', 'e6346abf-42d2-6116-4a19-59187248c95d', 'app_profile_definition_grants', 1, NULL, '5b5d99e1-9167-1378-cf99-58449ebc35bc', '8b27fb0c-e4ef-3678-e21c-e7ceb4590584', '604d3651-325e-d1e9-bb33-e58e2ec26dc5', 'app'),
  ('cf3f3e28-b59a-82e7-b596-9534e1c86382', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '0bbabd9e-b4d7-8d68-1bf5-0b49d841b9ee', 'af50636a-cc1b-4aba-4f61-3212a897fc81', 'fa0cbc82-0557-8834-524e-b837a9796a89', 'org_profiles', 'c1698ba6-6d14-ac47-3792-09c4546bf482', 'org_profile_permissions', 'ce5c3d83-24bd-76ea-accd-8ba1e4d4e669', 'org_profile_grants', '8940c5e9-0629-197b-57f9-aa0477a966f2', 'org_profile_definition_grants', 2, '5b5d99e1-9167-1378-cf99-58449ebc35bc', '5b5d99e1-9167-1378-cf99-58449ebc35bc', '74063376-1e71-fe44-ce96-9da2549d606d', '48507dfd-57d9-4811-eb30-80b216d5b2bb', 'org');


SET session_replication_role TO DEFAULT;


