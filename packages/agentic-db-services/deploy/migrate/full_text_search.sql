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
  ('019d130c-f2b8-7e7c-990d-79deaf2bc106', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f14b-7ef8-94e3-e005503a699d', '019d130c-f2a1-7840-a4eb-0ee0a4483379', '{019d130c-f1e9-76a1-a507-ebdb7813c3f1,019d130c-f253-761e-aee4-06ccadae3ecf}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('08cc9a30-b149-8727-c1b3-816e2e5cf729', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'b7e32fb7-291a-f6d3-722b-fb3201f03f42', '75726b54-06be-68c9-bfee-c169b9fa612b', '{4215dc09-141c-978a-1c86-dcdbd23cb7a3,fc3b7562-7555-f75e-9c07-eea906a8ef03,a07b24d7-1b7c-197e-6289-9bafcd696a8d,b0a87a4d-09bf-3a7e-274e-df20f78550ef}', '{A,A,B,C}', '{english,english,english,english}'),
  ('77d78d83-469c-588d-7fdf-0708f06eb500', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'e01cd942-8ebf-85d3-1229-ff4e7cc6cadb', '31fc2f76-d72e-b6ca-73eb-ce6b1e0b0ed1', '{20648b60-d810-74c7-657c-720bb548368a,b71a01af-e8ae-cccc-71a0-32b36faaf72d,c66b7fc8-05ba-0bb1-2ad7-1f532e9cc752}', '{A,B,C}', '{english,english,english}'),
  ('8a57823b-8b5a-ac7b-bd7f-e79088d6e88d', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'b9209a4b-f1aa-8068-cec4-5c5226ed224e', '85177cea-6ff8-a725-2355-becc1bf0e3a0', '{ddc468f5-5156-f12d-3e16-99db9ad60548,651f2876-e078-56d4-09a1-0a062eb2bce3,6a9329fe-4cbb-0be4-d697-f5156c9aa914}', '{A,B,C}', '{english,english,english}'),
  ('13abd54b-470e-3e7d-e4f4-e4375260cb60', '019d130c-edc8-7abe-b39e-3935c59e44fe', '0868b3a3-f70e-5497-a7f1-81a7fb257e8a', 'e6e9eeee-da18-38af-98b9-b6db5e22185e', '{448238be-b952-b515-3d67-95f10f5fd982,53897563-feb5-823f-d86a-125ced1ec817,291c840c-a299-cee6-8dde-9ad042fac38c}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


