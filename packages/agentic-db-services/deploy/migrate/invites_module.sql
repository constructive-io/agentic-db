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
  ('019d37ba-66b9-7f09-8a3e-cfbcdfcca0ea', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-66ba-77a5-abda-e78f17b9a7e8', '019d37ba-678c-7eae-87e8-70672401e2af', '019d37ba-569c-7261-a2c1-0141c5943571', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', '019d37ba-6862-7e6f-98ec-feafe16e29af', '019d37ba-6d36-7ed7-84a4-398f8a770778', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d37ba-70d3-7361-aef4-1ae7a627b754', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-66ba-77a5-abda-e78f17b9a7e8', '019d37ba-678c-7eae-87e8-70672401e2af', '019d37ba-569c-7261-a2c1-0141c5943571', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', '019d37ba-72bb-7e1d-92cc-acab01a90161', '019d37ba-7875-7ce9-bb93-3fa56be8dca1', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d37b9-b7ad-745d-9c54-c5b0658c3ae4');


SET session_replication_role TO DEFAULT;


