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
  ('e50a0ed6-e176-4006-93df-f9d633b56e5a', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc190de-3805-4618-f647-779f6633698b', '9bc1e3ac-0a41-488a-0d15-bb48423ccefd', '9bc15426-7cb4-4f1e-cbf6-a2ada0a98188', 'app_permissions', '9bc1e1bc-116e-4956-f547-68564575ab8d', 'app_permission_defaults', 24, 1, NULL, '9bc12972-1a70-4812-beb6-f24029a19ea6', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('ed9ad7b5-db22-4f1f-9696-19280e761d95', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc190de-3805-4618-f647-779f6633698b', '9bc1e3ac-0a41-488a-0d15-bb48423ccefd', '9bc17982-a20f-4da2-eb63-2f4bf9860571', 'org_permissions', '9bc1249f-8171-4e2d-3423-98ec42be8662', 'org_permission_defaults', 24, 2, '9bc12972-1a70-4812-beb6-f24029a19ea6', '9bc12972-1a70-4812-beb6-f24029a19ea6', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


