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
  ('0bf626b7-f0f5-c7ad-ce7d-807e0b1ef577', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ff1bb0fc-6007-c362-8fe1-814dd187cedf', '4ae689ab-c446-e2cc-0056-daef88da7a6b', '2398857e-08f4-f4e4-3e67-f662d241f1d2', 'a42ab990-9bfb-d930-3f98-a01493cc2158', '576f4955-583c-8560-be90-add918965864', '9ec48149-88ff-cd1e-3a31-de10d042ee17', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('49802802-25c5-f9bc-fc21-2584c7149405', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ff1bb0fc-6007-c362-8fe1-814dd187cedf', '4ae689ab-c446-e2cc-0056-daef88da7a6b', '2398857e-08f4-f4e4-3e67-f662d241f1d2', 'a42ab990-9bfb-d930-3f98-a01493cc2158', '0a6a8ecd-78f0-1eba-eb7d-b0a197d18122', '048ce625-96c4-65d2-25b7-d1c76ed568d3', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, 'a42ab990-9bfb-d930-3f98-a01493cc2158');


SET session_replication_role TO DEFAULT;


