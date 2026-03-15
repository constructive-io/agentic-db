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
  ('e1e70a27-b6e3-436b-b745-05bd7cd1f5c3', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087970-3d1f-473c-4c81-937a8d8eeb0c', 'a008cef5-a8b2-4e8e-a661-699d408148cc', 'a0087809-679b-438a-8804-52b910786123', 'app_memberships', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'app_members', 'a008bbc8-f185-47e9-ee83-9c48fab8bcea', 'app_membership_defaults', 'a0089cbd-ed90-44a2-2471-e2d1af75ca42', 'app_grants', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'a0084fe3-d31b-45b5-cfb7-b9d95985f6d8', 'a0088e03-e01e-4ef1-dd2b-4453a690c77f', 'a0080e21-0752-4f6a-54c2-1466fb5b80d4', 'a0085506-847a-4a0c-73ef-98539023f6cb', 'a008c05a-9c78-4121-0d69-6da654938a8c', 'a0081e7e-623a-429c-95cd-787f692433d5', 'app_admin_grants', 'a008f429-f838-4e4a-7d30-2bf7ca4866e3', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('fab4f5b8-5c10-40de-8e13-6b246427ae7a', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087970-3d1f-473c-4c81-937a8d8eeb0c', 'a008cef5-a8b2-4e8e-a661-699d408148cc', 'a008a174-5a85-46f7-d872-786586168654', 'org_memberships', 'a00800c8-207d-413c-b546-6c6a04bdef69', 'org_members', 'a0084755-d238-48c2-89a9-b3a2338f3d18', 'org_membership_defaults', 'a008e32c-d507-4906-f0bd-63024e1a6035', 'org_grants', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'a00897ba-f51a-4daa-2328-2dca8adaf0b3', 'a0088ec2-77cf-4698-337a-bce462e8d188', 'a0088dd5-9f3c-438c-af88-593142359c1a', 'a008d85e-3089-43c0-c6fe-a945b8ec211b', 'a008fa9f-2020-4d0f-ac75-b57a634f9158', 'a008beb7-63c0-4261-af90-7fa45a2f886f', 'org_admin_grants', 'a008c783-7568-4291-fbde-10223da5bd8b', 'org_owner_grants', 2, 'a0082485-cf01-4c72-8c4f-76422cceded1', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


