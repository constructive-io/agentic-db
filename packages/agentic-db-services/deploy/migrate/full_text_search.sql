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
  ('019d2727-724b-75da-ab5e-385d12830ea5', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7153-7bae-b8ec-6f398ecf0b75', '019d2727-723c-7472-a272-d67f5a261472', '{019d2727-71cb-75f9-914c-151a3eb6373d,019d2727-7205-7770-aa05-54c0bf4b7166}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('019d2728-8bf6-7b70-a0f2-6df022a0bccf', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-8167-7de9-b248-10d192ce17e0', '019d2728-8b7c-7866-ad0f-570811e84bd4', '{019d2728-83bd-7a39-a0f6-34403338a417,019d2728-842d-72a6-8593-18b953e58aa9,019d2728-84cc-743c-af3a-0cba344a7df8,019d2728-8503-70a5-9853-c39c98f814de}', '{A,A,B,C}', '{english,english,english,english}'),
  ('019d2728-a495-7fe1-957b-4699b656919e', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-9af7-700a-82a0-96f378da50af', '019d2728-a411-73c8-8fba-2f35536447b3', '{019d2728-9dab-7305-85c6-ad686105f17a,019d2728-9eb3-7cfb-8d13-b8b45d8daa91,019d2728-9e70-746a-a2e3-a62f842da34f}', '{A,B,C}', '{english,english,english}'),
  ('019d2728-e7de-7f54-81b4-d9870cc4def4', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-d76f-7afe-8155-7c930c89b274', '019d2728-e70c-72a2-9e3c-b40e006a0878', '{019d2728-db69-7cf8-8cb2-de96848c9b69,019d2728-de6b-7bd0-907f-0d578c8b5015,019d2728-dcb6-7d71-9510-2e038569ffde}', '{A,B,C}', '{english,english,english}'),
  ('019d2729-15d1-7b51-9e52-13d73b54bc35', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2729-015c-718b-ba03-ae7a9ec9a822', '019d2729-14db-7368-9323-faaff3b54b19', '{019d2729-05d8-7196-a74d-4aecbc772793,019d2729-0b35-7b3e-a45c-ce3a89ed6909,019d2729-0754-7e5c-8789-f588cdffffc6}', '{A,B,C}', '{english,english,english}'),
  ('019d272f-0cac-7d14-97bd-92dc3e3ea0c3', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d272f-0664-751d-a507-9e1502e31605', '019d272f-0c4a-71e0-ae3f-13d76ab2bec5', '{019d272f-0861-766e-b657-61ba4ecabc64,019d272f-08bd-76a7-8b04-9470533b2a51}', '{A,B}', '{english,english}'),
  ('019d272f-2055-7a81-b638-637aec8b5875', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d272f-17d7-7334-a6a4-3433809ab4f9', '019d272f-1fde-7ad1-a711-2d9227a180c9', '{019d272f-1b07-74d8-b3e2-fa8ef45a4ed7,019d272f-1b3f-78be-b1fd-9277f0699e40}', '{A,B}', '{english,english}'),
  ('019d272f-4ec9-7fff-aebc-4c4327de11b2', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d272f-40f0-731d-96d5-ccc47d6c4359', '019d272f-4e0e-78ca-ad90-8990a91daacf', '{019d272f-4498-79e6-91f9-3103a5d2358a,019d272f-4566-77da-8db3-8bce38e781e9}', '{A,B}', '{english,english}');


SET session_replication_role TO DEFAULT;


