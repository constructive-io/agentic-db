-- Deploy: migrate/memberships_module
-- made with <3 @ constructive.io

-- requires: migrate/user_auth_module


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

INSERT INTO metaschema_modules_public.memberships_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  memberships_table_id,
  memberships_table_name,
  members_table_id,
  members_table_name,
  membership_defaults_table_id,
  membership_defaults_table_name,
  grants_table_id,
  grants_table_name,
  actor_table_id,
  limits_table_id,
  default_limits_table_id,
  permissions_table_id,
  default_permissions_table_id,
  sprt_table_id,
  admin_grants_table_id,
  admin_grants_table_name,
  owner_grants_table_id,
  owner_grants_table_name,
  membership_type,
  entity_table_id,
  entity_table_owner_id,
  prefix,
  actor_mask_check,
  actor_perm_check,
  entity_ids_by_mask,
  entity_ids_by_perm,
  entity_ids_function
) VALUES
  ('019d13bc-2d60-7d7a-ad19-d4c67be969b3', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2487-7b34-8538-87ad5885ba2a', '019d13bc-2d61-7958-8065-7db3e62795fc', '019d13bc-2e08-77a6-a4fc-2ef96160d4bc', 'app_memberships', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', 'app_members', '019d13bc-2f52-7214-8368-b69364b7d777', 'app_membership_defaults', '019d13bc-3915-7717-b2cd-502d178e4be6', 'app_grants', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', '019d13bc-2af4-7c29-a10f-1f5f940886a5', '019d13bc-2c3b-7a1f-8bda-fd379798b117', '019d13bc-2764-7eb7-8b8d-849641335581', '019d13bc-2921-76b4-a870-8447125bceca', '019d13bc-307b-7fe8-a62e-428d153522ca', '019d13bc-3592-7f01-9b2e-2bad24efa57b', 'app_admin_grants', '019d13bc-374f-70ad-a43d-b0a1fa587871', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d13bc-5e45-793f-b2db-85773afe7c86', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2487-7b34-8538-87ad5885ba2a', '019d13bc-2d61-7958-8065-7db3e62795fc', '019d13bc-5e7b-7ec0-a5a7-b1c75331f930', 'org_memberships', '019d13bc-67a3-7041-a898-fc088267639c', 'org_members', '019d13bc-5fbe-7ae9-8bcc-c2820ee6471d', 'org_membership_defaults', '019d13bc-6edb-790e-8f8a-d5c509c46b69', 'org_grants', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', '019d13bc-5ae9-796e-af07-f23910fa7dc1', '019d13bc-5c9e-745a-8138-21412a3277e0', '019d13bc-57a5-739e-819f-c276c42edb57', '019d13bc-59ae-71cd-a305-51cc167bd0a2', '019d13bc-6102-72e5-ac47-c99abe9b0f84', '019d13bc-69ed-7ee1-a792-45f7800b7918', 'org_admin_grants', '019d13bc-6c6f-725e-991a-8919f164ce51', 'org_owner_grants', 2, '019d13bc-21ae-7eb2-b63f-9fb476e22f09', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


