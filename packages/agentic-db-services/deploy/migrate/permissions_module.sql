-- Deploy: migrate/permissions_module
-- made with <3 @ constructive.io

-- requires: migrate/memberships_module


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

INSERT INTO metaschema_modules_public.permissions_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  table_id,
  table_name,
  default_table_id,
  default_table_name,
  bitlen,
  membership_type,
  entity_table_id,
  actor_table_id,
  prefix,
  get_padded_mask,
  get_mask,
  get_by_mask,
  get_mask_by_name
) VALUES
  ('019d19cf-0a61-73e0-a1ee-c6958ac9b183', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0a61-7a5a-9145-45b1f55c0d38', '019d19cf-0af6-787e-8582-98cb6a40893e', '019d19cf-0b8b-7b80-baa2-11475a5f5696', 'app_permissions', '019d19cf-0d98-79ae-8476-8f5f99dc40df', 'app_permission_defaults', 24, 1, NULL, '019d19cf-04f9-762a-946a-add4e6430409', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d19cf-4355-728d-9ef8-c6c8f999976e', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0a61-7a5a-9145-45b1f55c0d38', '019d19cf-0af6-787e-8582-98cb6a40893e', '019d19cf-4653-7f50-b3dd-b0636904ddb9', 'org_permissions', '019d19cf-4886-78d6-aba3-6d18d2c30fbe', 'org_permission_defaults', 24, 2, '019d19cf-04f9-762a-946a-add4e6430409', '019d19cf-04f9-762a-946a-add4e6430409', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


