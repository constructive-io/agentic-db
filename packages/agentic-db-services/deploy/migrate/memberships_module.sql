-- Deploy: migrate/memberships_module
-- made with <3 @ constructive.io

-- requires: migrate/user_auth_module


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

INSERT INTO metaschema_modules_public.memberships_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  memberships_table_id,
  memberships_table_name,
  members_table_id,
  members_table_name,
  membership_defaults_table_id,
  membership_defaults_table_name,
  grants_table_id,
  grants_table_name,
  actor_table_id,
  limits_table_id,
  default_limits_table_id,
  permissions_table_id,
  default_permissions_table_id,
  sprt_table_id,
  admin_grants_table_id,
  admin_grants_table_name,
  owner_grants_table_id,
  owner_grants_table_name,
  membership_type,
  entity_table_id,
  entity_table_owner_id,
  prefix,
  actor_mask_check,
  actor_perm_check,
  entity_ids_by_mask,
  entity_ids_by_perm,
  entity_ids_function
) VALUES
  ('019d3d14-f282-716f-a148-e819e1f2510a', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ea14-72c7-ab2a-04b31513f93e', '019d3d14-f282-7e09-b26b-97ab505e6016', '019d3d14-f316-7fc5-99bb-153e1dcb17b9', 'app_memberships', '019d3d14-e756-7f18-bcd9-be9300e74947', 'app_members', '019d3d14-f44e-7616-ad0b-517284c15263', 'app_membership_defaults', '019d3d14-fdf8-7fd3-bbff-78544d6ae25e', 'app_grants', '019d3d14-e756-7f18-bcd9-be9300e74947', '019d3d14-f030-7478-b49a-45d1319580f2', '019d3d14-f16c-7f7a-b518-0abc63089e86', '019d3d14-ecb8-72e1-b8b6-00f4f113f945', '019d3d14-ee73-7b33-967f-28388a1f3677', '019d3d14-f576-7e59-a08e-fc27c027cae1', '019d3d14-fa94-739d-9bb8-dcd540b5c203', 'app_admin_grants', '019d3d14-fc49-7ec7-8487-de7d596721c0', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d3d15-2233-7eea-a6c4-dd3222019f94', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ea14-72c7-ab2a-04b31513f93e', '019d3d14-f282-7e09-b26b-97ab505e6016', '019d3d15-2253-7e8f-af81-7edafd37ab7e', 'org_memberships', '019d3d15-2b4a-7986-b0f8-304b8ab66120', 'org_members', '019d3d15-239b-7a37-9bea-42d9a69dff96', 'org_membership_defaults', '019d3d15-323b-765a-8ce7-2a7c8510172c', 'org_grants', '019d3d14-e756-7f18-bcd9-be9300e74947', '019d3d15-1f17-78e1-855a-0db7a8b99cac', '019d3d15-20ba-7e23-b52d-f6dad084b9db', '019d3d15-1bd4-7c7b-8a37-5486c1c9b8cd', '019d3d15-1dd0-7e97-85a8-468d5721be4b', '019d3d15-24dc-7822-bf31-87611ae6ea32', '019d3d15-2d87-7e60-8402-35488ab2d176', 'org_admin_grants', '019d3d15-2fda-7af8-a235-6044f87f7a7d', 'org_owner_grants', 2, '019d3d14-e756-7f18-bcd9-be9300e74947', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


