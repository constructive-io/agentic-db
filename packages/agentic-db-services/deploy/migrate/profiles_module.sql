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
  ('019d1dc0-030b-7a92-a790-a2539eef97e2', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-030c-71b5-8d95-fe3ed949ed16', '019d1dc0-03ac-77a8-9359-14b68f627f73', '019d1dc0-0462-7215-b03b-d0461cc02a22', 'app_profiles', '019d1dc0-073e-7005-b0eb-34904d3fc23e', 'app_profile_permissions', '019d1dc0-091e-7530-bd03-7d948b9d77bb', 'app_profile_grants', '019d1dc0-0b76-784b-865d-020f190ada74', 'app_profile_definition_grants', 1, NULL, '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', '019d1dbf-e0ba-7002-9545-20cb99c8cb10', '019d1dbf-ea14-78ee-89a3-1add46d33029', 'app'),
  ('019d1dc0-3d10-70db-8261-5aa260145631', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-030c-71b5-8d95-fe3ed949ed16', '019d1dc0-03ac-77a8-9359-14b68f627f73', '019d1dc0-415a-70f5-8055-faf30413efb2', 'org_profiles', '019d1dc0-44eb-7214-a382-3095c1d24887', 'org_profile_permissions', '019d1dc0-4705-7c15-87c7-f70583648b5e', 'org_profile_grants', '019d1dc0-49d0-7e50-8a19-a882decdcc2f', 'org_profile_definition_grants', 2, '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', '019d1dc0-19e4-711b-bca5-5a34983e388c', '019d1dc0-282a-798b-9be9-b6c25744a739', 'org');


SET session_replication_role TO DEFAULT;


