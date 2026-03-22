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
  ('019d1795-4dc9-71e9-8e4b-0edfb70b52a5', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4dc9-7963-b675-eb49e0615e7a', '019d1795-4e4d-7f23-afa5-ed4e08e0abec', '019d1795-4ece-7922-a931-77d9305f9fc3', 'app_permissions', '019d1795-5075-79b2-9608-2c33b83ba5cc', 'app_permission_defaults', 24, 1, NULL, '019d1795-494e-7deb-bd76-39af3a5fa635', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d1795-7e10-7dc6-be51-012419474dea', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4dc9-7963-b675-eb49e0615e7a', '019d1795-4e4d-7f23-afa5-ed4e08e0abec', '019d1795-7e77-75a1-8cdd-77613c886fd7', 'org_permissions', '019d1795-8086-7f7b-91bc-63ee30c3cecf', 'org_permission_defaults', 24, 2, '019d1795-494e-7deb-bd76-39af3a5fa635', '019d1795-494e-7deb-bd76-39af3a5fa635', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


