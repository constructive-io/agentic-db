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
  ('019d21f8-c48c-7fca-9b7f-de0ab45d19b4', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-c48d-763c-bfb7-fd044a8aa014', '019d21f8-c565-71f3-a987-a5c08a5ef7eb', '019d21f8-b880-7ce0-aaf7-439bd50fd939', '019d21f8-2335-70cb-b636-53bf74d97668', '019d21f8-c63d-7f5b-9f01-8cd327feb847', '019d21f8-cb3a-7bb8-aa44-2cf42f7d01b9', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d21f8-cee5-7a5e-b7e0-bbf9083fc754', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-c48d-763c-bfb7-fd044a8aa014', '019d21f8-c565-71f3-a987-a5c08a5ef7eb', '019d21f8-b880-7ce0-aaf7-439bd50fd939', '019d21f8-2335-70cb-b636-53bf74d97668', '019d21f8-cef5-7307-bd04-79e8b7807267', '019d21f8-d487-791c-853c-a0f4963d2a07', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d21f8-2335-70cb-b636-53bf74d97668');


SET session_replication_role TO DEFAULT;


