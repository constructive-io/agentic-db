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
  ('ac1130d5-b5ec-42dd-83da-25970dbe73b6', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c7db-8ef4-4173-a16f-af76e1b57ef3', '9bc1551a-2492-4ffa-e37f-794baa421c6d', '9bc17ef4-6582-46f5-41e0-7c890003c7ed', '9bc12972-1a70-4812-beb6-f24029a19ea6', '9bc1f4ca-4129-40d8-cf58-a1c83bb26cb8', '9bc19f2a-29dd-4ffb-20b9-e36bf8567c0a', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('3ef49cdb-6791-4a9f-a2ef-b6a06eb68fb6', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c7db-8ef4-4173-a16f-af76e1b57ef3', '9bc1551a-2492-4ffa-e37f-794baa421c6d', '9bc17ef4-6582-46f5-41e0-7c890003c7ed', '9bc12972-1a70-4812-beb6-f24029a19ea6', '9bc19fd7-94e4-4238-22c6-830408f316e5', '9bc1b5fb-4990-4a54-3fb4-622d8a6720b9', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '9bc12972-1a70-4812-beb6-f24029a19ea6');


SET session_replication_role TO DEFAULT;


