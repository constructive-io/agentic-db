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
  ('2838ffde-41be-126a-f968-e6b393f6c2bb', '14b01c2d-072a-5594-645a-675751a83d86', '197eaace-fe05-2038-3d3c-b14d1ab7e048', '81934a51-0614-ec94-d98f-1fe3d7c22dc4', '9dec1b06-3907-c9a5-e893-502982e3c0cb', 'org_permissions', '6ef8956e-cf91-7cc0-c685-42167c1562f7', 'org_permission_defaults', 24, 2, '5258dec3-0cde-6103-1859-08598c428740', '5258dec3-0cde-6103-1859-08598c428740', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names'),
  ('9f554516-661d-6656-fd18-c871f2039e9c', '14b01c2d-072a-5594-645a-675751a83d86', '197eaace-fe05-2038-3d3c-b14d1ab7e048', '81934a51-0614-ec94-d98f-1fe3d7c22dc4', 'f25a8ee5-7a16-ce38-e44a-b946418a9251', 'app_permissions', '9a70d41b-4151-83b1-58ae-4db73400f115', 'app_permission_defaults', 24, 1, NULL, '5258dec3-0cde-6103-1859-08598c428740', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


