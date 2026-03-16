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
  ('aa3fff35-9f29-4f3b-9a28-5412dd5d2573', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc174e0-ab72-4925-5ee9-91915c80ae07', 'cb1b477d-1947-4d2e-a6f9-c6bab48baec9'),
  ('2c5c58de-11ad-4ff6-8047-bca7c1296c03', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc174e0-ab72-4925-5ee9-91915c80ae07', '384cd3a3-3268-4289-bc35-3c3535238883'),
  ('be28fdc9-383b-4974-be14-7802b9c9b379', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc177db-8631-42ce-aeb8-748d124a58c3', '384cd3a3-3268-4289-bc35-3c3535238883'),
  ('366c2049-bd3c-4094-b1c7-c9d1ddb92a80', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1db41-7d31-47fd-63e9-dfe5d0e1bd61', '609e6dda-a463-4150-88e9-edd33a661307'),
  ('267af051-a701-4577-bdc2-aafa092bd68e', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1130e-d66c-4f53-1b19-a63641ce65c4', 'cb1b477d-1947-4d2e-a6f9-c6bab48baec9'),
  ('c2d9caa5-7521-4159-8d4d-f13af0ec4ba6', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1130e-d66c-4f53-1b19-a63641ce65c4', '384cd3a3-3268-4289-bc35-3c3535238883'),
  ('dd253515-7f6f-4c0a-8c33-f0eead72da59', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1130e-d66c-4f53-1b19-a63641ce65c4', '9e1460cd-8403-41bd-8335-8f4f0e170d8e'),
  ('171252a8-994d-4763-b34c-4e7e1b0f79b6', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1817b-ebb4-483c-4f07-fc9ebbeacad9', 'cb1b477d-1947-4d2e-a6f9-c6bab48baec9'),
  ('8f7b77cb-f6cc-4bec-a4ef-9e3b17f8bb94', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1817b-ebb4-483c-4f07-fc9ebbeacad9', '384cd3a3-3268-4289-bc35-3c3535238883'),
  ('83661a5a-8b9a-4a1a-979c-bc9258119453', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1817b-ebb4-483c-4f07-fc9ebbeacad9', '4b3adbc4-62b2-49c5-b315-0f186dad3282'),
  ('7b07be11-90a8-4ead-84b7-ac403c98757d', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1aad7-6afb-49b2-3154-fe524d813e59', 'cb1b477d-1947-4d2e-a6f9-c6bab48baec9'),
  ('cf6fc76b-3c00-4f7d-b0b1-2cf087031b36', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1aad7-6afb-49b2-3154-fe524d813e59', '384cd3a3-3268-4289-bc35-3c3535238883'),
  ('cc6371f5-5df1-405d-b5d9-f1881f18ed0d', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1aad7-6afb-49b2-3154-fe524d813e59', '4b3adbc4-62b2-49c5-b315-0f186dad3282'),
  ('e36427d9-3b75-460c-9e9c-fd76e9b32e73', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19723-899f-453d-575a-d60edcc86e01', 'cb1b477d-1947-4d2e-a6f9-c6bab48baec9'),
  ('29dc91df-e9a9-4836-a129-4ff7b73160ab', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19723-899f-453d-575a-d60edcc86e01', '384cd3a3-3268-4289-bc35-3c3535238883'),
  ('6ad01163-f513-4ad9-a7d9-f1fac79e9a39', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19723-899f-453d-575a-d60edcc86e01', '4b3adbc4-62b2-49c5-b315-0f186dad3282'),
  ('2fd4d7fa-5759-4cc7-9e12-6bc3c9dbc3ce', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1644f-2005-42f2-7502-6b79b5418380', 'cb1b477d-1947-4d2e-a6f9-c6bab48baec9'),
  ('42684c43-239b-42f2-8219-f7c70d5e8b8e', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1644f-2005-42f2-7502-6b79b5418380', '384cd3a3-3268-4289-bc35-3c3535238883'),
  ('8da352fc-b4e1-4bb4-a08f-21e011e4ca7a', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1644f-2005-42f2-7502-6b79b5418380', '4b3adbc4-62b2-49c5-b315-0f186dad3282'),
  ('8304b0b4-4bfb-4c46-9b1c-00efd8e1135f', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc14b67-c07a-46be-8616-6c64da0d5b76', 'cb1b477d-1947-4d2e-a6f9-c6bab48baec9'),
  ('0de22f95-c238-49e0-925d-81e455f8b010', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc14b67-c07a-46be-8616-6c64da0d5b76', '384cd3a3-3268-4289-bc35-3c3535238883'),
  ('9998db77-0bdc-4dc2-9bcc-b35d38e8de6e', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc14b67-c07a-46be-8616-6c64da0d5b76', '4b3adbc4-62b2-49c5-b315-0f186dad3282'),
  ('f78b1389-a115-4243-989c-bf71d5bf9534', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc12230-ad6e-4e94-6ec2-8add6b1da502', 'cb1b477d-1947-4d2e-a6f9-c6bab48baec9'),
  ('ad7db162-757b-4d40-83cb-db1e18cc0cdc', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc12230-ad6e-4e94-6ec2-8add6b1da502', '384cd3a3-3268-4289-bc35-3c3535238883'),
  ('71ed3363-b996-4412-8ce2-bb1a9b69e07b', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc12230-ad6e-4e94-6ec2-8add6b1da502', '9e1460cd-8403-41bd-8335-8f4f0e170d8e'),
  ('4f059d60-195b-471d-89d1-d034ac012eb8', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc157f1-b8a9-4049-ea78-232642a0ffa0', 'cb1b477d-1947-4d2e-a6f9-c6bab48baec9'),
  ('52d5170f-c6d3-49c6-9bab-1912bef8a684', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc157f1-b8a9-4049-ea78-232642a0ffa0', '384cd3a3-3268-4289-bc35-3c3535238883'),
  ('9b35b09b-d3dd-4633-af59-b21a09772e4d', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc157f1-b8a9-4049-ea78-232642a0ffa0', '9e1460cd-8403-41bd-8335-8f4f0e170d8e'),
  ('fdbafb2d-7a03-4d51-aa56-a249236ee48a', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1c6cb-01d0-40c7-179a-20ce7352530d', 'cb1b477d-1947-4d2e-a6f9-c6bab48baec9'),
  ('9d8d8c6d-375a-4cf8-b31f-704f9f0b4353', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1c6cb-01d0-40c7-179a-20ce7352530d', '384cd3a3-3268-4289-bc35-3c3535238883'),
  ('a2f5dff9-6d47-4b50-bf7f-4c5d93f346c2', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1c6cb-01d0-40c7-179a-20ce7352530d', '4b3adbc4-62b2-49c5-b315-0f186dad3282'),
  ('1392fee8-eea0-4399-b8a3-12d9b4469dcf', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc11f94-2f12-4d1a-7ca1-512946bc8f67', 'cb1b477d-1947-4d2e-a6f9-c6bab48baec9'),
  ('cdf3c397-0ed6-42ea-89fe-855618e289ad', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc11f94-2f12-4d1a-7ca1-512946bc8f67', '384cd3a3-3268-4289-bc35-3c3535238883'),
  ('9a4367d0-81ee-4576-bff4-cab4e293de0a', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc11f94-2f12-4d1a-7ca1-512946bc8f67', '9e1460cd-8403-41bd-8335-8f4f0e170d8e');


SET session_replication_role TO DEFAULT;


