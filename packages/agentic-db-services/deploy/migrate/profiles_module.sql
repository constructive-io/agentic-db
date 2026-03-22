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
  ('019d130d-2060-7638-b08e-64c81db4c36d', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-2060-7e0f-9f3e-6ea1df8c604b', '019d130d-211b-70f3-b2e9-5bcd1fdefeb8', '019d130d-21f5-7aa6-99a9-5e4f58ad18bf', 'app_profiles', '019d130d-2548-76c9-935a-1d36360ced57', 'app_profile_permissions', '019d130d-276b-749e-a852-4a06b4314e8b', 'app_profile_grants', '019d130d-2a39-7507-9e46-cfac4c51c6f7', 'app_profile_definition_grants', 1, NULL, '019d130c-f14b-7ef8-94e3-e005503a699d', '019d130c-f8c1-783c-ac27-00d4e687ddb7', '019d130d-016c-7782-9303-e5d5774f7038', 'app'),
  ('019d130d-5992-797c-b672-4dd020fe1c33', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-2060-7e0f-9f3e-6ea1df8c604b', '019d130d-211b-70f3-b2e9-5bcd1fdefeb8', '019d130d-5a37-7725-bccc-4e5c09cc4f43', 'org_profiles', '019d130d-5e51-7bb9-95ea-993dec8b9507', 'org_profile_permissions', '019d130d-60e5-7d2b-b78c-8533ba695ed1', 'org_profile_grants', '019d130d-6449-7895-934f-f7eaad65cca7', 'org_profile_definition_grants', 2, '019d130c-f14b-7ef8-94e3-e005503a699d', '019d130c-f14b-7ef8-94e3-e005503a699d', '019d130d-373c-7678-9350-2dc76515f178', '019d130d-3fd0-7483-bc2f-cbaeafc578cc', 'org');


SET session_replication_role TO DEFAULT;


