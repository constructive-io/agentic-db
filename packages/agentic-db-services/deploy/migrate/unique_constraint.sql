-- Deploy: migrate/unique_constraint
-- made with <3 @ constructive.io

-- requires: migrate/primary_key_constraint


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

INSERT INTO metaschema_public.unique_constraint (
  id,
  database_id,
  table_id,
  name,
  description,
  smart_tags,
  type,
  field_ids
) VALUES
  ('019d3d14-e7f0-795d-b365-4e0eece27642', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e756-7f18-bcd9-be9300e74947', 'users_username_key', NULL, NULL, 'u', '{019d3d14-e7c7-7a03-b452-1b5df8dcecac}'),
  ('019d3d14-e8f1-77cc-9a06-4ddbeaefd29d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-e88b-78b6-ab3b-5e55f950d705', 'role_types_name_key', NULL, NULL, 'u', '{019d3d14-e8d2-7736-8131-133fe7c9a8ca}'),
  ('019d3d14-eb7c-7bdc-91a5-5a87293f300f', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ea8a-77ae-9abb-98dda68a1350', 'membership_types_name_key', NULL, NULL, 'u', '{019d3d14-eaf8-74cd-84ea-43cd2ed2b46c}'),
  ('019d3d14-ed4b-7d39-8556-eb7000f154b6', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ecb8-72e1-b8b6-00f4f113f945', 'app_permissions_name_key', NULL, NULL, 'u', '{019d3d14-ed28-7d03-91d2-a0ab544e5840}'),
  ('019d3d14-ed91-7263-a8b9-ac21d8d6ef2f', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-ecb8-72e1-b8b6-00f4f113f945', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d3d14-ed5e-7fce-aee3-695cee100cb7}'),
  ('019d3d14-f15a-7415-ac1d-ae54a1e04dbb', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-f030-7478-b49a-45d1319580f2', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d3d14-f0a4-7847-b458-2b35380c7e45,019d3d14-f0c6-7cba-94ab-12feed418c24}'),
  ('019d3d14-f231-756f-a2e0-0891a0e8b95d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-f16c-7f7a-b518-0abc63089e86', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d3d14-f1da-7ffc-ad58-ea285716f6fb}'),
  ('019d3d14-fa4f-795f-8e6d-cbd2f63bab00', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d14-f316-7fc5-99bb-153e1dcb17b9', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d3d14-f9e6-7e71-a9c6-013dc3e154b5}'),
  ('019d3d15-0534-79d6-b934-c4c814990c3b', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-03e8-7cdb-ad8b-0b5863ae8c21', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d3d15-046a-7335-ab16-e89fbec5ce47,019d3d15-04be-7b13-bbba-9ffc2bb541d3}'),
  ('019d3d15-0673-7f26-a4d6-873b35b6260c', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-05b5-7383-83b5-0c8fdd30e1bc', 'app_levels_name_key', NULL, NULL, 'u', '{019d3d15-0637-7680-b6b8-1ebbd48707ef}'),
  ('019d3d15-0907-7a44-82b0-2fb7f26769f5', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-077f-7ae3-a2c8-fc94d29aa161', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d3d15-07f0-7b27-a45b-d49259c7d148,019d3d15-082b-70a6-bcbf-003e32c77051}'),
  ('019d3d15-0dc1-728c-8205-aac0b38d8581', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-0b69-7a11-910d-51b48961ffd1', 'app_profiles_name_key', NULL, NULL, 'u', '{019d3d15-0bef-7fce-be95-9ff866bcd2bd}'),
  ('019d3d15-0dd6-73ff-a399-414373baffbe', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-0b69-7a11-910d-51b48961ffd1', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d3d15-0c25-7258-80fa-83cc404568a2}'),
  ('019d3d15-0f1f-771f-a063-897c24029999', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-0e0c-714b-9ba3-1b8f47802552', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d3d15-0e80-780d-91a3-6911f82ebfae,019d3d15-0ec8-7bc5-af36-a67e27820eb0}'),
  ('019d3d15-1c71-7fba-a014-b35d05448720', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-1bd4-7c7b-8a37-5486c1c9b8cd', 'org_permissions_name_key', NULL, NULL, 'u', '{019d3d15-1c4a-7da8-9bdb-fc42b67bdebc}'),
  ('019d3d15-1cc4-71d5-90a7-ed3a8062dace', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-1bd4-7c7b-8a37-5486c1c9b8cd', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d3d15-1c86-70b2-9293-7d330ee6c93f}'),
  ('019d3d15-20a6-7e6a-bf0f-1e9349aa6123', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-1f17-78e1-855a-0db7a8b99cac', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d3d15-1f90-720e-9d01-f90a0ae7a511,019d3d15-1fb4-7ea0-8deb-d936ec46ec4b,019d3d15-2059-7706-b8ca-951ae3a3df9d}'),
  ('019d3d15-21dd-7f1d-bd85-278e52ad562e', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-20ba-7e23-b52d-f6dad084b9db', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d3d15-2132-7088-82c8-b8b515d07cd9}'),
  ('019d3d15-2744-74ee-9c4b-2f6b27307431', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-239b-7a37-9bea-42d9a69dff96', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d3d15-26f9-7b2c-b306-c53383472ac6}'),
  ('019d3d15-2b14-74da-8643-f6d2c72616ec', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-2253-7e8f-af81-7edafd37ab7e', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d3d15-2a56-7954-baee-c9d7c5083dde,019d3d15-2acb-7e2f-9b2c-99d50497026d}'),
  ('019d3d15-2cca-7193-ae24-99d05c75a88f', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-2b4a-7986-b0f8-304b8ab66120', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d3d15-2c22-7463-aa51-b3f9ba461479,019d3d15-2c7f-7152-96fc-13fbe609d3d8}'),
  ('019d3d15-38d2-70ab-b641-1286ae96a33d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-35f0-738c-8518-ef62812fc95c', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d3d15-3669-7479-b455-81fd8d65f8b9,019d3d15-387f-7a8d-b65f-ad2ed0ffa539}'),
  ('019d3d15-38e8-70cc-a926-169073ed90d5', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-35f0-738c-8518-ef62812fc95c', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d3d15-36a2-7f70-8b48-f9c44427a461,019d3d15-387f-7a8d-b65f-ad2ed0ffa539}'),
  ('019d3d15-3a74-7365-a851-12d9a02a2d0a', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-3931-7266-9aee-d08ccd8b781f', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d3d15-39bf-71ee-84fc-e808656b431f,019d3d15-3a11-7f1a-9d6b-eb8ea2919ed8}'),
  ('019d3d15-455a-7cca-81b8-bca71784adec', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-43a2-7fc6-b584-6087c72ba950', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d3d15-4427-79fa-96ef-9c2b3729cc1c,019d3d15-4489-7ca6-8326-2a53a0cf482a,019d3d15-451a-7ed1-ad6c-eb1ac8584b26}'),
  ('019d3d15-46d7-7cbe-acb0-361529f230ff', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-45ff-7f3e-8835-fbe7e80e3648', 'org_levels_name_key', NULL, NULL, 'u', '{019d3d15-468f-76a1-87c0-67251027d0ff}'),
  ('019d3d15-49cf-78b9-9099-1c11abd37080', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-481c-7507-9bed-6e2a5c9410f0', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d3d15-489f-7e13-8b83-61aa1cbd6ed8,019d3d15-48da-71e2-b30a-0775827cb745}'),
  ('019d3d15-55db-744b-80a6-1ab453546625', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-5398-7503-b27c-dabeaf0ec5cc', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d3d15-54a2-77c7-9fcc-9fc3aa906e8f,019d3d15-54f5-78ee-a74d-ad283944d6f9}'),
  ('019d3d15-5f6c-7420-bca4-1c95ed8441b6', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-5e0e-734e-b7c6-3996ae4c2752', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d3d15-5ea6-7e06-9e2f-cb861ae5f2f5,019d3d15-5ee6-72e3-a556-26eb988981b7}'),
  ('019d3d15-6838-7ed2-b3a5-b588aae48c9a', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-64f3-7362-b84b-3870aa73f0cb', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d3d15-6651-70a7-8347-9a94d09f1ff5}'),
  ('019d3d15-6851-7808-b103-7d5db48e26b6', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-64f3-7362-b84b-3870aa73f0cb', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d3d15-661f-7416-8a7e-9ad36271d27e}'),
  ('019d3d15-6869-725f-a43a-5ca5c97e3d4f', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-64f3-7362-b84b-3870aa73f0cb', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d3d15-677e-729a-85a3-86936aebedd4}'),
  ('019d3d15-70d8-7789-ba4a-a43f7598fead', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-6f33-7af6-8594-a11816736a4a', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d3d15-6fcf-77e4-bca8-cec7bd99aa02,019d3d15-701d-7ecf-ae19-fa73b0a87cc4}'),
  ('019d3d15-7724-7a1b-90c0-f08919321635', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-74c8-7325-b628-72fb80678dc9', 'emails_email_key', NULL, NULL, 'u', '{019d3d15-75db-73c3-b289-e2592029e641}'),
  ('019d3d15-7b2f-7ea3-9e05-999f812e00a5', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-78cd-7c61-b6c3-348072fcc80b', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d3d15-7a2b-7099-8aa6-47a02817a34c}'),
  ('019d3d15-7f3d-7522-a7b1-814e77ea2a96', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-7cec-785b-9134-ef3617094688', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d3d15-7df2-725f-9403-e58ec5ad20d0}'),
  ('019d3d15-86d0-77c3-a94a-fd40845f2166', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-8285-7ab2-b03e-619b1563c472', 'invites_invite_token_key', NULL, NULL, 'u', '{019d3d15-83c4-755b-839b-9364cd331b91}'),
  ('019d3d15-86e9-7c07-bf19-290963cab7ab', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-8285-7ab2-b03e-619b1563c472', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d3d15-832b-7d9f-8b93-bbb716f7666b,019d3d15-8364-7e8f-b573-9e902cf85a51}'),
  ('019d3d15-8f44-7585-a596-be68914222c1', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-8ae7-7fb3-9808-48465a7e70d2', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d3d15-8c3f-7e0f-abfc-39edf60fea18}'),
  ('019d3d15-8fb8-7253-a1ee-031463a8a9d8', '019d3d14-e4d9-7da9-8899-3e3a337a3080', '019d3d15-8ae7-7fb3-9808-48465a7e70d2', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d3d15-8b7d-7fd7-aa83-c2fb21c828fc,019d3d15-8bb3-7f63-b37c-68577dd03603,019d3d15-8f5c-7b74-8507-3d69e408147b}');


SET session_replication_role TO DEFAULT;


