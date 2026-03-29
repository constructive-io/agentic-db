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
  ('1e3f737b-3a47-5fd9-a0d1-426147a83e65', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'd1bcbc12-1cce-8994-1ea3-cdb659c8dc81', 'efb3b5d4-50f4-f1c2-b5ad-5c27f1a0d15e', '74063376-1e71-fe44-ce96-9da2549d606d', 'org_permissions', '6c74cd5c-b9d3-5ffc-6fe1-97e4d1eee7fc', 'org_permission_defaults', 24, 2, '5b5d99e1-9167-1378-cf99-58449ebc35bc', '5b5d99e1-9167-1378-cf99-58449ebc35bc', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names'),
  ('6e473bfb-2fe5-c13a-0f78-56ed3743e66c', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'd1bcbc12-1cce-8994-1ea3-cdb659c8dc81', 'efb3b5d4-50f4-f1c2-b5ad-5c27f1a0d15e', '8b27fb0c-e4ef-3678-e21c-e7ceb4590584', 'app_permissions', 'bb869070-30fe-dae1-c436-67f983fee6a6', 'app_permission_defaults', 24, 1, NULL, '5b5d99e1-9167-1378-cf99-58449ebc35bc', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


