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
  ('019d2727-7d10-7bdc-9e6a-bc387550d261', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7441-782b-8fbb-66db0def84ca', '019d2727-7d11-762f-a2e0-1e65abab72fe', '019d2727-801a-7ff9-86ec-a8861bee9f8d', 'app_memberships', '019d2727-7153-7bae-b8ec-6f398ecf0b75', 'app_members', '019d2727-8166-7e78-a307-474f9296e877', 'app_membership_defaults', '019d2727-8b3f-7cdf-bd9b-d08062b1349c', 'app_grants', '019d2727-7153-7bae-b8ec-6f398ecf0b75', '019d2727-7ab6-7f54-b993-a6548e5bdf4e', '019d2727-7c05-73c1-8c0d-089c630d732b', '019d2727-7716-776b-ac97-df47ca6b3867', '019d2727-78d9-7126-813c-1952d825268d', '019d2727-8292-7faf-bae8-8b99e236388a', '019d2727-87b4-798e-84f0-656c593cff5c', 'app_admin_grants', '019d2727-8974-7fc3-a082-56fd433ad028', 'app_owner_grants', 1, NULL, NULL, 'app', 'app_memberships_mask_check', 'app_memberships_perm_check', NULL, NULL, NULL),
  ('019d2727-b4fe-7b20-b949-65425f3af937', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7441-782b-8fbb-66db0def84ca', '019d2727-7d11-762f-a2e0-1e65abab72fe', '019d2727-b831-70d7-8829-5261a0a046df', 'org_memberships', '019d2727-c1ff-7305-957a-f58b75fea2c8', 'org_members', '019d2727-b97c-70c7-831c-5f1e116ff9de', 'org_membership_defaults', '019d2727-c962-742d-9d37-85ff02080b91', 'org_grants', '019d2727-7153-7bae-b8ec-6f398ecf0b75', '019d2727-b1c5-7e3a-8333-272fc2d6843b', '019d2727-b36c-726a-ba60-154ce6591f54', '019d2727-abdb-7e45-9524-98962317e78b', '019d2727-adef-7058-99ec-bf188add4b6f', '019d2727-bace-72d0-8b51-fc951f4a52e1', '019d2727-c45d-7fb2-a615-ec7ebf616ac8', 'org_admin_grants', '019d2727-c6db-7b3c-b4ba-0eaa85da407d', 'org_owner_grants', 2, '019d2727-7153-7bae-b8ec-6f398ecf0b75', NULL, 'org', 'org_memberships_mask_check', 'org_memberships_perm_check', 'org_memberships_mask_ids', 'org_memberships_perm_ids', 'org_memberships_ids');


SET session_replication_role TO DEFAULT;


