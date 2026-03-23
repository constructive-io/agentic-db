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
  ('019d19cf-126a-7148-a47c-0dfdee7189d0', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0856-718d-a159-1e8137d9e65b', '019d19cf-126a-7c9b-a114-1a6fdeac1be9', '019d19cf-15bb-7455-9e1b-7b0edfbb3cb5', 'app_memberships', '019d19cf-04f9-762a-946a-add4e6430409', 'app_members', '019d19cf-1713-7f45-a392-1455ab1d4e59', 'app_membership_defaults', '019d19cf-2210-7876-b968-db1ba4c1bd94', 'app_grants', '019d19cf-04f9-762a-946a-add4e6430409', '019d19cf-0fbf-7a2b-94e8-5e9f8471ac60', '019d19cf-112f-79cd-b3ee-6511e0b93212', '019d19cf-0b8b-7b80-baa2-11475a5f5696', '019d19cf-0d98-79ae-8476-8f5f99dc40df', '019d19cf-184a-79bb-b218-d3039528785d', '019d19cf-1e12-7be0-92c5-7151b1c08522', 'app_admin_grants', '019d19cf-2007-7557-8423-ec83c72ca182', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d19cf-5068-75e1-a346-9aaf8be21477', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0856-718d-a159-1e8137d9e65b', '019d19cf-126a-7c9b-a114-1a6fdeac1be9', '019d19cf-53f0-7b8b-a2b4-1b32ffbe20c0', 'org_memberships', '019d19cf-5e2c-7d81-8768-dac4ebaddd79', 'org_members', '019d19cf-5556-7bc1-bf3c-8a30472367dd', 'org_membership_defaults', '019d19cf-65f4-77e1-804e-6592ad8185e9', 'org_grants', '019d19cf-04f9-762a-946a-add4e6430409', '019d19cf-4cc3-7f7e-8565-e982833fa22d', '019d19cf-4e95-78b6-b86f-41102285efbf', '019d19cf-4653-7f50-b3dd-b0636904ddb9', '019d19cf-4886-78d6-aba3-6d18d2c30fbe', '019d19cf-56cf-7f7b-b256-91cf478d3b61', '019d19cf-6094-7c6b-a8c2-c36e1714e31f', 'org_admin_grants', '019d19cf-6347-7e1f-8b28-6cdcde2c82aa', 'org_owner_grants', 2, '019d19cf-04f9-762a-946a-add4e6430409', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


