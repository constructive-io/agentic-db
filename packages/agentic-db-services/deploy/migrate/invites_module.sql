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
  ('019d4101-07c6-7ab2-8fe3-b0eb059c3e53', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4101-07c7-7285-91f6-168d28d3b82a', '019d4101-08a3-7de8-9ad1-71510ef27e68', '019d4100-f2f6-72ee-947e-103acbda3543', '019d4100-42f6-7ae2-9811-58ffe46470b0', '019d4101-0987-723c-ab1c-41fd18fd21d9', '019d4101-0eb0-7832-a160-b962825b3584', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d4101-1296-7243-b9ea-3b8e24c14bf8', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4101-07c7-7285-91f6-168d28d3b82a', '019d4101-08a3-7de8-9ad1-71510ef27e68', '019d4100-f2f6-72ee-947e-103acbda3543', '019d4100-42f6-7ae2-9811-58ffe46470b0', '019d4101-1675-76c7-b750-96e27ce8646e', '019d4101-1c67-7d20-9219-633051464c00', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d4100-42f6-7ae2-9811-58ffe46470b0');


SET session_replication_role TO DEFAULT;


