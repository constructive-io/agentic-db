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
  ('019d1dbf-dfa6-78a4-b15e-73ca5490901f', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-dfa6-7e3d-bdb1-3ff7b34348ef', '019d1dbf-e02f-7d4d-8fb4-875790017881', '019d1dbf-e0ba-7002-9545-20cb99c8cb10', 'app_permissions', '019d1dbf-e286-7b7d-9e72-5a16ac991172', 'app_permission_defaults', 24, 1, NULL, '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d1dc0-1627-7341-aad6-5dc4b31f0849', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-dfa6-7e3d-bdb1-3ff7b34348ef', '019d1dbf-e02f-7d4d-8fb4-875790017881', '019d1dc0-19e4-711b-bca5-5a34983e388c', 'org_permissions', '019d1dc0-1c02-7d2b-ae7c-17f7d0d4cd1e', 'org_permission_defaults', 24, 2, '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


