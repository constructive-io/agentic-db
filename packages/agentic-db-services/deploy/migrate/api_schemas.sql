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
  ('019d37b9-b714-7002-8e2c-0b92327abc07', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b4d0-7f12-8455-e42d78556194', '019d37b9-b70f-7ab3-b34d-0b1f07824ee2'),
  ('019d37b9-b718-705c-a27d-8715e8f00087', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b4d0-7f12-8455-e42d78556194', '019d37b9-b712-7800-ab30-963d5e8b9e0c'),
  ('019d37b9-b718-7c70-89e7-71726dd35b17', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b4d3-7bb0-8be7-bb2ad9a383fa', '019d37b9-b712-7800-ab30-963d5e8b9e0c'),
  ('019d37b9-b719-77d5-b994-3e2f8c20745c', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b608-7dd1-bc6e-795b1955bf99', '019d37b9-b713-7142-b8cd-f16eb92e797f'),
  ('019d37b9-b7aa-72fe-879c-18b8aed90218', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b724-7c50-8fc3-1e8ca40b9e53', '019d37b9-b70f-7ab3-b34d-0b1f07824ee2'),
  ('019d37b9-b7ab-78a8-8d74-a6e235175da5', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b724-7c50-8fc3-1e8ca40b9e53', '019d37b9-b712-7800-ab30-963d5e8b9e0c'),
  ('019d37b9-b7ac-73e1-9e60-fa809739fac6', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b724-7c50-8fc3-1e8ca40b9e53', '019d37b9-b712-7afd-846a-e9a30739821a'),
  ('019d37b9-be4b-701d-8c52-6fb3cebffab1', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bd23-7bf3-ab01-cc5e09ea9fee', '019d37b9-b70f-7ab3-b34d-0b1f07824ee2'),
  ('019d37b9-be4c-7383-855b-3d1a34b77c05', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bd23-7bf3-ab01-cc5e09ea9fee', '019d37b9-b712-7800-ab30-963d5e8b9e0c'),
  ('019d37b9-be4c-7a6a-bc33-f56c02f18dbf', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bd23-7bf3-ab01-cc5e09ea9fee', '019d37b9-b711-7e8b-b85a-87de3b617e45'),
  ('019d37b9-c1f9-76ad-b244-ac9b338d2fc5', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c0e7-71bb-80a8-c0f8d64a4b95', '019d37b9-b70f-7ab3-b34d-0b1f07824ee2'),
  ('019d37b9-c1fa-7885-8ab7-63b2a57a2b91', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c0e7-71bb-80a8-c0f8d64a4b95', '019d37b9-b712-7800-ab30-963d5e8b9e0c'),
  ('019d37b9-c1fa-7deb-951c-81c01586d2c4', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c0e7-71bb-80a8-c0f8d64a4b95', '019d37b9-b711-7e8b-b85a-87de3b617e45'),
  ('019d37b9-c51b-700b-b5ad-30ce55b7af42', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bb21-792b-800c-4cfd5fc2db67', '019d37b9-b70f-7ab3-b34d-0b1f07824ee2'),
  ('019d37b9-c594-775e-b88f-c5fa7b78a7c9', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bb21-792b-800c-4cfd5fc2db67', '019d37b9-b712-7800-ab30-963d5e8b9e0c'),
  ('019d37b9-c608-7594-a487-10ebed448b5c', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bb21-792b-800c-4cfd5fc2db67', '019d37b9-b711-7e8b-b85a-87de3b617e45'),
  ('019d37b9-d5c0-7362-abfb-a0614ea76cff', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-d4a5-7eed-885a-e1558baf0e34', '019d37b9-b70f-7ab3-b34d-0b1f07824ee2'),
  ('019d37b9-d5c1-788a-89c1-309b03d13180', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-d4a5-7eed-885a-e1558baf0e34', '019d37b9-b712-7800-ab30-963d5e8b9e0c'),
  ('019d37b9-d5c2-728d-9bbd-740de188233a', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-d4a5-7eed-885a-e1558baf0e34', '019d37b9-b711-7e8b-b85a-87de3b617e45'),
  ('019d37b9-df07-7c9f-911b-04ac6f2e1d94', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-dde1-795e-8157-90638d814b56', '019d37b9-b70f-7ab3-b34d-0b1f07824ee2'),
  ('019d37b9-df09-70a1-a0d5-df4c5b4c664a', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-dde1-795e-8157-90638d814b56', '019d37b9-b712-7800-ab30-963d5e8b9e0c'),
  ('019d37b9-df09-7aae-8b86-07d3551f8c0f', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-dde1-795e-8157-90638d814b56', '019d37b9-b711-7e8b-b85a-87de3b617e45'),
  ('019d37ba-5480-7f80-904b-7cb2fa548d5f', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-53bd-7dfa-9a2a-9c95c48a260a', '019d37b9-b70f-7ab3-b34d-0b1f07824ee2'),
  ('019d37ba-5483-7c01-aeea-acee77349202', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-53bd-7dfa-9a2a-9c95c48a260a', '019d37b9-b712-7800-ab30-963d5e8b9e0c'),
  ('019d37ba-5485-720d-b8ed-4e08588a6574', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-53bd-7dfa-9a2a-9c95c48a260a', '019d37b9-b712-7afd-846a-e9a30739821a'),
  ('019d37ba-5695-7fec-b7d7-bd7f01c53f4d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-54e9-7c28-abc2-c0964be7bedc', '019d37b9-b70f-7ab3-b34d-0b1f07824ee2'),
  ('019d37ba-5698-7506-8969-04b0f15c82eb', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-54e9-7c28-abc2-c0964be7bedc', '019d37b9-b712-7800-ab30-963d5e8b9e0c'),
  ('019d37ba-5699-7ce0-b92b-cec080b3b48d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-54e9-7c28-abc2-c0964be7bedc', '019d37b9-b712-7afd-846a-e9a30739821a'),
  ('019d37ba-6787-7347-ae5e-84734714ef6a', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-66ba-77a5-abda-e78f17b9a7e8', '019d37b9-b70f-7ab3-b34d-0b1f07824ee2'),
  ('019d37ba-6789-7a10-89d5-1e6007be01c8', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-66ba-77a5-abda-e78f17b9a7e8', '019d37b9-b712-7800-ab30-963d5e8b9e0c'),
  ('019d37ba-678b-7287-a128-5913d716879c', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-66ba-77a5-abda-e78f17b9a7e8', '019d37b9-b711-7e8b-b85a-87de3b617e45'),
  ('019d37ba-7e77-7051-8bfe-65e0d34b9119', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-7d32-7fdb-8f65-deee83304813', '019d37b9-b70f-7ab3-b34d-0b1f07824ee2'),
  ('019d37ba-7ea1-7548-baa1-614d29f049f6', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-7d32-7fdb-8f65-deee83304813', '019d37b9-b712-7800-ab30-963d5e8b9e0c'),
  ('019d37ba-7ecd-795e-8cc4-9fe5ef0bf93d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-7d32-7fdb-8f65-deee83304813', '019d37b9-b712-7afd-846a-e9a30739821a');


SET session_replication_role TO DEFAULT;


