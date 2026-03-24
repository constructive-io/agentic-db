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
  ('019d20ce-2935-7cb4-b6ce-c359a3023606', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-2936-73b8-b230-6265d0ac39d1', '019d20ce-2a20-7b18-938c-08072bcf174b', '019d20ce-1b96-7a64-8c0a-c31e01e0125d', '019d20cd-7a20-7176-823e-cca436cf06f3', '019d20ce-2b1b-7713-a3c9-443e7fc72d81', '019d20ce-3092-72be-804f-df24ff022222', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d20ce-349a-728d-90f4-2b07a54997e9', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-2936-73b8-b230-6265d0ac39d1', '019d20ce-2a20-7b18-938c-08072bcf174b', '019d20ce-1b96-7a64-8c0a-c31e01e0125d', '019d20cd-7a20-7176-823e-cca436cf06f3', '019d20ce-34ac-73f0-b648-19c370538829', '019d20ce-3b67-7e15-8aed-58d94d906006', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d20cd-7a20-7176-823e-cca436cf06f3');


SET session_replication_role TO DEFAULT;


