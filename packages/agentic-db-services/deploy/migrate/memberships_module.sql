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
  ('019d1795-547b-7bfc-83cf-3725a3a60335', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4c1b-7a59-8ae4-3c48b8349459', '019d1795-547c-772e-88aa-b0d16f40b989', '019d1795-552c-7ab5-ac15-b718d9e93b05', 'app_memberships', '019d1795-494e-7deb-bd76-39af3a5fa635', 'app_members', '019d1795-5649-7cb8-8785-0c4f10b130cf', 'app_membership_defaults', '019d1795-5faf-748a-a7ff-01b3dde12ed1', 'app_grants', '019d1795-494e-7deb-bd76-39af3a5fa635', '019d1795-522a-70ad-ab17-3ca7b41a79fd', '019d1795-5370-7516-96ed-fec4f2935e0c', '019d1795-4ece-7922-a931-77d9305f9fc3', '019d1795-5075-79b2-9608-2c33b83ba5cc', '019d1795-5770-7977-a651-2fb4ee225fb6', '019d1795-5c3d-705a-a272-0993d1ce002d', 'app_admin_grants', '019d1795-5de7-7e91-aadc-6ab688467780', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d1795-85e5-775d-968c-b9d1a69ce984', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4c1b-7a59-8ae4-3c48b8349459', '019d1795-547c-772e-88aa-b0d16f40b989', '019d1795-8689-767b-9b73-2d73aa886b27', 'org_memberships', '019d1795-9175-74e5-9f43-954f51374c75', 'org_members', '019d1795-880c-7f90-96a6-e5d45879321d', 'org_membership_defaults', '019d1795-992b-7f38-9860-fcfde527504b', 'org_grants', '019d1795-494e-7deb-bd76-39af3a5fa635', '019d1795-8243-74ac-af82-138875d2f98d', '019d1795-8423-7cc8-93af-fb7fa796284d', '019d1795-7e77-75a1-8cdd-77613c886fd7', '019d1795-8086-7f7b-91bc-63ee30c3cecf', '019d1795-896b-708a-8e73-20d08993fb27', '019d1795-940f-7882-837f-673307408512', 'org_admin_grants', '019d1795-968c-7e1c-b9e4-d3322d33cb3c', 'org_owner_grants', 2, '019d1795-494e-7deb-bd76-39af3a5fa635', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


