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
  ('04d77b8a-f811-67eb-be05-32c274e1500e', '2ef50f93-192b-b168-969d-304c8e675e1d', '2a7b615d-ddb5-8955-0458-298a538f5b11', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51'),
  ('0994114f-dc88-20ce-5cd8-d7d33b33b9c0', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ec5002a7-7d8e-f720-3a79-ac6edd4aee30', '618c89d8-fefa-b93b-141d-ae3e60e2b052'),
  ('0ea55d1e-b667-6a51-a800-c5cae9a58e67', '2ef50f93-192b-b168-969d-304c8e675e1d', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51'),
  ('0f9a7c4e-b5f8-9d4b-6194-d5078192538d', '2ef50f93-192b-b168-969d-304c8e675e1d', '2a7b615d-ddb5-8955-0458-298a538f5b11', '618c89d8-fefa-b93b-141d-ae3e60e2b052'),
  ('3032fbad-4f05-d154-8b59-b65cb8256fa5', '2ef50f93-192b-b168-969d-304c8e675e1d', '97c6ad23-c014-16d0-8f3d-8d0be14065fe', '1c501ba9-5e71-96d1-8a8f-8332178351d2'),
  ('4cd538a5-d6c1-cc24-03ff-5447caf61099', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ccbc0a07-ae90-c183-db56-fd41f35affbe', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51'),
  ('53be671e-d018-cca9-495e-6f3cfba23107', '2ef50f93-192b-b168-969d-304c8e675e1d', '7367e953-0d70-83a4-a154-cab03c10944e', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51'),
  ('5445d5c0-e404-2b65-0f2f-a0980d6ca561', '2ef50f93-192b-b168-969d-304c8e675e1d', '97c6ad23-c014-16d0-8f3d-8d0be14065fe', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51'),
  ('5bb468d7-95b0-324d-7080-b153711dc186', '2ef50f93-192b-b168-969d-304c8e675e1d', '73a2c77f-aeee-fb24-2630-e6c96ba888fe', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51'),
  ('5d915bfd-789c-6153-2af1-4f354dfab709', '2ef50f93-192b-b168-969d-304c8e675e1d', '7367e953-0d70-83a4-a154-cab03c10944e', 'ccbc0a07-ae90-c183-db56-fd41f35affbe'),
  ('5ea1eadd-7bad-4f7f-ac0e-1d4fb3e1a718', '2ef50f93-192b-b168-969d-304c8e675e1d', '22a37e39-a81a-1afb-f4dd-d895806b24a5', 'ccbc0a07-ae90-c183-db56-fd41f35affbe'),
  ('647289b5-087f-31e3-5f96-43ffd26867c9', '2ef50f93-192b-b168-969d-304c8e675e1d', '9ccd1a15-747d-b3dc-6ed2-41691cff035e', 'ccbc0a07-ae90-c183-db56-fd41f35affbe'),
  ('71361200-6135-7700-93c8-9c48b1de848b', '2ef50f93-192b-b168-969d-304c8e675e1d', '4b4d3a75-1494-5d8e-33ac-b6aeea6cddb7', '1c501ba9-5e71-96d1-8a8f-8332178351d2'),
  ('7868aa0d-6fc0-360b-0e04-1995930fa21b', '2ef50f93-192b-b168-969d-304c8e675e1d', '9ccd1a15-747d-b3dc-6ed2-41691cff035e', '1c501ba9-5e71-96d1-8a8f-8332178351d2'),
  ('7d9e016b-5301-e6ff-317b-70ef58ad6e2e', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ec5002a7-7d8e-f720-3a79-ac6edd4aee30', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51'),
  ('7fcb65c6-b39e-01d1-e74c-38153366c9d1', '2ef50f93-192b-b168-969d-304c8e675e1d', '500b149d-0190-022d-d22a-c7d1190ada62', '618c89d8-fefa-b93b-141d-ae3e60e2b052'),
  ('90fe61a3-9905-f123-38a7-01637c73c2c0', '2ef50f93-192b-b168-969d-304c8e675e1d', '4b4d3a75-1494-5d8e-33ac-b6aeea6cddb7', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51'),
  ('9122b312-e711-ec9c-bcca-be24b79d8dbf', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ccbc0a07-ae90-c183-db56-fd41f35affbe', 'ccbc0a07-ae90-c183-db56-fd41f35affbe'),
  ('913fff2b-2f36-7093-f35b-9e790a49a696', '2ef50f93-192b-b168-969d-304c8e675e1d', '8f861828-6a40-84ed-57b2-b046272d8ea8', 'ccbc0a07-ae90-c183-db56-fd41f35affbe'),
  ('a312e35a-28cd-1bed-c2ae-0b94ed8ef408', '2ef50f93-192b-b168-969d-304c8e675e1d', '8f861828-6a40-84ed-57b2-b046272d8ea8', '618c89d8-fefa-b93b-141d-ae3e60e2b052'),
  ('b73c3cd2-37fa-7957-4899-1ab3ac404f9f', '2ef50f93-192b-b168-969d-304c8e675e1d', '500b149d-0190-022d-d22a-c7d1190ada62', 'ccbc0a07-ae90-c183-db56-fd41f35affbe'),
  ('bb7ad419-fa1d-b9ca-2b14-31c77aab4fd9', '2ef50f93-192b-b168-969d-304c8e675e1d', '4b4d3a75-1494-5d8e-33ac-b6aeea6cddb7', 'ccbc0a07-ae90-c183-db56-fd41f35affbe'),
  ('bb967aa4-6128-2c73-4504-6a1895ccfc97', '2ef50f93-192b-b168-969d-304c8e675e1d', '73a2c77f-aeee-fb24-2630-e6c96ba888fe', '618c89d8-fefa-b93b-141d-ae3e60e2b052'),
  ('bf307b96-49d4-cec3-3473-6ecdcfc2c8c1', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ec5002a7-7d8e-f720-3a79-ac6edd4aee30', 'ccbc0a07-ae90-c183-db56-fd41f35affbe'),
  ('cce9ef49-c57c-ee92-b17e-43f709d330d9', '2ef50f93-192b-b168-969d-304c8e675e1d', '22a37e39-a81a-1afb-f4dd-d895806b24a5', '1c501ba9-5e71-96d1-8a8f-8332178351d2'),
  ('d0508229-8a34-4795-f6ca-8dc69de58a2b', '2ef50f93-192b-b168-969d-304c8e675e1d', '7367e953-0d70-83a4-a154-cab03c10944e', '618c89d8-fefa-b93b-141d-ae3e60e2b052'),
  ('d2b6f36f-fa60-56a0-92d7-1be279ef030a', '2ef50f93-192b-b168-969d-304c8e675e1d', '73a2c77f-aeee-fb24-2630-e6c96ba888fe', 'ccbc0a07-ae90-c183-db56-fd41f35affbe'),
  ('d9b9f8dd-3193-c18a-7e57-9d1035e5bd60', '2ef50f93-192b-b168-969d-304c8e675e1d', '500b149d-0190-022d-d22a-c7d1190ada62', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51'),
  ('ddf1c9b1-60b8-bd6e-0b75-d3e124ce4a2f', '2ef50f93-192b-b168-969d-304c8e675e1d', '97c6ad23-c014-16d0-8f3d-8d0be14065fe', 'ccbc0a07-ae90-c183-db56-fd41f35affbe'),
  ('e26ce717-6ecd-f590-b884-91dff785ea50', '2ef50f93-192b-b168-969d-304c8e675e1d', '9ccd1a15-747d-b3dc-6ed2-41691cff035e', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51'),
  ('e4b98b3e-858d-323e-c3fb-906cd6063de2', '2ef50f93-192b-b168-969d-304c8e675e1d', '22a37e39-a81a-1afb-f4dd-d895806b24a5', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51'),
  ('e592d6a3-21ab-aa5d-e6d3-122a58f46c12', '2ef50f93-192b-b168-969d-304c8e675e1d', '8f861828-6a40-84ed-57b2-b046272d8ea8', 'b6d1ba78-d1b4-511d-1a9b-98722c2fbf51'),
  ('f7aa39ed-cfca-bd12-6b20-06f39ef42626', '2ef50f93-192b-b168-969d-304c8e675e1d', '7227dbe2-7cb2-59b2-d468-6d25df342903', '2aa88e58-f65f-eb2f-34e4-88bc5a63a7c3'),
  ('fb8af4c1-6cf4-f503-da5f-7aca973d0850', '2ef50f93-192b-b168-969d-304c8e675e1d', '2a7b615d-ddb5-8955-0458-298a538f5b11', 'ccbc0a07-ae90-c183-db56-fd41f35affbe');


SET session_replication_role TO DEFAULT;


