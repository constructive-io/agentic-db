-- Deploy: migrate/schema_grant
-- made with <3 @ constructive.io

-- requires: migrate/full_text_search


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

INSERT INTO metaschema_public.schema_grant (
  id,
  database_id,
  schema_id,
  grantee_name
) VALUES
  ('019d37b9-b506-7296-b2de-872b51352314', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b4d0-7f12-8455-e42d78556194', 'administrator'),
  ('019d37b9-b51c-7b6a-b5c7-1d737d2928fb', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b4d0-7f12-8455-e42d78556194', 'authenticated'),
  ('019d37b9-b52d-789b-943e-6edb4bca4b73', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b4d0-7f12-8455-e42d78556194', 'anonymous'),
  ('019d37b9-b593-73cc-8f09-b7863e22be48', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b4d3-7bb0-8be7-bb2ad9a383fa', 'administrator'),
  ('019d37b9-b5a2-7ae7-b263-fb79ad5864ad', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b4d3-7bb0-8be7-bb2ad9a383fa', 'authenticated'),
  ('019d37b9-b5b2-74e0-bf06-1ebb4b20ca49', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b4d3-7bb0-8be7-bb2ad9a383fa', 'anonymous'),
  ('019d37b9-b617-7cea-bea2-b90d3153b51a', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b608-7dd1-bc6e-795b1955bf99', 'administrator'),
  ('019d37b9-b628-7fc7-8c47-c895320e86b6', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b608-7dd1-bc6e-795b1955bf99', 'authenticated'),
  ('019d37b9-b63b-76e1-970d-19cbf8609f4e', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b608-7dd1-bc6e-795b1955bf99', 'anonymous'),
  ('019d37b9-b6a0-7552-a342-e634f9f86dcc', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b691-7e6a-b300-be9b2d7afe13', 'administrator'),
  ('019d37b9-b6af-7977-b245-a79e12a4875d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b691-7e6a-b300-be9b2d7afe13', 'authenticated'),
  ('019d37b9-b6bf-706d-b6ec-0577835642a3', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b691-7e6a-b300-be9b2d7afe13', 'anonymous'),
  ('019d37b9-b733-7ee6-8cdb-25d020d5fdd8', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b724-7c50-8fc3-1e8ca40b9e53', 'administrator'),
  ('019d37b9-b743-7ff7-bded-ba3ee9c30e48', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b724-7c50-8fc3-1e8ca40b9e53', 'authenticated'),
  ('019d37b9-b756-7952-a589-22aded765f8b', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b724-7c50-8fc3-1e8ca40b9e53', 'anonymous'),
  ('019d37b9-bb2e-7cc1-a2fe-bb19ff786697', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bb21-792b-800c-4cfd5fc2db67', 'administrator'),
  ('019d37b9-bb40-7906-a609-917c3f229c3b', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bb21-792b-800c-4cfd5fc2db67', 'authenticated'),
  ('019d37b9-bb51-74c7-9201-f2c777b2cc15', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bb21-792b-800c-4cfd5fc2db67', 'anonymous'),
  ('019d37b9-bd31-7546-a621-4eef00d385d4', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bd23-7bf3-ab01-cc5e09ea9fee', 'administrator'),
  ('019d37b9-bd41-7bad-96f6-9b3f6cb0fc94', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bd23-7bf3-ab01-cc5e09ea9fee', 'authenticated'),
  ('019d37b9-bd51-7773-9a25-88eec714a5b5', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bd23-7bf3-ab01-cc5e09ea9fee', 'anonymous'),
  ('019d37b9-bdd6-78e5-a3f4-c7f8acbe8bf7', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bdc5-7818-84a8-a271b45e74b1', 'administrator'),
  ('019d37b9-bde5-7a7a-a7af-1039d440d85d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bdc5-7818-84a8-a271b45e74b1', 'authenticated'),
  ('019d37b9-bdf5-735f-81f2-156e1e7c86d1', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bdc5-7818-84a8-a271b45e74b1', 'anonymous'),
  ('019d37b9-c0f3-7e3e-a1d8-cdfca4df9626', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c0e7-71bb-80a8-c0f8d64a4b95', 'administrator'),
  ('019d37b9-c105-7b69-a3f2-6d49337c6d6c', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c0e7-71bb-80a8-c0f8d64a4b95', 'authenticated'),
  ('019d37b9-c117-7df0-9301-81fed919d764', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c0e7-71bb-80a8-c0f8d64a4b95', 'anonymous'),
  ('019d37b9-c17e-7cf0-b2a2-6277ee67b644', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c16f-734c-8c5c-072d5621dc06', 'administrator'),
  ('019d37b9-c18e-75b0-90f6-cab93abf8fcd', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c16f-734c-8c5c-072d5621dc06', 'authenticated'),
  ('019d37b9-c19f-77ac-ad52-74e20438c023', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c16f-734c-8c5c-072d5621dc06', 'anonymous'),
  ('019d37b9-c49c-7d0c-a9a6-2db9e48a7f44', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c48f-7769-a7a8-70fded63c6ee', 'administrator'),
  ('019d37b9-c4ad-7a30-adb2-ce28976c75c3', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c48f-7769-a7a8-70fded63c6ee', 'authenticated'),
  ('019d37b9-c4bd-7aa9-bd20-9b1add2e21cb', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c48f-7769-a7a8-70fded63c6ee', 'anonymous'),
  ('019d37b9-d4b2-7913-b02c-187b79073c0d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-d4a5-7eed-885a-e1558baf0e34', 'administrator'),
  ('019d37b9-d4c2-7a4d-ae04-1ed7fe227e41', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-d4a5-7eed-885a-e1558baf0e34', 'authenticated'),
  ('019d37b9-d4d2-7c37-a14f-b0c1ac1574b0', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-d4a5-7eed-885a-e1558baf0e34', 'anonymous'),
  ('019d37b9-d53e-7aeb-8f6a-e8b054b8b644', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-d52f-7d59-8716-1c99edd81795', 'administrator'),
  ('019d37b9-d54e-7598-9f43-a3f22fff3bd0', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-d52f-7d59-8716-1c99edd81795', 'authenticated'),
  ('019d37b9-d55e-7b22-a734-d8aaa8d19d2c', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-d52f-7d59-8716-1c99edd81795', 'anonymous'),
  ('019d37b9-ddee-7640-b0a8-db929d5698da', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-dde1-795e-8157-90638d814b56', 'administrator'),
  ('019d37b9-ddff-72bc-90c8-5d3b279b220d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-dde1-795e-8157-90638d814b56', 'authenticated'),
  ('019d37b9-de0f-7b59-8c86-1565c09e0b6f', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-dde1-795e-8157-90638d814b56', 'anonymous'),
  ('019d37b9-de82-73ed-b5c6-b60cea3b3f53', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-de6f-7eb8-a051-7006f1d96b09', 'administrator'),
  ('019d37b9-de92-7555-9f21-ae99352b1df7', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-de6f-7eb8-a051-7006f1d96b09', 'authenticated'),
  ('019d37b9-dea4-71fe-b2cd-ca6b99bd8386', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-de6f-7eb8-a051-7006f1d96b09', 'anonymous'),
  ('019d37ba-3e5f-77f9-aa96-5624d1a383da', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-3e4c-7e4d-8037-192a98fe0f73', 'administrator'),
  ('019d37ba-3e74-7af8-8f02-515d8065c106', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-3e4c-7e4d-8037-192a98fe0f73', 'authenticated'),
  ('019d37ba-3e8a-7e00-ab83-f3c44f49a50b', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-3e4c-7e4d-8037-192a98fe0f73', 'anonymous'),
  ('019d37ba-4165-7ef1-86bf-2987dfab97f4', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-4154-707f-968e-bbbc85961df7', 'administrator'),
  ('019d37ba-417b-7e9f-bba4-59b766e64bc2', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-4154-707f-968e-bbbc85961df7', 'authenticated'),
  ('019d37ba-4191-719f-9bec-2f228fdf1571', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-4154-707f-968e-bbbc85961df7', 'anonymous'),
  ('019d37ba-5017-75da-9a01-d842c1f2c488', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-5004-7d17-8fdb-2c698ed2d176', 'administrator'),
  ('019d37ba-502d-7096-ad2d-1e9b7294a89f', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-5004-7d17-8fdb-2c698ed2d176', 'authenticated'),
  ('019d37ba-5043-7533-b184-6617d10a608d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-5004-7d17-8fdb-2c698ed2d176', 'anonymous'),
  ('019d37ba-53cf-75fc-8098-26f67dad7c22', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-53bd-7dfa-9a2a-9c95c48a260a', 'administrator'),
  ('019d37ba-53e5-72c4-8778-b60daec76e60', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-53bd-7dfa-9a2a-9c95c48a260a', 'authenticated'),
  ('019d37ba-53fa-7cb1-941a-856507e4da12', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-53bd-7dfa-9a2a-9c95c48a260a', 'anonymous'),
  ('019d37ba-5503-7225-8467-7119ddbd3a24', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-54e9-7c28-abc2-c0964be7bedc', 'administrator'),
  ('019d37ba-551a-7fd6-bb54-dbf01ae214bc', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-54e9-7c28-abc2-c0964be7bedc', 'authenticated'),
  ('019d37ba-5531-7030-a864-1e187f1e79ad', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-54e9-7c28-abc2-c0964be7bedc', 'anonymous'),
  ('019d37ba-55d4-7862-8c9f-958291fcda4f', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-55bf-736a-a2e9-f0533fa6526e', 'administrator'),
  ('019d37ba-55ea-7003-bfff-eac2e86ee42e', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-55bf-736a-a2e9-f0533fa6526e', 'authenticated'),
  ('019d37ba-5607-720a-8da3-18d99d076ea8', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-55bf-736a-a2e9-f0533fa6526e', 'anonymous'),
  ('019d37ba-66cc-7ec5-867e-61495420d882', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-66ba-77a5-abda-e78f17b9a7e8', 'administrator'),
  ('019d37ba-66e3-7722-9522-0c6a8ec1f5c6', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-66ba-77a5-abda-e78f17b9a7e8', 'authenticated'),
  ('019d37ba-66fb-73ad-b9c6-e7eb1aa55871', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-66ba-77a5-abda-e78f17b9a7e8', 'anonymous'),
  ('019d37ba-67a4-7619-8bee-a4a8317b78ca', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-678c-7eae-87e8-70672401e2af', 'administrator'),
  ('019d37ba-67ba-755c-85cd-f5a257885734', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-678c-7eae-87e8-70672401e2af', 'authenticated'),
  ('019d37ba-67d2-7ca8-b338-736da3aa4484', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-678c-7eae-87e8-70672401e2af', 'anonymous'),
  ('019d37ba-7d49-7939-97cd-cf462216c71d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-7d32-7fdb-8f65-deee83304813', 'administrator'),
  ('019d37ba-7d63-79f7-a541-e3cf5ff9bbd7', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-7d32-7fdb-8f65-deee83304813', 'authenticated'),
  ('019d37ba-7d83-7445-ac28-641d6729b4f9', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-7d32-7fdb-8f65-deee83304813', 'anonymous');


SET session_replication_role TO DEFAULT;


