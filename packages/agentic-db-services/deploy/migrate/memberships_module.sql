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
  ('019d21f8-2f63-7958-891e-2fbc03b23537', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2657-7bef-9962-72063119a6ea', '019d21f8-2f64-7538-a3ae-5d1d0acf8c05', '019d21f8-300b-7a76-ba47-3b4b59d21a0d', 'app_memberships', '019d21f8-2335-70cb-b636-53bf74d97668', 'app_members', '019d21f8-3141-7fba-904d-f0a870697995', 'app_membership_defaults', '019d21f8-3b48-75ef-9692-1999a7ac1a62', 'app_grants', '019d21f8-2335-70cb-b636-53bf74d97668', '019d21f8-2cf1-7ea0-9011-3d1c3375f00f', '019d21f8-2e51-750e-9e18-8c468f7aabd7', '019d21f8-2951-765c-8106-b76a4e38815f', '019d21f8-2b20-7c80-92c8-34939675c5d1', '019d21f8-326e-7651-b4a6-d9ba3d42a814', '019d21f8-37a8-77bd-93b7-ba53c75ee21e', 'app_admin_grants', '019d21f8-3976-7aef-9cc5-ac23e8637899', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d21f8-608f-78cd-90b0-f8074d0fe26e', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2657-7bef-9962-72063119a6ea', '019d21f8-2f64-7538-a3ae-5d1d0acf8c05', '019d21f8-60c4-7ef7-b869-3aef059f54c4', 'org_memberships', '019d21f8-6a6e-7d3c-9fff-f6899ec2b879', 'org_members', '019d21f8-621e-7660-b626-4de6e761d890', 'org_membership_defaults', '019d21f8-71cf-7d79-a304-bd60f1d285ab', 'org_grants', '019d21f8-2335-70cb-b636-53bf74d97668', '019d21f8-5d48-7168-8451-216c6fcbacc3', '019d21f8-5efe-7315-bbc0-235821be2ac4', '019d21f8-5a09-7708-a88f-0e91d961aeda', '019d21f8-5c08-7749-aca8-ffd48a874981', '019d21f8-6383-757c-8fb8-8dde41a0ec21', '019d21f8-6cbd-7d4c-8e91-40e20be8057b', 'org_admin_grants', '019d21f8-6f3c-736c-acdc-f0ce35dcddd8', 'org_owner_grants', 2, '019d21f8-2335-70cb-b636-53bf74d97668', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


