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
  ('019d42ff-c794-7368-8b13-c57ea2351907', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c76e-787a-a232-7e96af0b9d23', 'administrator'),
  ('019d42ff-c7a8-77cc-a426-60d90995b806', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c76e-787a-a232-7e96af0b9d23', 'authenticated'),
  ('019d42ff-c7b8-78b3-8713-e1a69432fc41', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c76e-787a-a232-7e96af0b9d23', 'anonymous'),
  ('019d42ff-c823-7ef9-a2d0-80e2bb484a0e', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c770-7c4f-b7ff-e437cb7e8bb9', 'administrator'),
  ('019d42ff-c833-73b5-9a58-67b9e3369db7', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c770-7c4f-b7ff-e437cb7e8bb9', 'authenticated'),
  ('019d42ff-c844-7307-a97d-ecbd0d11af48', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c770-7c4f-b7ff-e437cb7e8bb9', 'anonymous'),
  ('019d42ff-c8ab-738e-8a5b-02ee114aa680', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c89d-70bf-8fb8-f916c2f15a03', 'administrator'),
  ('019d42ff-c8ba-7faa-bdd6-3e26d25b4e0a', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c89d-70bf-8fb8-f916c2f15a03', 'authenticated'),
  ('019d42ff-c8cc-790b-9dc1-bdcf282638ef', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c89d-70bf-8fb8-f916c2f15a03', 'anonymous'),
  ('019d42ff-c93a-7445-ba47-f95982f86a47', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c924-7cc2-bb4a-81e459c35efa', 'administrator'),
  ('019d42ff-c94b-76b3-b45f-499aeb525011', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c924-7cc2-bb4a-81e459c35efa', 'authenticated'),
  ('019d42ff-c95c-7947-801f-76d1b7b161e4', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c924-7cc2-bb4a-81e459c35efa', 'anonymous'),
  ('019d42ff-c9dc-70db-8f7d-2e5b25a1c42a', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c9cb-7479-8e4d-02c1f0985a66', 'administrator'),
  ('019d42ff-c9ef-72a8-b3b8-c295016bb33c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c9cb-7479-8e4d-02c1f0985a66', 'authenticated'),
  ('019d42ff-ca02-736a-8f14-f768286d7b5e', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c9cb-7479-8e4d-02c1f0985a66', 'anonymous'),
  ('019d42ff-ce10-7266-80f8-2aaa68d0731f', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ce03-722d-82bd-39b558050ea6', 'administrator'),
  ('019d42ff-ce21-7090-bf42-d54223d4df64', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ce03-722d-82bd-39b558050ea6', 'authenticated'),
  ('019d42ff-ce31-79fa-b14e-767638c990e6', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ce03-722d-82bd-39b558050ea6', 'anonymous'),
  ('019d42ff-d039-75dc-96dd-a50cb9b32fa6', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d02d-7ebf-9746-bbce1fc5bbd0', 'administrator'),
  ('019d42ff-d049-7f4c-82a9-be72ddc0f19c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d02d-7ebf-9746-bbce1fc5bbd0', 'authenticated'),
  ('019d42ff-d05b-7025-a7a6-f263d2848687', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d02d-7ebf-9746-bbce1fc5bbd0', 'anonymous'),
  ('019d42ff-d0c8-7c86-ad13-44686c9c8107', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d0b9-79dc-b333-ba049fa204bf', 'administrator'),
  ('019d42ff-d0d9-723e-acbb-aed7e4516101', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d0b9-79dc-b333-ba049fa204bf', 'authenticated'),
  ('019d42ff-d0f5-7634-bc5b-a7c3bf939089', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d0b9-79dc-b333-ba049fa204bf', 'anonymous'),
  ('019d42ff-d48c-708c-9da9-4a295c89180c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d47f-7297-9cde-6e0a2f1e2c50', 'administrator'),
  ('019d42ff-d49e-769c-8fea-f3cbd1637f91', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d47f-7297-9cde-6e0a2f1e2c50', 'authenticated'),
  ('019d42ff-d4b1-719a-8913-5961069d634f', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d47f-7297-9cde-6e0a2f1e2c50', 'anonymous'),
  ('019d42ff-d533-7a54-9064-6c348bbe1fe9', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d520-722e-be7e-555a55616902', 'administrator'),
  ('019d42ff-d546-7d2d-b904-007db0f0fc43', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d520-722e-be7e-555a55616902', 'authenticated'),
  ('019d42ff-d55a-72a7-a5a4-6fdd61df51d6', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d520-722e-be7e-555a55616902', 'anonymous'),
  ('019d42ff-d8aa-762b-ba4b-28f5bbf2e414', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d89c-73d4-b046-df54a48af77e', 'administrator'),
  ('019d42ff-d8be-7c89-b945-59faa822e77b', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d89c-73d4-b046-df54a48af77e', 'authenticated'),
  ('019d42ff-d8d9-75d8-817c-fd0ac03aa7f0', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d89c-73d4-b046-df54a48af77e', 'anonymous'),
  ('019d42ff-e983-74e6-81c5-e67a39458c02', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-e972-77d4-9058-8c13c0794f59', 'administrator'),
  ('019d42ff-e998-74da-be1a-fb7a4cbed2d3', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-e972-77d4-9058-8c13c0794f59', 'authenticated'),
  ('019d42ff-e9a9-7e7f-8a20-8f57575e483c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-e972-77d4-9058-8c13c0794f59', 'anonymous'),
  ('019d42ff-ea1d-72ab-966b-7bcc67cf60de', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ea0d-7200-b7ae-f92d8b4d3a40', 'administrator'),
  ('019d42ff-ea2f-7d13-bad2-0a63820d1b5e', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ea0d-7200-b7ae-f92d8b4d3a40', 'authenticated'),
  ('019d42ff-ea41-7acc-a4ff-21c9f617a246', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ea0d-7200-b7ae-f92d8b4d3a40', 'anonymous'),
  ('019d42ff-f47e-78a5-b279-b9199d7ed426', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f46d-7386-ae21-158ff8319f71', 'administrator'),
  ('019d42ff-f492-778c-bdd7-1750e8ca3f7c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f46d-7386-ae21-158ff8319f71', 'authenticated'),
  ('019d42ff-f4a5-73e5-84b5-df6e15a8d6a5', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f46d-7386-ae21-158ff8319f71', 'anonymous'),
  ('019d42ff-f528-7488-ad12-d6b7a74a096b', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f515-7133-828c-09d6ea0b9f2c', 'administrator'),
  ('019d42ff-f53d-797f-a1ea-1df588542bc4', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f515-7133-828c-09d6ea0b9f2c', 'authenticated'),
  ('019d42ff-f54f-7a04-8c6f-5a9bd61f16b2', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f515-7133-828c-09d6ea0b9f2c', 'anonymous'),
  ('019d4300-5371-7076-8bb7-53e173494ad5', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-535d-7fc4-b080-ba6a0026ad23', 'administrator'),
  ('019d4300-5389-7649-8d8e-795880b24b75', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-535d-7fc4-b080-ba6a0026ad23', 'authenticated'),
  ('019d4300-53a3-7867-b09e-7559f375e537', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-535d-7fc4-b080-ba6a0026ad23', 'anonymous'),
  ('019d4300-56e2-7254-8bf9-f44fd6f296c5', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-56cf-7759-9537-045a99bc4419', 'administrator'),
  ('019d4300-56f9-7206-a5cb-f0ea6f6d777c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-56cf-7759-9537-045a99bc4419', 'authenticated'),
  ('019d4300-570f-7171-9501-f1c933f1c8a0', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-56cf-7759-9537-045a99bc4419', 'anonymous'),
  ('019d4300-6737-7245-826b-0367dd6974cd', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6722-7bdb-a998-f903280342f9', 'administrator'),
  ('019d4300-674f-7e7f-b65c-0a4fae9cf47d', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6722-7bdb-a998-f903280342f9', 'authenticated'),
  ('019d4300-6767-7b51-9c07-652abde7c24a', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6722-7bdb-a998-f903280342f9', 'anonymous'),
  ('019d4300-6b44-7a55-a87b-9028a742ef7f', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6b30-7a8d-86cc-21bfca0a8064', 'administrator'),
  ('019d4300-6b5f-7b86-8cde-ab8a167b5957', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6b30-7a8d-86cc-21bfca0a8064', 'authenticated'),
  ('019d4300-6b78-7e68-959e-74d76cc371de', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6b30-7a8d-86cc-21bfca0a8064', 'anonymous'),
  ('019d4300-6ca1-7acb-91f7-50ea1da05c4e', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6c86-786a-b55f-0c75438df2a1', 'administrator'),
  ('019d4300-6cbb-71cf-9128-be6c6b0e81db', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6c86-786a-b55f-0c75438df2a1', 'authenticated'),
  ('019d4300-6cd2-7b74-bb6a-336da788808a', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6c86-786a-b55f-0c75438df2a1', 'anonymous'),
  ('019d4300-6d81-734d-8d5e-243e143f1ee1', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6d68-7dee-aad9-7434f9b11bbe', 'administrator'),
  ('019d4300-6d98-77d6-9537-c1808c8c676a', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6d68-7dee-aad9-7434f9b11bbe', 'authenticated'),
  ('019d4300-6db2-78cb-aeb5-d1814ab38720', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6d68-7dee-aad9-7434f9b11bbe', 'anonymous'),
  ('019d4300-7bce-79ca-8f79-418dc7afc188', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7bb9-762e-9a1d-b999dea88b8d', 'administrator'),
  ('019d4300-7be7-7843-b9a2-442f7aea6c0d', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7bb9-762e-9a1d-b999dea88b8d', 'authenticated'),
  ('019d4300-7c00-75d4-84de-c79532df3eab', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7bb9-762e-9a1d-b999dea88b8d', 'anonymous'),
  ('019d4300-7cbc-7581-8936-1224d3b5593b', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7ca1-767d-9498-7d8c8aae7d5b', 'administrator'),
  ('019d4300-7cd4-7d42-bfbe-4011fd3be404', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7ca1-767d-9498-7d8c8aae7d5b', 'authenticated'),
  ('019d4300-7cef-7208-af2b-04d9bcfe30c9', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7ca1-767d-9498-7d8c8aae7d5b', 'anonymous'),
  ('019d4300-9379-70e7-a756-1fd641bf55fa', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-9354-7eea-809c-f12007613a9d', 'administrator'),
  ('019d4300-9397-7387-a4be-78f5cc336d26', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-9354-7eea-809c-f12007613a9d', 'authenticated'),
  ('019d4300-93b5-7a0f-9494-c84d56f2befe', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-9354-7eea-809c-f12007613a9d', 'anonymous');


SET session_replication_role TO DEFAULT;


