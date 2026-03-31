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
  ('019d416f-3f00-7f73-ae93-0e53ccea7b9b', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3f01-761a-994c-357209f4987d', '019d416f-3fa7-7264-b5fd-df510f8e5685', '019d416f-404c-7ccb-b3ea-38f77868b961', 'app_permissions', '019d416f-428b-77be-b894-3fcf0f10c9d3', 'app_permission_defaults', 24, 1, NULL, '019d416f-384a-79e2-9379-99ca3460e274', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d416f-79e1-73c5-8f59-bc2ba1201e05', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3f01-761a-994c-357209f4987d', '019d416f-3fa7-7264-b5fd-df510f8e5685', '019d416f-7a66-7675-8c75-d850aa4da6c5', 'org_permissions', '019d416f-7cc8-74d8-a95e-a57c2b15cb26', 'org_permission_defaults', 24, 2, '019d416f-384a-79e2-9379-99ca3460e274', '019d416f-384a-79e2-9379-99ca3460e274', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


