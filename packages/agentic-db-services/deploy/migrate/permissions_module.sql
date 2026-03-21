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
  ('019d0ffe-55fb-726f-9160-5caadaf1bc14', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-55fb-79a7-a36a-b7eefa012886', '019d0ffe-5689-7417-991b-59dc348f6899', '019d0ffe-5723-79af-9db0-2a952ae7b0a4', 'app_permissions', '019d0ffe-5915-7a2f-bf10-e6cbe927b946', 'app_permission_defaults', 24, 1, NULL, '019d0ffe-509c-7e69-b073-260da2d7f651', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d0ffe-8b70-75fc-a4b7-9ef490f201e2', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-55fb-79a7-a36a-b7eefa012886', '019d0ffe-5689-7417-991b-59dc348f6899', '019d0ffe-8bb5-7fcf-9caa-019e02b8af3e', 'org_permissions', '019d0ffe-8de4-7937-9206-4f45d12db6c3', 'org_permission_defaults', 24, 2, '019d0ffe-509c-7e69-b073-260da2d7f651', '019d0ffe-509c-7e69-b073-260da2d7f651', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


