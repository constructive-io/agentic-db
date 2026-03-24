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
  ('019d1dc0-9c66-708d-bb50-22491e1159c2', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9c66-768f-aad1-253050d10132', '019d1dc0-9d34-7344-8783-d9e73c699e74', '019d1dc0-8927-74fe-b83b-edb01201576e', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', '019d1dc0-9e0f-7e9e-8c21-82e132786826', '019d1dc0-a2f9-78e8-839e-f8bb093b09a9', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d1dc0-a69a-7e21-a69a-6613777381e1', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9c66-768f-aad1-253050d10132', '019d1dc0-9d34-7344-8783-d9e73c699e74', '019d1dc0-8927-74fe-b83b-edb01201576e', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', '019d1dc0-aa07-735d-baef-c09f293c3fb8', '019d1dc0-af96-7fe3-a64b-97608a8c1f5d', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6');


SET session_replication_role TO DEFAULT;


