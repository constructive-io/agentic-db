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
  ('019d2831-6ff2-7972-ad59-f8a325b3b1cb', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-667f-7d04-8346-45045ab70d5c', '019d2831-6ff3-7744-8389-bc9167060dbe', '019d2831-732a-76c6-a425-65abcce0f160', 'app_memberships', '019d2831-6349-7cde-a517-c115bf8f4bff', 'app_members', '019d2831-7483-7978-a02f-cbaec5d806ab', 'app_membership_defaults', '019d2831-7f08-724b-bad4-25bf12a04e2c', 'app_grants', '019d2831-6349-7cde-a517-c115bf8f4bff', '019d2831-6d76-795f-95ab-9f8ec87cc298', '019d2831-6ed0-7bb5-b587-614b82b3714c', '019d2831-6993-7415-bc88-2c55d7aa6811', '019d2831-6b7e-78e5-8dc6-9727b84caca5', '019d2831-75c4-7d43-9003-9375f6e3a2ac', '019d2831-7b2d-750a-a37b-13284f6fb474', 'app_admin_grants', '019d2831-7d11-7e2a-a571-7e1e569ab3f1', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d2831-adfe-7851-bc24-457f36d7a601', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-667f-7d04-8346-45045ab70d5c', '019d2831-6ff3-7744-8389-bc9167060dbe', '019d2831-b271-7396-ab85-a73b6b789548', 'org_memberships', '019d2831-bc50-7620-b225-179db6ff0049', 'org_members', '019d2831-b3d8-7b64-b201-3d4bddc156e8', 'org_membership_defaults', '019d2831-c3d9-73ae-bb0d-c9c0aade2a82', 'org_grants', '019d2831-6349-7cde-a517-c115bf8f4bff', '019d2831-aa98-7f38-8ae6-a0ad172ec4ef', '019d2831-ac5d-7ada-bd29-6edd91fad4ef', '019d2831-a3ad-7ec2-a3ba-39b15c9e4901', '019d2831-a5d2-7ca9-aa9f-083e607b842a', '019d2831-b54a-74dc-89f2-0bcfe276073e', '019d2831-bea8-79df-9e4b-f9d30155fb3f', 'org_admin_grants', '019d2831-c13f-752b-8eea-6b1bce9e2063', 'org_owner_grants', 2, '019d2831-6349-7cde-a517-c115bf8f4bff', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


