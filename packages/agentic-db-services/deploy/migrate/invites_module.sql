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
  ('019d13bc-c0d5-772c-acf8-1ab5c5bad45a', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-c0d5-7daa-abf9-70ea7fc7de63', '019d13bc-c1a9-7009-83fe-379a7340eb07', '019d13bc-b4cb-76f4-ac5b-1725de3aff22', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', '019d13bc-c27c-78d7-ab12-91cf2d36eddc', '019d13bc-c77e-7ed5-948d-9cdbe5e542f4', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d13bc-cb27-70df-bb43-9b6d41f004d4', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-c0d5-7daa-abf9-70ea7fc7de63', '019d13bc-c1a9-7009-83fe-379a7340eb07', '019d13bc-b4cb-76f4-ac5b-1725de3aff22', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', '019d13bc-cb36-7bb8-ade5-41d0d8eed1dc', '019d13bc-d0df-7c4c-ae0c-13a66444f7b9', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d13bc-21ae-7eb2-b63f-9fb476e22f09');


SET session_replication_role TO DEFAULT;


