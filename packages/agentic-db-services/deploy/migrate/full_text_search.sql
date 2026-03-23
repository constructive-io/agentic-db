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
  ('019d19cf-0625-7edf-a641-2ef44690af09', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-04f9-762a-946a-add4e6430409', '019d19cf-0615-776f-af4e-6a2a9d481e43', '{019d19cf-0592-7c07-bc53-1198937e79e0,019d19cf-05d3-71c9-86b3-b0ccb14bbdfe}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('40a3f643-ce87-1ccb-5a46-c162ae9a4c11', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '00400823-4347-e882-172b-ecfed2ee9cb6', 'a72c63c9-45d3-ea61-5c3e-b0f56237249e', '{6bacd408-2d2d-fb54-d579-ebd24b84ece5,ac92af68-23ac-25bd-407a-9cb0c98f42f3,c9de4f6b-8039-7fc7-95b5-bdf5d149a0ad,f80357a0-e634-b15a-78a6-d89682c9c740}', '{A,A,B,C}', '{english,english,english,english}'),
  ('d41fe489-ee05-1158-a123-ae372403ff3f', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '285f6cd9-18fe-011c-a519-bc94b716af4d', '6441ee45-a32b-e43c-c90d-c25634d8ea4d', '{42a5f592-66b8-1147-ad2f-da598ee1a239,e26f6288-6464-3a1f-476e-91ff08491f0e,46d58025-e978-51de-4d42-5cf175220746}', '{A,B,C}', '{english,english,english}'),
  ('88727870-c0ad-10ed-b323-2eed91825fb8', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'f993dbc5-6a2b-b630-57c6-62db8522c495', '02cc2740-b369-df02-b8ef-10588fc5dd06', '{872cabca-f682-6297-b5d2-bc5de3a78e6c,c87716a8-7fb5-d0ce-16e2-328da9d4c776,2fa2414b-2aef-ca16-3fbe-d4167a9d44c2}', '{A,B,C}', '{english,english,english}'),
  ('50161b45-8aea-0049-d459-4de43a20aa04', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '076c4385-3400-a5cd-9403-1738e4c12a2b', '4ee11c45-c81f-e6b0-4f9b-c90ce6606605', '{4510cb17-f5b4-33a1-1311-f7bf1e20223b,5a581d73-b299-da59-49b0-d232fed1b331,f1a54819-ac1c-c24b-85d5-fb77efd69a79}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


