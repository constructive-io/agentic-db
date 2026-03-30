-- Deploy: migrate/invites_module
-- made with <3 @ constructive.io

-- requires: migrate/membership_types_module


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

INSERT INTO metaschema_modules_public.invites_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  emails_table_id,
  users_table_id,
  invites_table_id,
  claimed_invites_table_id,
  invites_table_name,
  claimed_invites_table_name,
  submit_invite_code_function,
  prefix,
  membership_type,
  entity_table_id
) VALUES
  ('019d3d15-80e5-720e-afe5-ced6e7b53f92', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-80e5-79c7-86a8-8635225b77e9', '019d3d15-81af-7d10-9a0f-f99867462fec', '019d3d15-74c8-7325-b628-72fb80678dc9', '019d3d14-e756-7f18-bcd9-be9300e74947', '019d3d15-8285-7ab2-b03e-619b1563c472', '019d3d15-8761-7ae7-a84b-f30191658933', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d3d15-8add-7e72-a267-e12f9b2a484d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-80e5-79c7-86a8-8635225b77e9', '019d3d15-81af-7d10-9a0f-f99867462fec', '019d3d15-74c8-7325-b628-72fb80678dc9', '019d3d14-e756-7f18-bcd9-be9300e74947', '019d3d15-8ae7-7fb3-9808-48465a7e70d2', '019d3d15-9054-7a66-a2bb-c1a49cdc233e', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d3d14-e756-7f18-bcd9-be9300e74947');


SET session_replication_role TO DEFAULT;


