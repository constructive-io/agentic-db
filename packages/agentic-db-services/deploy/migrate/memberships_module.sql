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
  ('019d20cd-8711-76bf-9f4e-421018137135', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7d80-7824-a07d-cdd3cd495d95', '019d20cd-8712-70a5-a537-f9df3e9c5af1', '019d20cd-87bf-7b47-9abb-d3bb899195af', 'app_memberships', '019d20cd-7a20-7176-823e-cca436cf06f3', 'app_members', '019d20cd-890b-7fc4-9bd5-32013c05b60e', 'app_membership_defaults', '019d20cd-93b2-7873-8289-3c362f41c66c', 'app_grants', '019d20cd-7a20-7176-823e-cca436cf06f3', '019d20cd-8487-7346-8ceb-5452080fb5ad', '019d20cd-85ed-78b9-a62c-aab00cd74c5e', '019d20cd-80a0-741c-8107-a97b9611df53', '019d20cd-8287-75a2-85e5-0befd158c542', '019d20cd-8a44-78c2-af96-98077d82abec', '019d20cd-8fc2-7024-bd61-d0b5dce4c307', 'app_admin_grants', '019d20cd-91b2-79dd-abc8-288c1bcf481f', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d20cd-bc63-7440-b05a-d4b18ba83a8e', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7d80-7824-a07d-cdd3cd495d95', '019d20cd-8712-70a5-a537-f9df3e9c5af1', '019d20cd-bc99-7c6f-b5d8-f1f70077a3a0', 'org_memberships', '019d20cd-c6f1-7a58-b764-6a52e167bb91', 'org_members', '019d20cd-be0d-7dd6-ba2c-1be88a0a3acb', 'org_membership_defaults', '019d20cd-cf1b-7a62-a7cd-c6d0a9698dc0', 'org_grants', '019d20cd-7a20-7176-823e-cca436cf06f3', '019d20cd-b8c8-7fc8-a81a-bb83189f8334', '019d20cd-baa9-7c0a-8bbd-5532c416e9ed', '019d20cd-b539-79a4-90d6-42d1c5454329', '019d20cd-b776-7964-8d98-fa900435fb9e', '019d20cd-bf7d-7b33-b5b8-b3e2ef344351', '019d20cd-c989-7439-83c7-af4daf1cf334', 'org_admin_grants', '019d20cd-cc58-7e83-8a70-0ff2a3afbb3d', 'org_owner_grants', 2, '019d20cd-7a20-7176-823e-cca436cf06f3', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


