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
  ('019d13bc-4587-7cb4-b583-973bdbde8718', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-4588-73c9-8ad3-4567ea4e0725', '019d13bc-4619-7116-a267-51754435dc9d', '019d13bc-46c3-700c-92c0-a7ed3ecd0139', 'app_profiles', '019d13bc-4971-7948-abde-4351a889002d', 'app_profile_permissions', '019d13bc-4b25-7362-a964-85aca4f190d1', 'app_profile_grants', '019d13bc-4d66-740b-882a-b882ad41966e', 'app_profile_definition_grants', 1, NULL, '019d13bc-21ae-7eb2-b63f-9fb476e22f09', '019d13bc-2764-7eb7-8b8d-849641335581', '019d13bc-2e08-77a6-a4fc-2ef96160d4bc', 'app'),
  ('019d13bc-72b4-737f-ab83-11c5105290f2', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-4588-73c9-8ad3-4567ea4e0725', '019d13bc-4619-7116-a267-51754435dc9d', '019d13bc-72d6-7e8e-92db-381e7f8fbad8', 'org_profiles', '019d13bc-7667-7a6e-ba08-3dbb63d59a1e', 'org_profile_permissions', '019d13bc-786b-775d-a939-c2a6c5452bf2', 'org_profile_grants', '019d13bc-7b1e-716b-b1ef-0f1ec89d3a99', 'org_profile_definition_grants', 2, '019d13bc-21ae-7eb2-b63f-9fb476e22f09', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', '019d13bc-57a5-739e-819f-c276c42edb57', '019d13bc-5e7b-7ec0-a5a7-b1c75331f930', 'org');


SET session_replication_role TO DEFAULT;


