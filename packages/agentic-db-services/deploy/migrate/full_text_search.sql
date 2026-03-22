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
  ('cf7c6edc-5084-711f-2b44-71218c06bb09', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '5d9c849b-e962-041a-de77-54774d5d1e62', 'a745a388-dc33-dfae-dd7b-6ed3efd0878d', '{92e910ae-1d0b-b299-fca1-738f1f98f431,db32152c-4e4c-8a28-e715-916b0b3a8181}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('1688df1a-fa1b-f594-a969-1e69682a1f0e', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '9e3855cf-88ff-a7e5-cbd0-bc0d52b42306', '5b578272-2fca-f3fc-38bf-9fd70eafe754', '{9570a194-bb0a-e875-7ab0-b038e53c6b62,b5690a4f-997e-f44a-d93a-293d32a968dd,8c84e1c3-ccb9-c1a1-4ece-e27d028636e6,ef62df3a-475e-f37a-f3a2-e7c2273cf6f3}', '{A,A,B,C}', '{english,english,english,english}'),
  ('1e2322fe-6b5a-94f4-acfe-6ae1783ba028', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '47958046-1c81-59ce-ad3c-6837dc02d569', '6dffd21e-513b-b474-5774-9237da1a1409', '{c129c598-a7b7-aebc-739f-f980ee19b8a5,d3d95f29-3ff1-6923-af1b-fe47a551ea1b,78786ad8-834a-093d-9590-4b6761ca17b8}', '{A,B,C}', '{english,english,english}'),
  ('ed141ee9-e026-aa34-c409-4200567e132e', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'f7240390-5c16-da2d-8cef-f1fa65632024', '0f942c7f-445d-90b0-3ebd-38888d363996', '{19a4e330-2b62-092f-0e3c-28f7165be391,55bfae5c-98b5-3093-8b4d-df39f7ca5c70,2f924aa2-1cd4-04d3-9442-dab700329a21}', '{A,B,C}', '{english,english,english}'),
  ('108a6a07-817a-bf95-7b02-ff935388ef09', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'd70c8ff8-bab6-8c56-7892-4fe055dd7f3f', 'cf6d2041-0acb-aa05-efe0-11f3ba14ab03', '{b9e2fc2c-a213-4015-88bc-b322c9f6c8d5,c37eb9ee-3eb3-a4fb-d35d-eeae188eca7d,26f633a0-1744-4414-bcb5-281bffa5dbce}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


