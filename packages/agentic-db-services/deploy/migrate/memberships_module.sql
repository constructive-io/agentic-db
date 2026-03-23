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
  ('97c6d0c2-fb30-e0f0-5317-9d38ad3d6293', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b6a5ec83-0ccd-ffd2-6986-03855824ead2', '363e32c6-5928-0187-5bf0-d6e3c60641bb', '2ec31c57-f7ee-376a-4efa-145ec220fa1c', 'app_memberships', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', 'app_members', '623c3b5a-bb87-df32-d702-9f5c3249f7ab', 'app_membership_defaults', 'b5cebee8-3c84-14dc-c513-0a6850bbc29f', 'app_grants', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', '2702c4e2-ae13-03f8-90f5-09b3f4eb70a1', '8c21c5c0-7e77-96dc-a3ec-8c1d100049c7', '80787704-825b-81da-49d3-1461649de732', 'fa54a79c-c644-167e-f42d-bf18dce12ac2', '72d80185-cf6b-5fda-ab52-67e38e91e8bb', 'd2945255-e633-0c4e-2913-79dd13b80208', 'app_admin_grants', '1a5cbef1-8c7c-19e3-b4d7-c8aca3177147', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('bbd62441-11cb-9ac1-33b2-b9599d97b930', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b6a5ec83-0ccd-ffd2-6986-03855824ead2', '363e32c6-5928-0187-5bf0-d6e3c60641bb', 'be1e267e-799f-a20f-b246-13adbb6a0f13', 'org_memberships', '5b062b0d-8fb9-cb94-b857-f3704db280f8', 'org_members', 'cea7f37a-1253-ae17-1839-610a5a7f6a5c', 'org_membership_defaults', 'f9185e4f-84e7-fc33-dd5a-9ac83a58423c', 'org_grants', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', '9988f49c-9161-942a-03bb-1609bff4a776', '95e7de09-3b07-80ca-44a0-4893bd79f911', '04110344-716c-1565-2ef3-0b5d077c109d', '304ddd13-c424-2da9-87b6-b7cbcfc71525', '3a4e27ec-7f44-6d6d-61bb-ad4bab8fbf45', '6c4df9e0-4b79-7fc7-8e85-2d4e8f8ccf17', 'org_admin_grants', '3543e9f2-ea74-faf2-60b2-a88d832d9768', 'org_owner_grants', 2, '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


