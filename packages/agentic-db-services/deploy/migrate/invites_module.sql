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
  ('bddabcc8-f561-6ec5-1afd-782946fd0767', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '66adacfb-2f2a-8624-f08e-87d9239e2c72', '636ed544-85b9-bc40-15d5-32f32727d851', 'd6a52f9e-276e-9abe-6b34-8fdc543037b6', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', 'b250e59e-eff5-8a2f-60d5-4e77ca733147', 'c03a0ce2-5544-0e0e-979d-ed6f18373b46', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('11030701-5ada-6d22-dafa-e99675963079', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '66adacfb-2f2a-8624-f08e-87d9239e2c72', '636ed544-85b9-bc40-15d5-32f32727d851', 'd6a52f9e-276e-9abe-6b34-8fdc543037b6', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', 'b00c6fda-9e2c-fa48-412a-86b8a0915bd8', '0551f1b2-9485-8946-c2db-71ea90f317ab', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '7d90611f-ed4b-2948-16a6-2df67d7b7f1f');


SET session_replication_role TO DEFAULT;


