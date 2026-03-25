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
  ('019d2728-2af2-7d4d-b601-f86411a8e079', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-2af3-736d-afa0-01b2c5c9bcf0', '019d2728-2bd0-7d1c-9fc9-b9756abed8e5', '019d2728-1701-7da0-9c6b-645985d788d3', '019d2727-7153-7bae-b8ec-6f398ecf0b75', '019d2728-2cb1-7bc1-ba20-4221b7c1066d', '019d2728-3200-7dd4-93ff-39129bd0389e', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d2728-35e5-7d31-bf33-53221f0734b9', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-2af3-736d-afa0-01b2c5c9bcf0', '019d2728-2bd0-7d1c-9fc9-b9756abed8e5', '019d2728-1701-7da0-9c6b-645985d788d3', '019d2727-7153-7bae-b8ec-6f398ecf0b75', '019d2728-394e-76c6-b978-b031166139f3', '019d2728-3f29-7d0c-8b46-c4fb85966022', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d2727-7153-7bae-b8ec-6f398ecf0b75');


SET session_replication_role TO DEFAULT;


