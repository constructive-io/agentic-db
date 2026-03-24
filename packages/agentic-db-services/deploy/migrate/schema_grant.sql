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
  ('0957ec91-b6e0-3377-6833-896cce09bd5e', 'fdf8a620-6969-72d5-d89a-ed384259d249', '6e16cbb4-ce18-b5c0-9094-e85eceba4aac', 'anonymous'),
  ('0a898f49-84fb-b3eb-ca82-1b553be089fe', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'a2eb6b64-0376-3481-e713-9258e486fdba', 'administrator'),
  ('10290b3b-b380-817f-15c0-05c33a6db9ff', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'f7f9e477-72d7-d469-8909-16a70915e9d5', 'authenticated'),
  ('15fd9da7-0f84-4f23-fa4b-3e8ff25477e7', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'bd4ba12c-6e3f-cc44-a1ad-64fcdb0ff052', 'authenticated'),
  ('16789a3d-6016-46f7-2f36-1d798f1e9271', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'f3aaa8df-cd60-58f4-bb6a-0c27c21ae9a7', 'administrator'),
  ('1891e106-affe-9fd4-eb54-e2071164768c', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'eeb1aa89-f88f-71ab-1cb6-5bd4633ab5ff', 'administrator'),
  ('18e56641-7632-1f2c-5291-09648a58c400', 'fdf8a620-6969-72d5-d89a-ed384259d249', '11ce582f-ee6f-02b8-a5aa-5d630e8f9569', 'anonymous'),
  ('1a1ff3bb-4c6a-2afa-b1af-5563cf0d469f', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ff1bb0fc-6007-c362-8fe1-814dd187cedf', 'authenticated'),
  ('1d4540ad-0b02-761c-4918-deb408e8cef0', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'bc5b9197-1a71-2d22-1970-63e1e07d7c7e', 'authenticated'),
  ('23c07a14-9cf6-ebdc-9f5b-8c754c14cd98', 'fdf8a620-6969-72d5-d89a-ed384259d249', '3c4ef6b4-438c-128a-7654-5af17798e439', 'administrator'),
  ('2636a6a5-1160-27f5-bda5-12532c3a1121', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'e005449b-7ef7-37df-9c51-2cfec020fa43', 'authenticated'),
  ('27eac60b-7b3b-c7ea-7543-59ea0ecbed09', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'c9de8540-bf1d-2bbb-518d-39b893b55636', 'anonymous'),
  ('2869ac25-a0dc-909b-3a37-9ed42506b835', 'fdf8a620-6969-72d5-d89a-ed384259d249', '343368ea-17de-176c-f14b-ee59fef96a24', 'anonymous'),
  ('28892faf-627d-ee00-ecb2-83982d15b80d', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'f27e15b4-8682-5826-c090-4043aec62aa1', 'anonymous'),
  ('2fad6e9a-4931-b18c-25ca-019c079ff8c5', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ff1bb0fc-6007-c362-8fe1-814dd187cedf', 'anonymous'),
  ('36e27c71-f14e-bee9-6fa2-f5dfa999b20b', 'fdf8a620-6969-72d5-d89a-ed384259d249', '7652b564-62c7-22d6-ad88-2b68efdaab16', 'authenticated'),
  ('3aa218ab-d648-c8a4-96fb-86838cc4748c', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'f7f9e477-72d7-d469-8909-16a70915e9d5', 'administrator'),
  ('3bd4f5c5-79ae-99f7-6c73-65b9985ff3e9', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'bf7de37d-942e-7f7a-cebb-49664a1cf370', 'authenticated'),
  ('3eb141ca-c9c5-55e3-ba1a-1f05952dc72e', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'f27e15b4-8682-5826-c090-4043aec62aa1', 'administrator'),
  ('420f0b53-8938-9276-5500-ee9cef4cfd1c', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'e005449b-7ef7-37df-9c51-2cfec020fa43', 'administrator'),
  ('43083746-36d3-a8ef-b506-04b3ff1094b1', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'bf7de37d-942e-7f7a-cebb-49664a1cf370', 'administrator'),
  ('4c79e786-138e-0ae2-1d01-8349403c3dee', 'fdf8a620-6969-72d5-d89a-ed384259d249', '87f71f30-fdc9-e2b0-53e3-d11ad859f75e', 'authenticated'),
  ('4e56709f-bd24-34d0-4bdc-dd31c83fcb1a', 'fdf8a620-6969-72d5-d89a-ed384259d249', '8f7308b0-c788-f566-4959-59c563e849da', 'anonymous'),
  ('4fa2a5a8-0754-4653-0951-60f54f3a9c94', 'fdf8a620-6969-72d5-d89a-ed384259d249', '4ae689ab-c446-e2cc-0056-daef88da7a6b', 'administrator'),
  ('5046a35c-03f4-f25f-1528-e913c7862154', 'fdf8a620-6969-72d5-d89a-ed384259d249', '3c4ef6b4-438c-128a-7654-5af17798e439', 'anonymous'),
  ('566d76c7-aca4-4ca9-f81b-6a5004cf5050', 'fdf8a620-6969-72d5-d89a-ed384259d249', '4ae689ab-c446-e2cc-0056-daef88da7a6b', 'authenticated'),
  ('623e9317-90cc-9c3d-f573-3973222701eb', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'e0ca3db8-86c1-6d4a-9868-f63771343a59', 'administrator'),
  ('63782191-e155-90dd-a6ee-a2818ddf4195', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'bd4ba12c-6e3f-cc44-a1ad-64fcdb0ff052', 'anonymous'),
  ('666b001f-e5eb-d590-6953-43c142a32e73', 'fdf8a620-6969-72d5-d89a-ed384259d249', '3d6f356b-94c8-82c5-251f-0e5a5540c83a', 'authenticated'),
  ('66c8b785-cd4f-a51e-e8ea-dda52c429479', 'fdf8a620-6969-72d5-d89a-ed384259d249', '3c4ef6b4-438c-128a-7654-5af17798e439', 'authenticated'),
  ('871109d2-827c-d040-47eb-c70221f528e0', 'fdf8a620-6969-72d5-d89a-ed384259d249', '43d51e76-c81d-cf4c-73dc-9a819c9ef1fb', 'authenticated'),
  ('893402ed-67d0-0706-e032-8d5bb8b9e9b1', 'fdf8a620-6969-72d5-d89a-ed384259d249', '11ce582f-ee6f-02b8-a5aa-5d630e8f9569', 'administrator'),
  ('8da528ab-8650-c912-3e32-f56e64615bcd', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'bc5b9197-1a71-2d22-1970-63e1e07d7c7e', 'anonymous'),
  ('8e26c627-9260-4f34-5fa3-2527c335b381', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'e0ca3db8-86c1-6d4a-9868-f63771343a59', 'authenticated'),
  ('901a720b-1db5-618d-dd42-aec4f9925eb1', 'fdf8a620-6969-72d5-d89a-ed384259d249', '6e16cbb4-ce18-b5c0-9094-e85eceba4aac', 'authenticated'),
  ('90388792-1cf8-3299-5e48-f8f0ca6084fb', 'fdf8a620-6969-72d5-d89a-ed384259d249', '8f7308b0-c788-f566-4959-59c563e849da', 'administrator'),
  ('90ec4088-760a-3daa-bb48-f65d04c64b41', 'fdf8a620-6969-72d5-d89a-ed384259d249', '73039e61-65c0-7ce3-9869-9bbcb0468fde', 'authenticated'),
  ('9287631f-2ed5-206a-e8db-f4477b146d30', 'fdf8a620-6969-72d5-d89a-ed384259d249', '87f71f30-fdc9-e2b0-53e3-d11ad859f75e', 'administrator'),
  ('9663a1e1-939f-d815-859c-8e213c1b4a7c', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'c9de8540-bf1d-2bbb-518d-39b893b55636', 'administrator'),
  ('96804809-20eb-5aab-d31e-ed02306df283', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'e005449b-7ef7-37df-9c51-2cfec020fa43', 'anonymous'),
  ('9a1a130e-cb59-c3f4-b9a8-d7b8f3142f82', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'a2eb6b64-0376-3481-e713-9258e486fdba', 'authenticated'),
  ('9b58f033-637b-e550-c9ab-f71043d212c2', 'fdf8a620-6969-72d5-d89a-ed384259d249', '0ccc8ccf-e55c-3b1f-bc25-c6f20115dade', 'authenticated'),
  ('a15be777-6349-861d-0b58-4a594e8100df', 'fdf8a620-6969-72d5-d89a-ed384259d249', '73039e61-65c0-7ce3-9869-9bbcb0468fde', 'anonymous'),
  ('aac0f527-82fc-ecb9-5b31-121f86989b2f', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'bd4ba12c-6e3f-cc44-a1ad-64fcdb0ff052', 'administrator'),
  ('aadd0334-e37c-909d-8035-3b54bd9e0ea5', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'eeb1aa89-f88f-71ab-1cb6-5bd4633ab5ff', 'anonymous'),
  ('aae37966-05fa-4192-c96c-929ad8b10cd4', 'fdf8a620-6969-72d5-d89a-ed384259d249', '6e16cbb4-ce18-b5c0-9094-e85eceba4aac', 'administrator'),
  ('acd4656c-08d5-1d06-e32c-0586974eb31a', 'fdf8a620-6969-72d5-d89a-ed384259d249', '343368ea-17de-176c-f14b-ee59fef96a24', 'authenticated'),
  ('b0faf0d3-ff1b-3c1a-6c7d-623a7ff1fdfc', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'f3aaa8df-cd60-58f4-bb6a-0c27c21ae9a7', 'anonymous'),
  ('b2359a97-2599-2f30-7e93-7acbd9d3b97b', 'fdf8a620-6969-72d5-d89a-ed384259d249', '4ae689ab-c446-e2cc-0056-daef88da7a6b', 'anonymous'),
  ('b44d43f8-5f02-db87-43dc-4631fd1b2da2', 'fdf8a620-6969-72d5-d89a-ed384259d249', '43d51e76-c81d-cf4c-73dc-9a819c9ef1fb', 'administrator'),
  ('b8454d6f-f8dc-0c6b-7e6c-b5f63e76aa27', 'fdf8a620-6969-72d5-d89a-ed384259d249', '11ce582f-ee6f-02b8-a5aa-5d630e8f9569', 'authenticated'),
  ('b982b765-6a34-58c3-aaa3-3d3502a7ee49', 'fdf8a620-6969-72d5-d89a-ed384259d249', '73039e61-65c0-7ce3-9869-9bbcb0468fde', 'administrator'),
  ('bb5a65b0-92f8-9c0a-b14b-4687bfa43c13', 'fdf8a620-6969-72d5-d89a-ed384259d249', '87f71f30-fdc9-e2b0-53e3-d11ad859f75e', 'anonymous'),
  ('c036f1db-60e8-b221-4fa9-65501011b484', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'c9de8540-bf1d-2bbb-518d-39b893b55636', 'authenticated'),
  ('c1433a0a-9b87-d459-5002-27a37711bff8', 'fdf8a620-6969-72d5-d89a-ed384259d249', '8f7308b0-c788-f566-4959-59c563e849da', 'authenticated'),
  ('c2477e20-68e0-0aa0-d6f0-3a13654efa80', 'fdf8a620-6969-72d5-d89a-ed384259d249', '0ccc8ccf-e55c-3b1f-bc25-c6f20115dade', 'administrator'),
  ('c2d079c3-0751-4cd4-8c25-5f587c7fd93f', 'fdf8a620-6969-72d5-d89a-ed384259d249', '3d6f356b-94c8-82c5-251f-0e5a5540c83a', 'anonymous'),
  ('c65ae5ff-3d61-e770-c63f-24bb4895446d', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'bf7de37d-942e-7f7a-cebb-49664a1cf370', 'anonymous'),
  ('c8f18a61-4cc2-5468-9cbf-c6ff6d7fe66b', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'f3aaa8df-cd60-58f4-bb6a-0c27c21ae9a7', 'authenticated'),
  ('ca7be0ff-8219-0e8a-77a8-8469e3f570e2', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'bc5b9197-1a71-2d22-1970-63e1e07d7c7e', 'administrator'),
  ('cb2eac34-bd71-78a5-0713-801f33a2a2a2', 'fdf8a620-6969-72d5-d89a-ed384259d249', '343368ea-17de-176c-f14b-ee59fef96a24', 'administrator'),
  ('cbc8ed5d-6849-e877-4fc0-09f107d59efc', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'eeb1aa89-f88f-71ab-1cb6-5bd4633ab5ff', 'authenticated'),
  ('cc9880e1-9bc8-dbf1-2c53-488d87d38c5d', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'a2eb6b64-0376-3481-e713-9258e486fdba', 'anonymous'),
  ('d0eb0995-94fa-6d57-8c25-aeef15dd1181', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'e0ca3db8-86c1-6d4a-9868-f63771343a59', 'anonymous'),
  ('dbad64a9-6ebb-acfd-a2ab-cc9feabb71e7', 'fdf8a620-6969-72d5-d89a-ed384259d249', '43d51e76-c81d-cf4c-73dc-9a819c9ef1fb', 'anonymous'),
  ('e0c8acd6-a174-b267-9cb9-f9a73c1612df', 'fdf8a620-6969-72d5-d89a-ed384259d249', '0ccc8ccf-e55c-3b1f-bc25-c6f20115dade', 'anonymous'),
  ('e1ec47f0-112e-5dc6-552b-fc958f1f7be8', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ff1bb0fc-6007-c362-8fe1-814dd187cedf', 'administrator'),
  ('e3988f82-8652-6959-81f3-20b6e661c5e7', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'f7f9e477-72d7-d469-8909-16a70915e9d5', 'anonymous'),
  ('e4e66025-4567-f457-4fd9-ddbcefb83055', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'f27e15b4-8682-5826-c090-4043aec62aa1', 'authenticated'),
  ('ed046429-8edd-b769-33c0-806f95ca095e', 'fdf8a620-6969-72d5-d89a-ed384259d249', '7652b564-62c7-22d6-ad88-2b68efdaab16', 'anonymous'),
  ('f14a89d8-a08f-31b5-9462-d5948b5378ea', 'fdf8a620-6969-72d5-d89a-ed384259d249', '7652b564-62c7-22d6-ad88-2b68efdaab16', 'administrator'),
  ('fc36f728-0562-810d-da09-53c1d21648c3', 'fdf8a620-6969-72d5-d89a-ed384259d249', '3d6f356b-94c8-82c5-251f-0e5a5540c83a', 'administrator');


SET session_replication_role TO DEFAULT;


