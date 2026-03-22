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
  ('019d1736-f321-7b8d-9de9-625db257b9a3', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-f322-7351-91d7-45caecc5196f', '019d1736-f3f1-797c-ae7e-14fa0326913f', '019d1736-e760-7489-b9f5-4c36ed21c55c', '019d1736-5b0d-7766-9f99-3cf518199163', '019d1736-f4c2-71fc-ae0d-3e23a6445981', '019d1736-f969-7c3c-81e7-4f4698c97fe2', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d1736-fcea-70b0-9397-a95be1430350', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-f322-7351-91d7-45caecc5196f', '019d1736-f3f1-797c-ae7e-14fa0326913f', '019d1736-e760-7489-b9f5-4c36ed21c55c', '019d1736-5b0d-7766-9f99-3cf518199163', '019d1736-fcf4-7b62-84ee-afde5fc26072', '019d1737-024e-7045-ae3a-2866af0236aa', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d1736-5b0d-7766-9f99-3cf518199163');


SET session_replication_role TO DEFAULT;


