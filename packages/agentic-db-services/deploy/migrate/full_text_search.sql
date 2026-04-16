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
  ('0035d473-272b-33d4-7074-062428c31ae8', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '9c66b5ae-ab54-68dc-e5aa-1867276e574b', 'f9843e84-8cf9-d1e9-1529-d414e372da1a', '{9a3bdaa3-e213-cfde-3548-1853aebee7cc,a3da8236-8623-0574-c872-ffa946954721}', '{A,B}', '{english,english}'),
  ('5486a1dd-7031-3410-1807-2e3327358d4c', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'abeb2ed5-6547-9497-5c1a-2ddbc85f72c2', '71bda610-7e8d-d4c3-7110-b33e9501a009', '{2d01bc73-3d3a-9ed6-986a-67f07dae2cb2,fd0a4bdb-b4a7-009a-d30d-1c1ac1ac6a9b,81c1347a-c37a-744b-7852-e357e838ebd5}', '{A,B,C}', '{english,english,english}'),
  ('5740ec3c-c8ff-5844-7488-a99b17c26272', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '89ae1452-3bb4-4bdb-4eef-2a8bf235cf27', 'aae17ebf-d108-c0e5-d256-e3286c8b7312', '{b5839e88-2b25-680b-fac9-fab44c5675dd,6c5deb9f-63bf-a2cf-dc51-951b5258d02f,40d14f29-ebee-672c-9ae5-d82ce8f3257c,b36328fd-7373-bab9-61f3-db41004ee251}', '{A,A,B,C}', '{english,english,english,english}'),
  ('653d1d17-4de7-6e60-f026-6f98d3921433', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'cf434a49-d4ae-b4ab-e5d9-8382f3ccc977', 'e7a5e092-4444-2fb1-9cb6-8378cf2f31c4', '{3df593f0-d302-d3e8-344a-9068cc64f70b,e22cea47-930a-cff5-0940-eb310c58aae3}', '{A,B}', '{english,english}'),
  ('912ce4ad-b273-4a04-e1cb-2a8a70b2673c', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'b912913f-4e69-557a-9dfb-650fafdb9b61', 'e67945ea-8ebb-9bbc-8c02-038ddff25f4d', '{c51dda2f-d7ea-a8cc-aed2-ac27d0453fe4,bf6c1466-e4de-3210-e5ac-8abc2a0423e2}', '{A,B}', '{english,english}'),
  ('abc75865-3f82-667b-e9be-d25329e81df9', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'feb1aba1-0546-0c39-bdc3-1823ecaf4f50', 'c5638973-fb48-ef0a-7408-78e66207f471', '{48d3807e-147f-e25e-5f97-c5e76c42781d,6847d2ae-995c-0095-0412-eea7b8aafd20,61b492ad-77ff-fc73-b199-cf91691d124a}', '{A,B,C}', '{english,english,english}'),
  ('cd1bb141-d01d-a4fb-90bc-662622eefc0d', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '9c9d0c7c-993f-35ed-f928-b914f78e2729', 'c78ee22c-b954-501c-ac9a-01bb5777d2b0', '{7857de62-02a6-1903-501f-3e8a019b9441,b1c1dde9-b0b5-dda4-911c-0534aead4b9c,abec1b8b-cdc3-05e2-65e5-74c1ccd0b038}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


