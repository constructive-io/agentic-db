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
  ('019d3d14-ebc2-73dd-b05d-fea54a0ac6a8', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ebc2-7b69-8a32-3c7696c40ef3', '019d3d14-ec35-72f7-943d-fbc2a569424a', '019d3d14-ecb8-72e1-b8b6-00f4f113f945', 'app_permissions', '019d3d14-ee73-7b33-967f-28388a1f3677', 'app_permission_defaults', 24, 1, NULL, '019d3d14-e756-7f18-bcd9-be9300e74947', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d3d15-1bc9-7499-962f-479edf1a50d5', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ebc2-7b69-8a32-3c7696c40ef3', '019d3d14-ec35-72f7-943d-fbc2a569424a', '019d3d15-1bd4-7c7b-8a37-5486c1c9b8cd', 'org_permissions', '019d3d15-1dd0-7e97-85a8-468d5721be4b', 'org_permission_defaults', 24, 2, '019d3d14-e756-7f18-bcd9-be9300e74947', '019d3d14-e756-7f18-bcd9-be9300e74947', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


