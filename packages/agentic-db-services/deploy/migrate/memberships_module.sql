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
  ('80114c29-df36-54f8-e2dd-cd1ba41cc519', 'fdf8a620-6969-72d5-d89a-ed384259d249', '7652b564-62c7-22d6-ad88-2b68efdaab16', 'a2eb6b64-0376-3481-e713-9258e486fdba', 'e3ae0365-15b3-6099-221b-679517ddb34f', 'app_memberships', 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'app_members', '3eb9c0d3-f07c-7a7e-ce63-9e3813896f28', 'app_membership_defaults', 'e8ee4f47-c0a4-d7be-f732-3881cc3662e2', 'app_grants', 'a42ab990-9bfb-d930-3f98-a01493cc2158', '03f2cd01-accc-0d7d-9adb-831fa4aa2406', '98928e8a-bad3-e9cd-cbc3-6d5b0fd705b2', 'ca24d8bc-b171-7a6a-dc68-32fe80aa7104', 'abbdb2fc-a12a-4eb9-65d6-cc0b735ecd1e', '7fb4bfd2-8039-3b68-67d2-5c19bbb86e57', 'fe5bf637-4e58-5939-02e1-48ea7359108c', 'app_admin_grants', '9a02e31f-86cb-35a3-0412-66b7fdfeda37', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('ff76d26e-6433-1c4c-37ca-f943d22dcd11', 'fdf8a620-6969-72d5-d89a-ed384259d249', '7652b564-62c7-22d6-ad88-2b68efdaab16', 'a2eb6b64-0376-3481-e713-9258e486fdba', '6e632c12-0767-3649-3a82-caefb7a3378a', 'org_memberships', '1e556280-9885-ed4f-b33e-f67dfe80ea97', 'org_members', '4bd813a4-96fa-8239-0476-2dc48c9eff38', 'org_membership_defaults', '04ab7d7c-28b8-5b46-7000-fda95f230956', 'org_grants', 'a42ab990-9bfb-d930-3f98-a01493cc2158', '41522d16-f0fd-c418-fb1c-90d01f32bc70', 'ae1320b5-a1ae-990f-891b-b1071ae2bb2c', 'da94e2fc-8b9e-bbf6-b88b-49c68622ae01', 'fef7be80-3776-af1b-d1ec-8f2ca0ca6a89', 'a3f36f89-82f7-0282-5b17-4417c1d49a71', 'b005f51f-cb7b-ef8b-c27b-d8c25eb63801', 'org_admin_grants', '2e181fbf-bf10-26bb-cf2b-973a1880e716', 'org_owner_grants', 2, 'a42ab990-9bfb-d930-3f98-a01493cc2158', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


