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
  ('9431f27f-82a3-46dc-af99-2e57d469e976', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008c1a4-1633-460e-0e29-b4a5f9612958', 'a008a5aa-ce13-493e-c9a8-a75193a14795', 'a0080e21-0752-4f6a-54c2-1466fb5b80d4', 'app_permissions', 'a0085506-847a-4a0c-73ef-98539023f6cb', 'app_permission_defaults', 24, 1, NULL, 'a0082485-cf01-4c72-8c4f-76422cceded1', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('894fd1b3-4603-4776-aa76-d120c271e3bc', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008c1a4-1633-460e-0e29-b4a5f9612958', 'a008a5aa-ce13-493e-c9a8-a75193a14795', 'a0088dd5-9f3c-438c-af88-593142359c1a', 'org_permissions', 'a008d85e-3089-43c0-c6fe-a945b8ec211b', 'org_permission_defaults', 24, 2, 'a0082485-cf01-4c72-8c4f-76422cceded1', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


