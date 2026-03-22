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
  ('26da3452-7ab9-9654-81bb-26de10b370b2', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '217cd1d7-de79-df8f-48a0-7f3764dbbfc5', 'f531c411-5246-5bc5-4a9d-c1fb42b5b6b2', '81da28fe-893c-f637-b814-7f4c746adb93', '5d9c849b-e962-041a-de77-54774d5d1e62', 'b9f87f40-8111-8daf-3d3a-cfc6971c55a1', '47fd2a8a-bfd2-520b-2ed1-aefa21e81110', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('e0f6ad0a-3b9a-3fd5-0857-fe9904a031c1', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '217cd1d7-de79-df8f-48a0-7f3764dbbfc5', 'f531c411-5246-5bc5-4a9d-c1fb42b5b6b2', '81da28fe-893c-f637-b814-7f4c746adb93', '5d9c849b-e962-041a-de77-54774d5d1e62', 'dff5c9bd-d077-ba09-6875-8c991e8f4a77', 'b6cec7d5-bf76-e52e-8d39-1da902f90c53', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '5d9c849b-e962-041a-de77-54774d5d1e62');


SET session_replication_role TO DEFAULT;


