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
  ('189cccfd-1e68-4ce0-a958-e425800302cd', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1c6cb-01d0-40c7-179a-20ce7352530d', 'bfc1a717-7122-438d-c06b-60187fd44683', 'bfc1f367-d024-41ce-2ee9-fd060907364c', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'bfc1fa21-a673-4977-d171-ca4fe4da3b2d', 'bfc1ba3a-2ad7-435d-18fe-39312fd995da', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('806c051b-3d03-4903-a57f-23037934646a', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1c6cb-01d0-40c7-179a-20ce7352530d', 'bfc1a717-7122-438d-c06b-60187fd44683', 'bfc1f367-d024-41ce-2ee9-fd060907364c', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'bfc12e77-a096-4dbd-327b-a5467e0e6f85', 'bfc138f9-8785-41e2-5700-ab187eab7407', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, 'bfc15408-cbc4-4c59-b505-cd51e0ad5353');


SET session_replication_role TO DEFAULT;


