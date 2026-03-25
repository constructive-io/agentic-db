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
  ('019d21f8-244d-7a6b-aaed-f1772c66452a', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2335-70cb-b636-53bf74d97668', '019d21f8-243e-74f9-8c8f-0380e9c55cc0', '{019d21f8-23c5-7692-8363-44a9d4330fc6,019d21f8-2407-756e-8d70-1b528d90b99c}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('477230da-cc46-feb5-1bfc-fd7cb1cc5e90', '019d21f8-208e-7d66-9eaa-e762489889c1', '34c7b2c5-797c-6baa-83fd-64875f026b98', 'cd04d5c0-6b65-0f6b-f9b2-8e58ba883285', '{c35de155-8086-80b1-df3d-ccecd18aa3e3,288b80d2-840b-3fb7-c57e-e4f9fb97dd33,45e1ff6b-61d5-da6f-cca9-3a236db49bcd}', '{A,B,C}', '{english,english,english}'),
  ('4a4c0fd8-a3bc-5a4e-22c5-f2de1a86472a', '019d21f8-208e-7d66-9eaa-e762489889c1', '33dd48c1-5d59-b5da-1324-e557bc2a7a3a', 'a4c803f2-909f-06da-8989-830ffad59dde', '{5073541d-0569-03af-a09f-b71d1956550d,d30f3cad-b321-6ef9-9625-13e3751eade3,bc3d32d3-d46a-eec5-85d7-46f21a8934e2,0ba9db36-ca90-453f-a54f-063538fc3df9}', '{A,A,B,C}', '{english,english,english,english}'),
  ('623fd6bd-a01e-4dae-c403-776da6c5a9c5', '019d21f8-208e-7d66-9eaa-e762489889c1', 'f71d03f8-793b-131a-3b86-317f1d21eca5', 'd3168c7a-c445-4ec3-b82a-fc08d035b46c', '{1a6aadd3-d7b4-c88a-ba4d-e32d085f20e6,37b5895b-8cd4-51a8-3b58-4d3fbc50f687}', '{A,B}', '{english,english}'),
  ('b6c511c4-f389-d77f-40f6-3042a378c080', '019d21f8-208e-7d66-9eaa-e762489889c1', '407a7ab0-01c4-0a6a-54d2-5a0ac47f821a', '64592df0-199d-8815-8461-51a1170a6578', '{dcb9745b-6ad3-6420-47ac-cd2ec47d8b47,29e245ef-db28-e634-a499-785e759ff687,214cedaf-5c94-f34b-949d-d9ca46cbeacf}', '{A,B,C}', '{english,english,english}'),
  ('c1f06b10-ab1b-c4d2-8c28-ae439924f15b', '019d21f8-208e-7d66-9eaa-e762489889c1', '5a5f6386-17e8-3f81-2382-bcb626844c66', 'f43f5d09-99ec-b685-2c27-182a38329d2c', '{ade27030-af4e-8af6-de80-dbd94591d1b3,71b7ca89-17f4-a2ca-8ad3-4ad3c7be0e8b,2050973f-52a1-dbf2-0bdc-719f060da9c1}', '{A,B,C}', '{english,english,english}');


SET session_replication_role TO DEFAULT;


