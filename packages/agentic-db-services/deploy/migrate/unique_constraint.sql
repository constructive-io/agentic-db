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
  ('00d0d73d-b211-21db-47ea-af233330fdaa', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ff68a994-9cfa-941b-87eb-5ec60dbdae3f', 'app_profiles_name_key', NULL, NULL, 'u', '{2f4affc8-bcbc-df81-25c1-53b40172cc12}'),
  ('0878d343-c4cb-7e04-d480-dadf2f8d8adb', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'da94e2fc-8b9e-bbf6-b88b-49c68622ae01', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{00cf748d-844a-166b-8880-3c2518285927}'),
  ('0a57bcdc-a68a-a575-25f1-9638b4f8e6a2', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'e414cb8d-5cda-5706-13c0-dc993e205d21', 'session_credentials_key_id_key', NULL, NULL, 'u', '{54d96093-5ae4-8588-5664-49467439b3d0}'),
  ('1c831bb9-3ccb-bdc1-e97b-ef8a91adbf7a', 'fdf8a620-6969-72d5-d89a-ed384259d249', '7de7e40f-df51-8d00-bbe0-ee19689c6a54', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{4c2c0b2b-5545-b862-142f-c7df1ba5d8fe,4cba71c8-c8cc-44d1-466a-2ba7be50aab5}'),
  ('1da458c6-5b33-0722-79a2-822d0afca8d8', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'da94e2fc-8b9e-bbf6-b88b-49c68622ae01', 'org_permissions_name_key', NULL, NULL, 'u', '{8e9c6f8e-acde-59a0-c20e-6ba82defbe63}'),
  ('26b482cb-2f0d-c2b2-d437-c0e9caa82301', 'fdf8a620-6969-72d5-d89a-ed384259d249', '5199c324-cd9d-3900-3d5e-52240e66faed', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{9d584e97-0d85-4123-899b-b45c0ce2eed5,612e725d-29c2-9e49-dbf5-483672022d2d,a4e95d6b-096c-cbff-3cf4-ee6169e66ec6}'),
  ('36071235-f065-61e5-9f64-b2273ddf2b6d', 'fdf8a620-6969-72d5-d89a-ed384259d249', '6e632c12-0767-3649-3a82-caefb7a3378a', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{f81a09fc-3627-9df4-7e39-dccd4fe8cd70,6ae29e63-3daf-b759-a437-bb98d6b2bc9f}'),
  ('3aacb80b-084b-17b6-4b20-af1bfd73b0b1', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ab6ccf66-358e-997c-9f2e-3c462272368e', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{d6365e54-51af-0d19-f943-a49ab8b052e3,a9337d0a-eea5-35ed-5c44-c1bf89cd8386}'),
  ('3b5d5196-399b-de32-71cd-a1895c339c50', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'e414cb8d-5cda-5706-13c0-dc993e205d21', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{cbf2b6a2-afcf-f5fa-c403-cdfc5a2d0cc3}'),
  ('404204df-e96c-cc7b-e963-c578d1c38bb9', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ae1320b5-a1ae-990f-891b-b1071ae2bb2c', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{f9ec13d3-b080-894b-4006-95d6b851f773}'),
  ('45f4a278-cd06-626d-d803-d2f025ed4973', 'fdf8a620-6969-72d5-d89a-ed384259d249', '576f4955-583c-8560-be90-add918965864', 'invites_invite_token_key', NULL, NULL, 'u', '{4a1ad670-8d9a-670b-e111-f2d11a5df779}'),
  ('492e44c9-4c0f-d392-080f-bf7e487e345e', 'fdf8a620-6969-72d5-d89a-ed384259d249', '7de7e40f-df51-8d00-bbe0-ee19689c6a54', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{2c4049ed-87fc-8bd3-29e5-f6a15e902055,4cba71c8-c8cc-44d1-466a-2ba7be50aab5}'),
  ('4b27e559-d1bb-d320-fb78-dbd2e9943efe', 'fdf8a620-6969-72d5-d89a-ed384259d249', '2398857e-08f4-f4e4-3e67-f662d241f1d2', 'emails_email_key', NULL, NULL, 'u', '{6156a13b-6526-780d-db0b-bd1553746493}'),
  ('4d5cc14b-95e5-d1e8-d922-be381dcdbfe5', 'fdf8a620-6969-72d5-d89a-ed384259d249', '41522d16-f0fd-c418-fb1c-90d01f32bc70', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{95ed224e-f060-e921-8d92-ad83f05b4d98,8dc959e7-98ca-ec27-13ed-301ddf220105,c7cb75f7-38e9-b96e-ef3a-169d47c9cdfc}'),
  ('542d8975-9a89-91a5-b539-9afb81325aa8', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'c162166e-2da5-8761-368e-1be59bc03e2f', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{e8529ebd-6acb-a5eb-56a7-67f7c557a07e,e8aa99ea-6d29-126b-1ec1-515d3d5894cf}'),
  ('54f6d813-b2aa-1208-bca9-d38c5a6ea79a', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ca24d8bc-b171-7a6a-dc68-32fe80aa7104', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{472a36f2-f881-23f1-01aa-9c5e17675578}'),
  ('58f17792-4b16-f8b6-23ac-af7e6ec2a1bf', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'e414cb8d-5cda-5706-13c0-dc993e205d21', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{37f0524e-2460-f0b8-234e-849d98e13f70}'),
  ('5cceaed8-425f-8baf-4fd6-d47342137d74', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'bb757017-1e6a-54db-37de-d1a2f02b0dbc', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{de7c7a72-1ccd-fe95-4bba-4565e9efdff9,6ea8cbee-a596-aff2-756f-96d338d3c426}'),
  ('5d7e9c2d-3415-1296-c741-f22ee1ecf476', 'fdf8a620-6969-72d5-d89a-ed384259d249', '0a6a8ecd-78f0-1eba-eb7d-b0a197d18122', 'org_invites_invite_token_key', NULL, NULL, 'u', '{0cd94124-ece3-eecb-c751-bdc4b115cdee}'),
  ('5ed7b8af-263f-b4bb-a9e6-40978b920213', 'fdf8a620-6969-72d5-d89a-ed384259d249', '1439ccf1-c5bf-4f9a-031a-1df77734c4dc', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{a7a2f4e5-36bd-2f35-78e3-e8337c381160,4162db5b-12a5-fc05-a3d0-fd21dade41b5}'),
  ('5ee3aed5-bc96-b919-a31a-032c9bd09f7a', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'dc415279-8ed8-8877-da7f-9e0be8a79aa5', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{c680df6c-3df6-18d2-4f47-d364881b780c,b3da968c-68a8-43d1-2a05-5e1edcd59961}'),
  ('71bcb313-a0a4-c105-4326-a350d7edd1b3', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ca24d8bc-b171-7a6a-dc68-32fe80aa7104', 'app_permissions_name_key', NULL, NULL, 'u', '{76e3ca0a-0815-6a66-d2c7-491f9ecf2292}'),
  ('736776e2-6518-2678-ae96-0b4d6edd1ddb', 'fdf8a620-6969-72d5-d89a-ed384259d249', '61095dd8-2d80-a5d6-702c-f9fbc7a9ee5a', 'membership_types_name_key', NULL, NULL, 'u', '{5696778d-e025-5f62-fbc3-454397a6a6f3}'),
  ('75463a01-6024-da31-07e9-3dafdf7f5f51', 'fdf8a620-6969-72d5-d89a-ed384259d249', '3f665f69-03b5-acb4-9c56-797a83553e43', 'role_types_name_key', NULL, NULL, 'u', '{2419a3f4-8677-819c-0a49-4edbd75f76a1}'),
  ('7b624908-fb98-c38f-19d2-013ed0ac92e1', 'fdf8a620-6969-72d5-d89a-ed384259d249', '0a6a8ecd-78f0-1eba-eb7d-b0a197d18122', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{05635f46-88c2-56d9-7b4e-609397dc3782,eace8b4f-8a96-20b0-769a-cd0aba194b68,7a5942a0-abd7-7697-cf48-fa913337bf47}'),
  ('7e22b058-ccd1-a945-e04c-35708dd9fa01', 'fdf8a620-6969-72d5-d89a-ed384259d249', '98928e8a-bad3-e9cd-cbc3-6d5b0fd705b2', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{d748de73-23a5-db01-9188-16853b7de03d}'),
  ('aadd98d9-baca-184e-2a48-b6233ded454c', 'fdf8a620-6969-72d5-d89a-ed384259d249', '4bd813a4-96fa-8239-0476-2dc48c9eff38', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{a1ae9a9b-3b5f-c7da-f466-b20d9b640658}'),
  ('b3e0d9d9-2d47-21de-9ff3-39a05573db42', 'fdf8a620-6969-72d5-d89a-ed384259d249', '538fdc6c-79bb-ec6a-1739-1ab9adffe17f', 'app_levels_name_key', NULL, NULL, 'u', '{29af8e6a-b587-f695-8d65-946c5fc8f8c5}'),
  ('c915e511-39b2-133b-4310-3fca26398410', 'fdf8a620-6969-72d5-d89a-ed384259d249', '1e556280-9885-ed4f-b33e-f67dfe80ea97', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{50aae8f3-626f-8d8f-677e-f43f9a4d9a20,a1667134-cd05-671a-6cdf-a3c2d4994165}'),
  ('c99227d2-0a63-b7e0-6265-1b19f6cac57a', 'fdf8a620-6969-72d5-d89a-ed384259d249', '4b945fc0-35ce-4572-474e-64aff2ccfdba', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{043bdb1e-1315-4492-09e6-507e409671a7,51860b2e-007c-222b-81cb-447863223e77}'),
  ('d269aded-6726-1415-2c72-b2417d79b909', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'e3ae0365-15b3-6099-221b-679517ddb34f', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{3175a94b-6b18-7be3-3b78-586d24d34dba}'),
  ('de5a4f38-f302-3cbe-eeb3-c61a6d04754f', 'fdf8a620-6969-72d5-d89a-ed384259d249', '4016556a-5c09-c2d5-08b7-75ad09d1ccb0', 'org_levels_name_key', NULL, NULL, 'u', '{14a046a2-ef5a-ae27-2f2b-3fbc14f8ad71}'),
  ('df4fd5f7-88ab-b9f0-39e3-1917eb0f9674', 'fdf8a620-6969-72d5-d89a-ed384259d249', '576f4955-583c-8560-be90-add918965864', 'invites_email_sender_id_key', NULL, NULL, 'u', '{a9f95274-4ff2-1ee4-58ab-c91f466bd47e,832d74a7-2d4e-1332-ca8a-f0579454b184}'),
  ('e0a901be-5db1-6b2d-474e-2deb9f855bd5', 'fdf8a620-6969-72d5-d89a-ed384259d249', '03f2cd01-accc-0d7d-9adb-831fa4aa2406', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{55325620-0e96-a992-037f-e3e89d8a50db,d8f9ef12-d46c-c458-e9eb-a666631a475e}'),
  ('ee006d21-62f1-e743-fb7a-d88472d9116e', 'fdf8a620-6969-72d5-d89a-ed384259d249', '90ed056e-9428-2c82-9591-1c178eec5dc4', 'crypto_addresses_address_key', NULL, NULL, 'u', '{2092746e-996e-beb1-1f1e-4272ae6eb6c6}'),
  ('f1d1048d-f1d2-4102-e040-d402da354f33', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ff68a994-9cfa-941b-87eb-5ec60dbdae3f', 'app_profiles_slug_key', NULL, NULL, 'u', '{e0829690-ae40-5251-8559-67eb169adf5b}'),
  ('f3e31158-a9ac-d53a-b26a-cc8f83e2e00d', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'b71f5daf-cde9-c59f-45f5-663c3117d780', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{6cee22de-5041-3143-ed63-545fae0edf03,a34f9f30-4139-a56d-c024-e864b4799c75}'),
  ('f97c2038-5277-a3a7-e414-8978e7243401', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'users_username_key', NULL, NULL, 'u', '{e8c81405-de2f-d680-5fe9-f9e005177e2e}'),
  ('f9b0232f-9c83-855c-c26b-32a53e575fed', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'a9fcf3a5-099e-b18f-43b0-b53a43e3b08e', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{d08c46a3-67d4-6a90-c258-ca1431cf54df,f0e2337a-e44b-100a-4955-b30a36ce8cad}'),
  ('fead62fa-d2dc-8b43-4efe-c60e5ef2ed5f', 'fdf8a620-6969-72d5-d89a-ed384259d249', '3c652ea4-7834-a441-33a0-fd46a55e6b96', 'phone_numbers_number_key', NULL, NULL, 'u', '{95b8df61-fd21-293a-62a9-3c5cd8502c28}');


SET session_replication_role TO DEFAULT;


