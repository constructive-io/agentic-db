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
  ('019d37b9-bd22-7dc9-bcac-4b7a56d31525', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bd23-7bf3-ab01-cc5e09ea9fee', '019d37b9-bdc5-7818-84a8-a271b45e74b1', '019d37b9-be51-7edc-9a46-789aa38be324', 'app_permissions', '019d37b9-c015-72cb-936d-57f00ba681fe', 'app_permission_defaults', 24, 1, NULL, '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d37b9-efcf-7993-8c1b-0c1fb711a40c', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bd23-7bf3-ab01-cc5e09ea9fee', '019d37b9-bdc5-7818-84a8-a271b45e74b1', '019d37b9-f1c4-7631-be74-02fadb8f3940', 'org_permissions', '019d37b9-f3b3-72e8-b406-b0c74388ae02', 'org_permission_defaults', 24, 2, '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


