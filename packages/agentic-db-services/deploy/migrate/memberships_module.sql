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
  ('019d934f-9ced-7dc5-abfc-b6e5c80ec60d', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-8e3d-704c-8fdf-d84d858c8b17', '019d934f-9cee-7bae-93fd-ad757080ee4a', '019d934f-9df9-7a59-a86d-b5b5dc33b0a7', 'app_memberships', '019d934f-898e-73d5-9f57-6c8589048db5', 'app_members', '019d934f-9fe5-75ab-9746-9c7caf466378', 'app_membership_defaults', '019d934f-af76-7c06-92ec-3e328c019c6e', 'app_grants', '019d934f-898e-73d5-9f57-6c8589048db5', '019d934f-9900-71af-ab32-19d9c1b4f56e', '019d934f-9af1-72b8-b389-574c6930cbd9', '019d934f-92fc-7d5e-aef9-43e50d7a5049', '019d934f-95e0-7563-a0c2-31e8310b3a14', '019d934f-a1b7-783d-8e14-3032c9b12a64', '019d934f-a9fc-737e-b500-9dd99bcab716', 'app_admin_grants', '019d934f-acb8-764b-9cd8-d30e63c54225', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d934f-e9b7-7d00-9fb7-0ec4306cbeaa', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-8e3d-704c-8fdf-d84d858c8b17', '019d934f-9cee-7bae-93fd-ad757080ee4a', '019d934f-ea21-7619-abc0-635c9c963cd3', 'org_memberships', '019d934f-f82b-7418-b582-6285603f178e', 'org_members', '019d934f-ec1f-73fd-9243-c5ad79f9bf4a', 'org_membership_defaults', '019d9350-0357-7925-a747-23fee822832f', 'org_grants', '019d934f-898e-73d5-9f57-6c8589048db5', '019d934f-e4e7-7046-9fd8-4184b022c61a', '019d934f-e787-7a23-b4fa-d5be14121d10', '019d934f-dfa9-7350-84a0-f7a734116364', '019d934f-e2cd-7010-acb9-c44d776ddd35', '019d934f-ee1f-794d-9c88-de8253036a61', '019d934f-fbd1-7b61-9b4e-401458bd2b0b', 'org_admin_grants', '019d934f-ff8d-7591-9d2f-56a00620b2b6', 'org_owner_grants', 2, '019d934f-898e-73d5-9f57-6c8589048db5', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


