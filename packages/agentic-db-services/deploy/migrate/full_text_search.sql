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
  ('019d2831-645e-742f-81a1-8b05d61248b1', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-6349-7cde-a517-c115bf8f4bff', '019d2831-644e-7c99-9102-b74ead7b29d7', '{019d2831-63d1-790e-85b9-2664f34df021,019d2831-6411-72dd-82a9-10e254ec7ca4}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('019d2833-d6c9-788b-931c-4f410dd04a6a', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2833-cceb-7093-899a-8e53cf866e2e', '019d2833-d65c-7fd4-b5a5-3f7a44c95259', '{019d2833-cef6-71b2-b684-8d5f64dfa5be,019d2833-cf63-7671-a3ce-a8e8edc43471,019d2833-cff7-7a33-9df1-d04c8222934d,019d2833-d02b-741d-b728-200a077da006}', '{A,A,B,C}', '{english,english,english,english}'),
  ('019d2833-ed3c-7077-997f-f70e87241028', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2833-e40d-7745-a65f-cb5bbac8d2cc', '019d2833-ecb6-7006-8f24-35b4ed7e8c88', '{019d2833-e68f-717f-808d-3d3ca6db27f5,019d2833-e78f-76c8-9848-009698cb5315,019d2833-e751-717d-80fd-ac5c2f90c24b}', '{A,B,C}', '{english,english,english}'),
  ('019d2834-2d0a-7401-9c1d-0a2828fed29c', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2834-1c9b-7626-9505-f508661420d7', '019d2834-2c33-7dcd-84db-26ada61fc8e6', '{019d2834-20ac-73f2-b7e1-6f089b8857e7,019d2834-23b5-7bea-9484-355af4dbca62,019d2834-2202-7040-8b1f-a1ff513af48d}', '{A,B,C}', '{english,english,english}'),
  ('019d2834-5bf3-7677-9eaa-500575dd9036', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2834-46bb-71bd-a958-2eeecb382ec3', '019d2834-5afc-76eb-bebb-fb5c72773806', '{019d2834-4b6e-7594-8c6f-4efac2ce7ddf,019d2834-50e1-7737-87cf-c3ef270ec826,019d2834-4cf5-74fe-a0e0-3493fa92f739}', '{A,B,C}', '{english,english,english}'),
  ('019d283a-7974-7d77-9542-a1d4b69d6d54', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d283a-711d-73eb-8af1-04a1d5d84fa4', '019d283a-78fd-755a-ac53-ab07d4d1a5e1', '{019d283a-7435-7002-a041-b48ad0b06e6f,019d283a-74a0-7e0c-817a-f28f5d2c313c}', '{A,B}', '{english,english}'),
  ('019d283a-9028-795d-9522-1252c2260620', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d283a-8657-7b4e-91e8-8bc0352a91a9', '019d283a-8fa3-7e75-83b8-57a06d2eaebc', '{019d283a-8a0f-7a91-8d88-0aa56042d21f,019d283a-8a4f-701d-a67f-b6a2cd58e2a8}', '{A,B}', '{english,english}'),
  ('019d283a-c1c5-78fc-8e99-97bba9c7cdc4', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d283a-b300-7ed3-8502-59b4a08acfa9', '019d283a-c0fc-7ba4-a0f1-54074f0a8101', '{019d283a-b71c-75f5-a28e-5f90b188e248,019d283a-b7f1-72a5-baa0-b13fca95c351}', '{A,B}', '{english,english}');


SET session_replication_role TO DEFAULT;


