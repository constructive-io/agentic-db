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
  ('019d42ff-cbaa-7deb-9a80-63e8d698d543', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ca62-77a0-ab97-b8d784c420dc', '019d42ff-cb99-79e3-8ac5-810d10a8fc8c', '{019d42ff-cb02-768c-8a79-f304fc90db4f,019d42ff-cb5d-73a1-bbe6-c60943b7d3ad}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('190bebc8-0636-dd46-5260-d941f1fe1cac', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '4a24147f-71ca-8c2e-5f77-c5a9643d504f', 'f9551188-ae38-2e73-2102-cd62d9d9b21b', '{2dca2d03-6c1d-04b9-728a-4045744f7b41,1f5aaf02-5ede-5602-3b58-7c0f3dbc943e,b5c02771-a0a4-64e5-8144-17b36a77d88d,255ed17f-8efb-6d58-cd0a-ba04a7e8d381}', '{A,A,B,C}', '{english,english,english,english}'),
  ('2609cd56-d327-e893-2f01-3ce537dbbfee', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '3d794784-6a59-a7b6-e99a-c536ab04d6ab', '2193d28b-7788-ee9e-ed4b-236b651db71a', '{81f5a612-0d83-a4a9-3cf4-69930f3c7b83,945a2e5a-db5b-22b9-52fa-f1af1601b812}', '{A,B}', '{english,english}'),
  ('2b344907-90dc-7eca-4a4d-ecccacd9308a', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '4b0cd493-0a35-521e-d6cb-620a36b38cdd', '35b25473-4d2d-7ccf-cdfb-2a4dc10afdb9', '{a73e5879-2a88-c940-7418-82f798a6a78a,f0081af4-5d90-6788-56cc-b73162d7a4bd,15244906-6fa4-44ac-8401-bbdca557df5d}', '{A,B,C}', '{english,english,english}'),
  ('7f1b59a1-5bd7-329d-b79f-4719837059ae', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'c08b6f56-2baa-4f46-0499-39f6cd0921c5', 'c8faf532-aa01-0d5e-37af-db25f30f78ea', '{7ca88d71-391b-43b1-b326-69bb47245f2a,a9f5c63e-6c22-ea04-e2d9-358bd4e5d994}', '{A,B}', '{english,english}'),
  ('8bfb66fa-4671-3d71-410d-9471e4152fb3', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'ae1150a2-200e-1b40-2e10-37ee80eb0c58', '6d64ea3c-f55b-3466-9aad-94ea16ae90a9', '{a74f7cb5-1b45-4cac-7f5d-c627d3ae999b,abc57ea7-4efa-24c3-c0e2-bac29039a7e4,8a808436-cfce-f0bf-d7ad-f06cce1eedd8}', '{A,B,C}', '{english,english,english}'),
  ('bbaab548-61be-e736-8755-3c2ea94b5837', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '04cbfbcd-04f7-6710-f252-edbb121a1ca9', '6c95ddbc-ee01-9d74-d2df-4edab806a81b', '{a9aeef52-8de3-2b4d-550f-d8076c7262dc,955c59b1-9250-e58d-b8dc-9c9cc2dfcbdc,78192e09-873e-bdaf-c841-f52c134bf67f}', '{A,B,C}', '{english,english,english}'),
  ('f0057fd1-e6d1-aaeb-a899-0346c4b0d303', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'a36d3c30-a53f-5de2-3d7e-29e5f3092700', '4bc0e7e7-5dae-f4ea-4e89-96a18013cb02', '{b0690050-2dad-03d8-8286-b6744f2edcc0,e664cfa5-9324-6b19-e821-4da838498bca}', '{A,B}', '{english,english}');


SET session_replication_role TO DEFAULT;


