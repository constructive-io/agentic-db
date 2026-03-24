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
  ('1cd368f4-72c5-41d9-c5e4-e982678f5014', 'fdf8a620-6969-72d5-d89a-ed384259d249', '3d6f356b-94c8-82c5-251f-0e5a5540c83a', 'bd4ba12c-6e3f-cc44-a1ad-64fcdb0ff052', 'da94e2fc-8b9e-bbf6-b88b-49c68622ae01', 'org_permissions', 'fef7be80-3776-af1b-d1ec-8f2ca0ca6a89', 'org_permission_defaults', 24, 2, 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names'),
  ('c48f3629-0f54-a6de-c451-009704601165', 'fdf8a620-6969-72d5-d89a-ed384259d249', '3d6f356b-94c8-82c5-251f-0e5a5540c83a', 'bd4ba12c-6e3f-cc44-a1ad-64fcdb0ff052', 'ca24d8bc-b171-7a6a-dc68-32fe80aa7104', 'app_permissions', 'abbdb2fc-a12a-4eb9-65d6-cc0b735ecd1e', 'app_permission_defaults', 24, 1, NULL, 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


