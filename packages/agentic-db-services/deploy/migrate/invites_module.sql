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
  ('13911534-1616-fa70-f399-3522effefcfe', '14b01c2d-072a-5594-645a-675751a83d86', '2ed38f5a-a2c7-7f90-732f-a63173cc47e1', '5f87fd0b-3e41-7188-daad-7a12256d4ad7', 'b2be63d4-8218-bca7-145e-c843c64b2e34', '5258dec3-0cde-6103-1859-08598c428740', '7a0a6c52-109c-26ae-72cf-9cf170f9e3bf', 'cf87d04a-fbe2-980f-d8f8-42a40586678e', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '5258dec3-0cde-6103-1859-08598c428740'),
  ('76ca3fe1-c1ec-0057-a571-c63f8726f466', '14b01c2d-072a-5594-645a-675751a83d86', '2ed38f5a-a2c7-7f90-732f-a63173cc47e1', '5f87fd0b-3e41-7188-daad-7a12256d4ad7', 'b2be63d4-8218-bca7-145e-c843c64b2e34', '5258dec3-0cde-6103-1859-08598c428740', '082049ba-1998-3f28-5ae6-46a3514f0d2c', 'ce506e35-4e30-86e9-36fe-6ccf016b6154', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL);


SET session_replication_role TO DEFAULT;


