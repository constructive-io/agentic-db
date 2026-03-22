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
  ('019d1736-7d1c-7966-8437-1b2b6f561e32', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-7d1d-7504-b23b-a3b157e8661f', '019d1736-7da9-7ccd-a31c-213695710c32', '019d1736-7e47-7d59-b697-b8d9b6861577', 'app_profiles', '019d1736-80ed-7b0a-8d48-d05647f357c6', 'app_profile_permissions', '019d1736-8292-7c1f-9d46-9616fa96b1a6', 'app_profile_grants', '019d1736-84b8-7a90-8962-2c16edfd42b8', 'app_profile_definition_grants', 1, NULL, '019d1736-5b0d-7766-9f99-3cf518199163', '019d1736-6088-7457-a126-68aadf738035', '019d1736-66be-7223-a4ab-64408037fd98', 'app'),
  ('019d1736-a8ef-7ef4-827b-68af02c6e8b3', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-7d1d-7504-b23b-a3b157e8661f', '019d1736-7da9-7ccd-a31c-213695710c32', '019d1736-a906-71bd-8d94-9ecbd0c109e9', 'org_profiles', '019d1736-ac35-7a52-940d-629f25752325', 'org_profile_permissions', '019d1736-ae1a-7e82-bb7f-543020632440', 'org_profile_grants', '019d1736-b0c1-7e17-8232-01a3ecf4a300', 'org_profile_definition_grants', 2, '019d1736-5b0d-7766-9f99-3cf518199163', '019d1736-5b0d-7766-9f99-3cf518199163', '019d1736-8ee0-7f9c-a7ec-e61ae5cdeeef', '019d1736-9564-74b2-b299-9bd4c9396993', 'org');


SET session_replication_role TO DEFAULT;


