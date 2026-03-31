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
  ('019d42ff-d89b-7261-a378-d9469e75826c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ce03-722d-82bd-39b558050ea6', '019d42ff-d89c-73d4-b046-df54a48af77e', '019d42ff-d962-725a-94cd-7b18a2811a63', 'app_memberships', '019d42ff-ca62-77a0-ab97-b8d784c420dc', 'app_members', '019d42ff-dad7-7b77-b854-c6eecac5b67e', 'app_membership_defaults', '019d42ff-e61a-78a4-b12a-4454d8ce7a76', 'app_grants', '019d42ff-ca62-77a0-ab97-b8d784c420dc', '019d42ff-d5c3-7886-86af-32f382d56e2b', '019d42ff-d74f-7d29-ab44-cc171a5fd94f', '019d42ff-d15d-75cc-99fc-56bbef6c588f', '019d42ff-d37b-73ae-b61e-a690513dba4c', '019d42ff-dc30-719c-9285-71b615b717ef', '019d42ff-e212-7b7c-bd14-56d5321c1690', 'app_admin_grants', '019d42ff-e41a-71e5-998d-2c6d50029af6', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d4300-0fb1-719d-a47a-8cad42a95b70', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ce03-722d-82bd-39b558050ea6', '019d42ff-d89c-73d4-b046-df54a48af77e', '019d4300-0fec-7439-9eeb-f86b5daeae15', 'org_memberships', '019d4300-1a15-799c-979c-e55bda5c5e14', 'org_members', '019d4300-115f-7114-af1e-b55f474ff2f3', 'org_membership_defaults', '019d4300-21f0-7160-b49a-d5b8f04f57f9', 'org_grants', '019d42ff-ca62-77a0-ab97-b8d784c420dc', '019d4300-0bcd-71fd-a743-0916ed3e2eba', '019d4300-0dc2-7269-8a7a-f9193067ff9a', '019d4300-0840-7891-b5d8-7dff931633d2', '019d4300-0a73-7e2c-9f30-2818818fb684', '019d4300-12c7-7fff-896a-d22674571023', '019d4300-1cab-7d76-99b1-399dcb306e0f', 'org_admin_grants', '019d4300-1f48-7cb0-8634-8d617e64837c', 'org_owner_grants', 2, '019d42ff-ca62-77a0-ab97-b8d784c420dc', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


