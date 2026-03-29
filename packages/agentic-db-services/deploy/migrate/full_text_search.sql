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
  ('308ab74f-c0ec-3ec0-b4ce-00d1e5ed8119', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '7220758c-31b1-3c71-4070-92e6bb00043e', '43e97223-b4a4-a02f-393d-f7b63afffb44', '{68b90908-a327-815d-4196-e3bbbf22e0f1,dd7b6c5a-6428-f2d1-6d19-235dc28de7a3,d05657a9-4999-5494-1b39-efa22d26b33f}', '{A,B,C}', '{english,english,english}'),
  ('35ec6b90-6e22-7332-091b-ae11aae653d5', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '1e384664-660d-bb51-216c-fa7ffe31f69b', 'd27322c9-f360-be9d-3376-b409df1825f9', '{89ca8d1b-f718-4b50-e5df-1acd0bc8874a,adeebe8e-31c3-fd46-0185-6c8dd0f9c07c,da77e6e3-03e6-4f37-7968-aca28dada745}', '{A,B,C}', '{english,english,english}'),
  ('5cfdab32-67e4-9354-c67b-f20e05f2f89c', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '0c128fc2-6e6e-c8e4-0f04-3169b2a06e00', '56d776a3-ce75-7e1c-9f22-9917700b3179', '{96b740f2-ffc3-bf2a-6528-a3ccf47ea15b,9f2197c3-8d86-adc0-4d83-d44dcd4c950d}', '{A,B}', '{english,english}'),
  ('766be7d0-986d-faa9-d78e-aad9868562c3', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'fe65ff22-1098-cd49-4003-60bfdabeb927', '21c668d4-6894-8d83-26c3-3af23040f045', '{bcb46bb8-f6aa-6192-d64a-0ad2cce36d86,dd8e4155-5385-ae48-deef-da8b335e52f9,29425692-2976-8e1f-21ab-cbeaed8bb248,50bfbfa4-f529-d149-5722-b3e49a168820}', '{A,A,B,C}', '{english,english,english,english}'),
  ('76da42de-4602-7364-acce-10c1c6818ed1', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '82d42225-4590-a170-1669-c96f5afb8073', '450161c4-e95b-ea27-b2da-02dbe207d0fb', '{0b4e338b-404d-53a2-f1d5-57c204c8c1e2,4bb096b7-cdb3-8f43-21c3-55e28ae0730b}', '{A,B}', '{english,english}'),
  ('9104af1b-cccd-cb69-cb12-1bcce7b72e79', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'fdf6e9a3-69c3-5f35-b051-e311e171040f', '3ea47119-76b1-67a7-e56a-b30b7adc6a31', '{49f50101-d630-1eb3-f422-6810063aff7b,5c6fb4ae-40d6-2b56-4abd-fd15049a47a8}', '{A,B}', '{english,english}'),
  ('d33fad5c-514d-b3e5-ebf2-d71f0b20d770', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '5b5d99e1-9167-1378-cf99-58449ebc35bc', '6242d4b5-2ba7-7f18-4546-ce0314a051f2', '{86cacd54-824d-09e6-ef83-f330d5b2da0f,0b1c8c40-4008-d28e-fcd5-945028d157d8}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('d9b6d01b-5a6f-5170-90df-7b83d64c58b2', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '5cbcee71-1249-3930-b2dd-2fdea076b65a', '9b01b75d-d8bd-aecc-4a0d-d8f110cd579c', '{25578bd2-808e-2a13-6605-e5aa13489244,451bc1fd-5564-2d11-ebdc-7edb7909a997,9fb98d40-71cc-7f42-b5ae-b64c8d309b9b}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


