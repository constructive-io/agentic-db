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
  ('019d0ffe-77a0-77b1-b44e-79fbc71a8564', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-77a1-72fe-9020-0e3df17e655f', '019d0ffe-7844-7f5e-95f9-cb42ffa06190', '019d0ffe-7901-772c-aa47-483e0a6fa2b5', 'app_profiles', '019d0ffe-7bfe-7f1e-ae30-18d99e31d8bd', 'app_profile_permissions', '019d0ffe-7dd2-70d1-babc-f4d3affb4b0a', 'app_profile_grants', '019d0ffe-8028-7721-b659-f16724519ab1', 'app_profile_definition_grants', 1, NULL, '019d0ffe-509c-7e69-b073-260da2d7f651', '019d0ffe-5723-79af-9db0-2a952ae7b0a4', '019d0ffe-5e6f-70db-916e-b9647b18509b', 'app'),
  ('019d0ffe-a983-7809-9ae4-22a12976ef45', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-77a1-72fe-9020-0e3df17e655f', '019d0ffe-7844-7f5e-95f9-cb42ffa06190', '019d0ffe-a9ec-7a2e-8335-1df87b507060', 'org_profiles', '019d0ffe-ad9b-7070-9333-435a1e1a514c', 'org_profile_permissions', '019d0ffe-afad-7d6a-8c82-852e50b4fbe6', 'org_profile_grants', '019d0ffe-b291-79df-906f-ff7f8d4a71b0', 'org_profile_definition_grants', 2, '019d0ffe-509c-7e69-b073-260da2d7f651', '019d0ffe-509c-7e69-b073-260da2d7f651', '019d0ffe-8bb5-7fcf-9caa-019e02b8af3e', '019d0ffe-936b-7ef6-b651-97363832464b', 'org');


SET session_replication_role TO DEFAULT;


