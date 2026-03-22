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
  ('019d1736-6620-7a7d-8b11-78be27a0b111', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5dde-7edf-9435-18611c6fa94e', '019d1736-6621-77a9-a38f-5d297c68ea95', '019d1736-66be-7223-a4ab-64408037fd98', 'app_memberships', '019d1736-5b0d-7766-9f99-3cf518199163', 'app_members', '019d1736-67e1-740f-a5e8-f193c14698e1', 'app_membership_defaults', '019d1736-712d-7250-8761-79aa0a2efaf5', 'app_grants', '019d1736-5b0d-7766-9f99-3cf518199163', '019d1736-63dc-74f7-8813-be6563d06add', '019d1736-6519-788c-922e-1ad5a4a293fc', '019d1736-6088-7457-a126-68aadf738035', '019d1736-6228-7c33-9a9c-9559f693e9f4', '019d1736-68f8-7e99-b390-fd7e2b2ed586', '019d1736-6dd8-7823-83a5-0e14a23c685e', 'app_admin_grants', '019d1736-6f80-74d6-b9d5-b7f8fe638cf8', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d1736-9543-777a-ab8f-45720da502f5', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5dde-7edf-9435-18611c6fa94e', '019d1736-6621-77a9-a38f-5d297c68ea95', '019d1736-9564-74b2-b299-9bd4c9396993', 'org_memberships', '019d1736-9e40-7f32-8de5-b27a7481d4f9', 'org_members', '019d1736-96a5-764d-bb2f-876014d7134b', 'org_membership_defaults', '019d1736-a53a-7bb6-a488-cc0612e02d26', 'org_grants', '019d1736-5b0d-7766-9f99-3cf518199163', '019d1736-9215-7235-a8a6-32a8974bedac', '019d1736-93af-7984-9ff0-8e112a1d4990', '019d1736-8ee0-7f9c-a7ec-e61ae5cdeeef', '019d1736-90d2-7083-b58d-b92fccd54ddd', '019d1736-97d5-7564-a351-dd7238b9b29e', '019d1736-a085-71f1-b1e7-55c70f19fd65', 'org_admin_grants', '019d1736-a2d6-7678-b974-c7f2809a2705', 'org_owner_grants', 2, '019d1736-5b0d-7766-9f99-3cf518199163', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


