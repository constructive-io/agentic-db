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
  ('84450fd4-a05b-42ee-be72-3a2edfd05d2d', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1817b-ebb4-483c-4f07-fc9ebbeacad9', 'bfc129e4-d17c-4a8a-b410-e16d12419a4d', 'bfc1f6ea-64e0-47d5-ca83-acf100c9d998', 'app_permissions', 'bfc104ff-b79e-4579-e027-9b12e5bed601', 'app_permission_defaults', 24, 1, NULL, 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('f6035547-fbc1-4fbc-8250-8bfec7619773', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1817b-ebb4-483c-4f07-fc9ebbeacad9', 'bfc129e4-d17c-4a8a-b410-e16d12419a4d', 'bfc19ae3-2460-43f0-9a1b-9bfb6230c3a5', 'org_permissions', 'bfc1b595-c1de-4a1b-361d-a26c22d56683', 'org_permission_defaults', 24, 2, 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


