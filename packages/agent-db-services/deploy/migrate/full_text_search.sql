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
  ('a008a53a-4b01-470b-08b8-94e59a16252c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'a0088d75-5e37-4efd-fbb7-c7e8b8748d64', '{a008261a-4885-41e2-1d5a-34e0a96b503d,a00875a7-e588-47be-8b58-9580e5c24697}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('a008a178-36cd-4cd4-bbd9-fd08ac2dd648', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008ea80-b609-4340-3166-56ff139ec99b', 'a0080e05-7c36-445e-aa6f-ce4be8b66686', '{a008c956-9158-4101-13ad-c1187f4e3b30,a00837c5-a709-4b99-18d7-ff9f0bb18266,a00833dc-5df5-4fd5-352c-50a194689c73,a00815d6-8ae5-4c4e-0cff-72b31ec914a4}', '{A,A,B,C}', '{english,english,english,english}'),
  ('a008c0eb-056a-4915-972c-ccc31a52909e', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00814c9-fbc9-43f0-7614-f9ef564371de', 'a008072e-c3c7-4c3d-c387-d922b3414cc3', '{a008e558-d98d-4bf2-e789-8ba513f06fd8,a008344a-51f6-462b-ef45-c2530797adc8,a0087532-ced0-432c-7b55-6f625e441e98}', '{A,B,C}', '{english,english,english}'),
  ('a00850f0-9be3-4d0a-b528-a7a1a7ce4a4d', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082bfc-f90c-42a1-3e0e-d45a337185be', 'a0081874-f040-4bba-af43-5bb3ae59842f', '{a008837c-4261-451f-f62c-2af3f0a188a5,a008984b-636f-4633-484e-459b69a6df7d,a008da5e-69fd-4fe3-0cc0-d0004ae6d7d6}', '{A,B,C}', '{english,english,english}'),
  ('a0083ac5-c99e-4a61-f6cf-dabfd0cec82c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0081e45-3413-4197-6fe9-38e75d77e24a', 'a00826a9-1cbb-4c94-5101-b0fc3c2f3d28', '{a008f375-bb22-487f-1f3a-0cff8bd31982,a0086035-3669-4e0c-fbdc-daba906fb7d5,a008f178-16a8-4b98-013b-b099a4aa43c1}', '{A,B,C}', '{english,english,english}'),
  ('a0082f74-b8e2-4391-7742-d7a8c2086940', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0080ac2-cf94-4954-0614-c8a0186e8918', 'a008c235-9654-4072-13ab-84eb48ce1cff', '{a008bd20-26a2-4806-a9d1-96c93e2489d9,a008fa11-2268-47d3-7f2d-2cf64e4bbeb1}', '{A,B}', '{english,english}'),
  ('a008f5d5-fa8d-4b18-1a2b-a5e68c80ada6', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087c7e-132b-4d3c-b679-957ac38c9eeb', 'a00852b8-1422-43cb-9dad-a29eec3b9412', '{a008c8b5-6a34-44c8-6875-fbb5081cb9e3,a0083f70-9835-42fc-c01c-ed28909896d2}', '{A,B}', '{english,english}');


SET session_replication_role TO DEFAULT;


