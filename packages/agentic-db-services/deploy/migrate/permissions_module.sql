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
  ('019d21f8-2848-7c8b-821e-6cc93761a961', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2849-7219-9483-a75d7bafa769', '019d21f8-28c8-7b62-b93c-4f08c2b4da92', '019d21f8-2951-765c-8106-b76a4e38815f', 'app_permissions', '019d21f8-2b20-7c80-92c8-34939675c5d1', 'app_permission_defaults', 24, 1, NULL, '019d21f8-2335-70cb-b636-53bf74d97668', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d21f8-59f8-7029-907f-942367ad3982', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2849-7219-9483-a75d7bafa769', '019d21f8-28c8-7b62-b93c-4f08c2b4da92', '019d21f8-5a09-7708-a88f-0e91d961aeda', 'org_permissions', '019d21f8-5c08-7749-aca8-ffd48a874981', 'org_permission_defaults', 24, 2, '019d21f8-2335-70cb-b636-53bf74d97668', '019d21f8-2335-70cb-b636-53bf74d97668', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


