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
  ('1d718932-5a3c-57df-6359-60d9eaf821c5', 'fdf8a620-6969-72d5-d89a-ed384259d249', '5fbbaf68-022b-007c-8795-d9f203739412', 'b26225d9-472f-aed7-c7bf-ca9f08839f25', '{aa3efd79-aea9-6204-f8d4-35eea57f0896,6df85a58-9fa8-5cea-42c9-c34f1b0ff621,f201c0d9-446f-7a19-4713-62176a2542ba}', '{A,B,C}', '{english,english,english}'),
  ('21bd3b6f-1a0d-ed5f-c3bc-2b4682fc8ad5', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'a42ab990-9bfb-d930-3f98-a01493cc2158', '707a55c7-6b8e-1402-15ee-451caafbc349', '{e8c81405-de2f-d680-5fe9-f9e005177e2e,19631970-b384-68c1-65b4-408d7f90e91f}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('6570632d-405a-d148-a698-cd96ee469325', 'fdf8a620-6969-72d5-d89a-ed384259d249', '9f1fccdf-9de9-6cff-a34d-073f3b3c3808', 'de8ee536-db52-e53e-5c3a-56c31aab9a5c', '{bef63755-b869-f172-cdcb-3a1981c087de,b3478e36-54b4-beee-5728-90b335a0e8a4,b2e62f03-fd73-008d-e1d3-5cae88d3e7f9}', '{A,B,C}', '{english,english,english}'),
  ('c5b9d38a-a5a3-d16e-c1c8-76ebb509be49', 'fdf8a620-6969-72d5-d89a-ed384259d249', '7c926dbb-fc11-608c-38b2-51015da6376e', 'bbe0adc1-cfb0-dcc5-d2b5-c2f1ed3a8a33', '{8a4d9f9a-fde5-a4b7-6a05-37bf5053ff06,0c706c0b-4055-a939-ebb9-5db708fde407,cd1c0ca0-cacf-da30-0bac-4bd3a862b36f,35c03d67-36dd-1693-2b70-149f826867f7}', '{A,A,B,C}', '{english,english,english,english}'),
  ('c8d179de-799f-1f9b-9c7d-a42ad414875c', 'fdf8a620-6969-72d5-d89a-ed384259d249', '3ea8cd40-e3dc-1374-1c90-9579878d8aec', '7bde0dcc-c176-ddc8-015d-a3d01cb024f6', '{6763ba55-af24-ae70-8252-3ae7bc7826c5,c6049a3b-5c57-3993-9fae-307d57451b9c,899693f7-d67b-f699-65a5-955b22d562f1}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


