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
  ('019d934f-913f-72f3-9804-9cd62a3eaafc', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-913f-7c73-8f48-1dbb423814b9', '019d934f-9218-7cd9-857b-02961dca2504', '019d934f-92fc-7d5e-aef9-43e50d7a5049', 'app_permissions', '019d934f-95e0-7563-a0c2-31e8310b3a14', 'app_permission_defaults', 24, 1, NULL, '019d934f-898e-73d5-9f57-6c8589048db5', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d934f-df56-77e8-b812-08a9d1db9623', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-913f-7c73-8f48-1dbb423814b9', '019d934f-9218-7cd9-857b-02961dca2504', '019d934f-dfa9-7350-84a0-f7a734116364', 'org_permissions', '019d934f-e2cd-7010-acb9-c44d776ddd35', 'org_permission_defaults', 24, 2, '019d934f-898e-73d5-9f57-6c8589048db5', '019d934f-898e-73d5-9f57-6c8589048db5', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


