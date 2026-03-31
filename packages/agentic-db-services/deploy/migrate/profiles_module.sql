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
  ('019d42ff-f46c-7749-aa2b-b2b39a192842', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f46d-7386-ae21-158ff8319f71', '019d42ff-f515-7133-828c-09d6ea0b9f2c', '019d42ff-f5d3-7c28-be38-d476b77ba8e3', 'app_profiles', '019d42ff-f8f3-7bbb-b534-90fa7423350f', 'app_profile_permissions', '019d42ff-fadb-7e12-98fc-7b3127e21153', 'app_profile_grants', '019d42ff-fd43-7676-87ef-302662390110', 'app_profile_definition_grants', 1, NULL, '019d42ff-ca62-77a0-ab97-b8d784c420dc', '019d42ff-d15d-75cc-99fc-56bbef6c588f', '019d42ff-d962-725a-94cd-7b18a2811a63', 'app'),
  ('019d4300-25ed-7f03-b79a-ed2cdf867026', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f46d-7386-ae21-158ff8319f71', '019d42ff-f515-7133-828c-09d6ea0b9f2c', '019d4300-2612-7b60-b52a-46f43c02faf2', 'org_profiles', '019d4300-29d3-7415-a46f-582ade8430d9', 'org_profile_permissions', '019d4300-2c11-7b5e-8c7a-dcec4b8e3cbd', 'org_profile_grants', '019d4300-2f27-7812-a0f9-4e01c39bcea7', 'org_profile_definition_grants', 2, '019d42ff-ca62-77a0-ab97-b8d784c420dc', '019d42ff-ca62-77a0-ab97-b8d784c420dc', '019d4300-0840-7891-b5d8-7dff931633d2', '019d4300-0fec-7439-9eeb-f86b5daeae15', 'org');


SET session_replication_role TO DEFAULT;


