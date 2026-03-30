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
  ('019d4100-481b-7c2f-8da2-45ba7e70679e', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-481c-72d3-b7e1-773b577348a9', '019d4100-489e-77a4-8e46-01d516ab83df', '019d4100-492c-7bb1-b951-e489e54e0fea', 'app_permissions', '019d4100-4b0c-79e8-aa05-9ec35bb77992', 'app_permission_defaults', 24, 1, NULL, '019d4100-42f6-7ae2-9811-58ffe46470b0', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d4100-7fbd-7c25-b1ca-b9e34c105a26', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-481c-72d3-b7e1-773b577348a9', '019d4100-489e-77a4-8e46-01d516ab83df', '019d4100-82d8-7e12-a4cc-c5e87ef9638b', 'org_permissions', '019d4100-84f8-7021-868d-f9474d8155df', 'org_permission_defaults', 24, 2, '019d4100-42f6-7ae2-9811-58ffe46470b0', '019d4100-42f6-7ae2-9811-58ffe46470b0', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


