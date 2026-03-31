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
  ('019d416f-3944-76c1-babe-6140610b1272', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-384a-79e2-9379-99ca3460e274', 'users_username_key', NULL, NULL, 'u', '{019d416f-390b-7c20-bb8b-3bc00df34b56}'),
  ('019d416f-3add-7c4e-91c8-fcde3330f493', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3a38-7648-90d6-409a2f6b704d', 'role_types_name_key', NULL, NULL, 'u', '{019d416f-3aa7-7da6-8b5e-f6b796d9dbd1}'),
  ('019d416f-3e97-7888-872e-dc639c4926aa', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3d39-7b29-b2b9-1ef56f69b0eb', 'membership_types_name_key', NULL, NULL, 'u', '{019d416f-3dd6-7b47-9262-dfd7039a4080}'),
  ('019d416f-410d-7da1-851b-d758d3caf966', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-404c-7ccb-b3ea-38f77868b961', 'app_permissions_name_key', NULL, NULL, 'u', '{019d416f-40e5-76ee-953a-ac7b9cf8f4f3}'),
  ('019d416f-4173-7bf9-b5f2-1005e265e508', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-404c-7ccb-b3ea-38f77868b961', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d416f-412c-7664-86fd-9dbe74307786}'),
  ('019d416f-4647-75ef-94c0-16f4a9652b52', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-44d3-7d9d-bc19-8b6ac7af639c', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d416f-456a-7d56-aa77-5ebc246b046e,019d416f-4593-7075-a590-1be5c4c4e5e4}'),
  ('019d416f-4750-7746-9fcd-2594b18d453c', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-465e-7fe5-b5fc-23227f7f959d', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d416f-46eb-72ea-8cb6-3c0eecb0d7f2}'),
  ('019d416f-5138-7f35-9692-810c203c1aca', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-487f-7c67-bdf3-efaf8ad26205', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d416f-50b7-77a6-b1a0-e140e4d3d4f8}'),
  ('019d416f-5ea1-7619-96ef-dd3b41501f2f', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-5d0d-7120-b8e8-50ad572d07ba', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d416f-5d9f-770e-8550-d96eb01f541a,019d416f-5e0b-798b-bd82-1c6421a1506f}'),
  ('019d416f-600b-7121-8d44-e1ca481126d5', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-5f31-751e-a819-75f5ff86893f', 'app_levels_name_key', NULL, NULL, 'u', '{019d416f-5fc4-7d2f-87cb-ec57a733f6b2}'),
  ('019d416f-632d-7c9e-b65a-af8676f07936', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-6154-7303-8ddd-be43ff66199c', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d416f-61dd-7836-9882-a6bafdce84e1,019d416f-621b-7004-8350-7825fe83322a}'),
  ('019d416f-68c5-72b0-9fc5-b85492e61672', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-65f9-7723-9f8c-ced36ee8f563', 'app_profiles_name_key', NULL, NULL, 'u', '{019d416f-669b-73a2-b03b-5ae03467ba71}'),
  ('019d416f-68de-74d8-84d4-48ad07adab55', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-65f9-7723-9f8c-ced36ee8f563', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d416f-66de-764f-8616-be4bbe21f63c}'),
  ('019d416f-6a8f-7957-9e98-e878318b5f92', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-6922-79f5-845b-74a568d2dffe', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d416f-69b7-7f17-b132-10599734684b,019d416f-6a12-7e7c-ba9c-345fc19c6400}'),
  ('019d416f-7b30-71c1-bd3b-980f5186f852', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-7a66-7675-8c75-d850aa4da6c5', 'org_permissions_name_key', NULL, NULL, 'u', '{019d416f-7b03-78d7-9c0c-e6b1b46d3093}'),
  ('019d416f-7b8f-75da-9610-b2ba5a53a905', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-7a66-7675-8c75-d850aa4da6c5', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d416f-7b47-7f06-91d7-af16fd12a961}'),
  ('019d416f-80b0-768b-b8c4-b7495408d95b', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-7ecb-779b-a9e9-17bd6c03d7e6', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d416f-7f66-7831-8793-5ab862893980,019d416f-7f92-730c-8e13-609aa54fbbd6,019d416f-8051-7f41-81c2-2bc0b79c8475}'),
  ('019d416f-829c-76a2-9e9a-a879bd280df7', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-80c8-7bc2-805c-5ed0180f4142', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d416f-816c-76ed-8d9f-a9093457dca6}'),
  ('019d416f-89e4-7b7f-ad03-bf4720e98810', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-853a-78ab-a23c-19248b421b17', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d416f-8986-766c-b027-444d0df95d86}'),
  ('019d416f-8e55-7c1f-b556-660e3acf50ab', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-83b9-75bd-a70f-cf6094051c92', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d416f-8d6e-76eb-8e9c-5c9c8953417b,019d416f-8df9-71fe-9809-8868ddfd77c2}'),
  ('019d416f-905b-7bc5-8226-0ffb9f3bf3a1', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-8e96-7b4f-a7af-daa19da2f135', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d416f-8f7b-7398-9c23-c1b42f75c0e2,019d416f-8ff8-7d32-9f6d-1a1d5965ccb0}'),
  ('019d416f-9f37-78fd-aab3-4e2d66ec3177', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-9be2-779a-9aab-5838b07813cd', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d416f-9c85-709b-9af1-38aed02c2d53,019d416f-9ed8-7cac-90fc-9b19c8d6aba0}'),
  ('019d416f-9f50-7efa-b3f3-42fe881703be', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-9be2-779a-9aab-5838b07813cd', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d416f-9cc8-7c3d-96a4-1e61f386ae54,019d416f-9ed8-7cac-90fc-9b19c8d6aba0}'),
  ('019d416f-a12d-72b6-aa22-abc87ab9bd2a', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-9fb2-74cd-bedd-d1fdf554ef75', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d416f-a056-745c-86e6-e2480fc29495,019d416f-a0b6-79d4-8932-4ff1845291e2}'),
  ('019d416f-aec3-740b-b26d-d94e662af5aa', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-acc6-76ea-84a4-0e258ff55989', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d416f-ad65-7ca0-894e-f41e0a0c1938,019d416f-add8-7b9a-9b8f-b453d842f7d2,019d416f-ae75-7137-8e10-9fe32dda51a6}'),
  ('019d416f-b076-72df-ba62-a4ada81cdf9f', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-af87-7a96-b7f6-eae4bb8ac904', 'org_levels_name_key', NULL, NULL, 'u', '{019d416f-b02c-7798-89ee-42d51bcf340e}'),
  ('019d416f-b42f-7f7c-abc7-15ed2ab4acfb', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-b1ee-72d7-9b1c-601bfd022c89', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d416f-b2a1-741a-8135-9376737c1bf0,019d416f-b2ed-7bc5-a8cd-9b368b75f2d3}'),
  ('019d416f-c29b-71ab-9aaa-c3b48cb0beee', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-bfd2-7e14-bf60-c12dea5faeb9', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d416f-c110-7e7c-837b-cee3d9657f12,019d416f-c175-79de-8c07-c57e844fa6b9}'),
  ('019d416f-cea7-7621-8235-73d6230da01e', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-ccf3-7839-acc6-587351bf7c12', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d416f-cdae-74b4-af63-70a119d73962,019d416f-cdf8-7dd5-ac37-4f357efe5432}'),
  ('019d416f-d8eb-7222-bf1f-ec2ede51fce0', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-d53c-7113-84bd-f5b7712f8a62', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d416f-d6d1-7f21-8d16-d58341ead9d7}'),
  ('019d416f-d90c-7621-a87e-746834d36ae6', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-d53c-7113-84bd-f5b7712f8a62', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d416f-d69f-7e30-bbd9-fef7271a624e}'),
  ('019d416f-d92a-7665-91a5-592215a9cd84', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-d53c-7113-84bd-f5b7712f8a62', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d416f-d814-7cc1-977b-1d3fbd2e1fd0}'),
  ('019d416f-e2ce-7105-a2f6-ca4dee2ba356', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e0eb-79b5-a9d3-5fceb20ad939', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d416f-e199-7742-aaf4-51da68bf91bc,019d416f-e1ec-7ff1-b582-cc7b15d7bb85}'),
  ('019d416f-ea04-7617-8d0c-1672572f8156', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-e749-726e-9c23-08883823a1a4', 'emails_email_key', NULL, NULL, 'u', '{019d416f-e892-7920-b3d5-8287437e5ae0}'),
  ('019d416f-ef21-7cf6-a0c2-bb378a2ffa27', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-ec80-7336-a6d7-bfeb1ae3053a', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d416f-ee0c-7e02-ab5a-3a426dc84119}'),
  ('019d416f-f456-788b-9275-f62eb077cc91', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-f1c3-72e2-8872-af6832fe4867', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d416f-f2fa-7907-bbdf-1530f57c4f1c}'),
  ('019d416f-fd0f-78d3-851c-78a882146407', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-f833-7616-8bbe-962c8a20160f', 'invites_invite_token_key', NULL, NULL, 'u', '{019d416f-f9a7-7413-8056-7654f4c848bf}'),
  ('019d416f-fd30-75ba-b4d6-27b67e337a48', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-f833-7616-8bbe-962c8a20160f', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d416f-f8fb-7ba0-88b8-8695dbef3895,019d416f-f93b-7282-af49-122ad3ed1db2}'),
  ('019d4170-07c3-7359-8aa0-787453ceb7d4', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d4170-02d2-76b0-9d09-aed750cc8489', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d4170-046f-7e41-bcdc-77f32f76bb6b}'),
  ('019d4170-0854-750f-9272-38b8cef9e7c3', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d4170-02d2-76b0-9d09-aed750cc8489', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d4170-0392-7380-ace9-d0644ce9fd93,019d4170-03d0-7219-95da-ef5aca50373c,019d4170-07e6-7222-afb0-1c583457b125}');


SET session_replication_role TO DEFAULT;


