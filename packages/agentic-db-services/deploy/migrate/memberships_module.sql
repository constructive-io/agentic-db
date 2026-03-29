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
  ('a72750cc-49ff-8f5e-ab9f-1e85cc63b091', '2ef50f93-192b-b168-969d-304c8e675e1d', '2a7b615d-ddb5-8955-0458-298a538f5b11', '98ae2e0e-b2fc-f6c8-505c-3aab7d43dfa2', '858bf26f-f856-cd9b-385b-79fcfcdde069', 'app_memberships', '5353e947-3e3f-3914-7fd1-1370926dd743', 'app_members', '7e37a199-677a-2668-ec78-53a2abaf3ac7', 'app_membership_defaults', 'c891c5c4-db0a-f610-65ec-ce031ff15111', 'app_grants', '5353e947-3e3f-3914-7fd1-1370926dd743', '68fda2a2-87f3-43c8-f059-42665d6b417e', '0aa71b23-04e0-cae1-5c48-91d6b66f929b', '97c66666-071d-6f46-7967-85437fc3c183', '35c667fd-1288-823b-21c3-94457d99670c', '1e107539-fe72-d033-fb58-358645de924d', '17a35573-7084-09f8-1b3a-f3a49cab2af5', 'app_admin_grants', 'a9c56498-f1f6-af2e-87d7-2c46c301959b', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('e144d9ae-406a-9513-81d8-ba8c5fe00f2b', '2ef50f93-192b-b168-969d-304c8e675e1d', '2a7b615d-ddb5-8955-0458-298a538f5b11', '98ae2e0e-b2fc-f6c8-505c-3aab7d43dfa2', '5baecdd4-5337-9003-bac4-4ad1c8b84332', 'org_memberships', '00e3e115-3df1-c293-beec-d5e523359489', 'org_members', '9351735d-94f7-3233-284e-26cb00ea0b3a', 'org_membership_defaults', 'de4a64b5-e634-bba0-cf6d-13f200d677c7', 'org_grants', '5353e947-3e3f-3914-7fd1-1370926dd743', 'ef9aa1a4-5c48-1385-b538-f136c8e0594c', '82cb9d81-5983-2821-4074-5383880468c3', 'ee8f193d-af6d-6828-39e5-ed25f55fc9a3', '74af7cdb-39ea-0abf-4770-2ebbc3f6e296', '7cefdaf9-3978-3755-f459-f8b82ba7f234', '90460803-b6ff-f20a-a2f9-576e9bb9f75a', 'org_admin_grants', '8ed862e6-aa74-6f5e-bf28-70275af0982d', 'org_owner_grants', 2, '5353e947-3e3f-3914-7fd1-1370926dd743', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


