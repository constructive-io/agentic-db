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
  ('0af85963-d38f-2d8e-1012-05372d592511', '14b01c2d-072a-5594-645a-675751a83d86', '5258dec3-0cde-6103-1859-08598c428740', '2a7dca4e-f9a2-6693-bbc4-76968aa637e2', '{b5707f7c-c604-1206-1b43-6c65b969795c,e21c5445-3471-2d59-6c19-c9ee0b6a9bff}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('17a44dc8-f3b9-fca4-dde6-14f7d35e17ef', '14b01c2d-072a-5594-645a-675751a83d86', '9507b4e3-d076-5b1d-8ef9-0993837d14ac', 'a5639172-b625-c141-9a94-f386c2cb15d1', '{acbed380-296a-ccb9-42a7-d9aaf7c018a5,132d84a3-9c84-4f0b-51b2-7b7b33f22ec6,20b1425b-24dc-bfbb-c200-64118478a1fd}', '{A,B,C}', '{english,english,english}'),
  ('213f3af5-f5cb-272e-7320-69d9645391b5', '14b01c2d-072a-5594-645a-675751a83d86', '00a0caec-e33d-b640-8cda-65f0e53c06b6', '19acd23c-ddaf-a051-6ac6-4d44ea9cdbb0', '{cd3b2b1f-e015-e25b-717f-5e314a734a5b,45a84408-3026-a74d-892e-421b7eb17bc0}', '{A,B}', '{english,english}'),
  ('4e31e72d-ff29-1804-23ce-778b4395961e', '14b01c2d-072a-5594-645a-675751a83d86', '8412c22d-fa0f-9300-65ee-0a1130d9ef7a', '50fd9e03-1775-c2ea-ac2e-0f5c828f61e3', '{55b5f10a-3307-5211-2540-fc9a5782dcc3,c4ebed30-5f2b-a55b-b0a9-4d3171bf1c6d,68eb839a-17c0-1df0-8627-8ed534a1e046}', '{A,B,C}', '{english,english,english}'),
  ('642785f8-93cc-bdcd-606f-d7c741b03192', '14b01c2d-072a-5594-645a-675751a83d86', '5b4a9b66-b235-586a-6b3b-eac9d800650b', '445f2abb-0968-3aa2-5685-5718822a529c', '{b24e6f51-ed27-c056-da5f-e26df777c930,b9a82b6b-f3ed-cbdb-3edf-462c34680d03}', '{A,B}', '{english,english}'),
  ('73ace8c6-40cd-f5c8-ae06-2e0fcb6457f2', '14b01c2d-072a-5594-645a-675751a83d86', 'e3680307-d4dc-420c-355a-58e2c25359e0', '62186279-3c38-3381-9ebf-68395b687f10', '{ef2e7e70-07fe-3c45-96e5-c282f5262f4a,c6476608-59fd-b5be-293e-2dcdee09e81d}', '{A,B}', '{english,english}'),
  ('76260f5c-e182-f7ab-0003-c08cf62b6734', '14b01c2d-072a-5594-645a-675751a83d86', '6032df74-00e9-abc0-1ea1-e73f0b7a18ad', '6c9966ba-c30d-732a-c5ae-a87575f5d611', '{5410e762-c26b-92be-199a-fcdfff7aea16,4cd5b5ea-1a00-7c12-84c1-72b8755d010c,5820bf1e-a31e-3934-f947-3994e3c20569}', '{A,B,C}', '{english,english,english}'),
  ('b1599576-e1a9-0406-52ec-6f20145281fc', '14b01c2d-072a-5594-645a-675751a83d86', '168e9e84-8e4f-e8b3-726e-c8439f06d5ed', '2b5aa6e3-37b1-3320-a4a1-f313e2b61ea7', '{7ee1f793-42bc-7b23-57a9-1d4e8a974378,4e023f57-5e4d-89a0-a1f4-6ff1cf44724b,dc7923de-de39-c1e0-2d53-0db31f8c7c03,7879904f-d3c8-a16c-3831-1463749d086c}', '{A,A,B,C}', '{english,english,english,english}');


SET session_replication_role TO DEFAULT;


