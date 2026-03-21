-- Deploy: migrate/full_text_search
-- made with <3 @ constructive.io

-- requires: migrate/check_constraint


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

INSERT INTO metaschema_public.full_text_search (
  id,
  database_id,
  table_id,
  field_id,
  field_ids,
  weights,
  langs
) VALUES
  ('019d11d9-5c23-743b-8c4f-3efa6ce07caf', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5aed-7673-b41b-b11528f73f79', '019d11d9-5c12-7ee4-8829-6944c91a2c44', '{019d11d9-5b90-709b-90d5-c8bf34ae2e29,019d11d9-5bd7-7eba-b7cb-1faa79976393}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('f23a6ce1-c127-bc4c-f69b-52d41977cba6', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '42ead6a6-6a44-9aea-dd48-24dee935bed3', '90b5cdf9-4b33-5c0d-0ca3-be2bc359a30b', '{984c8831-aafb-54bd-0ae6-0a34a7c83795,81c17ee3-ad81-02c4-14b9-5d2297bd996d,917ab5ce-8e38-fdfe-37d5-701d5932dc45,9847d2e8-3ddc-55ea-e4ab-da86a9db7b8a}', '{A,A,B,C}', '{english,english,english,english}'),
  ('c3001a2f-9b88-0455-d754-3f45ff76cc6b', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '47f03c4a-8c53-e7b7-34eb-0c1cbd52de78', 'f6de2ed2-a70c-0057-f1f3-6291bade6788', '{ea611adf-b1c6-73bc-b127-c45215ce2aea,e4fde67b-e8db-fbdf-7839-1486f659ba01,387456d3-eee8-6f09-0d59-f2f96551f4f9}', '{A,B,C}', '{english,english,english}'),
  ('d197692e-8bc7-e8da-464b-50e5b6b3d690', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '68df5543-8685-6a65-d6c5-9e87be4862d4', '2353985f-4dcf-f9e5-e81b-8e247005b3db', '{6da2eabc-73a4-5a99-0df0-5f6dd1d1ddb5,126fb76e-c300-8329-b813-a6a688eb7dd6,e0b5cb36-cf1d-3af0-fcd0-8d151d8e62c6}', '{A,B,C}', '{english,english,english}'),
  ('5a1afd87-2672-4501-8aa7-3eb4a1434520', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '5a36c18f-beff-aae7-efc6-ea0159700669', '62714827-9809-ac01-21ae-2075ba6efc00', '{d2dd00cc-2887-8079-9d35-45be9b8ec600,9aeb0dd0-981b-bf52-8fe8-c386511e8aab,e0e4c774-6588-1f2e-fdfd-9696478d3b1c}', '{A,B,C}', '{english,english,english}'),
  ('c9fb3eba-e490-e1cd-840a-d8d922d724ed', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '80e3e300-51f4-c019-b103-bdca3f9cde02', 'e996e8a3-4e6a-35b4-50b7-5bdb65f2fa05', '{e0281a82-d9a6-e19b-81e5-508b8f9adb78,ca668027-64f1-d790-ad46-4342d706ff76}', '{A,B}', '{english,english}'),
  ('4d754e69-1acd-5783-adea-d2dfc1dd0017', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '74e9e386-ff33-af2f-d6c0-f6dd0d7ee0b2', '8f38b33b-ff54-6afb-b823-762084140b72', '{378e3abe-a1c1-1e74-d49c-ea492bfc706e,d0b66c65-3d38-37fe-9cd5-c313fb4f0f89}', '{A,B}', '{english,english}');


SET session_replication_role TO DEFAULT;


