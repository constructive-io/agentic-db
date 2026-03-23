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
  ('0352c285-0f9b-df11-af0f-1d5c57aa6b62', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', '765d475d-f43d-a5be-591a-4a6738ba7094', '{26dedf1f-f33b-6cae-9270-cbae13ece08f,af24140a-166d-db90-00c1-8bf40241e3c9}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('0f4ec900-5133-2a53-07e2-126edd7b11da', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'f6bc2fe3-f60d-854a-0086-e0a07f43478e', '90099e74-a798-e030-f50f-ace341e66939', '{b5e61054-95b1-6212-4b42-64712a69e37d,75143761-c9d2-b464-2be0-2f6197d6a64b,6dc6532b-b4a1-1864-d131-af44475e5595,3718ff47-7dc6-c4c8-4189-38edfc3b117d}', '{A,A,B,C}', '{english,english,english,english}'),
  ('273fbd8f-45a8-cfcc-9af2-fcd5169cdbdb', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '7df1905b-15c4-db3b-14e3-9d1e1160fb56', '2005fe12-9ee2-94a7-a3cf-dac5a8f3a57d', '{6c62de67-ed9b-abbe-8d2d-946f8ef9cdfd,9631f610-fc77-f71c-332c-f8fa48d68103,40d4a93f-9ebf-c381-539d-4157fe617463}', '{A,B,C}', '{english,english,english}'),
  ('bf42865e-cfa5-59d1-a827-9905c35c3046', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'ea430018-c379-cff6-7f6a-3d27cc316029', 'e64c65a2-4037-7ba0-3e87-4c2a8d345654', '{cda27e76-293c-cea9-f591-d3b2fb8472a6,bdabfff5-fdb7-83ee-49ac-f68e8fa7fd11,07549873-d25d-e8a0-e194-823e2c07faa8}', '{A,B,C}', '{english,english,english}'),
  ('940fab81-1ff6-8044-8aa4-b4d8dfeead74', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '184ec9b3-8950-1e76-2b9e-8279d50a7e91', 'a0980b7c-2cb1-4175-2ca2-017dc471b98c', '{b7b8d0fa-271c-ca3e-4e41-8313a4b2f001,f1725e1c-c7df-2eb4-16c2-b71afd4787b6,4c79b6a0-cf51-adf8-9bd3-5b094cc6fbf1}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


