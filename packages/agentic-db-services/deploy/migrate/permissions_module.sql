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
  ('019d42ff-d02d-7739-a0fa-3e588c51e659', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d02d-7ebf-9746-bbce1fc5bbd0', '019d42ff-d0b9-79dc-b333-ba049fa204bf', '019d42ff-d15d-75cc-99fc-56bbef6c588f', 'app_permissions', '019d42ff-d37b-73ae-b61e-a690513dba4c', 'app_permission_defaults', 24, 1, NULL, '019d42ff-ca62-77a0-ab97-b8d784c420dc', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d4300-082d-72fe-adfa-5a0762e6ad30', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d02d-7ebf-9746-bbce1fc5bbd0', '019d42ff-d0b9-79dc-b333-ba049fa204bf', '019d4300-0840-7891-b5d8-7dff931633d2', 'org_permissions', '019d4300-0a73-7e2c-9f30-2818818fb684', 'org_permission_defaults', 24, 2, '019d42ff-ca62-77a0-ab97-b8d784c420dc', '019d42ff-ca62-77a0-ab97-b8d784c420dc', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


