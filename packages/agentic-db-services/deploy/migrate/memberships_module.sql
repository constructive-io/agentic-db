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
  ('019d37b9-c48e-7a43-8531-e405a705b8ea', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bb21-792b-800c-4cfd5fc2db67', '019d37b9-c48f-7769-a7a8-70fded63c6ee', '019d37b9-c690-7938-a48b-4231af4d2ef4', 'app_memberships', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', 'app_members', '019d37b9-c7c6-7208-832c-0fa57b3d0949', 'app_membership_defaults', '019d37b9-d1bb-7b8f-bae1-6f835bec5069', 'app_grants', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', '019d37b9-c1ff-7b2f-b603-ca6071c814b0', '019d37b9-c37f-7171-9431-2555b4a606d3', '019d37b9-be51-7edc-9a46-789aa38be324', '019d37b9-c015-72cb-936d-57f00ba681fe', '019d37b9-c8e2-71d9-b91f-88171491c86d', '019d37b9-ce26-7be5-95ca-5b730a0919a5', 'app_admin_grants', '019d37b9-d001-72cc-b900-9ad559257302', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d37b9-fa32-707f-8fbe-d02e9096fc54', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bb21-792b-800c-4cfd5fc2db67', '019d37b9-c48f-7769-a7a8-70fded63c6ee', '019d37b9-fc8e-72c0-ba2d-4d58f95d8eb5', 'org_memberships', '019d37ba-05cd-7e06-b20a-5f3b729cad64', 'org_members', '019d37b9-fde0-734c-a3eb-d5ff3b2f2634', 'org_membership_defaults', '019d37ba-0cd2-75ea-9152-91fb8217abb7', 'org_grants', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', '019d37b9-f6d5-7855-bd31-fca69824d86e', '019d37b9-f893-7ecd-9504-23198b5ec0d2', '019d37b9-f1c4-7631-be74-02fadb8f3940', '019d37b9-f3b3-72e8-b406-b0c74388ae02', '019d37b9-ff32-71f9-8a1b-95ccec7893f3', '019d37ba-0805-71a5-b18d-7bb712b766d9', 'org_admin_grants', '019d37ba-0a6d-786c-b1ae-075b0df70524', 'org_owner_grants', 2, '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


