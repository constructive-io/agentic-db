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
  ('019d2727-7610-7d39-b773-2a207f5e117b', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7611-728a-9250-705c33715905', '019d2727-768f-716e-b06b-9e19829609a4', '019d2727-7716-776b-ac97-df47ca6b3867', 'app_permissions', '019d2727-78d9-7126-813c-1952d825268d', 'app_permission_defaults', 24, 1, NULL, '019d2727-7153-7bae-b8ec-6f398ecf0b75', 'app', 'app_permissions_get_padded_mask', 'app_permissions_get_mask', 'app_permissions_get_by_mask', 'app_permissions_get_mask_by_names'),
  ('019d2727-a928-73a5-9e00-406272b02824', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7611-728a-9250-705c33715905', '019d2727-768f-716e-b06b-9e19829609a4', '019d2727-abdb-7e45-9524-98962317e78b', 'org_permissions', '019d2727-adef-7058-99ec-bf188add4b6f', 'org_permission_defaults', 24, 2, '019d2727-7153-7bae-b8ec-6f398ecf0b75', '019d2727-7153-7bae-b8ec-6f398ecf0b75', 'org', 'org_permissions_get_padded_mask', 'org_permissions_get_mask', 'org_permissions_get_by_mask', 'org_permissions_get_mask_by_names');


SET session_replication_role TO DEFAULT;


