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
  ('9bc1f694-3b59-41d2-d2c2-db1a38c9c905', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc12972-1a70-4812-beb6-f24029a19ea6', '9bc1d258-a66e-4f3a-0c29-c21dd02abf65', '{9bc122c1-1ffb-4ffc-4146-1292e5fa78e1,9bc15ed7-ddcb-4fec-4493-d2d9f14f39a4}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('9bc127e6-1417-4fc9-4a77-78cd6d676356', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e1cb-4a5e-44fe-7757-65cad1c6e2bb', '9bc13bbc-5f20-4ef8-daa7-7436cf3c5036', '{9bc1bb88-88ff-4320-a36a-2e88c64403ac,9bc11062-42f6-40c5-caac-4a0006c6dcdb,9bc1e98d-75ea-4ed2-db9e-08ad8845673f,9bc1b66f-d914-4b91-6cee-11b76d534f64}', '{A,A,B,C}', '{english,english,english,english}'),
  ('9bc18256-805b-4680-acc3-749046a28412', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1d964-4bfc-4e76-8c9d-f9db9c93f62c', '9bc1c361-66da-4f3d-bebe-be877ad7c31e', '{9bc1053e-0870-400f-186b-da4da0dba9ef,9bc1ae02-0451-4aa4-dc9a-ecd51db78f25,9bc1f414-de07-4bad-a838-9566daf3dac4}', '{A,B,C}', '{english,english,english}'),
  ('9bc19593-c699-4404-e137-4dae0fd525c7', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc172ff-fe5e-48ea-1002-43d26307003f', '9bc19696-5a1b-4b85-d46b-719c7a932c35', '{9bc1e079-97ee-4920-c964-ce1e0efeca29,9bc12d23-4b52-4b1d-3022-755f126f1409,9bc118ac-217c-48fe-03fa-39c1a532ec3f}', '{A,B,C}', '{english,english,english}'),
  ('9bc15064-b55f-420f-a814-433cbd8ad615', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc13f12-340b-43fd-829b-4d7528613f30', '9bc1bcd2-2ae8-4505-1fc2-fcad1c760aa7', '{9bc131ec-766b-4007-7588-8fc051f11192,9bc159ea-2e44-498e-578f-618b6cda49c9,9bc1b1b3-c3ae-44bc-eb0d-f4a47532ae50}', '{A,B,C}', '{english,english,english}'),
  ('9bc158c3-df41-4354-7278-1b9ea87bfe76', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1815d-0228-4c6e-0af2-7dd79f97c8d1', '9bc17429-b266-4016-5610-eebbb0531b01', '{9bc1ccf7-c219-4d9b-173f-010dd187298f,9bc1f2b2-10bc-49ba-9622-a7cd238265e3}', '{A,B}', '{english,english}'),
  ('9bc15658-d4eb-4a13-be86-be2dc28bf5d8', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc17231-ed10-4815-56aa-27a86322d91c', '9bc1a92f-364a-4c96-1a0f-c96527a9571e', '{9bc12207-92ab-4eaf-a8bf-314e017c4f51,9bc13217-d7ea-4695-3e30-68d345265d6d}', '{A,B}', '{english,english}');


SET session_replication_role TO DEFAULT;


