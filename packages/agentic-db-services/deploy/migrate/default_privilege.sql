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
  ('019d9485-aee9-7836-aa7d-1d4a7b774175', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae98-7486-bdee-7e5665e75d4e', 'tables', 'ALL', 'administrator', true),
  ('019d9485-aef9-7c46-9c7d-fccefd245842', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae98-7486-bdee-7e5665e75d4e', 'sequences', 'ALL', 'administrator', true),
  ('019d9485-af04-73c1-9702-c34d1caa145e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae98-7486-bdee-7e5665e75d4e', 'functions', 'ALL', 'administrator', true),
  ('019d9485-af0e-7f14-a7c8-a48080977211', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae98-7486-bdee-7e5665e75d4e', 'functions', 'ALL', 'authenticated', true),
  ('019d9485-af19-7333-80c8-d0e2ac2f11cc', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae98-7486-bdee-7e5665e75d4e', 'sequences', 'ALL', 'authenticated', true),
  ('019d9485-af23-7360-b748-d6c3f40e70a5', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae98-7486-bdee-7e5665e75d4e', 'functions', 'ALL', 'anonymous', true),
  ('019d9485-af67-70f1-b560-e436be77d04e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae99-7c98-95a8-72262cca2013', 'tables', 'ALL', 'administrator', true),
  ('019d9485-af74-767d-85e8-abd080cc03a7', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae99-7c98-95a8-72262cca2013', 'sequences', 'ALL', 'administrator', true),
  ('019d9485-af7e-791f-8e72-5dec6de8289a', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae99-7c98-95a8-72262cca2013', 'functions', 'ALL', 'administrator', true),
  ('019d9485-af88-7729-9916-243b76f42bfb', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae99-7c98-95a8-72262cca2013', 'functions', 'ALL', 'authenticated', true),
  ('019d9485-af93-7062-8520-58b00f8ef73f', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae99-7c98-95a8-72262cca2013', 'sequences', 'ALL', 'authenticated', true),
  ('019d9485-af9c-7dfc-90c7-79f5bd187e6e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019d9485-ae99-7c98-95a8-72262cca2013', 'functions', 'ALL', 'anonymous', true),
  ('038967c0-df0a-696b-d50d-792ffccba699', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'sequences', 'ALL', 'administrator', true),
  ('2872adb1-257d-d81f-ba56-63d3195f784f', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'sequences', 'ALL', 'authenticated', true),
  ('c4e2ab29-4a6a-3a30-fc6e-9f9399deb985', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'functions', 'ALL', 'administrator', true),
  ('c6903608-8e8e-5aa4-d5d9-fde6b116b18e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'functions', 'ALL', 'authenticated', true),
  ('d1a4b009-8243-ed1e-2080-a3558c3cfb8d', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'tables', 'ALL', 'administrator', true),
  ('fffb1677-d848-897d-fc8f-896d70260456', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'functions', 'ALL', 'anonymous', true);


SET session_replication_role TO DEFAULT;


