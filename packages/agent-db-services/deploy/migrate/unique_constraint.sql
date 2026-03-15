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
  ('a0088467-aa92-4050-a7d6-525577de247c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'users_username_key', NULL, NULL, 'u', '{a008261a-4885-41e2-1d5a-34e0a96b503d}'),
  ('a008e385-5d7e-43ef-2b11-fc43f46bcd53', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00827a5-3c55-495f-66bb-9627f0752868', 'role_types_name_key', NULL, NULL, 'u', '{a0085c02-feb2-4f51-260a-3b28c294598f}'),
  ('a008f681-c3b3-41b5-4197-e2a84711f9b1', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00802ee-ebcc-45e3-32fe-7089556ffff5', 'membership_types_name_key', NULL, NULL, 'u', '{a00894ce-9cfd-4e93-e217-0765d623dadc}'),
  ('a0084a57-61de-4902-09bd-0ef1b3d6eab0', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0080e21-0752-4f6a-54c2-1466fb5b80d4', 'app_permissions_name_key', NULL, NULL, 'u', '{a00843d3-198d-48a1-b8ba-c1400cf75fb6}'),
  ('a008bad7-cb4c-473a-12e6-9a1bf97a0d6f', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0080e21-0752-4f6a-54c2-1466fb5b80d4', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{a008e56c-4999-4e55-12a5-dc3cc2752dcd}'),
  ('a008b4fb-9f16-4f6d-97c2-56c1baa4476a', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0084fe3-d31b-45b5-cfb7-b9d95985f6d8', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{a008762f-46bc-48a8-4a1c-4c24f78e0540,a008fdb4-7a54-4065-ac5f-e76a169ebf55}'),
  ('a0083e85-88ff-4b7b-96cf-48b6cc205c82', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0088e03-e01e-4ef1-dd2b-4453a690c77f', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{a0080847-3662-4559-733c-470b2e7bdd23}'),
  ('a0084fe6-3313-4f1b-870b-cab9204521cf', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087809-679b-438a-8804-52b910786123', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{a00816d3-7b5e-46d9-7815-63a38059fffb}'),
  ('a008368f-1a16-4ade-5106-08484573b6cf', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008ca37-5496-45a7-9197-edee17ed921a', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{a008dc2d-bda8-4972-ab83-1978dd280cd3,a008dfbd-9fca-4f54-fd15-f4e2006fb490}'),
  ('a008b1d9-f2c5-47c7-e8c7-cb403d140a8b', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008277d-c37f-48eb-7188-0033e1bcde2c', 'app_levels_name_key', NULL, NULL, 'u', '{a008ed58-b84a-45c8-5652-9fd678631e4a}'),
  ('a008ae09-7bf2-4cc5-0be0-29d4f05e1493', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008803f-59e1-4d07-7df6-1e3915f6ae58', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{a008bbad-963c-4f73-6008-ec919a07fd2b,a008b54d-f97d-45f8-0830-58ae88a7b066}'),
  ('a00805a2-9414-45c3-3f7f-6e8b9778dcdb', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082238-2820-4272-6947-2f2efcebe1bf', 'app_profiles_name_key', NULL, NULL, 'u', '{a00807ca-2259-4d29-03e8-a03cc34cb6f0}'),
  ('a0081a86-efae-45eb-fd2d-b73d7fbaf8b9', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082238-2820-4272-6947-2f2efcebe1bf', 'app_profiles_slug_key', NULL, NULL, 'u', '{a0082ec5-c12b-49a0-f2c7-146405c8478a}'),
  ('a0082904-d5ec-4638-aa68-6883b74f9de1', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00807c8-ab07-4d78-dec5-453e31954f66', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{a0081646-1b1b-417d-ecfc-2962d6d5f3f1,a00818f6-23ce-41a0-26b8-44751c380847}'),
  ('a0086f85-43dd-4eb6-6ebc-993086e1a3ff', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0088dd5-9f3c-438c-af88-593142359c1a', 'org_permissions_name_key', NULL, NULL, 'u', '{a00883f4-9b42-4f24-9795-06d771ab924b}'),
  ('a00843dd-6dc8-4b89-7413-6abfcaa6d83f', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0088dd5-9f3c-438c-af88-593142359c1a', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{a0088f6b-b7bb-4690-4c30-18d8acb5ebde}'),
  ('a008a32b-d685-4303-458e-33cee1c64318', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00897ba-f51a-4daa-2328-2dca8adaf0b3', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{a0081089-17f2-437b-3805-5301482f5aa8,a0084183-eeb8-4b2e-c59f-7b17e0a17f65,a00886dd-b14c-48f4-145c-6832d5896daa}'),
  ('a0083b03-6cca-4e09-ec3f-1fb945dc1efa', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0088ec2-77cf-4698-337a-bce462e8d188', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{a008cf63-c51b-41fa-86b3-86f85fae1479}'),
  ('a0089e53-9e84-464b-b697-1978d46a148b', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0084755-d238-48c2-89a9-b3a2338f3d18', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{a008faf3-5d79-4883-2b20-fadc7c9983c5}'),
  ('a00880b5-84f6-489e-1e45-4d958657898c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008a174-5a85-46f7-d872-786586168654', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{a008cff7-ce61-4419-47f9-239c38353881,a008c578-bdad-4d01-880b-67295491fd80}'),
  ('a008c886-e7f4-44e9-335b-4c0c06184e75', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00800c8-207d-413c-b546-6c6a04bdef69', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{a008a133-6a1d-4ca5-2b65-f95a8da9bbf9,a008d4bb-558f-46c0-bdaf-ffca0c4166b2}'),
  ('a008f328-f2f6-48bf-00bc-8eb615978173', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0080b61-70d9-45d0-8de6-8490de5c51b1', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{a00801e2-984d-462b-1419-ee95fc00adc5,a00818a1-ab20-45f1-f102-3860510719cf}'),
  ('a008cd50-291c-4b65-0cee-c36f9467b1c7', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0080b61-70d9-45d0-8de6-8490de5c51b1', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{a00836a1-271c-49d8-30ed-b43d239815f1,a00818a1-ab20-45f1-f102-3860510719cf}'),
  ('a0085f90-604c-483b-adcd-9f14f4abd729', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0087a6e-d0b0-4c38-220f-4a230c4c4bec', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{a0088636-3272-4738-c7fa-46641f27c32e,a0087c66-983d-4737-47c6-18d25dc97cdd}'),
  ('a0084242-64f7-4428-7d77-5241ed79ff67', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a00839fe-89b2-4904-bcea-8755f0153d85', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{a008aed2-e1fe-4efb-b070-7f118720ada4,a008dbaa-5cb9-430b-060a-5df55cd25693,a008ab23-1486-4a5c-3355-7a6ef4a1e782}'),
  ('a0086666-a940-45f3-1c38-76741c02e7f6', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0081c3c-3b54-43d5-b802-e545e419820c', 'org_levels_name_key', NULL, NULL, 'u', '{a0089e76-c93f-48e6-76d5-4a0fd91e2eeb}'),
  ('a00800c6-0420-43c8-ba94-af0f2dc1fd9a', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0083581-0d4b-4ad2-78ca-ca472a2976d5', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{a00892d6-c238-4e11-06db-f07b6015cd90,a0080952-0e8f-485d-8941-d65a8ff4349d}'),
  ('a00896bb-8667-43bb-ffb8-cca4ccf24763', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008fa84-9155-47af-551f-5c7448fc2b82', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{a0088a9d-dc18-43a2-f6ae-71702f73dc1e,a008553a-ca33-4f0f-5826-70b4f112a2c4}'),
  ('a008582c-b1ed-4e6e-15c0-886e144bbde8', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0082002-e08c-4be4-06b5-bf03261058aa', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{a008ddd9-68d3-4a7e-409a-8d79e4b917f9,a0088a45-6c5c-40bc-20a4-bd13003af6ee}'),
  ('a008483d-d365-467f-1d73-466de19fff72', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008f2ff-e571-41fc-a4fe-30dd9a67734b', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{a0080e7f-afcb-437b-861f-16f2596bafa0}'),
  ('a008c741-a383-4c44-f7c6-d8de660a78e2', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008f2ff-e571-41fc-a4fe-30dd9a67734b', 'session_credentials_key_id_key', NULL, NULL, 'u', '{a0085130-534d-42de-7e03-20c90935ae91}'),
  ('a008f408-64ca-4c0d-48a4-e076b139b318', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008f2ff-e571-41fc-a4fe-30dd9a67734b', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{a008a185-e3c5-4b70-560d-e42f797b74e2}'),
  ('a008aefe-fed5-476e-d6fd-eceb1723f1b9', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0088ff1-7a1c-4128-2a86-09094ab2efc2', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{a0086971-dff0-46f5-160c-c092fbd21ab0,a008b994-5a5e-40fb-953d-6a72e8588edf}'),
  ('a0081536-d091-4584-e76b-7978afc511de', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a0080662-94ca-42f8-8e50-94eeff2e979a', 'emails_email_key', NULL, NULL, 'u', '{a0089c7f-0d8a-433e-aea2-e8ac52056346}'),
  ('a008956e-3f90-429a-d5f9-48bb729a3ce7', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008a403-fc18-4509-9031-7e9f00ccaafd', 'phone_numbers_number_key', NULL, NULL, 'u', '{a008864e-d9df-492b-d116-6736cbe1a299}'),
  ('a008dd1c-e6e5-4a95-256e-d9b6f4c58a0b', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008f7c4-6d14-4efd-0aaf-afc658459d16', 'crypto_addresses_address_key', NULL, NULL, 'u', '{a0082a98-3812-4ccb-2f98-ffd7fb95ae9a}'),
  ('a0081293-b54d-47e3-9d0d-0aacbeb525da', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008e250-f3c8-44d1-06f5-9ceee16b8a2a', 'invites_invite_token_key', NULL, NULL, 'u', '{a008e1be-015d-4087-fc34-49468191159b}'),
  ('a008a995-ec39-473f-116f-5bab699018fd', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008e250-f3c8-44d1-06f5-9ceee16b8a2a', 'invites_email_sender_id_key', NULL, NULL, 'u', '{a0086503-ca66-43ad-d3e4-5cfcccaaca40,a008f7b4-9ad9-4282-4a02-8726f0e38427}'),
  ('a0086945-6492-4b2b-a3d4-a647fbbc6dde', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008f750-5a7d-4aee-c5c0-4c7de6dc9a92', 'org_invites_invite_token_key', NULL, NULL, 'u', '{a0080aba-f4bc-414c-9297-8ce3f133954e}'),
  ('a008e417-c0d5-4b58-6353-5bbc161978ed', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008f750-5a7d-4aee-c5c0-4c7de6dc9a92', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{a0087fe0-6d3f-4351-bf5c-35e3cb0f70ef,a008c0a5-cf3f-4798-cefe-2f1833bec2ca,a008b19a-1252-4d76-95c2-af05655fce91}');


SET session_replication_role TO DEFAULT;


