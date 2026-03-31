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
  ('019d416f-32c0-7a5e-b096-2dcb526aaa64', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3277-72f0-a72e-84351425b6b4', 'administrator'),
  ('019d416f-32ee-710b-b259-90b729c065fe', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3277-72f0-a72e-84351425b6b4', 'authenticated'),
  ('019d416f-3315-7cfb-808c-65d8729b4646', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3277-72f0-a72e-84351425b6b4', 'anonymous'),
  ('019d416f-34bd-7a2b-ac75-68187a2481e0', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3279-737e-9f76-f2c57a95239f', 'administrator'),
  ('019d416f-34dc-7681-b39d-0a9ae78474d0', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3279-737e-9f76-f2c57a95239f', 'authenticated'),
  ('019d416f-34f7-7678-8650-62b92967571a', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3279-737e-9f76-f2c57a95239f', 'anonymous'),
  ('019d416f-35af-7ef8-a5da-a49d08ea656e', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3598-77b7-87c4-a9b4f6c75faa', 'administrator'),
  ('019d416f-35c6-786e-8920-b3dfc7c226e7', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3598-77b7-87c4-a9b4f6c75faa', 'authenticated'),
  ('019d416f-35e9-7aad-91d9-32890aeb2976', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3598-77b7-87c4-a9b4f6c75faa', 'anonymous'),
  ('019d416f-36a9-7a3b-927d-bcbab4fb134e', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3696-76ea-9923-a549468f2fae', 'administrator'),
  ('019d416f-36c2-7032-bae3-1c8e1f9224ee', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3696-76ea-9923-a549468f2fae', 'authenticated'),
  ('019d416f-36d9-769c-8683-ce5f052c978a', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3696-76ea-9923-a549468f2fae', 'anonymous'),
  ('019d416f-3790-772d-8c99-eb5abfd8c451', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-377d-7503-9eca-199aa3a1bcdb', 'administrator'),
  ('019d416f-37a9-7e0e-bbe3-5ab2e6bbc403', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-377d-7503-9eca-199aa3a1bcdb', 'authenticated'),
  ('019d416f-37c3-7346-83bd-1343946d3c81', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-377d-7503-9eca-199aa3a1bcdb', 'anonymous'),
  ('019d416f-3caa-7386-97e2-f1eeb8e0bd1d', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3c9c-7189-bb0c-e43871321173', 'administrator'),
  ('019d416f-3cbc-7b98-9f33-7222113660b6', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3c9c-7189-bb0c-e43871321173', 'authenticated'),
  ('019d416f-3ccf-75a1-a787-4ee5fe92ae7a', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3c9c-7189-bb0c-e43871321173', 'anonymous'),
  ('019d416f-3f0e-7c4c-989c-6066d43236d4', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3f01-761a-994c-357209f4987d', 'administrator'),
  ('019d416f-3f23-7838-a54a-a58d1002da39', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3f01-761a-994c-357209f4987d', 'authenticated'),
  ('019d416f-3f36-76bf-b11c-998d7368e995', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3f01-761a-994c-357209f4987d', 'anonymous'),
  ('019d416f-3fb7-7949-9414-9d23c8b97e13', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3fa7-7264-b5fd-df510f8e5685', 'administrator'),
  ('019d416f-3fc9-7d88-9d18-4c1e77fad1fe', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3fa7-7264-b5fd-df510f8e5685', 'authenticated'),
  ('019d416f-3fdc-76ff-9ee5-05fd5619b20a', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3fa7-7264-b5fd-df510f8e5685', 'anonymous'),
  ('019d416f-439c-7746-8f73-f605beee4b76', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-438a-74a9-a9d4-eb3a7dda509e', 'administrator'),
  ('019d416f-43b0-7622-a20e-ae91079ad075', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-438a-74a9-a9d4-eb3a7dda509e', 'authenticated'),
  ('019d416f-43c4-7146-a76b-f4d429e0507f', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-438a-74a9-a9d4-eb3a7dda509e', 'anonymous'),
  ('019d416f-443d-7d18-b6f8-b75df9d7bd75', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-442d-7172-aa7a-d298566bf339', 'administrator'),
  ('019d416f-444f-7c5f-acd8-463402a18646', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-442d-7172-aa7a-d298566bf339', 'authenticated'),
  ('019d416f-4462-7843-ba33-a8577a833078', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-442d-7172-aa7a-d298566bf339', 'anonymous'),
  ('019d416f-47be-777f-bd9f-5cf9d8749d7c', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-47b0-78b7-8a15-68d1c1a5cd20', 'administrator'),
  ('019d416f-47cf-7ed3-8e27-428588d07396', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-47b0-78b7-8a15-68d1c1a5cd20', 'authenticated'),
  ('019d416f-47e1-7aef-985b-55d7a9f7bd13', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-47b0-78b7-8a15-68d1c1a5cd20', 'anonymous'),
  ('019d416f-5974-75cf-a4f6-5dfb5590d9a5', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-5966-717d-a590-da071769576d', 'administrator'),
  ('019d416f-598c-72b0-9614-41181587d345', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-5966-717d-a590-da071769576d', 'authenticated'),
  ('019d416f-599f-78a3-a076-82f0a024d5a8', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-5966-717d-a590-da071769576d', 'anonymous'),
  ('019d416f-5a1f-722f-a7c7-11ba8e614b24', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-5a0c-78e9-8ce9-ef4ce8014e01', 'administrator'),
  ('019d416f-5a31-7b44-88e2-c3f7d52cdebd', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-5a0c-78e9-8ce9-ef4ce8014e01', 'authenticated'),
  ('019d416f-5a45-7526-b6ba-e963f99fb053', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-5a0c-78e9-8ce9-ef4ce8014e01', 'anonymous'),
  ('019d416f-64a0-7fcb-a2c6-d458c5af7f7a', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-6491-702b-967e-ba6919a19cc1', 'administrator'),
  ('019d416f-64b5-726c-8d6f-5720221fc5c0', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-6491-702b-967e-ba6919a19cc1', 'authenticated'),
  ('019d416f-64c8-78fe-8c13-97042740502d', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-6491-702b-967e-ba6919a19cc1', 'anonymous'),
  ('019d416f-654b-7d34-8f87-79171d58bf23', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-6539-7d5e-a575-aee6f3fc9406', 'administrator'),
  ('019d416f-655e-7134-8eec-920fe89407db', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-6539-7d5e-a575-aee6f3fc9406', 'authenticated'),
  ('019d416f-6571-77f4-abfd-2ce0ed681a3e', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-6539-7d5e-a575-aee6f3fc9406', 'anonymous'),
  ('019d416f-cc30-7d49-8c6f-769f4f391dcd', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-cc1c-735a-a68f-a9336da8ec25', 'administrator'),
  ('019d416f-cc49-7cfd-a90e-63e9fa44e507', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-cc1c-735a-a68f-a9336da8ec25', 'authenticated'),
  ('019d416f-cc61-769c-8ea5-3527b79a0adb', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-cc1c-735a-a68f-a9336da8ec25', 'anonymous'),
  ('019d416f-cfc2-712d-abb4-5fad3e7d77a6', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-cfad-7e4b-b9af-9bb5209c5f61', 'administrator'),
  ('019d416f-cfda-7232-a94f-8c87b590386b', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-cfad-7e4b-b9af-9bb5209c5f61', 'authenticated'),
  ('019d416f-cff2-7ed9-8e77-7b5ffa70d681', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-cfad-7e4b-b9af-9bb5209c5f61', 'anonymous'),
  ('019d416f-e02d-7a85-a38c-0b839128f1f0', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e019-70f1-afa6-0d392d6c5cec', 'administrator'),
  ('019d416f-e045-7825-b87d-5fc1fe7c0805', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e019-70f1-afa6-0d392d6c5cec', 'authenticated'),
  ('019d416f-e05c-73b3-88f4-796f1daca37e', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e019-70f1-afa6-0d392d6c5cec', 'anonymous'),
  ('019d416f-e43d-7844-8ede-9659413b5864', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e428-7c91-84b3-441173f7e68c', 'administrator'),
  ('019d416f-e455-7c1e-a4e5-e2dc6e781ae0', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e428-7c91-84b3-441173f7e68c', 'authenticated'),
  ('019d416f-e46d-79d6-a04f-cf3970798c50', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e428-7c91-84b3-441173f7e68c', 'anonymous'),
  ('019d416f-e593-79c9-9ca4-1dab271d1f1d', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e579-75db-83d9-e2a13677ef1d', 'administrator'),
  ('019d416f-e5b1-78eb-baf6-110fbcb28244', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e579-75db-83d9-e2a13677ef1d', 'authenticated'),
  ('019d416f-e5ca-7e3e-ba13-89fb29526e93', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e579-75db-83d9-e2a13677ef1d', 'anonymous'),
  ('019d416f-e681-7164-9fe0-dbb6e5c0f676', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e66a-702e-8e0b-94a0d835daec', 'administrator'),
  ('019d416f-e69a-70f8-80c8-e031cd6d62a1', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e66a-702e-8e0b-94a0d835daec', 'authenticated'),
  ('019d416f-e6b2-7f1e-b158-037c1081d757', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e66a-702e-8e0b-94a0d835daec', 'anonymous'),
  ('019d416f-f65a-73c9-86c4-b635839a4930', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-f643-7f17-8992-1a4684867502', 'administrator'),
  ('019d416f-f674-70f2-b173-4ddc494f5d5e', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-f643-7f17-8992-1a4684867502', 'authenticated'),
  ('019d416f-f68d-7228-a955-0b0ff450d36a', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-f643-7f17-8992-1a4684867502', 'anonymous'),
  ('019d416f-f752-766c-b7f1-4d9bf7cd8e56', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-f737-7be3-a72a-5f2cb1fd6096', 'administrator'),
  ('019d416f-f76d-79c9-9a86-179685840eab', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-f737-7be3-a72a-5f2cb1fd6096', 'authenticated'),
  ('019d416f-f788-72c6-93eb-98f8b8693317', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-f737-7be3-a72a-5f2cb1fd6096', 'anonymous'),
  ('019d4170-0df7-7248-a0ba-e2574ca757a1', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d4170-0de1-7791-a79c-c4d5284ddefe', 'administrator'),
  ('019d4170-0e0e-7e87-bc60-638add4b7e4c', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d4170-0de1-7791-a79c-c4d5284ddefe', 'authenticated'),
  ('019d4170-0e28-73d4-b9f7-24a312566c5a', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d4170-0de1-7791-a79c-c4d5284ddefe', 'anonymous');


SET session_replication_role TO DEFAULT;


