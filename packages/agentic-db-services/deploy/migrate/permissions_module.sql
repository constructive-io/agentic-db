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
  ('f0641447-ce54-a5f9-e2ab-e7f8865e6528', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1eb676bd-efec-b03f-c481-02d66f5661b4', '97c5db8e-f200-bbf1-5070-324f26b08e19', '80787704-825b-81da-49d3-1461649de732', 'app_permissions', 'fa54a79c-c644-167e-f42d-bf18dce12ac2', 'app_permission_defaults', 24, 1, NULL, '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('e5533f7f-d41f-f414-053f-d81b316bf4f9', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1eb676bd-efec-b03f-c481-02d66f5661b4', '97c5db8e-f200-bbf1-5070-324f26b08e19', '04110344-716c-1565-2ef3-0b5d077c109d', 'org_permissions', '304ddd13-c424-2da9-87b6-b7cbcfc71525', 'org_permission_defaults', 24, 2, '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


