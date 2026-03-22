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
  ('5e64aac7-b5de-17e4-c062-0200c6b03913', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'fa622281-9676-d3b2-9fc3-f5dca9776102', '2061922e-bfa9-f0a6-e73b-62374777b202', 'f43dde48-770f-2298-4185-844fb1eb5e59', 'app_permissions', '22cc7e20-a33a-82df-e26c-2c25aea0db0b', 'app_permission_defaults', 24, 1, NULL, '5d9c849b-e962-041a-de77-54774d5d1e62', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('b3f96aac-9b01-4c02-2dc5-190f05299c2e', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'fa622281-9676-d3b2-9fc3-f5dca9776102', '2061922e-bfa9-f0a6-e73b-62374777b202', 'cce7d6a1-ad70-e81b-0cef-1979a8413ccf', 'org_permissions', 'b2fddd0f-6093-79c2-6f96-35e0da663557', 'org_permission_defaults', 24, 2, '5d9c849b-e962-041a-de77-54774d5d1e62', '5d9c849b-e962-041a-de77-54774d5d1e62', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


