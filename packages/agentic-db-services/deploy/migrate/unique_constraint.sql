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
  ('019d1dc0-1a9c-7bb4-a673-7e14bec060f7', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-19e4-711b-bca5-5a34983e388c', 'org_permissions_name_key', NULL, NULL, 'u', '{019d1dc0-1a6e-7a71-ae8d-58404c98cd94}'),
  ('019d1dbf-db4e-7ce3-9f4f-25033dab0a17', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-daa0-7aec-93eb-49f5dbb6aab6', 'users_username_key', NULL, NULL, 'u', '{019d1dbf-db25-7b05-8241-976ac0c83075}'),
  ('019d1dbf-dc74-7a45-9e81-c37de9e9c805', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-dbfb-7c34-8ee2-f3b4ae210099', 'role_types_name_key', NULL, NULL, 'u', '{019d1dbf-dc50-766c-8afd-946adbb80526}'),
  ('019d1dbf-df57-78d4-852f-e20332eac6df', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-de39-74b7-a37c-ad67fd45b529', 'membership_types_name_key', NULL, NULL, 'u', '{019d1dbf-dec2-7733-9b26-770f86da573c}'),
  ('019d1dbf-e158-787f-a287-e5f3bdc0867e', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e0ba-7002-9545-20cb99c8cb10', 'app_permissions_name_key', NULL, NULL, 'u', '{019d1dbf-e137-7556-a7c2-484986d7764c}'),
  ('019d1dbf-e19e-7dc7-b231-7a68c5412f21', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e0ba-7002-9545-20cb99c8cb10', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d1dbf-e16a-7d8f-8ec2-cdf7d4243051}'),
  ('019d1dbf-e5c4-7f77-991d-eec44c8475ad', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e483-76c9-9398-83b95c939a37', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d1dbf-e502-7bea-bb46-007efe7b9574,019d1dbf-e523-7cb1-aaa4-1c1bf6e78c41}'),
  ('019d1dbf-e6aa-7ccb-98f3-5d326deca8b6', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e5d8-7cf9-a08e-6ca25df7cce7', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d1dbf-e64e-77b0-b281-2d662fd4984e}'),
  ('019d1dbf-f1a0-749b-a4ed-2ddb2e0e0851', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-ea14-78ee-89a3-1add46d33029', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d1dbf-f130-7c33-8350-5d6e2138d3fe}'),
  ('019d1dbf-fd9d-7f3f-880d-582398f0396f', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-fc1d-7b31-9441-8b1a377f2a3d', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d1dbf-fca6-7464-891b-62538a4dddd3,019d1dbf-fd15-770c-96e3-273df27fcae5}'),
  ('019d1dbf-fefb-7dee-8f4e-2f0c6b654cb2', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-fe28-792e-b0a1-2c97b9929ffe', 'app_levels_name_key', NULL, NULL, 'u', '{019d1dbf-feb9-77df-a669-718f2f89b472}'),
  ('019d1dc0-01d7-7448-a75a-d94c78006539', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-0022-713e-98be-2691f2ebda07', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d1dc0-00a3-78d0-a142-abcf774763aa,019d1dc0-00dd-7897-b16f-91c2f7dbe7cc}'),
  ('019d1dc0-06e0-79a3-af29-d07cff201f72', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-0462-7215-b03b-d0461cc02a22', 'app_profiles_name_key', NULL, NULL, 'u', '{019d1dc0-04f2-7bf2-8508-2ecab1bb31cc}'),
  ('019d1dc0-06fc-7865-9680-9168e90e9b44', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-0462-7215-b03b-d0461cc02a22', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d1dc0-052d-735a-9027-4e59c0652817}'),
  ('019d1dc0-0880-7c21-85b0-d19032649906', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-073e-7005-b0eb-34904d3fc23e', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d1dc0-07c1-7a18-9dae-6aa8dcec6adb,019d1dc0-081e-79e8-9b98-8fb763912d77}'),
  ('019d1dc0-1af1-7b64-9248-1641754cd9e9', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-19e4-711b-bca5-5a34983e388c', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d1dc0-1ab3-77d1-a849-90dab9825e83}'),
  ('019d1dc0-2237-7fd8-8081-827bebaf8dc1', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-2089-7dcf-80cf-297bd5b261fb', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d1dc0-2115-7dbf-b6ac-082eb09e6757,019d1dc0-213f-7a0b-a2b8-02119495312c,019d1dc0-21e7-78a0-8698-83b8ec396831}'),
  ('019d1dc0-2384-7678-9a14-0c13a729a46b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-224d-7326-96d8-64da3ea555a3', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d1dc0-22d4-720a-888a-eb64f0810ab9}'),
  ('019d1dc0-2d7f-772e-a55b-f3d65a602a93', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-2986-7125-bf3e-adcb57519abb', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d1dc0-2d2f-75ee-9b1a-6df592439fe8}'),
  ('019d1dc0-3186-7b63-98d0-f2ce964e1279', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-282a-798b-9be9-b6c25744a739', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d1dc0-30b7-77cd-89c3-9a73bb085434,019d1dc0-3131-7275-89bc-f9860efe3ae7}'),
  ('019d1dc0-335a-7b1a-b16e-62d078039b1b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-31c2-756b-a4ef-e64e5a12de7c', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d1dc0-32a4-781d-98c2-cd019b82f58c,019d1dc0-3309-7de1-87c3-81df948260d1}'),
  ('019d1dc0-4481-7a0b-b566-41cd9aef37ef', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-415a-70f5-8055-faf30413efb2', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d1dc0-41f6-7d9f-bc74-f63775ecfbe3,019d1dc0-442a-7725-84ab-ce6bf6b694c6}'),
  ('019d1dc0-4498-7761-a195-383fe5ee3814', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-415a-70f5-8055-faf30413efb2', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d1dc0-423a-7aca-8ffd-908f6d0d478f,019d1dc0-442a-7725-84ab-ce6bf6b694c6}'),
  ('019d1dc0-464c-71d4-82d5-e495af69a286', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-44eb-7214-a382-3095c1d24887', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d1dc0-4589-71b0-8e25-bd17f81a56b5,019d1dc0-45e4-703f-890c-25a5f9436e18}'),
  ('019d1dc0-56a0-7c81-a06b-bfa315d75f72', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-54a8-7545-ab52-3780cb0d4954', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d1dc0-553a-7cc7-813c-8bdfce5ffa31,019d1dc0-55ae-7aac-9bb9-b27c213495e5,019d1dc0-5653-781c-a0d8-98f1a8b4a429}'),
  ('019d1dc0-582d-7e97-99e0-3ab2321977bf', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-5759-7e65-989d-c6ce72461896', 'org_levels_name_key', NULL, NULL, 'u', '{019d1dc0-57e9-7cad-a25f-56c7e7984c03}'),
  ('019d1dc0-5b79-71af-bbbc-e541e8d08c53', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-5984-7ceb-b9c7-d113761d016c', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d1dc0-5a12-7b46-a445-0f6efe4c38f2,019d1dc0-5a59-714d-9b55-4f31716f149f}'),
  ('019d1dc0-686e-772a-b526-09653c599c33', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-65e0-7325-b8f8-8a9cc5e98161', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d1dc0-6717-7d6e-9433-4310fd66c1a7,019d1dc0-677f-711f-95fc-6d2d3c1a7eeb}'),
  ('019d1dc0-7265-717d-8499-fe624593e29a', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-70f9-7288-8e16-4c988a67ef0c', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d1dc0-719b-70a3-ad1d-68545d52b24c,019d1dc0-71dc-7de4-ba2f-a8525787c0c2}'),
  ('019d1dc0-7bd3-7fa6-9830-d69797b6dede', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-784a-7acc-93fe-593a9264be37', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d1dc0-79d5-7638-9c53-91a118b2ad16}'),
  ('019d1dc0-7bee-7c43-9e45-9d638a96074b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-784a-7acc-93fe-593a9264be37', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d1dc0-79a6-748c-8785-1fb77a47d919}'),
  ('019d1dc0-7c07-760f-aa39-9f387d88cbc0', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-784a-7acc-93fe-593a9264be37', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d1dc0-7b0b-7761-b4ff-da4555d4ae08}'),
  ('019d1dc0-8511-7b7e-ab92-000ab750a3bf', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-834e-710b-959a-10739141feb0', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d1dc0-83f4-7a42-80fd-0b4db7b1b6c7,019d1dc0-843b-750e-b018-e45d486f01ca}'),
  ('019d1dc0-8ba7-7606-9012-5104390cf661', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-8927-74fe-b83b-edb01201576e', 'emails_email_key', NULL, NULL, 'u', '{019d1dc0-8a5f-7bb5-8013-eb45b932e945}'),
  ('019d1dc0-9330-7c63-a9c7-3a0fef4d4763', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-90af-7a34-b5d6-9f23da50de37', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d1dc0-9216-721b-9c9b-76afd423a399}'),
  ('019d1dc0-9a9e-75d5-b730-16d5092b6354', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9866-743b-a5ad-e8b2cc251c85', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d1dc0-996d-7af9-b979-71d33e19b518}'),
  ('019d1dc0-a25e-72dd-b739-e7e7e6c5c7e5', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9e0f-7e9e-8c21-82e132786826', 'invites_invite_token_key', NULL, NULL, 'u', '{019d1dc0-9f5a-7655-9fa4-6172f26ed8a9}'),
  ('019d1dc0-a279-7636-bcf6-d715f395fdda', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9e0f-7e9e-8c21-82e132786826', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d1dc0-9ec8-7e4b-b63b-1e97efba1c19,019d1dc0-9eff-7df2-9100-3956e97babbc}'),
  ('019d1dc0-ae73-7f42-b635-0c3ae6cc640c', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-aa07-735d-baef-c09f293c3fb8', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d1dc0-ab75-7c5f-9c1c-c3635f9d2110}'),
  ('019d1dc0-aeeb-7ed0-b256-7469f2ec2c8a', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-aa07-735d-baef-c09f293c3fb8', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d1dc0-aaab-70e1-bf61-7890d76b1231,019d1dc0-aae3-75a5-ab22-4a8376f88efd,019d1dc0-ae8c-7849-b5d3-d33e43e68cdf}');


SET session_replication_role TO DEFAULT;


