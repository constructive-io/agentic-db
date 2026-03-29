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
  ('a72778ac-a7c6-f779-bf5b-1d0ebe5bad05', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8ecd91da-06ae-c2bb-62d1-de71d843012e', 'e3af2a09-df53-721e-3fe0-5289578e5d09', 'c142ecba-4964-b3ec-3d3f-670c9fbc9a60', '5b5d99e1-9167-1378-cf99-58449ebc35bc', 'd7caed2d-9d55-2b47-6ea0-dfa0d1c229d8', '066dc858-b8d8-6e8b-fa57-5cff8980097e', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('b4ba3247-c6e5-01c2-9fd6-1a314859bb34', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8ecd91da-06ae-c2bb-62d1-de71d843012e', 'e3af2a09-df53-721e-3fe0-5289578e5d09', 'c142ecba-4964-b3ec-3d3f-670c9fbc9a60', '5b5d99e1-9167-1378-cf99-58449ebc35bc', '4df143a8-ea7c-fbed-288c-c7ea0402c11e', '499b6447-2652-9a10-be4f-d1aae7e701d6', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '5b5d99e1-9167-1378-cf99-58449ebc35bc');


SET session_replication_role TO DEFAULT;


