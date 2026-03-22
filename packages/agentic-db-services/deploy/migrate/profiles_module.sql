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
  ('e9f3679b-649a-e092-8aa9-095bc934b365', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '45648a02-5229-1516-3409-361f8893c583', '17108ef6-803e-1873-9c2a-6e930dd81cfa', 'e2a71e9a-6f09-4034-0832-04577fc80d1b', 'app_profiles', '0ad17acf-022f-de9c-c9b7-2924424105a0', 'app_profile_permissions', 'db638d87-8462-9e95-70a5-4baf87d2ee92', 'app_profile_grants', '49f667e1-4e8d-3238-e414-72b05e60c648', 'app_profile_definition_grants', 1, NULL, '5d9c849b-e962-041a-de77-54774d5d1e62', 'f43dde48-770f-2298-4185-844fb1eb5e59', '619df900-2505-1053-76c6-d373614a4b72', 'app'),
  ('5f9d0e74-b3fe-ab08-4f49-0458b97ba86c', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '45648a02-5229-1516-3409-361f8893c583', '17108ef6-803e-1873-9c2a-6e930dd81cfa', 'd4a92e44-fff6-aea7-31cc-5cdb31a1bc6c', 'org_profiles', 'a0f4258e-8c4e-e421-defe-6072004d9886', 'org_profile_permissions', 'ee723913-54e7-8102-527c-af3160fdd68a', 'org_profile_grants', '0d721ef4-8ea0-758d-16c5-8b948966a27a', 'org_profile_definition_grants', 2, '5d9c849b-e962-041a-de77-54774d5d1e62', '5d9c849b-e962-041a-de77-54774d5d1e62', 'cce7d6a1-ad70-e81b-0cef-1979a8413ccf', 'd461705b-8c92-0363-91af-0fbb7825fa32', 'org');


SET session_replication_role TO DEFAULT;


