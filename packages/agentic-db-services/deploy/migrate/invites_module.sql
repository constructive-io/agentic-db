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
  ('019d3dab-abe1-7d5f-b0c9-5c69f8b0a775', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-abe2-758c-95b6-5ac57d5513cf', '019d3dab-acbb-7f33-839e-21262a330532', '019d3dab-9f7d-751f-b885-1e52b9b8926e', '019d3dab-00a9-731d-b66d-d5d69c0909a6', '019d3dab-ad9f-7e26-84ea-31655607e347', '019d3dab-b2c0-7f68-b777-9dbe10548d47', 'invites', 'claimed_invites', 'submit_invite_code', NULL, 1, NULL),
  ('019d3dab-b678-754a-9bf1-be8cc87c1587', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-abe2-758c-95b6-5ac57d5513cf', '019d3dab-acbb-7f33-839e-21262a330532', '019d3dab-9f7d-751f-b885-1e52b9b8926e', '019d3dab-00a9-731d-b66d-d5d69c0909a6', '019d3dab-b689-7216-bf12-6976dacb411b', '019d3dab-bc50-7b71-a618-424a994f8c56', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d3dab-00a9-731d-b66d-d5d69c0909a6');


SET session_replication_role TO DEFAULT;


