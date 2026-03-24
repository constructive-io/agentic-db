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
  ('019d20cd-7f82-7ec0-a4c2-5c4f4a5fc3e5', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7f83-756f-beec-4c80721bb185', '019d20cd-800c-7d58-86d7-7f79ef279fdc', '019d20cd-80a0-741c-8107-a97b9611df53', 'app_permissions', '019d20cd-8287-75a2-85e5-0befd158c542', 'app_permission_defaults', 24, 1, NULL, '019d20cd-7a20-7176-823e-cca436cf06f3', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d20cd-b527-7bf9-8063-cca4636a2a9d', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7f83-756f-beec-4c80721bb185', '019d20cd-800c-7d58-86d7-7f79ef279fdc', '019d20cd-b539-79a4-90d6-42d1c5454329', 'org_permissions', '019d20cd-b776-7964-8d98-fa900435fb9e', 'org_permission_defaults', 24, 2, '019d20cd-7a20-7176-823e-cca436cf06f3', '019d20cd-7a20-7176-823e-cca436cf06f3', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


