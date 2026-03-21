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
  ('019d11d9-604a-7ff0-a282-e99a80a5904f', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-604b-7a97-92c4-28c87e7553a3', '019d11d9-60dc-7883-ae8b-a69658dafb64', '019d11d9-6176-7383-97c7-be4ad83ecdd6', 'app_permissions', '019d11d9-6350-7a4d-b467-dcc795359cfe', 'app_permission_defaults', 24, 1, NULL, '019d11d9-5aed-7673-b41b-b11528f73f79', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d11d9-984a-73cd-97dd-51ed71cfa299', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-604b-7a97-92c4-28c87e7553a3', '019d11d9-60dc-7883-ae8b-a69658dafb64', '019d11d9-9991-76e8-8d2b-2c7a59853f40', 'org_permissions', '019d11d9-9bcc-7566-a228-0c7b3f915afb', 'org_permission_defaults', 24, 2, '019d11d9-5aed-7673-b41b-b11528f73f79', '019d11d9-5aed-7673-b41b-b11528f73f79', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


