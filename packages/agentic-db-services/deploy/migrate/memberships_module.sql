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
  ('019d416f-47af-7f4f-84d2-eb39788ad9e5', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3c9c-7189-bb0c-e43871321173', '019d416f-47b0-78b7-8a15-68d1c1a5cd20', '019d416f-487f-7c67-bdf3-efaf8ad26205', 'app_memberships', '019d416f-384a-79e2-9379-99ca3460e274', 'app_members', '019d416f-49f3-79b5-8faf-732844192068', 'app_membership_defaults', '019d416f-55db-7ffd-af75-8f230c699af8', 'app_grants', '019d416f-384a-79e2-9379-99ca3460e274', '019d416f-44d3-7d9d-bc19-8b6ac7af639c', '019d416f-465e-7fe5-b5fc-23227f7f959d', '019d416f-404c-7ccb-b3ea-38f77868b961', '019d416f-428b-77be-b894-3fcf0f10c9d3', '019d416f-4b60-764b-9328-492a12b628b1', '019d416f-5195-7af8-a2d6-1cea707d3566', 'app_admin_grants', '019d416f-53be-7060-8fda-ed56a7ef569e', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d416f-8314-7b7a-8b31-07d722f2bed9', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3c9c-7189-bb0c-e43871321173', '019d416f-47b0-78b7-8a15-68d1c1a5cd20', '019d416f-83b9-75bd-a70f-cf6094051c92', 'org_memberships', '019d416f-8e96-7b4f-a7af-daa19da2f135', 'org_members', '019d416f-853a-78ab-a23c-19248b421b17', 'org_membership_defaults', '019d416f-96c9-7481-bbc7-5cf9767b0018', 'org_grants', '019d416f-384a-79e2-9379-99ca3460e274', '019d416f-7ecb-779b-a9e9-17bd6c03d7e6', '019d416f-80c8-7bc2-805c-5ed0180f4142', '019d416f-7a66-7675-8c75-d850aa4da6c5', '019d416f-7cc8-74d8-a95e-a57c2b15cb26', '019d416f-86de-7124-b0ea-1caad8bc358f', '019d416f-9134-78c5-98fd-2b16be036aba', 'org_admin_grants', '019d416f-93f6-79ae-866b-066ac6eadf4b', 'org_owner_grants', 2, '019d416f-384a-79e2-9379-99ca3460e274', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


