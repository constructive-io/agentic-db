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
  ('019d1795-46bc-7cc4-95a4-6eb6d922322a', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-469c-7473-8e81-1a9859ff1527', 'administrator'),
  ('019d1795-46cb-7359-94c2-ccc8c2876e03', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-469c-7473-8e81-1a9859ff1527', 'authenticated'),
  ('019d1795-46d8-7ef4-904d-75fd1106fc84', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-469c-7473-8e81-1a9859ff1527', 'anonymous'),
  ('019d1795-472c-7d53-aa88-90ae46666694', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-469d-7eab-b7ee-8420ff09d89a', 'administrator'),
  ('019d1795-473e-7c96-93d9-ae220e1834f0', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-469d-7eab-b7ee-8420ff09d89a', 'authenticated'),
  ('019d1795-4752-7fb2-a484-9583defcec6e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-469d-7eab-b7ee-8420ff09d89a', 'anonymous'),
  ('019d1795-47e0-79eb-a439-1d23396a0306', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-47d3-764d-b9c4-acc8c8cd3277', 'administrator'),
  ('019d1795-47ef-767a-9db1-811dc435516c', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-47d3-764d-b9c4-acc8c8cd3277', 'authenticated'),
  ('019d1795-47fe-7baa-bcc4-5d72dfde3501', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-47d3-764d-b9c4-acc8c8cd3277', 'anonymous'),
  ('019d1795-4859-75e9-9b45-1aaa4701f09c', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-484c-717b-8de4-6fc6916eae8f', 'administrator'),
  ('019d1795-4868-7628-9b7d-ffab1d429259', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-484c-717b-8de4-6fc6916eae8f', 'authenticated'),
  ('019d1795-4877-72eb-bd2c-3ed7ff716f3e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-484c-717b-8de4-6fc6916eae8f', 'anonymous'),
  ('019d1795-48e3-7968-9386-612cafea2582', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-48d6-712e-b0a5-7d603cff15b6', 'administrator'),
  ('019d1795-48f1-7f1d-bb20-3fac7fd22504', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-48d6-712e-b0a5-7d603cff15b6', 'authenticated'),
  ('019d1795-4901-70b6-92a2-d09f12d1c95e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-48d6-712e-b0a5-7d603cff15b6', 'anonymous'),
  ('019d1795-4c25-7e94-aa5f-9233b20955a1', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4c1b-7a59-8ae4-3c48b8349459', 'administrator'),
  ('019d1795-4c33-78ce-8a3c-e7ae9f8ee7f0', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4c1b-7a59-8ae4-3c48b8349459', 'authenticated'),
  ('019d1795-4c41-77fe-9d4f-092e8c66006e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4c1b-7a59-8ae4-3c48b8349459', 'anonymous'),
  ('019d1795-4dd2-7f76-8059-0ad672ffd8f6', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4dc9-7963-b675-eb49e0615e7a', 'administrator'),
  ('019d1795-4de0-7718-b9b1-bab3032033f4', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4dc9-7963-b675-eb49e0615e7a', 'authenticated'),
  ('019d1795-4dee-7e30-bc43-8c9d13b98650', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4dc9-7963-b675-eb49e0615e7a', 'anonymous'),
  ('019d1795-4e5d-7cb1-806b-810e822ac4d9', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4e4d-7f23-afa5-ed4e08e0abec', 'administrator'),
  ('019d1795-4e6b-7734-94f2-80c5c7e709b5', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4e4d-7f23-afa5-ed4e08e0abec', 'authenticated'),
  ('019d1795-4e79-788d-9129-87c743732ec3', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4e4d-7f23-afa5-ed4e08e0abec', 'anonymous'),
  ('019d1795-513e-7e35-aeb6-3b7a3784f19d', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-5134-772b-9356-915358d7fbd1', 'administrator'),
  ('019d1795-514d-7408-a62b-0d7dbb8fee99', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-5134-772b-9356-915358d7fbd1', 'authenticated'),
  ('019d1795-515b-7de4-a9f8-1ce08fccf151', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-5134-772b-9356-915358d7fbd1', 'anonymous'),
  ('019d1795-51b8-734d-9cda-90874602258c', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-51ab-773d-92fa-c6958bcfe3fd', 'administrator'),
  ('019d1795-51c5-7959-8a7d-f4eef2feef78', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-51ab-773d-92fa-c6958bcfe3fd', 'authenticated'),
  ('019d1795-51d3-7e83-a289-b4de6765cfee', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-51ab-773d-92fa-c6958bcfe3fd', 'anonymous'),
  ('019d1795-5488-77d7-baf0-e795dfaf85f3', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-547c-772e-88aa-b0d16f40b989', 'administrator'),
  ('019d1795-5499-7790-8ac3-eb8d856cf95c', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-547c-772e-88aa-b0d16f40b989', 'authenticated'),
  ('019d1795-54a9-73d4-bfbe-e557a723e42e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-547c-772e-88aa-b0d16f40b989', 'anonymous'),
  ('019d1795-6281-7d7b-a2b1-b2bb4c0e0822', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6275-70aa-9814-444b221e3a6d', 'administrator'),
  ('019d1795-6291-7c26-a363-8f3cd9c72788', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6275-70aa-9814-444b221e3a6d', 'authenticated'),
  ('019d1795-62a1-7469-a541-0ba0ed7e1fc4', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6275-70aa-9814-444b221e3a6d', 'anonymous'),
  ('019d1795-6309-7b26-9e67-b8ecce4160ec', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-62fa-7665-a401-4e3131e3c95f', 'administrator'),
  ('019d1795-6319-73bc-a128-2cd880eed233', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-62fa-7665-a401-4e3131e3c95f', 'authenticated'),
  ('019d1795-6328-7ff6-b721-36d3ca6a453a', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-62fa-7665-a401-4e3131e3c95f', 'anonymous'),
  ('019d1795-6bd7-77e5-95b2-4987ea907254', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6bca-79c3-94ab-c5e751df8b3e', 'administrator'),
  ('019d1795-6be7-7d02-99d8-a7a5e8bd41e3', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6bca-79c3-94ab-c5e751df8b3e', 'authenticated'),
  ('019d1795-6bf8-7069-a95f-d42f14b5c80c', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6bca-79c3-94ab-c5e751df8b3e', 'anonymous'),
  ('019d1795-6c73-719a-9ec4-ac8d80e7f157', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6c55-7a13-bde4-a881c0a9ccc2', 'administrator'),
  ('019d1795-6c85-7ffd-8f88-5ba15d23e065', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6c55-7a13-bde4-a881c0a9ccc2', 'authenticated'),
  ('019d1795-6c97-7e18-8ab9-24e4a2ffeb3a', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6c55-7a13-bde4-a881c0a9ccc2', 'anonymous'),
  ('019d1795-c969-7c7d-98be-af27e5d9d2a6', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-c953-7eed-a71c-5f3a234b146d', 'administrator'),
  ('019d1795-c980-76c4-8fbf-19d4a438e8c7', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-c953-7eed-a71c-5f3a234b146d', 'authenticated'),
  ('019d1795-c998-7e75-820f-c8fd1117d08e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-c953-7eed-a71c-5f3a234b146d', 'anonymous'),
  ('019d1795-ccb5-720a-8556-f22638743d8f', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-cca2-7f7a-967c-79accdccaeb6', 'administrator'),
  ('019d1795-ccca-744f-be7a-313c842e66f3', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-cca2-7f7a-967c-79accdccaeb6', 'authenticated'),
  ('019d1795-cce0-7adf-bf97-e0d166d562c5', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-cca2-7f7a-967c-79accdccaeb6', 'anonymous'),
  ('019d1795-dbde-7bd7-8d98-6021b06de732', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-dbc8-7645-9ced-c8843478146e', 'administrator'),
  ('019d1795-dbf6-754c-b29c-695bdb8346b3', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-dbc8-7645-9ced-c8843478146e', 'authenticated'),
  ('019d1795-dc10-710a-bed0-f2d82bdb0e57', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-dbc8-7645-9ced-c8843478146e', 'anonymous'),
  ('019d1795-dfae-79bd-b286-4e55e88136ad', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-df9c-742c-be0f-3ec04dbe16f5', 'administrator'),
  ('019d1795-dfc3-7ef1-b8b0-6aa8006d6619', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-df9c-742c-be0f-3ec04dbe16f5', 'authenticated'),
  ('019d1795-dfda-77da-87d5-cc18dadff3d9', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-df9c-742c-be0f-3ec04dbe16f5', 'anonymous'),
  ('019d1795-e0ec-7ab6-9c2f-4e15e7c8bc00', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-e0d3-7bc6-9ab7-a72ca3763767', 'administrator'),
  ('019d1795-e104-7567-bb6f-49c78a3f9bec', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-e0d3-7bc6-9ab7-a72ca3763767', 'authenticated'),
  ('019d1795-e11d-74cd-967e-6da95aa4ec87', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-e0d3-7bc6-9ab7-a72ca3763767', 'anonymous'),
  ('019d1795-e1c4-78b6-8cf6-fb1504433a7a', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-e1ad-7e6c-ae53-69470f710b04', 'administrator'),
  ('019d1795-e1da-7c32-bbb0-47491c2d98a8', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-e1ad-7e6c-ae53-69470f710b04', 'authenticated'),
  ('019d1795-e1f1-7d10-aa40-06b6d09c130a', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-e1ad-7e6c-ae53-69470f710b04', 'anonymous'),
  ('019d1795-f0cf-7762-8b4d-2b85762719f7', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-f0bb-7784-9893-064646694c83', 'administrator'),
  ('019d1795-f0e7-78e2-901b-8f1acac47c80', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-f0bb-7784-9893-064646694c83', 'authenticated'),
  ('019d1795-f0ff-73fe-af7d-a22cd61d93ad', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-f0bb-7784-9893-064646694c83', 'anonymous'),
  ('019d1795-f1b2-756c-b391-cc470d2e18b8', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-f19a-7f7a-8b00-b27ee187f2d6', 'administrator'),
  ('019d1795-f1ca-740a-8c47-d99be6d0f1e8', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-f19a-7f7a-8b00-b27ee187f2d6', 'authenticated'),
  ('019d1795-f1e3-74e4-83da-343391b04184', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-f19a-7f7a-8b00-b27ee187f2d6', 'anonymous'),
  ('019d1796-06a4-7085-996a-99d231d11075', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1796-068f-76c9-8685-17292d631224', 'administrator'),
  ('019d1796-06bd-7890-b783-e75497ffe30a', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1796-068f-76c9-8685-17292d631224', 'authenticated'),
  ('019d1796-06db-79be-b58e-ee5d4dfa5275', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1796-068f-76c9-8685-17292d631224', 'anonymous');


SET session_replication_role TO DEFAULT;


