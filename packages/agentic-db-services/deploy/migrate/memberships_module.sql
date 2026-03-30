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
  ('019d4100-4fd1-7dde-9fba-fb7c82cf1ad9', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-462b-77b8-87ba-02549f2d20fa', '019d4100-4fd2-7821-879b-f9a0e18d11a4', '019d4100-5351-7ac1-ac02-e0becc92f374', 'app_memberships', '019d4100-42f6-7ae2-9811-58ffe46470b0', 'app_members', '019d4100-54c1-7c4f-9dbc-48940b2f0386', 'app_membership_defaults', '019d4100-5fb5-7d29-aece-05facd46064d', 'app_grants', '019d4100-42f6-7ae2-9811-58ffe46470b0', '019d4100-4d22-7cf1-bf13-b6ff64bc12e2', '019d4100-4e9a-7370-806b-4946aafbfb6a', '019d4100-492c-7bb1-b951-e489e54e0fea', '019d4100-4b0c-79e8-aa05-9ec35bb77992', '019d4100-5612-755b-bd64-d4723c61b180', '019d4100-5bc5-744f-8807-27b6d8b38f3f', 'app_admin_grants', '019d4100-5db8-7445-9e48-753646c18fc5', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d4100-8c8a-7dd8-90bd-a2d2ae8aa53a', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-462b-77b8-87ba-02549f2d20fa', '019d4100-4fd2-7821-879b-f9a0e18d11a4', '019d4100-904d-7f34-aa41-a9f2a17a18e9', 'org_memberships', '019d4100-9a2d-78ab-9b0c-db73ffa10793', 'org_members', '019d4100-91a8-790c-9b49-8047db9910ed', 'org_membership_defaults', '019d4100-a1f3-75e4-893d-8c18762ef144', 'org_grants', '019d4100-42f6-7ae2-9811-58ffe46470b0', '019d4100-891a-7eae-bf72-bd095878b224', '019d4100-8ad4-7a09-baf5-f9a0398277d9', '019d4100-82d8-7e12-a4cc-c5e87ef9638b', '019d4100-84f8-7021-868d-f9474d8155df', '019d4100-9303-7d92-8ac2-3053daedbbfe', '019d4100-9ca5-7ba9-92fa-e644e18fffa3', 'org_admin_grants', '019d4100-9f3c-728d-b8dd-4bccd0242cc7', 'org_owner_grants', 2, '019d4100-42f6-7ae2-9811-58ffe46470b0', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


