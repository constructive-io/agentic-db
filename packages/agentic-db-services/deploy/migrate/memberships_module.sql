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
  ('0285fb4e-fcd4-abe2-8075-b9701dbf9d82', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'b0fef0a3-d187-0423-4152-0887820a558a', '5255939a-a6c7-e342-1d6f-d3c93fc9b7f9', '604d3651-325e-d1e9-bb33-e58e2ec26dc5', 'app_memberships', '5b5d99e1-9167-1378-cf99-58449ebc35bc', 'app_members', 'ef5101af-75c6-0f22-d81b-f8f9c60c2f95', 'app_membership_defaults', '8302ae72-1d93-9dc5-2517-3ce9bab4203d', 'app_grants', '5b5d99e1-9167-1378-cf99-58449ebc35bc', '5dbb2c55-c468-712c-9741-d541cd432344', '2b181c90-63c4-fd4c-561e-008440d468fb', '8b27fb0c-e4ef-3678-e21c-e7ceb4590584', 'bb869070-30fe-dae1-c436-67f983fee6a6', '2821ae70-bccc-5578-da5f-53f2e8896a9a', 'd1b6a175-abb0-513d-3d15-fc94237a70f9', 'app_admin_grants', '491726bb-c87d-5fed-2d5b-750a72eab797', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('13a8d5e9-4485-1fe2-bc94-52f34d3cd54a', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'b0fef0a3-d187-0423-4152-0887820a558a', '5255939a-a6c7-e342-1d6f-d3c93fc9b7f9', '48507dfd-57d9-4811-eb30-80b216d5b2bb', 'org_memberships', '479e8f6c-d0d7-2052-9543-dad8e925ea01', 'org_members', '7167ed8f-afef-b59a-638b-b17339fe1627', 'org_membership_defaults', '0768e3e1-574e-36b8-291d-27c0840532c4', 'org_grants', '5b5d99e1-9167-1378-cf99-58449ebc35bc', 'bed29a3a-7fba-8ec6-a8b8-db10680ab3b7', 'bf48f7e8-09a9-82c0-de50-d668ef79dabc', '74063376-1e71-fe44-ce96-9da2549d606d', '6c74cd5c-b9d3-5ffc-6fe1-97e4d1eee7fc', '2441967d-70fe-18c1-d59e-dc14b3060a2c', '4ac2fecb-8c98-350b-2dc3-6304637930da', 'org_admin_grants', '94b91639-5771-0f08-c634-537914321d41', 'org_owner_grants', 2, '5b5d99e1-9167-1378-cf99-58449ebc35bc', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


