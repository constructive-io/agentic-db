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
  ('019d1736-58aa-7357-8d0e-2706a0408900', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5888-725c-a61a-bb7e1ef6e719', 'administrator'),
  ('019d1736-58ba-7ece-8b6e-ed5c8f75237a', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5888-725c-a61a-bb7e1ef6e719', 'authenticated'),
  ('019d1736-58ca-78da-878c-bfdaf9cfc5a8', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5888-725c-a61a-bb7e1ef6e719', 'anonymous'),
  ('019d1736-5920-7df3-b9dc-ea181e1f315d', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-588a-703e-9ecc-c70daaaab8ac', 'administrator'),
  ('019d1736-592e-78d6-b8a2-99c656a0565b', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-588a-703e-9ecc-c70daaaab8ac', 'authenticated'),
  ('019d1736-593d-70a6-8125-35439e806e06', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-588a-703e-9ecc-c70daaaab8ac', 'anonymous'),
  ('019d1736-5999-7854-8295-cf7f1dad7b29', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-598c-769b-be6e-86d64b52b70b', 'administrator'),
  ('019d1736-59a7-7c9c-bd6e-683d6444afc0', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-598c-769b-be6e-86d64b52b70b', 'authenticated'),
  ('019d1736-59b6-7f94-8d88-c4c9fab7a3e8', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-598c-769b-be6e-86d64b52b70b', 'anonymous'),
  ('019d1736-5a13-7140-b063-057fdd2c2dd4', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5a06-75dd-a00c-752589c0424f', 'administrator'),
  ('019d1736-5a21-7040-bf6f-0ebaf17e9c14', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5a06-75dd-a00c-752589c0424f', 'authenticated'),
  ('019d1736-5a2f-7b22-950f-ad381799ae70', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5a06-75dd-a00c-752589c0424f', 'anonymous'),
  ('019d1736-5a9d-7153-9511-f4249a4a9a14', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5a90-7362-80e0-c9cf3c5ff198', 'administrator'),
  ('019d1736-5aab-750d-9688-6f518af0410d', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5a90-7362-80e0-c9cf3c5ff198', 'authenticated'),
  ('019d1736-5aba-7769-84be-de42f846f8e2', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5a90-7362-80e0-c9cf3c5ff198', 'anonymous'),
  ('019d1736-5de8-7ebe-a1d3-94c765a77ec6', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5dde-7edf-9435-18611c6fa94e', 'administrator'),
  ('019d1736-5df6-7d9a-b8c9-c1c87ad983a3', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5dde-7edf-9435-18611c6fa94e', 'authenticated'),
  ('019d1736-5e05-76fb-8127-5bf664de57c7', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5dde-7edf-9435-18611c6fa94e', 'anonymous'),
  ('019d1736-5f9d-7970-90ce-aa4873fa081d', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5f93-774f-a377-2f1fcbc9793f', 'administrator'),
  ('019d1736-5fac-7705-b071-047d0a398685', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5f93-774f-a377-2f1fcbc9793f', 'authenticated'),
  ('019d1736-5fbb-7d24-9595-1acf75442ba2', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5f93-774f-a377-2f1fcbc9793f', 'anonymous'),
  ('019d1736-6017-7e5a-a414-7ec18b4b1fdb', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-600b-7c38-9e90-3dfb75ceada9', 'administrator'),
  ('019d1736-6026-71d8-bb58-6f5cffd4310b', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-600b-7c38-9e90-3dfb75ceada9', 'authenticated'),
  ('019d1736-6034-7659-b893-963b79b8e52f', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-600b-7c38-9e90-3dfb75ceada9', 'anonymous'),
  ('019d1736-62ef-7579-906f-12eeef41109c', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-62e4-7fa8-bf7c-9cc71dcb0873', 'administrator'),
  ('019d1736-62fd-76aa-b180-60ce4e088722', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-62e4-7fa8-bf7c-9cc71dcb0873', 'authenticated'),
  ('019d1736-630c-70b0-bc38-9387aab4a1ec', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-62e4-7fa8-bf7c-9cc71dcb0873', 'anonymous'),
  ('019d1736-636b-78bd-996f-50c79ed31cff', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-635e-78c0-983d-73e509f72ac8', 'administrator'),
  ('019d1736-6378-7fc8-ac20-b46d01da8d6c', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-635e-78c0-983d-73e509f72ac8', 'authenticated'),
  ('019d1736-6387-7605-a86a-6e7645808d68', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-635e-78c0-983d-73e509f72ac8', 'anonymous'),
  ('019d1736-662d-7c41-a35e-fe14a6bb8420', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-6621-77a9-a38f-5d297c68ea95', 'administrator'),
  ('019d1736-663d-799d-bb02-d0681474b8d2', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-6621-77a9-a38f-5d297c68ea95', 'authenticated'),
  ('019d1736-664e-7162-93a8-9573174bc7b8', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-6621-77a9-a38f-5d297c68ea95', 'anonymous'),
  ('019d1736-7409-73d9-969a-64b7f455c706', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-73fa-76db-b254-e0f8632658a4', 'administrator'),
  ('019d1736-7419-746c-88cd-afb2b3a4f155', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-73fa-76db-b254-e0f8632658a4', 'authenticated'),
  ('019d1736-7429-7b05-bce3-041b1fc0740d', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-73fa-76db-b254-e0f8632658a4', 'anonymous'),
  ('019d1736-7492-7b9f-ad54-996b27fb7840', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-7484-76d1-b753-afa075ca8490', 'administrator'),
  ('019d1736-74a1-7c75-9496-5ca5fd99e611', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-7484-76d1-b753-afa075ca8490', 'authenticated'),
  ('019d1736-74b0-7fa3-a09a-42ccd9b6f3ed', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-7484-76d1-b753-afa075ca8490', 'anonymous'),
  ('019d1736-7d2b-7280-aee6-d69d01562b26', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-7d1d-7504-b23b-a3b157e8661f', 'administrator'),
  ('019d1736-7d3c-76bf-be6f-89aed9ed55a4', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-7d1d-7504-b23b-a3b157e8661f', 'authenticated'),
  ('019d1736-7d4c-7cf0-a7fb-d81b3fd065a8', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-7d1d-7504-b23b-a3b157e8661f', 'anonymous'),
  ('019d1736-7db9-70c9-bf53-ebb9be3c6d54', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-7da9-7ccd-a31c-213695710c32', 'administrator'),
  ('019d1736-7dc8-74d9-8b42-ac9be9ff4579', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-7da9-7ccd-a31c-213695710c32', 'authenticated'),
  ('019d1736-7dd8-7215-a873-f66b89a04cc2', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-7da9-7ccd-a31c-213695710c32', 'anonymous'),
  ('019d1736-d047-7cf3-bd50-0e531b820f9e', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-d034-7b92-8d8c-d8d73b808d57', 'administrator'),
  ('019d1736-d05d-70d9-a2f9-b3312101565d', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-d034-7b92-8d8c-d8d73b808d57', 'authenticated'),
  ('019d1736-d071-7f20-98da-9942610e6d35', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-d034-7b92-8d8c-d8d73b808d57', 'anonymous'),
  ('019d1736-d336-7551-9470-db2b95bb3f1b', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-d324-7b0c-a6f3-8e7873a32522', 'administrator'),
  ('019d1736-d34a-7b99-8d26-b8b1a53b4308', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-d324-7b0c-a6f3-8e7873a32522', 'authenticated'),
  ('019d1736-d35f-781a-8e8e-be4484153418', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-d324-7b0c-a6f3-8e7873a32522', 'anonymous'),
  ('019d1736-e13b-7944-bfaf-1241f8753560', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e12a-7894-aa33-3ba3c677fd10', 'administrator'),
  ('019d1736-e14f-7986-9334-15700d5d7fc6', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e12a-7894-aa33-3ba3c677fd10', 'authenticated'),
  ('019d1736-e164-74e2-8018-05697b203b02', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e12a-7894-aa33-3ba3c677fd10', 'anonymous'),
  ('019d1736-e4b4-7352-9f8d-2b0c784c6250', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e4a2-7ff4-8340-618a60f05c9a', 'administrator'),
  ('019d1736-e4c8-7279-b86c-8797c2895776', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e4a2-7ff4-8340-618a60f05c9a', 'authenticated'),
  ('019d1736-e4dd-7582-85f2-b6757c02584b', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e4a2-7ff4-8340-618a60f05c9a', 'anonymous'),
  ('019d1736-e5e0-7405-8df7-ee58668167f8', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e5ca-7a34-b722-ca6747e9fecf', 'administrator'),
  ('019d1736-e5f5-79c0-bb88-026607b7c2d8', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e5ca-7a34-b722-ca6747e9fecf', 'authenticated'),
  ('019d1736-e60c-722a-b36b-c967062fb834', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e5ca-7a34-b722-ca6747e9fecf', 'anonymous'),
  ('019d1736-e6a2-77aa-bd02-be10bda16c0e', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e68e-7fbd-96f6-2db90ef5b971', 'administrator'),
  ('019d1736-e6b7-7a59-bb27-3117a05fe163', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e68e-7fbd-96f6-2db90ef5b971', 'authenticated'),
  ('019d1736-e6ce-748c-927b-03a5798bf17f', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e68e-7fbd-96f6-2db90ef5b971', 'anonymous'),
  ('019d1736-f335-703b-ae97-5bc0bd99d046', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-f322-7351-91d7-45caecc5196f', 'administrator'),
  ('019d1736-f34b-7ef1-a017-4565483205aa', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-f322-7351-91d7-45caecc5196f', 'authenticated'),
  ('019d1736-f361-770c-9f98-4077ff4da21c', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-f322-7351-91d7-45caecc5196f', 'anonymous'),
  ('019d1736-f406-7297-8067-9fe6ce527f03', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-f3f1-797c-ae7e-14fa0326913f', 'administrator'),
  ('019d1736-f41a-7de9-bff2-887497e8cf4f', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-f3f1-797c-ae7e-14fa0326913f', 'authenticated'),
  ('019d1736-f430-79aa-a410-6f4fea53ba33', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-f3f1-797c-ae7e-14fa0326913f', 'anonymous'),
  ('019d1737-0691-7469-b6f5-6f052bd55b9c', '019d1736-587a-73df-addd-59801f8d68ca', '019d1737-067f-71f1-bdd0-1f6cce971d05', 'administrator'),
  ('019d1737-06a7-7483-a41b-091d2e6ffdb9', '019d1736-587a-73df-addd-59801f8d68ca', '019d1737-067f-71f1-bdd0-1f6cce971d05', 'authenticated'),
  ('019d1737-06bd-7a3a-8fa2-5a8436fd1f43', '019d1736-587a-73df-addd-59801f8d68ca', '019d1737-067f-71f1-bdd0-1f6cce971d05', 'anonymous');


SET session_replication_role TO DEFAULT;


