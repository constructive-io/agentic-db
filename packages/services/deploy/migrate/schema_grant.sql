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
  ('9bc1ca32-03d6-4d06-1219-d614441461b4', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15f10-1fd4-453f-651b-f69a8ecc64d6', 'administrator'),
  ('9bc1cd4d-5afb-4794-55e9-be6f957337f4', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15f10-1fd4-453f-651b-f69a8ecc64d6', 'authenticated'),
  ('9bc1140a-9bc6-4a21-eaf3-73be7d68965f', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15f10-1fd4-453f-651b-f69a8ecc64d6', 'anonymous'),
  ('9bc1817d-a8ae-4de4-4354-e135587cbe88', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc11478-e8dd-4e1b-6f3a-26b4d752f339', 'administrator'),
  ('9bc1b582-5a2c-4372-8255-12221131636c', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc11478-e8dd-4e1b-6f3a-26b4d752f339', 'authenticated'),
  ('9bc13e18-c2e3-400e-b7e1-edae003890a3', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc11478-e8dd-4e1b-6f3a-26b4d752f339', 'anonymous'),
  ('9bc137fd-58b5-466d-9868-cb6cf8173f61', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1d35c-4bca-4aa6-3129-497cf17e7c74', 'administrator'),
  ('9bc16634-ce53-4e1e-1087-3a3b69c8672e', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1d35c-4bca-4aa6-3129-497cf17e7c74', 'authenticated'),
  ('9bc192b4-981b-464f-fbb1-5791704844fe', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1d35c-4bca-4aa6-3129-497cf17e7c74', 'anonymous'),
  ('9bc140c0-c499-40c0-b82e-d594be060cc9', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc10fed-678e-4cc3-2e15-c2aca226b5b0', 'administrator'),
  ('9bc139fd-4aba-4b74-264e-5824a79bbf86', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc10fed-678e-4cc3-2e15-c2aca226b5b0', 'authenticated'),
  ('9bc1d427-ae26-4a82-3a4b-eba6c5d5b322', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc10fed-678e-4cc3-2e15-c2aca226b5b0', 'anonymous'),
  ('9bc1e7d0-f055-4f39-0620-e663c267b550', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15355-9569-493c-22f5-114c7c5c1c5f', 'administrator'),
  ('9bc152d6-7bf4-4d52-cea1-c0777b421cc7', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15355-9569-493c-22f5-114c7c5c1c5f', 'authenticated'),
  ('9bc1f383-9a19-4d72-f122-c86e83bdfdf1', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15355-9569-493c-22f5-114c7c5c1c5f', 'anonymous'),
  ('9bc1fea2-83b1-4229-9ea2-f0e15afd364d', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc182c5-302d-474c-c74c-02be749f675f', 'administrator'),
  ('9bc15eb6-b8e9-4629-1d26-d8177519812c', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc182c5-302d-474c-c74c-02be749f675f', 'authenticated'),
  ('9bc14b6b-f9c5-40fa-b5a0-1c188e91d9ff', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc182c5-302d-474c-c74c-02be749f675f', 'anonymous'),
  ('9bc12f0a-235d-4e46-3e0a-2edbc75c0158', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc190de-3805-4618-f647-779f6633698b', 'administrator'),
  ('9bc12911-835b-4125-f17b-9a49e307604b', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc190de-3805-4618-f647-779f6633698b', 'authenticated'),
  ('9bc1bcbf-e4dd-44b2-2bcd-6797c7697405', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc190de-3805-4618-f647-779f6633698b', 'anonymous'),
  ('9bc164ce-1ad4-410c-1401-14e0b566c095', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e3ac-0a41-488a-0d15-bb48423ccefd', 'administrator'),
  ('9bc15cf0-34a7-459e-d2c5-483ad7be5def', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e3ac-0a41-488a-0d15-bb48423ccefd', 'authenticated'),
  ('9bc1f8b2-36f2-406f-6476-aec1807b96d3', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e3ac-0a41-488a-0d15-bb48423ccefd', 'anonymous'),
  ('9bc13377-be5b-41e9-182b-3b00e1fe7a11', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c0d4-dc91-475c-df6e-fb6a6a78144c', 'administrator'),
  ('9bc1d655-33ce-4d35-6bb3-db196d45fa50', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c0d4-dc91-475c-df6e-fb6a6a78144c', 'authenticated'),
  ('9bc15570-5727-44b2-7a3c-b2baf68261b6', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c0d4-dc91-475c-df6e-fb6a6a78144c', 'anonymous'),
  ('9bc1dc3f-1a14-4d24-0191-7874e95aac4b', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc199e2-fa86-421f-61a9-3a4c73ecd43c', 'administrator'),
  ('9bc1a06a-a638-493d-883e-ac0276bf8134', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc199e2-fa86-421f-61a9-3a4c73ecd43c', 'authenticated'),
  ('9bc1a692-b31e-4c8d-c61d-f9780006cd2a', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc199e2-fa86-421f-61a9-3a4c73ecd43c', 'anonymous'),
  ('9bc1c86c-6e18-49d9-e9b9-1a0d6748457e', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15150-00d3-4748-493e-ce24299e8088', 'administrator'),
  ('9bc1f6d1-15f9-4377-a0e8-50036ebf0757', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15150-00d3-4748-493e-ce24299e8088', 'authenticated'),
  ('9bc176a2-eed8-4de8-20fd-a19011550c21', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15150-00d3-4748-493e-ce24299e8088', 'anonymous'),
  ('9bc11d96-47d6-4346-74f3-ecf123a774e3', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc18d87-4174-48d7-4462-65bc8c8940b1', 'administrator'),
  ('9bc1ac34-a055-469b-dbdc-02897678cd25', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc18d87-4174-48d7-4462-65bc8c8940b1', 'authenticated'),
  ('9bc14128-52e1-4c82-9ec8-f4ecbbb4bb01', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc18d87-4174-48d7-4462-65bc8c8940b1', 'anonymous'),
  ('9bc1386d-f29c-44d4-50d8-bf0653ce590a', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc13aa2-3ca4-47e8-2c28-3d1de930d857', 'administrator'),
  ('9bc16551-a457-4cec-1307-5d49c0ee4c05', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc13aa2-3ca4-47e8-2c28-3d1de930d857', 'authenticated'),
  ('9bc157a6-07e6-4e5d-441e-fb6fc268457b', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc13aa2-3ca4-47e8-2c28-3d1de930d857', 'anonymous'),
  ('9bc109a8-d158-404b-4b62-e45ef95dedf4', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e340-94be-4446-ba8f-99e229f64eae', 'administrator'),
  ('9bc1b9fe-2e8e-4b78-c4ca-201f4eeed41c', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e340-94be-4446-ba8f-99e229f64eae', 'authenticated'),
  ('9bc1c41f-4cc8-4c39-fc69-b0a91b79ec38', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e340-94be-4446-ba8f-99e229f64eae', 'anonymous'),
  ('9bc17539-20c9-4b75-d39d-bde78ff1ddc9', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc145f8-c7bb-4509-4eec-027bdb8b0157', 'administrator'),
  ('9bc15a99-e309-4ca6-820f-8c7ad9f08c57', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc145f8-c7bb-4509-4eec-027bdb8b0157', 'authenticated'),
  ('9bc1bf36-5739-4dc1-8840-80edddeb6180', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc145f8-c7bb-4509-4eec-027bdb8b0157', 'anonymous'),
  ('9bc15d6b-937b-4619-a5cb-78f853284b1a', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c779-435b-4ae7-468f-30965c359626', 'administrator'),
  ('9bc1543d-eb74-460d-3561-034c0844bbc2', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c779-435b-4ae7-468f-30965c359626', 'authenticated'),
  ('9bc136f5-1820-436d-99c5-a3fa0faa3638', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c779-435b-4ae7-468f-30965c359626', 'anonymous'),
  ('9bc15525-4e53-485f-4386-8ccf6ac2aacc', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1d761-1ce6-4c24-a4fa-d50d50e2cea8', 'administrator'),
  ('9bc15695-de7f-4586-5608-601e2feca369', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1d761-1ce6-4c24-a4fa-d50d50e2cea8', 'authenticated'),
  ('9bc1d263-4069-430f-ecd7-47c8d351d280', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1d761-1ce6-4c24-a4fa-d50d50e2cea8', 'anonymous'),
  ('9bc10435-161b-404f-058e-9895f67b7972', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc10011-3539-42c2-824b-ae05d7fae313', 'administrator'),
  ('9bc13c75-0dd3-4742-168a-357ec01f2c9f', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc10011-3539-42c2-824b-ae05d7fae313', 'authenticated'),
  ('9bc1b053-f745-4359-86a1-1d25925f935c', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc10011-3539-42c2-824b-ae05d7fae313', 'anonymous'),
  ('9bc14188-c925-45e4-14fe-73d1a71d2b64', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc12c29-ce87-431b-bfca-4e2c6985957d', 'administrator'),
  ('9bc11628-b9c3-4ec3-d79f-3c681baefbfc', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc12c29-ce87-431b-bfca-4e2c6985957d', 'authenticated'),
  ('9bc1c8d4-849e-48a9-0efc-a0f05d9cfcab', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc12c29-ce87-431b-bfca-4e2c6985957d', 'anonymous'),
  ('9bc155e1-81f6-4b55-34f1-8c5901b01371', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc16bea-2648-41c8-18b3-2227bbcea9ab', 'administrator'),
  ('9bc17b97-eb0e-4530-132b-82f968203f26', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc16bea-2648-41c8-18b3-2227bbcea9ab', 'authenticated'),
  ('9bc1c9ad-e102-44f0-5877-34be5380f04c', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc16bea-2648-41c8-18b3-2227bbcea9ab', 'anonymous'),
  ('9bc14c07-fc57-4d16-b4d9-b0c50a0d851b', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e521-4779-4a20-1009-12da67955ff8', 'administrator'),
  ('9bc1d353-b69e-4a72-bab4-b91c1c65d925', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e521-4779-4a20-1009-12da67955ff8', 'authenticated'),
  ('9bc102b1-ddfd-4909-a8ff-b8d76e606a20', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e521-4779-4a20-1009-12da67955ff8', 'anonymous'),
  ('9bc19f94-3761-4bcf-e5f7-dbf24b9db661', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c7db-8ef4-4173-a16f-af76e1b57ef3', 'administrator'),
  ('9bc15fb6-0fcf-400f-75bd-070484e9cd29', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c7db-8ef4-4173-a16f-af76e1b57ef3', 'authenticated'),
  ('9bc1962c-1bf0-42d7-7fed-868252a6fd0f', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c7db-8ef4-4173-a16f-af76e1b57ef3', 'anonymous'),
  ('9bc191bb-5b3c-46df-7f1a-5d43361cc1c1', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1551a-2492-4ffa-e37f-794baa421c6d', 'administrator'),
  ('9bc10377-e694-4630-4617-7e0f895ea5d0', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1551a-2492-4ffa-e37f-794baa421c6d', 'authenticated'),
  ('9bc13ef2-4cc7-4cb8-bae0-aafb9caa0c0b', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1551a-2492-4ffa-e37f-794baa421c6d', 'anonymous'),
  ('9bc1cbb3-c190-4710-e702-cfefa56fd147', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1505b-6c72-48fd-d6c7-1a437c8fcca9', 'administrator'),
  ('9bc1ecc9-7c29-482c-bcb4-d3fbe8d80fa0', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1505b-6c72-48fd-d6c7-1a437c8fcca9', 'authenticated'),
  ('9bc1cc20-ad66-452e-30f3-24e58bd82384', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1505b-6c72-48fd-d6c7-1a437c8fcca9', 'anonymous');


SET session_replication_role TO DEFAULT;


