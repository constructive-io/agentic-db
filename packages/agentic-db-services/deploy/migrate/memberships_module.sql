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
  ('019d130d-0086-71b1-8fa6-355fbd09f97a', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f528-7521-ad98-5049be733d14', '019d130d-0086-7cc7-9efe-8faaa639cb1e', '019d130d-016c-7782-9303-e5d5774f7038', 'app_memberships', '019d130c-f14b-7ef8-94e3-e005503a699d', 'app_members', '019d130d-03f5-730f-9e5f-067d9ec55132', 'app_membership_defaults', '019d130d-1097-7c0b-98cd-95552634796b', 'app_grants', '019d130c-f14b-7ef8-94e3-e005503a699d', '019d130c-fd65-7cff-b713-e3e23c1e4724', '019d130c-ff13-76cf-892f-0b551c8f7c99', '019d130c-f8c1-783c-ac27-00d4e687ddb7', '019d130c-faf4-7c9e-8095-401eebbad700', '019d130d-0598-749f-b9c9-96cf4af3ec8c', '019d130d-0bfe-7232-a47f-d80aa319ab68', 'app_admin_grants', '019d130d-0e52-7977-90c3-856e76aea89b', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d130d-3f20-715a-a9f1-95596baafe5d', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f528-7521-ad98-5049be733d14', '019d130d-0086-7cc7-9efe-8faaa639cb1e', '019d130d-3fd0-7483-bc2f-cbaeafc578cc', 'org_memberships', '019d130d-4bed-77f1-8540-190d2eb71587', 'org_members', '019d130d-4187-7311-8e08-13f004278d09', 'org_membership_defaults', '019d130d-54bd-70d1-bd8b-641cfab1ea45', 'org_grants', '019d130c-f14b-7ef8-94e3-e005503a699d', '019d130d-3b92-7067-a6c2-9c5afc059e63', '019d130d-3da3-72f3-80af-59cec1ba7467', '019d130d-373c-7678-9350-2dc76515f178', '019d130d-39ad-72fc-868f-905588c93cbe', '019d130d-431c-7318-8c2a-ddf0d84506de', '019d130d-4e92-7c81-8e34-fe9355742ba7', 'org_admin_grants', '019d130d-5198-7fa5-af5a-1f6aa0ae008e', 'org_owner_grants', 2, '019d130c-f14b-7ef8-94e3-e005503a699d', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


