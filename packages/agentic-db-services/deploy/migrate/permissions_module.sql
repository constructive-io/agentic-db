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
  ('019d13bc-265f-785c-b844-0d2aa6dffb60', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-265f-7e44-9f4c-5610f3e82a7b', '019d13bc-26dc-750f-9b02-e48a2bd36928', '019d13bc-2764-7eb7-8b8d-849641335581', 'app_permissions', '019d13bc-2921-76b4-a870-8447125bceca', 'app_permission_defaults', 24, 1, NULL, '019d13bc-21ae-7eb2-b63f-9fb476e22f09', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d13bc-5792-7f08-b12d-eddacf16aca8', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-265f-7e44-9f4c-5610f3e82a7b', '019d13bc-26dc-750f-9b02-e48a2bd36928', '019d13bc-57a5-739e-819f-c276c42edb57', 'org_permissions', '019d13bc-59ae-71cd-a305-51cc167bd0a2', 'org_permission_defaults', 24, 2, '019d13bc-21ae-7eb2-b63f-9fb476e22f09', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


