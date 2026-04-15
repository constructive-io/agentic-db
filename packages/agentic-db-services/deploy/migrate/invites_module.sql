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
  ('019d9350-812c-7c83-b259-e6fc87283120', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-812d-747c-959c-e981a902de13', '019d9350-825f-777d-81e4-cd0520555cc8', '019d9350-6d00-7908-b499-99d8958711ed', '019d934f-898e-73d5-9f57-6c8589048db5', '019d9350-8396-7512-9042-58187186081f', '019d9350-8ad2-7633-83d3-12c6076f9591', 'app_invites', 'app_claimed_invites', 'submit_app_invite_code', 'app', 1, NULL),
  ('019d9350-90f7-77f2-8f5b-00d5832a863b', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-812d-747c-959c-e981a902de13', '019d9350-825f-777d-81e4-cd0520555cc8', '019d9350-6d00-7908-b499-99d8958711ed', '019d934f-898e-73d5-9f57-6c8589048db5', '019d9350-9185-73df-855d-b2c5c0606b1b', '019d9350-9a67-7959-9990-349fbfd0ad8a', 'org_invites', 'org_claimed_invites', 'submit_org_invite_code', 'org', 2, '019d934f-898e-73d5-9f57-6c8589048db5');


SET session_replication_role TO DEFAULT;


