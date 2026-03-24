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
  ('019d20cd-7b52-7d67-b611-e7536eb44dfa', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7a20-7176-823e-cca436cf06f3', '019d20cd-7b42-7e5d-a47a-2cb710ae17b5', '{019d20cd-7ac5-7f82-a270-8aaa81e80e2e,019d20cd-7b06-7e97-a9b9-f0374fcf4d97}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('78236fac-c31f-118c-c094-6ad93c44acc9', '019d20cd-7722-776e-8fb8-f96db2895639', '90c0e7a0-4e76-8abe-0b54-c7b3fdca76ca', '2bf93ce3-cd71-4bac-b039-a7305b9f2964', '{e0196f99-fdde-afe0-dec8-589d505db6ce,ae259418-af24-d65c-50a8-10a2b025353d,a3335320-1037-e871-9015-90efcf383457,07113bb5-5dc2-e63e-32e8-69565f1f0f6d}', '{A,A,B,C}', '{english,english,english,english}'),
  ('7d54e015-893b-c33e-84c4-ea3b4a87a40f', '019d20cd-7722-776e-8fb8-f96db2895639', '66774359-598b-c113-9008-4be1615af7fe', 'bcc6b114-ef29-f554-dc81-f2bf83a9321c', '{51782c81-1b19-131b-41c2-3cf16c8c9b19,60e218a0-fa69-a8ca-1b58-f859fd8abad7,43e56ab5-7677-a96e-dba4-5e377cf3f2d9}', '{A,B,C}', '{english,english,english}'),
  ('a35138e6-2462-e9c9-3f0e-83bcd3f269b7', '019d20cd-7722-776e-8fb8-f96db2895639', 'bd547c75-56b6-3c72-c351-4b04238d8e93', '9b95a49a-3b58-c1aa-89d0-44d46055abc5', '{aca5c469-6602-9421-8977-71b19b4a32df,d6091f8c-4f4d-7713-35f6-1afc6da18d90,18fa8ce4-54c7-0434-8d28-d05037c15d18}', '{A,B,C}', '{english,english,english}'),
  ('bda1e18f-5d2c-cb19-542e-1b74c628cc81', '019d20cd-7722-776e-8fb8-f96db2895639', 'f471706c-a4f9-b1e5-aee9-6853f467515c', '3bb4894c-edaa-b0e0-bdd8-446fa9d857c1', '{b1d1520b-1652-7102-119a-f6ae69529f2c,d97e6c47-36cc-ce13-cc6b-489297d18343}', '{A,B}', '{english,english}'),
  ('e78d05b9-e1bd-1665-30c6-c052ce4abb09', '019d20cd-7722-776e-8fb8-f96db2895639', 'd483255d-e124-91c5-647c-7290db902a93', '148e873b-7f4f-b808-170b-303f62ddfd6c', '{b4e11a05-7aaa-2f75-9142-5370aff1f8c4,35f7d72a-896e-29d2-400b-b388eba49f59,69c4c55e-b682-eef9-83f5-046c34835a5a}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


