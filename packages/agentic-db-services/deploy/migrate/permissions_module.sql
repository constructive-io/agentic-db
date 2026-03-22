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
  ('019d1736-5f92-7f37-ab0b-20855fa5c8cf', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5f93-774f-a377-2f1fcbc9793f', '019d1736-600b-7c38-9e90-3dfb75ceada9', '019d1736-6088-7457-a126-68aadf738035', 'app_permissions', '019d1736-6228-7c33-9a9c-9559f693e9f4', 'app_permission_defaults', 24, 1, NULL, '019d1736-5b0d-7766-9f99-3cf518199163', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d1736-8ed5-7e7f-8d74-34fe7c8a0da9', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5f93-774f-a377-2f1fcbc9793f', '019d1736-600b-7c38-9e90-3dfb75ceada9', '019d1736-8ee0-7f9c-a7ec-e61ae5cdeeef', 'org_permissions', '019d1736-90d2-7083-b58d-b92fccd54ddd', 'org_permission_defaults', 24, 2, '019d1736-5b0d-7766-9f99-3cf518199163', '019d1736-5b0d-7766-9f99-3cf518199163', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


