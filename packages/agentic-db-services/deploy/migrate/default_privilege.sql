-- Deploy: migrate/default_privilege
-- made with <3 @ constructive.io

-- requires: migrate/schema_grant


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

INSERT INTO metaschema_public.default_privilege (
  id,
  database_id,
  schema_id,
  object_type,
  privilege,
  grantee_name,
  is_grant
) VALUES
  ('019d937b-b6de-7417-b64b-b18dc53c82e1', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b682-77d7-8778-efebf99aa040', 'tables', 'ALL', 'administrator', true),
  ('019d937b-b6ee-7c5f-9bbe-cbd81c73ed54', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b682-77d7-8778-efebf99aa040', 'sequences', 'ALL', 'administrator', true),
  ('019d937b-b728-776c-b9b1-8a6ddf622bcc', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b682-77d7-8778-efebf99aa040', 'functions', 'ALL', 'administrator', true),
  ('019d937b-b741-7902-b860-b96c01cfe55a', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b682-77d7-8778-efebf99aa040', 'functions', 'ALL', 'authenticated', true),
  ('019d937b-b759-7530-96b7-eb992e3720f8', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b682-77d7-8778-efebf99aa040', 'sequences', 'ALL', 'authenticated', true),
  ('019d937b-b770-7a4e-8934-619aa88d3a29', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b682-77d7-8778-efebf99aa040', 'functions', 'ALL', 'anonymous', true),
  ('019d937b-b7f5-7684-80c1-30e9fa790b71', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b684-7879-9eab-a1e9699dccc5', 'tables', 'ALL', 'administrator', true),
  ('019d937b-b80e-7c69-b01a-9fb38fbda806', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b684-7879-9eab-a1e9699dccc5', 'sequences', 'ALL', 'administrator', true),
  ('019d937b-b826-7c3e-83e0-c41ab790de0a', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b684-7879-9eab-a1e9699dccc5', 'functions', 'ALL', 'administrator', true),
  ('019d937b-b83e-7e7f-96f2-f1310452c3f6', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b684-7879-9eab-a1e9699dccc5', 'functions', 'ALL', 'authenticated', true),
  ('019d937b-b856-74fb-85d5-18d87d818438', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b684-7879-9eab-a1e9699dccc5', 'sequences', 'ALL', 'authenticated', true),
  ('019d937b-b86d-7387-93af-300521cc0bcf', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-b684-7879-9eab-a1e9699dccc5', 'functions', 'ALL', 'anonymous', true),
  ('019d937b-d6b8-739d-8091-ad739ddcfe72', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'tables', 'ALL', 'administrator', true),
  ('019d937b-d6e2-79ff-9457-41cafd04f6b1', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'sequences', 'ALL', 'administrator', true),
  ('019d937b-d709-7657-a59d-0b9595803a63', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'functions', 'ALL', 'administrator', true),
  ('019d937b-d730-721c-85d3-84dfefc62b9d', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'functions', 'ALL', 'authenticated', true),
  ('019d937b-d756-7e94-883c-b99a3e526987', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'sequences', 'ALL', 'authenticated', true),
  ('019d937b-d77e-7c85-b1a6-3fdf5f5435ab', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'functions', 'ALL', 'anonymous', true);


SET session_replication_role TO DEFAULT;


