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
  ('019d11d9-67ef-77f4-95f9-1d0fbdf7f3c5', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5e47-76cc-9644-05e7a92626a9', '019d11d9-67f0-73cf-ae19-ce25b6d1ba46', '019d11d9-695f-741e-9518-2589c027a57e', 'app_memberships', '019d11d9-5aed-7673-b41b-b11528f73f79', 'app_members', '019d11d9-6aa7-705a-bbc0-36e4331c14a3', 'app_membership_defaults', '019d11d9-7570-75d7-b30e-da7c8cc4754f', 'app_grants', '019d11d9-5aed-7673-b41b-b11528f73f79', '019d11d9-6556-7cf8-a5f5-76303fdb890e', '019d11d9-66bf-741b-a410-2dca24ec5f99', '019d11d9-6176-7383-97c7-be4ad83ecdd6', '019d11d9-6350-7a4d-b467-dcc795359cfe', '019d11d9-6bdb-72fd-8ce9-c16ff7809fe7', '019d11d9-7184-7bb7-af3d-abae31e75e46', 'app_admin_grants', '019d11d9-7376-7ca7-ac4c-ea49393f2335', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d11d9-a2c9-73af-ac6d-aada5a34adbd', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5e47-76cc-9644-05e7a92626a9', '019d11d9-67f0-73cf-ae19-ce25b6d1ba46', '019d11d9-a485-70d1-8ce0-a34dd4ec4db6', 'org_memberships', '019d11d9-af7f-793c-b9fd-8b3ea0e2ae47', 'org_members', '019d11d9-a62f-7604-86c2-d69ad14df8f4', 'org_membership_defaults', '019d11d9-b7c0-7b24-8634-7f49dea14695', 'org_grants', '019d11d9-5aed-7673-b41b-b11528f73f79', '019d11d9-9e6d-756a-b6e0-866693413e39', '019d11d9-a070-7071-a564-da9ac762e36d', '019d11d9-9991-76e8-8d2b-2c7a59853f40', '019d11d9-9bcc-7566-a228-0c7b3f915afb', '019d11d9-a7ba-729b-929b-b6f69e009c2b', '019d11d9-b20b-7600-910f-f241e4cc6228', 'org_admin_grants', '019d11d9-b4d8-7ef9-b741-0b423e837e83', 'org_owner_grants', 2, '019d11d9-5aed-7673-b41b-b11528f73f79', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


