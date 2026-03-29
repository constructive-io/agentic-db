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
  ('05dd3c42-cd39-1f33-ed22-6e933f047514', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ec5002a7-7d8e-f720-3a79-ac6edd4aee30', 'cf828ea2-ada6-30d9-9f88-49600033a4a4', 'ee8f193d-af6d-6828-39e5-ed25f55fc9a3', 'org_permissions', '74af7cdb-39ea-0abf-4770-2ebbc3f6e296', 'org_permission_defaults', 24, 2, '5353e947-3e3f-3914-7fd1-1370926dd743', '5353e947-3e3f-3914-7fd1-1370926dd743', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names'),
  ('98ecea61-ccc5-74f2-92b7-f89dd549c400', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ec5002a7-7d8e-f720-3a79-ac6edd4aee30', 'cf828ea2-ada6-30d9-9f88-49600033a4a4', '97c66666-071d-6f46-7967-85437fc3c183', 'app_permissions', '35c667fd-1288-823b-21c3-94457d99670c', 'app_permission_defaults', 24, 1, NULL, '5353e947-3e3f-3914-7fd1-1370926dd743', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


