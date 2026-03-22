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
  ('0da6b722-d896-c954-0a03-fb9d431a9c67', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a8090207-c915-30c6-0984-f42a82be403d', '8ef2f646-75ef-3277-eeb8-f2a25c531296', '619df900-2505-1053-76c6-d373614a4b72', 'app_memberships', '5d9c849b-e962-041a-de77-54774d5d1e62', 'app_members', '66a33bb5-d657-659f-6f47-bec6f2e6ad4d', 'app_membership_defaults', '2e69bbd4-2828-6be7-ac08-a055f3bae544', 'app_grants', '5d9c849b-e962-041a-de77-54774d5d1e62', '35e1d8a2-bafd-16d9-9554-d375a9819e78', '2cf73d4c-8c9a-5862-beec-ea74bff434ce', 'f43dde48-770f-2298-4185-844fb1eb5e59', '22cc7e20-a33a-82df-e26c-2c25aea0db0b', '2cf7c33b-8221-7346-48fc-ca04192c0d8b', '64e0a292-eeac-965d-0985-f1ce26d3c57f', 'app_admin_grants', '10fe80ee-c623-0373-28b9-8733d100a533', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('f1081956-7806-1019-1228-a8089b0d6803', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a8090207-c915-30c6-0984-f42a82be403d', '8ef2f646-75ef-3277-eeb8-f2a25c531296', 'd461705b-8c92-0363-91af-0fbb7825fa32', 'org_memberships', 'be700481-bf39-fd03-43a4-775f261f229f', 'org_members', '74502ae6-684e-81a9-7dee-2f92fe1190ca', 'org_membership_defaults', '87b61e3a-c27a-35fd-de8b-f69646c3967d', 'org_grants', '5d9c849b-e962-041a-de77-54774d5d1e62', 'f7b24ee5-f752-90db-4fee-03f74cd02e79', 'e2cae45d-62ab-60da-4ae0-66763c1698a8', 'cce7d6a1-ad70-e81b-0cef-1979a8413ccf', 'b2fddd0f-6093-79c2-6f96-35e0da663557', '5d6e669d-48b1-02a1-b282-2496adee86ae', 'e96f82ee-e2ac-f394-3fda-eea99bc1fcb5', 'org_admin_grants', '4e99b44d-3531-7b00-23ac-e1f7baa17138', 'org_owner_grants', 2, '5d9c849b-e962-041a-de77-54774d5d1e62', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


