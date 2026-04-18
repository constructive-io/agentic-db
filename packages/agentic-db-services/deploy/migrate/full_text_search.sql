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
  ('1190946c-daf1-f144-7f54-9eb831ff374c', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '2066d304-6c7b-6693-2fe7-741d0570199a', '9a9af26f-c263-4578-bd31-9b10fff41132', '{47352d2c-3e3c-06ee-3cdf-8bae22f385ae,6944dffb-a105-0807-400e-ac9670d0acd0,dfe3cd66-8f2a-f03b-2475-44c19e06650f,28b9183c-61ca-fcc9-28fc-2b44629a8fc7}', '{A,A,B,C}', '{english,english,english,english}'),
  ('1cd87e61-c112-4ce1-5dca-c4ab4e5de015', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'f1d3985b-3cb2-68e2-9c9a-d9afff08791b', '38a0ad0c-916e-f453-2139-ac5a81d4fe00', '{65d012e5-7154-c7e5-4fbb-534154bbaea0,42d1e5d0-be72-62dc-f28d-b3958d387adb}', '{A,B}', '{english,english}'),
  ('671c1e59-bd7e-705c-4359-405844f5e97e', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'e1e8883f-00b0-fd40-0fbf-8f9be21109e4', 'ec79b479-1cf2-3a59-6663-1c97772a9ff0', '{0424bd01-054c-29b7-0a97-e503afbf984f,5f23ee9c-f674-72bb-75fb-ee04caa78282,c8679e3d-40f8-062b-f78b-6d7bc89fc5d6}', '{A,B,C}', '{english,english,english}'),
  ('75130376-10cc-b100-2b7f-decae6b66b58', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '96149963-03bb-ffb9-adf6-86cdcb1a32cf', '64be25db-ad00-efb9-8178-3ed961777aa9', '{0c1f9f82-0585-a5da-8a5c-772a6f950a3f,53c03a2d-a1de-8b65-4c3e-b348283ef3a4,dd4cf36d-d61c-e7f0-69a2-49fe18d00992}', '{A,B,C}', '{english,english,english}'),
  ('88562cee-5af6-9cce-56f6-1141176eeb92', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'c9f6438b-f1a0-2047-795a-848d26bb1b28', '9b0af61f-22b1-09f3-b1fc-04e262af63f2', '{7d5df64c-8699-088c-5a6d-b019b4983134,e659888c-5ca7-72a1-2916-7b92c3fd071c}', '{A,B}', '{english,english}'),
  ('99dce629-74e7-d39e-9b59-873989af213b', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '87e05f27-0277-d3a3-7101-16730da22569', '9ecab882-92c3-6136-5246-1ed35d41c264', '{4438e236-c684-a526-ca75-23e6a63b0e86,4b9a45b0-7f7d-3e75-39b0-94389e0bbc6b}', '{A,B}', '{english,english}'),
  ('b7880ca2-7699-a9a3-6c27-3a49e9b09f1c', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '11bebace-6b69-1b5a-9963-6eed2f55e569', 'ce313882-007b-a4d4-902a-b411f3bd82f2', '{796613eb-342a-f754-869b-cc3bbf96489a,803a9df9-5483-69f0-57a7-5a892e68dc8d,ec726182-ed9f-9c29-d77f-0f51aad75623}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


