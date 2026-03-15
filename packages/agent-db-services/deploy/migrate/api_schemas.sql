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
  ('586c6e36-1de9-4a58-8e98-eeb5967de256', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00816fb-bca4-4e67-6e1f-3b1e1a106bbe', '48e35c24-3f44-479e-87ee-70bf57c7e3f2'),
  ('684b8d30-aff7-48da-ab44-babd0b61da2d', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00816fb-bca4-4e67-6e1f-3b1e1a106bbe', '34e804ab-4d43-41ed-b5e9-27616885169e'),
  ('e61428f2-fb06-49e3-9518-90fe9dedb69e', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00854f5-4b8d-41a6-088b-8520011b17b4', '34e804ab-4d43-41ed-b5e9-27616885169e'),
  ('0345a867-b9bc-4b30-8467-262a88f62a6c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008a53d-0b70-48d6-5e13-1682a4fd4f75', 'ca5fd55a-d91b-4152-99ad-beedf645560f'),
  ('4c435c98-1660-4429-974e-bd164137f6c0', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008cadd-c4c5-4c88-4033-6c9fd5982ee3', '48e35c24-3f44-479e-87ee-70bf57c7e3f2'),
  ('f3a86619-7976-4dcc-948f-38faab4e63ba', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008cadd-c4c5-4c88-4033-6c9fd5982ee3', '34e804ab-4d43-41ed-b5e9-27616885169e'),
  ('fefc8f82-f86f-4513-a985-be4e64d5dff8', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008cadd-c4c5-4c88-4033-6c9fd5982ee3', 'd3334c11-97f8-4553-ab31-00854a259dd1'),
  ('c56da87a-a586-4f38-aa6a-3611a43846e2', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008c1a4-1633-460e-0e29-b4a5f9612958', '48e35c24-3f44-479e-87ee-70bf57c7e3f2'),
  ('5c8ce014-1322-4012-82ac-6ec867fdd14d', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008c1a4-1633-460e-0e29-b4a5f9612958', '34e804ab-4d43-41ed-b5e9-27616885169e'),
  ('d805f352-0d4a-490f-b3e7-13d45cab0780', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008c1a4-1633-460e-0e29-b4a5f9612958', 'bd9f2c10-c3a8-416f-8e40-2c7e55c3402d'),
  ('0d9ced42-2e56-45db-9831-67516b0d1155', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00833b1-9fd1-4dfc-9b9c-13d14a04fc38', '48e35c24-3f44-479e-87ee-70bf57c7e3f2'),
  ('51193bbe-bd81-4e04-9363-afc90cbce44c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00833b1-9fd1-4dfc-9b9c-13d14a04fc38', '34e804ab-4d43-41ed-b5e9-27616885169e'),
  ('b4d58591-05fe-4120-8683-f1d6a4e171b5', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00833b1-9fd1-4dfc-9b9c-13d14a04fc38', 'bd9f2c10-c3a8-416f-8e40-2c7e55c3402d'),
  ('66bb86f2-fe4a-4e1f-a9f8-586d12a83672', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087970-3d1f-473c-4c81-937a8d8eeb0c', '48e35c24-3f44-479e-87ee-70bf57c7e3f2'),
  ('10541440-d842-4105-a8d7-8faa90e41ccc', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087970-3d1f-473c-4c81-937a8d8eeb0c', '34e804ab-4d43-41ed-b5e9-27616885169e'),
  ('083d20e6-c9eb-449e-bb6e-88eccce8a782', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087970-3d1f-473c-4c81-937a8d8eeb0c', 'bd9f2c10-c3a8-416f-8e40-2c7e55c3402d'),
  ('dcc6df65-2b63-49d2-bb0f-10ac5342a19c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008be4f-09fb-47fd-01fa-c08da866a712', '48e35c24-3f44-479e-87ee-70bf57c7e3f2'),
  ('e8076fa9-2038-451c-ad76-a26c9e8791c6', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008be4f-09fb-47fd-01fa-c08da866a712', '34e804ab-4d43-41ed-b5e9-27616885169e'),
  ('57656709-8b15-43a5-9a9f-77e2093499ef', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008be4f-09fb-47fd-01fa-c08da866a712', 'bd9f2c10-c3a8-416f-8e40-2c7e55c3402d'),
  ('cf227d7d-c7ee-433f-8fe4-2cd0efdc1302', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082352-e9aa-438c-33bf-bf8133b18d61', '48e35c24-3f44-479e-87ee-70bf57c7e3f2'),
  ('f95cb4aa-207a-498c-94c2-600fef1486d1', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082352-e9aa-438c-33bf-bf8133b18d61', '34e804ab-4d43-41ed-b5e9-27616885169e'),
  ('db82b104-7a81-4f2b-a7cb-e5d4d7ae4c49', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082352-e9aa-438c-33bf-bf8133b18d61', 'bd9f2c10-c3a8-416f-8e40-2c7e55c3402d'),
  ('8a3adfa1-3cda-467f-9c40-327289c42b3e', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0081397-cee5-40ce-2fe9-6495cc0516a4', '48e35c24-3f44-479e-87ee-70bf57c7e3f2'),
  ('ac52ff2e-224c-4c6b-a859-6de9526136b8', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0081397-cee5-40ce-2fe9-6495cc0516a4', '34e804ab-4d43-41ed-b5e9-27616885169e'),
  ('f57e7490-7075-45a2-9125-2bb8fc835f7d', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0081397-cee5-40ce-2fe9-6495cc0516a4', 'd3334c11-97f8-4553-ab31-00854a259dd1'),
  ('dfa0c841-4007-4b38-b22d-a8bdbdec7ced', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087c97-015d-40d8-69ee-7fe276989655', '48e35c24-3f44-479e-87ee-70bf57c7e3f2'),
  ('e72181ce-2442-484c-a06b-f6ef2e389107', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087c97-015d-40d8-69ee-7fe276989655', '34e804ab-4d43-41ed-b5e9-27616885169e'),
  ('c823f54e-3ad5-4532-82ba-8044a19aacec', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087c97-015d-40d8-69ee-7fe276989655', 'd3334c11-97f8-4553-ab31-00854a259dd1'),
  ('c44a762e-f6b0-4666-9b35-5f04fb148857', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0084f98-8b27-43b8-3b87-48168ff156f4', '48e35c24-3f44-479e-87ee-70bf57c7e3f2'),
  ('83383160-4418-4682-a616-f1596117fa4e', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0084f98-8b27-43b8-3b87-48168ff156f4', '34e804ab-4d43-41ed-b5e9-27616885169e'),
  ('b6bdc6a0-ffc0-4d62-9814-2e218b90af49', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0084f98-8b27-43b8-3b87-48168ff156f4', 'bd9f2c10-c3a8-416f-8e40-2c7e55c3402d'),
  ('5570f9d3-0f64-4712-831d-4c11226f9c76', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087acf-ae83-4e8b-ee41-1447ce3746f2', '48e35c24-3f44-479e-87ee-70bf57c7e3f2'),
  ('8a3183c0-9de0-4ffa-b3d0-cdf07a4149a6', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087acf-ae83-4e8b-ee41-1447ce3746f2', '34e804ab-4d43-41ed-b5e9-27616885169e'),
  ('fb5bc36a-ab98-4882-8475-23a9454ff4d6', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087acf-ae83-4e8b-ee41-1447ce3746f2', 'd3334c11-97f8-4553-ab31-00854a259dd1');


SET session_replication_role TO DEFAULT;


