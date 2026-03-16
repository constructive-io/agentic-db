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
  ('c507a81a-c1eb-4a7c-8f50-645b2baf1a0f', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc182c5-302d-474c-c74c-02be749f675f', '9bc15150-00d3-4748-493e-ce24299e8088', '9bc13644-40f0-4c81-5715-1eccf4f6c73e', 'app_memberships', '9bc12972-1a70-4812-beb6-f24029a19ea6', 'app_members', '9bc11848-8f25-4787-f183-62f0a920d9b3', 'app_membership_defaults', '9bc1922f-c340-4f8d-db58-e3249b91f16e', 'app_grants', '9bc12972-1a70-4812-beb6-f24029a19ea6', '9bc13faa-b725-4094-e352-ae91484f0cd5', '9bc129a0-a9b9-42cb-a4d1-f1bc586bcef1', '9bc15426-7cb4-4f1e-cbf6-a2ada0a98188', '9bc1e1bc-116e-4956-f547-68564575ab8d', '9bc1a89b-8379-46e8-dcfd-28179168a7a4', '9bc12655-155a-4e16-3e80-0f904bfc4e22', 'app_admin_grants', '9bc1c21d-446e-4901-c05c-734bb8e56717', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('55c0d134-6c1c-461a-bca6-3607e8dc78e8', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc182c5-302d-474c-c74c-02be749f675f', '9bc15150-00d3-4748-493e-ce24299e8088', '9bc185f6-50ad-4ada-e364-5ae50ff3908b', 'org_memberships', '9bc12255-5121-4edf-4eef-4ec70a7ecddd', 'org_members', '9bc14611-66f1-40dc-b509-acd22955255e', 'org_membership_defaults', '9bc1f8e7-751c-482f-582d-0ce10ad899bd', 'org_grants', '9bc12972-1a70-4812-beb6-f24029a19ea6', '9bc1a2e6-c921-407d-07ee-cbf9b835232e', '9bc11c5b-bc71-44b9-5ae0-dc6fa122657b', '9bc17982-a20f-4da2-eb63-2f4bf9860571', '9bc1249f-8171-4e2d-3423-98ec42be8662', '9bc121ee-92e6-4a7d-f0bf-0aa8fa170b7f', '9bc151f5-aa5b-40c0-2f04-98fe918443b3', 'org_admin_grants', '9bc1a6f7-a24b-431f-3845-33ccb2d5649e', 'org_owner_grants', 2, '9bc12972-1a70-4812-beb6-f24029a19ea6', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


