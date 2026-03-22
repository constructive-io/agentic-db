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
  ('019d130d-b9ce-7f48-b208-1129004fb4c0', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-b9cf-76bf-bc61-35da51b658dd', '019d130d-bac1-7e50-8f1c-ef65689ef1b2', '019d130d-aa20-7722-8e58-161d5b072411', '019d130c-f14b-7ef8-94e3-e005503a699d', '019d130d-bbc9-7217-8643-9c9802d2a2b3', '019d130d-c174-73df-8a3c-48fa8a5e9594', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d130d-c5bc-7840-b84b-ba8d9ed2ab55', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-b9cf-76bf-bc61-35da51b658dd', '019d130d-bac1-7e50-8f1c-ef65689ef1b2', '019d130d-aa20-7722-8e58-161d5b072411', '019d130c-f14b-7ef8-94e3-e005503a699d', '019d130d-c67e-7905-84df-2a7db8aa2c17', '019d130d-cd24-74e8-84d3-7865fd8128ba', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d130c-f14b-7ef8-94e3-e005503a699d');


SET session_replication_role TO DEFAULT;


