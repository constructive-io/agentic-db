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
  ('019d1dbf-e6fc-7d5a-93a9-72ab60b002ce', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-ddbb-7fbf-9505-8db63eca57ee', '019d1dbf-e6fd-7837-9225-5b98c59d42dc', '019d1dbf-ea14-78ee-89a3-1add46d33029', 'app_memberships', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', 'app_members', '019d1dbf-eb59-7a92-90f4-da1cd9f89e5f', 'app_membership_defaults', '019d1dbf-f5a9-7d30-9361-748865e22263', 'app_grants', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', '019d1dbf-e483-76c9-9398-83b95c939a37', '019d1dbf-e5d8-7cf9-a08e-6ca25df7cce7', '019d1dbf-e0ba-7002-9545-20cb99c8cb10', '019d1dbf-e286-7b7d-9e72-5a16ac991172', '019d1dbf-ec91-784c-9bde-0296402b33a1', '019d1dbf-f1e8-738c-9f42-b0c0a766270d', 'app_admin_grants', '019d1dbf-f3c4-7486-b0a8-f7153f031b60', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d1dc0-23df-79c8-aabc-e71dbe7efbd8', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-ddbb-7fbf-9505-8db63eca57ee', '019d1dbf-e6fd-7837-9225-5b98c59d42dc', '019d1dc0-282a-798b-9be9-b6c25744a739', 'org_memberships', '019d1dc0-31c2-756b-a4ef-e64e5a12de7c', 'org_members', '019d1dc0-2986-7125-bf3e-adcb57519abb', 'org_membership_defaults', '019d1dc0-390d-7bd7-b7b9-e33d04fe41d8', 'org_grants', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', '019d1dc0-2089-7dcf-80cf-297bd5b261fb', '019d1dc0-224d-7326-96d8-64da3ea555a3', '019d1dc0-19e4-711b-bca5-5a34983e388c', '019d1dc0-1c02-7d2b-ae7c-17f7d0d4cd1e', '019d1dc0-2add-72d9-891d-b9da01417eae', '019d1dc0-3412-755c-81f7-c681c8a5e1c7', 'org_admin_grants', '019d1dc0-368b-7845-99bf-f27c10b4725b', 'org_owner_grants', 2, '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


