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
  ('052aa9e6-4b32-f663-64ed-ed12792de2c4', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'b63596fb-0d8d-403d-c55b-23ccdf3cbf2b', 'anonymous'),
  ('061c3e63-b228-d1f4-bd88-b120924bfe1a', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e0484cce-f237-83e0-38cc-9237396461bf', 'authenticated'),
  ('0dfd4d27-78a7-fa0a-64c8-7df46f189ec4', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'c4122275-13d5-60b5-6e1c-89657a87ec34', 'administrator'),
  ('1b565a50-b2c6-1bdc-a44e-245b12a260dc', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '0c0c780f-932a-f178-1823-6b5c12b5ef4d', 'administrator'),
  ('1d514a44-9490-968c-4322-2420e5d83fcf', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8ecd91da-06ae-c2bb-62d1-de71d843012e', 'administrator'),
  ('1e8b0738-eefb-caa1-e7cf-9dac8f81f199', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'af50636a-cc1b-4aba-4f61-3212a897fc81', 'administrator'),
  ('230b6672-a43e-c3e3-7c94-b5779a5dc94b', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e0484cce-f237-83e0-38cc-9237396461bf', 'anonymous'),
  ('25b9a494-a519-d416-a472-e5b6509649de', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '0c0c780f-932a-f178-1823-6b5c12b5ef4d', 'authenticated'),
  ('26323702-9b7e-0250-76b3-147d105c03d0', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'cd10eaa0-c4b6-aeb0-9d6b-eee90bc85730', 'administrator'),
  ('2a5563d4-e772-4611-f919-030cfad45eef', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'efb3b5d4-50f4-f1c2-b5ad-5c27f1a0d15e', 'authenticated'),
  ('2a75eef7-e1cc-01e9-8873-69a32f86200e', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'cd10eaa0-c4b6-aeb0-9d6b-eee90bc85730', 'authenticated'),
  ('2ba550bd-ea89-52a1-50c6-15f314acbe3e', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '42be1a76-ba10-b5cd-3ba9-2318d0d28b3c', 'administrator'),
  ('2efdb14f-43be-a71c-53df-7cfb5671854a', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e3af2a09-df53-721e-3fe0-5289578e5d09', 'anonymous'),
  ('37a923f9-85d9-fa0d-8f54-56482abcdcc4', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8386d7da-fb67-d0e4-1f9e-66c2664e364d', 'authenticated'),
  ('38d7cfb0-fa4a-cdc7-984f-60978df1a368', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'cd10eaa0-c4b6-aeb0-9d6b-eee90bc85730', 'anonymous'),
  ('3aabc385-bca6-f88d-ba65-92ce0b670355', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8ecd91da-06ae-c2bb-62d1-de71d843012e', 'anonymous'),
  ('3ad633ae-9bf2-c2b9-3b85-3233dd50b7d7', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'a906f632-e7bf-07fe-e109-db368bf6f3a2', 'anonymous'),
  ('3d3b9eb6-8da0-8448-d096-f58d774b2661', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e3af2a09-df53-721e-3fe0-5289578e5d09', 'authenticated'),
  ('3d78f998-c325-9319-0183-c83e8ae4eeda', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'db6d695b-2875-6cb2-5045-718fb4acf97c', 'anonymous'),
  ('417acb81-bd8a-f527-8f69-a56fd8e9380c', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e695c734-fa1c-d164-4946-4587a97f3b04', 'authenticated'),
  ('44534ede-03f6-a8e7-5f6b-3f60c90ff890', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '0bbabd9e-b4d7-8d68-1bf5-0b49d841b9ee', 'authenticated'),
  ('462ff76f-aea3-9dfe-502e-abd6e64c4b4e', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e3af2a09-df53-721e-3fe0-5289578e5d09', 'administrator'),
  ('4d1c58c1-9ae7-f4df-f90f-c4b3ceac0ca1', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'af50636a-cc1b-4aba-4f61-3212a897fc81', 'anonymous'),
  ('4e6291f8-2e75-6a6b-252d-6714ed9e1bc4', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e695c734-fa1c-d164-4946-4587a97f3b04', 'anonymous'),
  ('50b2f514-660a-813c-822f-fc9a2bacce0e', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e0e16f38-1c16-2921-39fa-f481233a9ba1', 'anonymous'),
  ('548c9e06-8327-6dfe-88dd-bba47fca905d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '42e601b4-c9b7-85c6-8070-280206198cb1', 'authenticated'),
  ('56a35582-aa74-d7ef-1cd6-1ea8f6005880', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e0e16f38-1c16-2921-39fa-f481233a9ba1', 'authenticated'),
  ('592a6755-1c30-7428-6ae4-9f4f6ef9cb58', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'ab689d40-f54d-1977-4b91-6c20b76e8464', 'administrator'),
  ('5bde103a-61a2-ef5d-481d-2ff88164d090', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'efb3b5d4-50f4-f1c2-b5ad-5c27f1a0d15e', 'administrator'),
  ('5be869ad-93b6-1566-39f8-c6690430c0d2', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '5255939a-a6c7-e342-1d6f-d3c93fc9b7f9', 'administrator'),
  ('5d963aed-99b7-1ee6-9b21-5e1fe76d8cb3', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'df370469-c3cb-32a2-054c-173a2f06e5b7', 'administrator'),
  ('5e3e31d1-cc0c-1b0e-74cb-fbb910b7a073', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '0c0c780f-932a-f178-1823-6b5c12b5ef4d', 'anonymous'),
  ('673ae97f-2b94-0ac7-e534-348be14efe77', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e695c734-fa1c-d164-4946-4587a97f3b04', 'administrator'),
  ('67e1f34d-34b8-813d-9159-844941220cb5', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'c4122275-13d5-60b5-6e1c-89657a87ec34', 'anonymous'),
  ('697a76fd-fd2b-ffc3-f5d5-033ee7e9a562', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'b0fef0a3-d187-0423-4152-0887820a558a', 'anonymous'),
  ('69842817-0a7b-4eba-09a0-56a1c882e064', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8ecd91da-06ae-c2bb-62d1-de71d843012e', 'authenticated'),
  ('6c218b1e-6f56-3de8-6161-55f16854defc', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'ab689d40-f54d-1977-4b91-6c20b76e8464', 'authenticated'),
  ('6ce3ef2a-ec71-d747-f5dc-2fd30dee9232', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '0bbabd9e-b4d7-8d68-1bf5-0b49d841b9ee', 'anonymous'),
  ('6e04ffbc-e5cf-748a-8c50-b40870618d5d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '3c90c870-5be4-80bc-46c2-ebdeaca29c29', 'anonymous'),
  ('72076b2f-658a-d3f7-a35f-a7354e007f1d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'b63596fb-0d8d-403d-c55b-23ccdf3cbf2b', 'administrator'),
  ('738a1e10-4005-b297-6037-daa7a0474b15', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '3c90c870-5be4-80bc-46c2-ebdeaca29c29', 'authenticated'),
  ('7524d8b4-1e62-4254-f7ab-f51d12fbb8e9', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'c4122275-13d5-60b5-6e1c-89657a87ec34', 'authenticated'),
  ('7bcf9c6a-5374-7589-cf00-e6afc8e66530', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '0bbabd9e-b4d7-8d68-1bf5-0b49d841b9ee', 'administrator'),
  ('7d0fd61b-8672-8474-5003-b6982a54bc8c', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '3c90c870-5be4-80bc-46c2-ebdeaca29c29', 'administrator'),
  ('8f672328-c26e-30d1-546c-810ed123150d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'ab689d40-f54d-1977-4b91-6c20b76e8464', 'anonymous'),
  ('9517e7a5-b04b-4bb2-a833-d7010b4373b7', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '42be1a76-ba10-b5cd-3ba9-2318d0d28b3c', 'anonymous'),
  ('a68f63cd-b98f-879f-3522-a9ab4427c1b9', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'efb3b5d4-50f4-f1c2-b5ad-5c27f1a0d15e', 'anonymous'),
  ('a7b86300-d4a4-1874-3d4d-94af1e9d1544', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'b0fef0a3-d187-0423-4152-0887820a558a', 'authenticated'),
  ('ab311d12-dba5-cdea-a0c0-03e7152023bd', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'b0fef0a3-d187-0423-4152-0887820a558a', 'administrator'),
  ('afa003cc-6513-23df-52ec-2af66d434518', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'd1bcbc12-1cce-8994-1ea3-cdb659c8dc81', 'authenticated'),
  ('b10b55ab-45d7-d728-0189-92f035b585fc', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e0e16f38-1c16-2921-39fa-f481233a9ba1', 'administrator'),
  ('b5089455-4216-27a8-7d6f-91e6fba67f2a', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'df370469-c3cb-32a2-054c-173a2f06e5b7', 'anonymous'),
  ('b7460b5f-33e4-656a-ed5f-a8044759de5e', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'd1bcbc12-1cce-8994-1ea3-cdb659c8dc81', 'administrator'),
  ('b879c71f-84f2-a054-5d97-ce627d78dc60', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'd1bcbc12-1cce-8994-1ea3-cdb659c8dc81', 'anonymous'),
  ('bd4403e4-094d-6c70-f518-859b01ea192f', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'db6d695b-2875-6cb2-5045-718fb4acf97c', 'administrator'),
  ('be323afa-65ca-52aa-7726-44f02a8a7377', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '42e601b4-c9b7-85c6-8070-280206198cb1', 'anonymous'),
  ('bfe2a71a-bf61-8b90-d0ba-d63a4d647d51', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'a906f632-e7bf-07fe-e109-db368bf6f3a2', 'administrator'),
  ('c28c68e7-7043-b397-c560-016007f33496', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8386d7da-fb67-d0e4-1f9e-66c2664e364d', 'administrator'),
  ('c56b6e03-6d3e-d5c4-f5b4-4b40b54a9e66', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'df370469-c3cb-32a2-054c-173a2f06e5b7', 'authenticated'),
  ('ca6f55de-4a87-95cc-5828-3ba94cf7a51b', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '5255939a-a6c7-e342-1d6f-d3c93fc9b7f9', 'authenticated'),
  ('d1170e57-a2f7-0c80-80c0-b6421913a5f5', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8386d7da-fb67-d0e4-1f9e-66c2664e364d', 'anonymous'),
  ('d4624ace-15c5-a254-73dd-e8e2bffa657b', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e0484cce-f237-83e0-38cc-9237396461bf', 'administrator'),
  ('dd3da29f-66ff-70e4-94bf-3ad93d394a3d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'a906f632-e7bf-07fe-e109-db368bf6f3a2', 'authenticated'),
  ('de49908c-31c9-57a5-4000-0a03cc18de4f', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'a716f61a-35d1-575d-553c-8fbffc909ce4', 'administrator'),
  ('de9d8165-ed50-6994-419f-988c1e41fd96', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '42e601b4-c9b7-85c6-8070-280206198cb1', 'administrator'),
  ('e0a1073e-6da8-eebf-71bb-e717deb1dacb', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '5255939a-a6c7-e342-1d6f-d3c93fc9b7f9', 'anonymous'),
  ('e1b826be-b71d-85d3-a27b-f217c8e10f02', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'a716f61a-35d1-575d-553c-8fbffc909ce4', 'anonymous'),
  ('e2e18cea-b80b-8af7-6cef-5ed61be880ea', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'af50636a-cc1b-4aba-4f61-3212a897fc81', 'authenticated'),
  ('e3f19d44-480c-7314-b599-ff4155f3662a', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '42be1a76-ba10-b5cd-3ba9-2318d0d28b3c', 'authenticated'),
  ('f86c29b1-cfb4-194a-3aea-f30b2fd01e76', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'a716f61a-35d1-575d-553c-8fbffc909ce4', 'authenticated'),
  ('fa3824a3-df13-efcf-d606-fc5c3654984f', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'b63596fb-0d8d-403d-c55b-23ccdf3cbf2b', 'authenticated'),
  ('fe22547d-a095-a205-ea9a-82a03f24f55e', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'db6d695b-2875-6cb2-5045-718fb4acf97c', 'authenticated');


SET session_replication_role TO DEFAULT;


