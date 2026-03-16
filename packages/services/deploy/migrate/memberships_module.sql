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
  ('d448cfaf-30dd-4666-b075-603c48df9ac9', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19723-899f-453d-575a-d60edcc86e01', 'bfc13b6f-0401-4a31-bd38-1d3e2e771636', 'bfc1eb59-c6b5-4140-f6d7-1b9a3a4c8fe6', 'app_memberships', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'app_members', 'bfc10e1b-5616-4687-d3e0-c77689d4c0a9', 'app_membership_defaults', 'bfc1b267-7b1a-4a6e-2b88-2ef1d01c4eea', 'app_grants', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'bfc18ad4-55d3-4abb-5c4f-28528278d477', 'bfc14f8c-0cd2-46d2-d70f-31a9f0bb489b', 'bfc1f6ea-64e0-47d5-ca83-acf100c9d998', 'bfc104ff-b79e-4579-e027-9b12e5bed601', 'bfc18849-d367-4c20-2bca-eb6d31e07a0f', 'bfc1fca8-ebe2-42f2-8a7b-6bd5c62808e2', 'app_admin_grants', 'bfc16886-4908-4f34-ec8a-e0f38d33b70c', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('069f8f4b-3237-47b5-b1c2-58eefe133d7a', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19723-899f-453d-575a-d60edcc86e01', 'bfc13b6f-0401-4a31-bd38-1d3e2e771636', 'bfc10c0b-43db-44e3-29fd-759dd6ea0087', 'org_memberships', 'bfc1b582-56f1-4c8c-d81f-d0d09d328dd4', 'org_members', 'bfc11b34-efed-47d9-51e6-164cf99babb2', 'org_membership_defaults', 'bfc1540e-fa68-4ac9-258e-99dacc299193', 'org_grants', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'bfc1e969-4ee9-4253-ebb5-70225b1de64a', 'bfc18f5f-a7c8-4641-85ba-765e2ff2928a', 'bfc19ae3-2460-43f0-9a1b-9bfb6230c3a5', 'bfc1b595-c1de-4a1b-361d-a26c22d56683', 'bfc1d0d6-76d9-4c28-6d73-1a94a6d9ec67', 'bfc144ad-4ddf-4a8f-cd10-9476a0fa65aa', 'org_admin_grants', 'bfc1de31-d6d9-4342-9462-bfac043ff18b', 'org_owner_grants', 2, 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


