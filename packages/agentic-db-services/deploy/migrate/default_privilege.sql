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
  ('019ddbfb-c01f-7583-be5c-00abe1b8e6f0', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfcf-7c0b-a73e-4a47f7af4399', 'tables', 'ALL', 'administrator', true),
  ('019ddbfb-c02f-7e89-9203-0358574dacde', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfcf-7c0b-a73e-4a47f7af4399', 'sequences', 'ALL', 'administrator', true),
  ('019ddbfb-c03a-7633-85b3-12ea7023b056', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfcf-7c0b-a73e-4a47f7af4399', 'functions', 'ALL', 'administrator', true),
  ('019ddbfb-c045-7043-8c83-eddf8e531672', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfcf-7c0b-a73e-4a47f7af4399', 'functions', 'ALL', 'authenticated', true),
  ('019ddbfb-c04f-779b-9b36-65dbea5c6b85', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfcf-7c0b-a73e-4a47f7af4399', 'sequences', 'ALL', 'authenticated', true),
  ('019ddbfb-c05a-7eef-9e73-2e22f95cef4b', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfcf-7c0b-a73e-4a47f7af4399', 'functions', 'ALL', 'anonymous', true),
  ('019ddbfb-c0a1-7580-8fed-38aa086178e2', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfd1-733f-8832-56f46ded11d8', 'tables', 'ALL', 'administrator', true),
  ('019ddbfb-c0ae-7c12-aa59-b23bacf605e7', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfd1-733f-8832-56f46ded11d8', 'sequences', 'ALL', 'administrator', true),
  ('019ddbfb-c0b9-7426-95f3-6d2fb5bd3763', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfd1-733f-8832-56f46ded11d8', 'functions', 'ALL', 'administrator', true),
  ('019ddbfb-c0c3-7832-8d8d-e327b4aea479', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfd1-733f-8832-56f46ded11d8', 'functions', 'ALL', 'authenticated', true),
  ('019ddbfb-c0cd-7daa-bb3d-22827bede90a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfd1-733f-8832-56f46ded11d8', 'sequences', 'ALL', 'authenticated', true),
  ('019ddbfb-c0d8-7196-83a7-2b817d557733', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '019ddbfb-bfd1-733f-8832-56f46ded11d8', 'functions', 'ALL', 'anonymous', true),
  ('11afe9f6-42ed-1f8c-100c-8669581db9e8', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'functions', 'ALL', 'authenticated', true),
  ('196c14ba-5e12-8a9f-6194-32b30bb49f49', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'functions', 'ALL', 'administrator', true),
  ('5b4a6f86-3d15-078b-54ec-cf6591b217ab', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'functions', 'ALL', 'anonymous', true),
  ('dfe1085e-4454-ae3b-df44-ca4354bdcc4c', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'sequences', 'ALL', 'administrator', true),
  ('e46ed151-87ad-4b2a-d09f-9afa06504a98', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'tables', 'ALL', 'administrator', true),
  ('e71dedfe-bc94-d672-0650-9fce0ccf8320', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'sequences', 'ALL', 'authenticated', true);


SET session_replication_role TO DEFAULT;


