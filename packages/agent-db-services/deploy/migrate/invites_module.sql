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
  ('7a8af9ae-1e37-4acd-bc28-246bb89fb9c4', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0084f98-8b27-43b8-3b87-48168ff156f4', 'a008e048-1a39-4a79-9697-cd4186f343b6', 'a0080662-94ca-42f8-8e50-94eeff2e979a', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'a008e250-f3c8-44d1-06f5-9ceee16b8a2a', 'a00884fd-4772-4e29-745a-8f341c0fb65d', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('45238dc5-ff69-4dbf-bc22-8f01ddbce751', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0084f98-8b27-43b8-3b87-48168ff156f4', 'a008e048-1a39-4a79-9697-cd4186f343b6', 'a0080662-94ca-42f8-8e50-94eeff2e979a', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'a008f750-5a7d-4aee-c5c0-4c7de6dc9a92', 'a0082d58-9208-4b5b-df7a-b73424eb5ffb', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, 'a0082485-cf01-4c72-8c4f-76422cceded1');


SET session_replication_role TO DEFAULT;


