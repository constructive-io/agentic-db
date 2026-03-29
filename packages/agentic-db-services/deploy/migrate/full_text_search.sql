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
  ('3803b1a0-41f0-7b44-b0a7-9619f77aba89', '2ef50f93-192b-b168-969d-304c8e675e1d', '3372ee08-e1f4-da40-2ad8-44ede648b5fd', 'e6a15ec3-dad2-6f4c-9040-f4850b9ee173', '{5411f417-8a20-16a9-5583-70bbfed51ed4,d17476a7-e544-7213-36d5-1b53df285d70}', '{A,B}', '{english,english}'),
  ('6dd57441-00cd-d0eb-5237-bdd9d70fde41', '2ef50f93-192b-b168-969d-304c8e675e1d', '96622245-0cc8-9ee1-2773-7344a3f9c42e', 'e9cd8d68-4691-10b9-8198-68dfc2f39215', '{0f14c348-44bd-cde7-817d-0381f2dc1583,da435247-574f-4aa6-c35e-33384ee5623f,47a7a55d-13ed-e312-763a-d8089ccd4cc8,85c53e36-3d20-2c5e-5482-d6bb31492740}', '{A,A,B,C}', '{english,english,english,english}'),
  ('808f2a95-f693-9160-c9fa-ffbf07bdf9c1', '2ef50f93-192b-b168-969d-304c8e675e1d', '1507d6ec-9ee3-4d2e-b4cd-b04ea168df08', 'bc567ea7-76c3-8d58-ff7b-b4f530c7f111', '{07f694da-cc8b-5377-243b-b21c6c9777a4,37578a6e-4497-d2c2-3632-17d01df1381d}', '{A,B}', '{english,english}'),
  ('85bd8e81-6a7d-7321-86c7-06a4bf5ea9a5', '2ef50f93-192b-b168-969d-304c8e675e1d', 'f34d7deb-8ad8-1a63-5669-d1f5954898e7', 'b6002b46-4a1e-2d35-b96c-f7832cf9a29c', '{f1c94acc-69aa-b17e-c6ec-5aba14897598,6862e8fc-e007-3499-9042-f8f617f3fd93,cdc377ae-c0a9-2b0d-8c9a-5d234c8538e8}', '{A,B,C}', '{english,english,english}'),
  ('9dfa14d5-5444-f044-98aa-1de881119ee7', '2ef50f93-192b-b168-969d-304c8e675e1d', 'fdd29eda-f7c4-b806-8216-2c08d6d1527c', 'b945d2cc-9a2d-3b4e-00db-ce40c3f599d0', '{422a6e07-f48a-a14b-191d-47e87857b6ae,9c6c53a7-605d-1b4e-b3dc-4074d45ccadd,4f5a8d77-cc4d-5b49-e473-be95486190a6}', '{A,B,C}', '{english,english,english}'),
  ('e09d62a9-c309-d800-4cb0-f23d81d66959', '2ef50f93-192b-b168-969d-304c8e675e1d', '255ae7c9-980d-d9fe-67b4-967af41da687', '4138a0bb-0246-a21f-c976-25c1aacfefb9', '{80a68940-782c-aa3e-1609-0edbc16c4ce0,5191a4ee-b1f9-4958-c103-1ade06d6e729}', '{A,B}', '{english,english}'),
  ('eb563896-2efc-7fdc-e815-65b4327e94af', '2ef50f93-192b-b168-969d-304c8e675e1d', '5353e947-3e3f-3914-7fd1-1370926dd743', '367b2aed-22f9-f729-07ee-5dec3929fc62', '{547cafc1-f9cc-95a6-c9a4-b98bbe62b151,f1b4c725-4a6e-259b-3d77-0618660a6243}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('fad72127-a020-8ede-214d-72bc35d6dd89', '2ef50f93-192b-b168-969d-304c8e675e1d', '9cd6fe12-e95f-31a6-6de9-758f380dd528', '181092aa-727b-b0ca-a92b-234833279f68', '{a87b561c-a77f-a9d3-1c3d-10014ecd2e78,12dd4c61-5548-4bb5-c718-001f17e48c0a,a9e315c6-faff-f4b4-437a-6209ff159139}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


