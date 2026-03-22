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
  ('019d130c-f774-7370-a3cc-513b39792272', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f774-78ae-bf70-3d1cee60d391', '019d130c-f814-738d-986f-e4f0308105a3', '019d130c-f8c1-783c-ac27-00d4e687ddb7', 'app_permissions', '019d130c-faf4-7c9e-8095-401eebbad700', 'app_permission_defaults', 24, 1, NULL, '019d130c-f14b-7ef8-94e3-e005503a699d', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d130d-36d0-7d6d-bd3a-4adf0e6305ec', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f774-78ae-bf70-3d1cee60d391', '019d130c-f814-738d-986f-e4f0308105a3', '019d130d-373c-7678-9350-2dc76515f178', 'org_permissions', '019d130d-39ad-72fc-868f-905588c93cbe', 'org_permission_defaults', 24, 2, '019d130c-f14b-7ef8-94e3-e005503a699d', '019d130c-f14b-7ef8-94e3-e005503a699d', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


