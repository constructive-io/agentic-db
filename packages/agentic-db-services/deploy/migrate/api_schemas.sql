-- Deploy: migrate/api_schemas
-- made with <3 @ constructive.io

-- requires: migrate/api_modules


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

INSERT INTO services_public.api_schemas (
  id,
  database_id,
  schema_id,
  api_id
) VALUES
  ('03ea7209-65b5-8437-7e12-1026c0293143', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '42be1a76-ba10-b5cd-3ba9-2318d0d28b3c', '6069ac05-4eab-5185-4d87-402abf92aa54'),
  ('0a2ab1ce-3d4b-3aae-7c44-7d829cf4220d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'a716f61a-35d1-575d-553c-8fbffc909ce4', 'db6d695b-2875-6cb2-5045-718fb4acf97c'),
  ('0cf5b028-073a-e52c-c072-dc5dd401b47c', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'cd10eaa0-c4b6-aeb0-9d6b-eee90bc85730', 'e0e16f38-1c16-2921-39fa-f481233a9ba1'),
  ('0fdede44-e791-f962-3fd5-d55363f84568', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'b0fef0a3-d187-0423-4152-0887820a558a', 'db6d695b-2875-6cb2-5045-718fb4acf97c'),
  ('14cea3fa-661a-0b0e-ea59-ebd9317c2ad1', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'ab689d40-f54d-1977-4b91-6c20b76e8464', 'db6d695b-2875-6cb2-5045-718fb4acf97c'),
  ('22319411-f0fe-a722-3aec-abed73f85469', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'a716f61a-35d1-575d-553c-8fbffc909ce4', 'afbbb895-6dff-9686-aa52-4739a6d6b252'),
  ('26f05269-a679-5a22-bb9c-1cb33856b703', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'd1bcbc12-1cce-8994-1ea3-cdb659c8dc81', 'e0e16f38-1c16-2921-39fa-f481233a9ba1'),
  ('27ad87c5-4325-cf9f-c1aa-c7dd68b61b02', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'cd10eaa0-c4b6-aeb0-9d6b-eee90bc85730', '6069ac05-4eab-5185-4d87-402abf92aa54'),
  ('32f4f67d-0752-ea16-6604-bf0bf8b0389d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'b0fef0a3-d187-0423-4152-0887820a558a', 'e0e16f38-1c16-2921-39fa-f481233a9ba1'),
  ('35876d3e-a0fd-2f3c-c7a8-7733455e9916', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e0e16f38-1c16-2921-39fa-f481233a9ba1', 'db6d695b-2875-6cb2-5045-718fb4acf97c'),
  ('499eb97b-7aec-d4d9-5427-18833c2c1e64', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e0e16f38-1c16-2921-39fa-f481233a9ba1', 'e0e16f38-1c16-2921-39fa-f481233a9ba1'),
  ('4c6337c9-fe98-0a80-45d3-1c02e9951499', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'a716f61a-35d1-575d-553c-8fbffc909ce4', 'e0e16f38-1c16-2921-39fa-f481233a9ba1'),
  ('51de66d7-9a58-5258-1fd3-3a9a076ef77a', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8386d7da-fb67-d0e4-1f9e-66c2664e364d', 'afbbb895-6dff-9686-aa52-4739a6d6b252'),
  ('530256be-679e-dee5-bdc8-ef0c2df3a98f', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'db6d695b-2875-6cb2-5045-718fb4acf97c', 'db6d695b-2875-6cb2-5045-718fb4acf97c'),
  ('5b970355-8aca-a10e-cac6-0523ee7dbe0c', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8386d7da-fb67-d0e4-1f9e-66c2664e364d', 'e0e16f38-1c16-2921-39fa-f481233a9ba1'),
  ('6774746a-132e-8855-7a21-fb1ab6992df0', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8386d7da-fb67-d0e4-1f9e-66c2664e364d', 'db6d695b-2875-6cb2-5045-718fb4acf97c'),
  ('68924309-51a1-14e3-83c4-4cc153b2ed51', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8ecd91da-06ae-c2bb-62d1-de71d843012e', 'e0e16f38-1c16-2921-39fa-f481233a9ba1'),
  ('69bbdafa-8f5b-91a0-3857-1d9e638b80af', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'c4122275-13d5-60b5-6e1c-89657a87ec34', '6069ac05-4eab-5185-4d87-402abf92aa54'),
  ('71e0bb8e-e67f-9d2a-b8b6-66955102ee06', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'ab689d40-f54d-1977-4b91-6c20b76e8464', '6069ac05-4eab-5185-4d87-402abf92aa54'),
  ('794cecc7-01fb-cee0-a34e-0f583c5b46b0', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'ab689d40-f54d-1977-4b91-6c20b76e8464', 'e0e16f38-1c16-2921-39fa-f481233a9ba1'),
  ('7f762ef2-d2fb-09e2-babc-74261b3a0473', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '0bbabd9e-b4d7-8d68-1bf5-0b49d841b9ee', 'e0e16f38-1c16-2921-39fa-f481233a9ba1'),
  ('86642ebe-b2b1-1c03-7930-8fed480d62f5', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'b0fef0a3-d187-0423-4152-0887820a558a', 'afbbb895-6dff-9686-aa52-4739a6d6b252'),
  ('8cb3c4cf-7be6-cda9-19a0-8ea21898315f', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '42be1a76-ba10-b5cd-3ba9-2318d0d28b3c', 'db6d695b-2875-6cb2-5045-718fb4acf97c'),
  ('92006a31-8c33-88d5-606c-322f86b75841', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'c4122275-13d5-60b5-6e1c-89657a87ec34', 'db6d695b-2875-6cb2-5045-718fb4acf97c'),
  ('9be20eb4-281b-9eb0-cd5e-f2d87d21698d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '0bbabd9e-b4d7-8d68-1bf5-0b49d841b9ee', 'db6d695b-2875-6cb2-5045-718fb4acf97c'),
  ('a8074ed5-aa08-2b4e-827b-721c25dbc560', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'd1bcbc12-1cce-8994-1ea3-cdb659c8dc81', 'db6d695b-2875-6cb2-5045-718fb4acf97c'),
  ('b18cd9a4-1b53-2d9d-27b9-495f7d846648', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8ecd91da-06ae-c2bb-62d1-de71d843012e', 'afbbb895-6dff-9686-aa52-4739a6d6b252'),
  ('c61a345a-5277-fac3-e1c8-5c59d2aa3277', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'c4122275-13d5-60b5-6e1c-89657a87ec34', 'e0e16f38-1c16-2921-39fa-f481233a9ba1'),
  ('da7527f1-9ef9-fda9-ee73-4081fb08b309', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'cd10eaa0-c4b6-aeb0-9d6b-eee90bc85730', 'db6d695b-2875-6cb2-5045-718fb4acf97c'),
  ('de44b0b4-d961-32f5-d051-7789375f5e79', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '0bbabd9e-b4d7-8d68-1bf5-0b49d841b9ee', 'afbbb895-6dff-9686-aa52-4739a6d6b252'),
  ('e6ae2cb6-964f-013c-8d67-c6292b0bc9c1', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '3c90c870-5be4-80bc-46c2-ebdeaca29c29', '07bdd370-45d7-8bab-6c26-26fe3627db2b'),
  ('e6cda7ff-5224-2f3a-fcc2-c711b3a5ff7d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '42be1a76-ba10-b5cd-3ba9-2318d0d28b3c', 'e0e16f38-1c16-2921-39fa-f481233a9ba1'),
  ('ed394b3f-428d-df22-e36e-773e8b3047bf', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'd1bcbc12-1cce-8994-1ea3-cdb659c8dc81', 'afbbb895-6dff-9686-aa52-4739a6d6b252'),
  ('f5dbcf6f-2d69-cd75-4edc-f2d4979035ce', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8ecd91da-06ae-c2bb-62d1-de71d843012e', 'db6d695b-2875-6cb2-5045-718fb4acf97c');


SET session_replication_role TO DEFAULT;


