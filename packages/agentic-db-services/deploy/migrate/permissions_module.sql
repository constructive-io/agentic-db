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
  ('019d2831-687b-7ed2-97c3-136751a33e55', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-687c-75b3-bd5d-e4621eef4b99', '019d2831-6906-7f9b-900a-a76aba4f8850', '019d2831-6993-7415-bc88-2c55d7aa6811', 'app_permissions', '019d2831-6b7e-78e5-8dc6-9727b84caca5', 'app_permission_defaults', 24, 1, NULL, '019d2831-6349-7cde-a517-c115bf8f4bff', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d2831-9ff3-7c7e-a1ea-846bf1e3d741', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-687c-75b3-bd5d-e4621eef4b99', '019d2831-6906-7f9b-900a-a76aba4f8850', '019d2831-a3ad-7ec2-a3ba-39b15c9e4901', 'org_permissions', '019d2831-a5d2-7ca9-aa9f-083e607b842a', 'org_permission_defaults', 24, 2, '019d2831-6349-7cde-a517-c115bf8f4bff', '019d2831-6349-7cde-a517-c115bf8f4bff', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


