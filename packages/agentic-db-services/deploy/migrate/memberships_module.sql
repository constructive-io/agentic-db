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
  ('3da2662f-0f34-9f07-6877-8072f7d0b003', '14b01c2d-072a-5594-645a-675751a83d86', '34fb2c11-bc37-0c63-a3ed-1949ae860cd7', '946258fc-eb29-ce55-7946-86e554402d12', '2f03d3e4-62f8-6a6a-84bf-07c88511b6da', 'org_memberships', '944c5ffc-708b-3204-15fa-e07da614ea22', 'org_members', '6ecddb28-2e45-6df1-f553-9a337ee25c67', 'org_membership_defaults', '186b1522-500b-5c31-14aa-587c0d13162c', 'org_grants', '5258dec3-0cde-6103-1859-08598c428740', 'd4267430-d15d-f69e-23e4-dbace0dafda0', '982a144d-3c39-34f4-02ab-09942450e100', '9dec1b06-3907-c9a5-e893-502982e3c0cb', '6ef8956e-cf91-7cc0-c685-42167c1562f7', '23c565d0-7957-caf6-1d7d-ae1c4f75e589', 'c84a9699-2557-80db-d150-14ff4c9cbd14', 'org_admin_grants', 'fa5c8205-b2dd-dd93-7bc3-a7ccc480f1da', 'org_owner_grants', 2, '5258dec3-0cde-6103-1859-08598c428740', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids'),
  ('f043a24b-75a8-b972-a593-05b43986927d', '14b01c2d-072a-5594-645a-675751a83d86', '34fb2c11-bc37-0c63-a3ed-1949ae860cd7', '946258fc-eb29-ce55-7946-86e554402d12', 'c62dac65-8ef3-b442-327f-bf51371e997d', 'app_memberships', '5258dec3-0cde-6103-1859-08598c428740', 'app_members', 'ea866a72-85e4-1001-222b-eb4909c908b3', 'app_membership_defaults', '8fdd3ba6-fb1c-55c1-c0f5-9e35befbc3f2', 'app_grants', '5258dec3-0cde-6103-1859-08598c428740', 'd0fc0807-4235-5d54-5b47-5609ac924a86', '489f0d20-477a-8bc6-9c5f-71c333e1a19f', 'f25a8ee5-7a16-ce38-e44a-b946418a9251', '9a70d41b-4151-83b1-58ae-4db73400f115', '7ccea9b1-8792-8082-1509-bca3f303ad25', 'ba1c9f7c-3c4b-e1eb-6a03-69f10a56bfd7', 'app_admin_grants', '978ae4a5-f9a9-9a28-55fe-8bf4fab368a4', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL);


SET session_replication_role TO DEFAULT;


