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
  ('019d0ffe-5db2-7c0a-ba2d-505ac66fc675', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-53ea-7609-a293-cf598cb70844', '019d0ffe-5db3-7d04-bb81-f7a810b15714', '019d0ffe-5e6f-70db-916e-b9647b18509b', 'app_memberships', '019d0ffe-509c-7e69-b073-260da2d7f651', 'app_members', '019d0ffe-5fc3-7858-9d2e-662eca92010a', 'app_membership_defaults', '019d0ffe-6a5b-7979-b12a-070f7fbf4cff', 'app_grants', '019d0ffe-509c-7e69-b073-260da2d7f651', '019d0ffe-5b1c-72ea-b424-e89de8b058d4', '019d0ffe-5c82-77cd-9bbd-936e77c005d6', '019d0ffe-5723-79af-9db0-2a952ae7b0a4', '019d0ffe-5915-7a2f-bf10-e6cbe927b946', '019d0ffe-610a-75a7-a36c-2d149384b047', '019d0ffe-669a-76e9-8a37-c4a4308dbd0a', 'app_admin_grants', '019d0ffe-687e-7505-aa3e-bdb677eb7dfc', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d0ffe-930f-789c-98e9-3bda68eec8ae', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-53ea-7609-a293-cf598cb70844', '019d0ffe-5db3-7d04-bb81-f7a810b15714', '019d0ffe-936b-7ef6-b651-97363832464b', 'org_memberships', '019d0ffe-9d6f-7282-84f0-6d4a489ae036', 'org_members', '019d0ffe-94d9-70c4-89cf-9fcb15fdcb1d', 'org_membership_defaults', '019d0ffe-a53f-762e-aa69-f08eed042972', 'org_grants', '019d0ffe-509c-7e69-b073-260da2d7f651', '019d0ffe-8f65-7324-80ea-3e9dd2306e62', '019d0ffe-9136-7dd2-9420-e4069ec1aef5', '019d0ffe-8bb5-7fcf-9caa-019e02b8af3e', '019d0ffe-8de4-7937-9206-4f45d12db6c3', '019d0ffe-9645-7645-b565-acfc996552ba', '019d0ffe-9fdf-7b6f-b94e-2633ed9d6a32', 'org_admin_grants', '019d0ffe-a27e-74e9-830a-bff00e13eff9', 'org_owner_grants', 2, '019d0ffe-509c-7e69-b073-260da2d7f651', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


