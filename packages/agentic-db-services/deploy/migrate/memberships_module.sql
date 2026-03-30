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
  ('019d3dab-0d58-7c9b-a2b9-48f70c6630d1', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-03c6-7630-a278-03cc476571de', '019d3dab-0d59-7a36-8f13-1f1eaa4266c4', '019d3dab-0e10-73fe-8495-800d7f4fdaae', 'app_memberships', '019d3dab-00a9-731d-b66d-d5d69c0909a6', 'app_members', '019d3dab-0f52-75f8-969f-6d7ce00d7c83', 'app_membership_defaults', '019d3dab-19e0-7144-94a2-3567567a6c56', 'app_grants', '019d3dab-00a9-731d-b66d-d5d69c0909a6', '019d3dab-0ad6-7e8e-bb4b-da72970fd048', '019d3dab-0c3b-7cd6-b824-67e803578bd8', '019d3dab-06c8-70c7-9344-b913b26b3813', '019d3dab-08ba-76bc-ba87-dac71d8e46dc', '019d3dab-109d-79de-84ed-70977f618493', '019d3dab-1610-7632-a9eb-e3d5e1b9eda0', 'app_admin_grants', '019d3dab-17fe-7595-8607-36d6123de201', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d3dab-4280-79d0-a3ba-c0d9fc393fd2', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-03c6-7630-a278-03cc476571de', '019d3dab-0d59-7a36-8f13-1f1eaa4266c4', '019d3dab-4320-762d-8e0b-a0f2fa7986ad', 'org_memberships', '019d3dab-4d65-71ed-a01a-ec5821bb1227', 'org_members', '019d3dab-44f4-7802-8b08-dcc21f9d2a8e', 'org_membership_defaults', '019d3dab-5532-7f9e-a4ff-968f6bcf0e15', 'org_grants', '019d3dab-00a9-731d-b66d-d5d69c0909a6', '019d3dab-3de4-73ce-b0c3-be1982fd603c', '019d3dab-3fdc-736b-b53a-ab97b1e4c7bb', '019d3dab-3a54-7306-a038-93110afa9aff', '019d3dab-3c7c-7810-af52-8d8eacca0129', '019d3dab-464c-75f3-ae3f-4de29acb0a40', '019d3dab-4fda-724e-9c16-476d03f576a5', 'org_admin_grants', '019d3dab-5281-787c-aad4-a108073c3201', 'org_owner_grants', 2, '019d3dab-00a9-731d-b66d-d5d69c0909a6', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


