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
  ('019d3dab-01b9-7f34-9ffc-c5aacc66b8ee', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-00a9-731d-b66d-d5d69c0909a6', '019d3dab-01a9-7e46-b908-4530f2566103', '{019d3dab-0127-7e6d-bed5-c3c001b35d35,019d3dab-0162-72ec-8a8f-700d2f884efd}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('019d3dac-25f7-75d6-a12a-8ed98cfe2b73', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dac-2235-7527-a87a-e90f243f2a5a', '019d3dac-25ca-7d1b-aa86-170fbd43eac9', '{019d3dac-2305-73ab-b2a2-6422c429c784,019d3dac-2330-70e7-9ab0-87f5d938c999,019d3dac-236b-7878-938d-034e0901de90,019d3dac-237f-70eb-ba7f-7ab3e8d74511}', '{A,A,B,C}', '{english,english,english,english}'),
  ('019d3dac-2dfe-7944-99b5-d7dd31ea6f95', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dac-2b31-78a5-b496-b1220a5a028b', '019d3dac-2dd7-749e-8add-90dc66ef197c', '{019d3dac-2bff-7bee-8934-1e31134b9e68,019d3dac-2c51-7401-9517-0d8f73bdd249,019d3dac-2c3d-7cee-b260-301f02a92646}', '{A,B,C}', '{english,english,english}'),
  ('019d3dac-3c7f-720b-8dc1-6031a700d71c', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dac-395d-76ee-9abc-96753672db14', '019d3dac-3c54-7a79-b422-754e088aae0e', '{019d3dac-3a2a-79b9-918a-1811909196ea,019d3dac-3abb-7db4-94bb-fb41c6a40943,019d3dac-3a6a-702c-899a-c04186ac33fb}', '{A,B,C}', '{english,english,english}'),
  ('019d3dac-44b9-78db-999c-4236fa64b643', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dac-4146-7a38-a24a-ba17926ba73f', '019d3dac-448f-7fea-81ec-bc13615dc8b9', '{019d3dac-4217-7923-bec0-93093c4368ca,019d3dac-42fa-7735-b409-815200c78584,019d3dac-4258-7b58-94cf-538ccf743eb6}', '{A,B,C}', '{english,english,english}'),
  ('019d3dad-8f45-7984-8557-52b283fdaa6d', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dad-8b8c-7641-a545-33ca1c7eb87d', '019d3dad-8f16-7074-9c83-16aaedb1d8fa', '{019d3dad-8d12-7aa1-aeef-2e1063677d20,019d3dad-8d46-7e8e-9e56-a80f9230a5a1}', '{A,B}', '{english,english}'),
  ('019d3dad-982a-75a4-99b1-9a3af2fd7673', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dad-947e-7550-bba3-076f6306f13c', '019d3dad-97fd-735e-b085-24ef69739b39', '{019d3dad-95e5-7474-a3fc-34b473b198ce,019d3dad-95fb-7cce-917f-64420a494ef3}', '{A,B}', '{english,english}'),
  ('019d3dad-a645-7c06-9f22-b9306775d5c9', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dad-a2d3-7304-a33c-dec014710aac', '019d3dad-a616-79f5-a925-8a7e690c3a44', '{019d3dad-a3e5-7497-848a-b896c5a4acc2,019d3dad-a415-70ed-ad9e-ace9b885cb13}', '{A,B}', '{english,english}');


SET session_replication_role TO DEFAULT;


