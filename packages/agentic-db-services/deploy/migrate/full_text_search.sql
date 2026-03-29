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
  ('019d37b9-b8d2-7f8e-bbb6-1cd156466178', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', '019d37b9-b8c3-797c-9948-27b727bf0039', '{019d37b9-b842-7664-8993-b5bd6d956573,019d37b9-b887-7627-b17c-34253024e0b7}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('019d37bc-7759-7433-82e7-3f9d0ae43cd3', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37bc-6e6a-7a6a-a940-040b41cb2d86', '019d37bc-76f3-7270-82f9-b03b2dc0f787', '{019d37bc-705a-70d9-9472-f9af239e195e,019d37bc-70bf-7fa2-9db0-2cc53a26c02b,019d37bc-7146-7ff4-9e39-e5f8ce4e261d,019d37bc-7174-796f-9c73-6dc5f3113c36}', '{A,A,B,C}', '{english,english,english,english}'),
  ('019d37bc-8366-706e-8e9a-e2b4673a6aee', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37bc-7b79-72b4-81d2-f80f9ae85f86', '019d37bc-82f5-71c4-8906-453069f94c44', '{019d37bc-7d86-758c-9569-fecc8f27ec1c,019d37bc-7e7f-7d43-90fb-d73ba66cd9c6,019d37bc-7e4c-7150-8785-75e93152ad1c}', '{A,B,C}', '{english,english,english}'),
  ('019d37bc-9ffa-713a-8576-94a03742fb24', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37bc-9401-7fe8-8a36-ff7f61ace69e', '019d37bc-9f59-7166-8734-6a5af9e8ece0', '{019d37bc-9710-75cd-9bab-f6c81dbd4ade,019d37bc-992a-7284-b14f-a00ab17af377,019d37bc-97f8-74f1-a606-9c6fcc1b5c14}', '{A,B,C}', '{english,english,english}'),
  ('019d37bc-b734-734a-a31d-cf59abd6823b', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37bc-a60b-7563-b1c3-682c88387757', '019d37bc-b669-7db4-8c9e-6a0f54f263e0', '{019d37bc-aa10-75cc-ad78-8348a68d00ca,019d37bc-ae86-75ee-8fc7-0f1c5e8c6793,019d37bc-ab49-714b-a28c-f2b52de07e1f}', '{A,B,C}', '{english,english,english}'),
  ('019d37c0-2c80-73c2-a27e-c12db8393423', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37c0-246d-7071-acb9-e701f5c06634', '019d37c0-2c19-7850-a6ea-5871af2be863', '{019d37c0-277b-7cb2-accd-c202d77645e1,019d37c0-27e8-7c2a-8786-c2338355f6d2}', '{A,B}', '{english,english}'),
  ('019d37c0-37aa-7fff-953d-35ebb65da4f3', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37c0-2fe7-7446-82db-1d475de855a3', '019d37c0-373e-73a5-8fcb-d952cb037fa6', '{019d37c0-32c0-7308-9e39-5ded0e834347,019d37c0-32f0-70c5-a670-4344d5eba18b}', '{A,B}', '{english,english}'),
  ('019d37c0-5522-715f-a7b5-b364a00fa024', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37c0-4a2d-7d6c-b5fa-120058282efb', '019d37c0-5484-7ec3-934d-4bf201c0ec5c', '{019d37c0-4d41-7d2b-9728-0d8f048f47d2,019d37c0-4dd7-7e20-ac90-93be3b799082}', '{A,B}', '{english,english}');


SET session_replication_role TO DEFAULT;


