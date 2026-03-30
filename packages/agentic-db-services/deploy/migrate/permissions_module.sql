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
  ('019d3dab-05ae-79f2-95a6-c41b2fc50721', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-05af-70e1-92cf-72aabeae605c', '019d3dab-0635-7f01-9b19-4c4e596c6114', '019d3dab-06c8-70c7-9344-b913b26b3813', 'app_permissions', '019d3dab-08ba-76bc-ba87-dac71d8e46dc', 'app_permission_defaults', 24, 1, NULL, '019d3dab-00a9-731d-b66d-d5d69c0909a6', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d3dab-3a41-7505-9f51-227ddc613b00', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-05af-70e1-92cf-72aabeae605c', '019d3dab-0635-7f01-9b19-4c4e596c6114', '019d3dab-3a54-7306-a038-93110afa9aff', 'org_permissions', '019d3dab-3c7c-7810-af52-8d8eacca0129', 'org_permission_defaults', 24, 2, '019d3dab-00a9-731d-b66d-d5d69c0909a6', '019d3dab-00a9-731d-b66d-d5d69c0909a6', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


