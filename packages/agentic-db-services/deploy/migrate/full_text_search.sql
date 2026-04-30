-- Deploy: migrate/full_text_search
-- made with <3 @ constructive.io

-- requires: migrate/primary_key_constraint


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
  ('07fae56d-bc67-4735-1d9a-bc8f2357e1b4', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b37e3ae4-c569-c87c-82c9-a7cbe0e65d6a', 'd8a06dce-3d7d-d079-e86c-5282bebd6852', '{f18676cf-bd6b-fd39-b1e0-8f6385c896a6,92efd98e-4d0c-8593-7f4d-179c64c9068b,27fd63e2-69fa-f7c8-b3bc-6b3408636eaa,1a4c3ec4-5714-fac3-03c2-3158cfaf69b6}', '{A,A,B,C}', '{english,english,english,english}'),
  ('458d7f61-aa1c-ed8d-c563-b0eafdcc30cc', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'd57d2ee6-7b28-5c02-128e-c625e2c509e7', 'e54877f3-5884-4f7f-fe95-d983887bec41', '{4c991e31-35e4-3630-4e36-b0450e341c53,7a9ea875-d8be-f628-c1ac-01718b6be7ef}', '{A,B}', '{english,english}'),
  ('91d1f773-1286-5efc-2e2b-f6fa47823500', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '3e8761cd-38a3-b8ea-840c-c13a9994010a', '992504cf-a48f-2dd4-f68a-8b6f530b45fb', '{d36e50c8-029a-8f08-6b76-3a640b1b67b6,24772d1a-692b-5385-f62b-3b0ba995b8c2,01615119-d7bf-137b-17d1-2d68d066e0fa}', '{A,B,C}', '{english,english,english}'),
  ('a718bdde-16cb-daf6-762f-70427fed85e1', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '05308e86-c15c-552e-a2de-cf11d659b5dc', '22f08746-69d3-3e5a-2f8f-348895874d6e', '{4a02aa19-38e3-a88b-0dd3-45105c683687,6e6f309e-6615-2360-05bf-64b27b6799a1,b539c158-05c7-71bd-55a0-08690c4b683f}', '{A,B,C}', '{english,english,english}'),
  ('a74a0c96-13d5-a756-c4ff-10993bb70d68', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '16015198-6182-dd00-fcf2-b1a195897c86', '5d518d02-580e-0390-1760-d3f90dad18ad', '{5026fd65-9465-4c1f-c8f9-162ac3246a23,a89c8c47-d4a9-22b4-0de3-4711cf0c80fa}', '{A,B}', '{english,english}'),
  ('bb6ecd1f-4eb1-3fef-0eb6-0361d2cc3d49', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '534aa42e-c741-8175-ce8c-a547d0c154f1', '66b87e36-0e17-445c-41f5-b910b8fa7937', '{5a1f258e-49a9-6db8-8b7c-51be8877b052,ffbb6364-49e6-265e-9546-2feddc5c3c2c}', '{A,B}', '{english,english}'),
  ('c6cecd13-8015-989f-ff8d-4e55b09a6a29', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '05d570ef-6f19-1b39-f6e6-6678a8245f6e', 'c27c0da3-6462-0dd6-d69e-b5996f411e40', '{d120fa19-f636-deff-1bd3-af3781a6be49,a860908c-b26b-3be5-e009-2822c714e6a5,06ae72a0-16e9-33ed-f477-342748ab8ce5}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


