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
  ('019d3dab-0020-7647-852d-d329bab66a8d', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-fe2b-747e-851f-97fbff7bed07', '019d3dab-001d-757e-9b9d-48c6a3955e2d'),
  ('019d3dab-0022-7d93-afdc-b6fa47ee078b', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-fe2b-747e-851f-97fbff7bed07', '019d3dab-001f-7466-8073-6937cff1218f'),
  ('019d3dab-0023-7886-bf49-062e9777db8a', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-fe2d-71ef-bb39-866600eeaed9', '019d3dab-001f-7466-8073-6937cff1218f'),
  ('019d3dab-0024-7326-a3f7-7f39ba6ea193', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-ff32-79fb-9090-387f029df43b', '019d3dab-001f-7f21-80b0-136b869971e2'),
  ('019d3dab-00a6-7d6b-b2b0-6a1954a03416', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-002a-7fad-85d1-275b4f59abee', '019d3dab-001d-757e-9b9d-48c6a3955e2d'),
  ('019d3dab-00a7-7ac9-abed-10ebe49c754c', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-002a-7fad-85d1-275b4f59abee', '019d3dab-001f-7466-8073-6937cff1218f'),
  ('019d3dab-00a8-7570-b623-1adb344a5455', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-002a-7fad-85d1-275b4f59abee', '019d3dab-001f-7799-bc3b-477331d9ae95'),
  ('019d3dab-06bf-7b70-9826-9b3359c9124d', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-05af-70e1-92cf-72aabeae605c', '019d3dab-001d-757e-9b9d-48c6a3955e2d'),
  ('019d3dab-06c0-7e61-9998-158bc073069a', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-05af-70e1-92cf-72aabeae605c', '019d3dab-001f-7466-8073-6937cff1218f'),
  ('019d3dab-06c1-7494-aa4b-5c8aadd69c72', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-05af-70e1-92cf-72aabeae605c', '019d3dab-001e-7cc8-bc88-8097db9825f7'),
  ('019d3dab-0ace-7e6c-af8b-22421a06b2ea', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-09ae-75ea-8737-15a5619d093a', '019d3dab-001d-757e-9b9d-48c6a3955e2d'),
  ('019d3dab-0acf-7e73-a1ca-f52149d04e2c', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-09ae-75ea-8737-15a5619d093a', '019d3dab-001f-7466-8073-6937cff1218f'),
  ('019d3dab-0ad0-7430-ae77-a8005bd9b0af', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-09ae-75ea-8737-15a5619d093a', '019d3dab-001e-7cc8-bc88-8097db9825f7'),
  ('019d3dab-0def-7fe7-9296-efcbc3eb9f4d', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-03c6-7630-a278-03cc476571de', '019d3dab-001d-757e-9b9d-48c6a3955e2d'),
  ('019d3dab-0df3-7b22-a4d1-2287dc930108', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-03c6-7630-a278-03cc476571de', '019d3dab-001f-7466-8073-6937cff1218f'),
  ('019d3dab-0df5-7ea9-84ca-ea5a68778bea', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-03c6-7630-a278-03cc476571de', '019d3dab-001e-7cc8-bc88-8097db9825f7'),
  ('019d3dab-1e1c-7df5-9420-74d2fcc78f75', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-1ceb-7693-a450-cbc750a78c9a', '019d3dab-001d-757e-9b9d-48c6a3955e2d'),
  ('019d3dab-1e1e-75a9-a80a-da4964b8c67a', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-1ceb-7693-a450-cbc750a78c9a', '019d3dab-001f-7466-8073-6937cff1218f'),
  ('019d3dab-1e1e-7f39-acd5-60e8768554ea', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-1ceb-7693-a450-cbc750a78c9a', '019d3dab-001e-7cc8-bc88-8097db9825f7'),
  ('019d3dab-2849-798e-a3be-1f6dfee3f813', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-2701-792f-9b98-c31129eaf70e', '019d3dab-001d-757e-9b9d-48c6a3955e2d'),
  ('019d3dab-284b-70f1-abbf-4651101690c2', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-2701-792f-9b98-c31129eaf70e', '019d3dab-001f-7466-8073-6937cff1218f'),
  ('019d3dab-284b-7b32-bd29-1d1e3beeb76a', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-2701-792f-9b98-c31129eaf70e', '019d3dab-001e-7cc8-bc88-8097db9825f7'),
  ('019d3dab-9d6f-7e20-93c4-e5dd1b83704b', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9c9d-733f-913c-3c22ae0a3f7a', '019d3dab-001d-757e-9b9d-48c6a3955e2d'),
  ('019d3dab-9d72-72e0-90ee-b67ff6c5c444', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9c9d-733f-913c-3c22ae0a3f7a', '019d3dab-001f-7466-8073-6937cff1218f'),
  ('019d3dab-9d73-7af8-9358-7a99566b18f3', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9c9d-733f-913c-3c22ae0a3f7a', '019d3dab-001f-7799-bc3b-477331d9ae95'),
  ('019d3dab-9f77-7429-9dee-f180ea7bfd29', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9dd9-7ffe-b2b1-328cc7a0158d', '019d3dab-001d-757e-9b9d-48c6a3955e2d'),
  ('019d3dab-9f79-7801-81c0-5fd6c1bd7bc4', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9dd9-7ffe-b2b1-328cc7a0158d', '019d3dab-001f-7466-8073-6937cff1218f'),
  ('019d3dab-9f7b-7045-a6e8-62eceb2b99fa', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9dd9-7ffe-b2b1-328cc7a0158d', '019d3dab-001f-7799-bc3b-477331d9ae95'),
  ('019d3dab-acb6-73b2-a048-bd26a9e4ce86', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-abe2-758c-95b6-5ac57d5513cf', '019d3dab-001d-757e-9b9d-48c6a3955e2d'),
  ('019d3dab-acb8-786a-9c27-27160fb6d776', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-abe2-758c-95b6-5ac57d5513cf', '019d3dab-001f-7466-8073-6937cff1218f'),
  ('019d3dab-acba-72bf-9036-e11feaa67abf', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-abe2-758c-95b6-5ac57d5513cf', '019d3dab-001e-7cc8-bc88-8097db9825f7'),
  ('019d3dab-c19d-7f2a-9437-68fe54a87b47', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-c0be-79df-a1d2-4105df8900dd', '019d3dab-001d-757e-9b9d-48c6a3955e2d'),
  ('019d3dab-c19f-7c29-896a-a6bf013b5d9f', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-c0be-79df-a1d2-4105df8900dd', '019d3dab-001f-7466-8073-6937cff1218f'),
  ('019d3dab-c1a1-77f1-b0d0-6d8074e23e35', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-c0be-79df-a1d2-4105df8900dd', '019d3dab-001f-7799-bc3b-477331d9ae95');


SET session_replication_role TO DEFAULT;


