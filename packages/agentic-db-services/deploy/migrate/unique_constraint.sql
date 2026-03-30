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
  ('019d3dab-014e-7f2e-8813-29a8287ac3a7', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-00a9-731d-b66d-d5d69c0909a6', 'users_username_key', NULL, NULL, 'u', '{019d3dab-0127-7e6d-bed5-c3c001b35d35}'),
  ('019d3dab-028a-7016-b856-622338378f54', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-020b-7f3a-9f50-282a80e58578', 'role_types_name_key', NULL, NULL, 'u', '{019d3dab-0268-7f36-a22d-c921f7b09c50}'),
  ('019d3dab-0553-772a-a703-5398915b2c34', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-0441-76ef-8983-bd109f44ca00', 'membership_types_name_key', NULL, NULL, 'u', '{019d3dab-04bd-7667-832e-e7817ec65031}'),
  ('019d3dab-076b-7834-b02b-b19d8a8f5e12', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-06c8-70c7-9344-b913b26b3813', 'app_permissions_name_key', NULL, NULL, 'u', '{019d3dab-0748-7469-8b40-296ca64923b9}'),
  ('019d3dab-07b9-73a2-b536-6eb6e5c56515', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-06c8-70c7-9344-b913b26b3813', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d3dab-077e-7bbf-9b92-29d164ea2213}'),
  ('019d3dab-0c27-7aa6-a265-da618225d770', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-0ad6-7e8e-bb4b-da72970fd048', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d3dab-0b66-757a-86e6-2fbabc290ee9,019d3dab-0b89-79e3-8708-bb559dc98315}'),
  ('019d3dab-0d09-71aa-89f2-a88cdfb16936', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-0c3b-7cd6-b824-67e803578bd8', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d3dab-0cb4-77c8-84f8-e0c3a352f04e}'),
  ('019d3dab-15c3-7cd2-92b9-fb042f811112', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-0e10-73fe-8495-800d7f4fdaae', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d3dab-1553-7fae-a894-47a18b82feb8}'),
  ('019d3dab-218f-7d4c-b12b-7e52ab83d610', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-2028-7e89-bcf3-4b6bbe2df951', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d3dab-20b1-7927-9621-440049590e85,019d3dab-210f-74cc-b932-ad8444d352cd}'),
  ('019d3dab-22c9-779e-9d71-8941aab76bf9', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-2211-7d81-82f3-cb38ffb32790', 'app_levels_name_key', NULL, NULL, 'u', '{019d3dab-228f-7462-951c-c8efee6c1fd5}'),
  ('019d3dab-25d1-7039-8e4c-6209dba31a45', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-23fc-7c04-a911-a89c35053919', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d3dab-247b-7fa5-bb0c-5f045fce7295,019d3dab-24b5-7c7c-9d4d-1131d548794c}'),
  ('019d3dab-2aff-710a-9a47-28a73cdd8b49', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-285f-7dbd-bbe1-202b830e2774', 'app_profiles_name_key', NULL, NULL, 'u', '{019d3dab-28f1-75c9-8830-7c8edec9dd9e}'),
  ('019d3dab-2b17-71f6-82fd-4e9a7c51fa77', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-285f-7dbd-bbe1-202b830e2774', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d3dab-292f-78dd-bfda-8b9bd4b0d1e2}'),
  ('019d3dab-2c9b-768e-aaec-829dbce995f7', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-2b59-7eb9-af0c-9ef01e025be2', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d3dab-2bdc-7d84-a6c0-3757e1792489,019d3dab-2c2e-7023-b568-776ea11ecc6c}'),
  ('019d3dab-3b0a-74fc-ab92-33f8eacb2422', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-3a54-7306-a038-93110afa9aff', 'org_permissions_name_key', NULL, NULL, 'u', '{019d3dab-3ae0-78eb-a85e-c5121f4831e6}'),
  ('019d3dab-3b60-7f9f-9526-fcda0d3a1358', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-3a54-7306-a038-93110afa9aff', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d3dab-3b21-7384-8bec-032facb1cc36}'),
  ('019d3dab-3fc2-70a1-8a30-76e5f0c6f8f8', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-3de4-73ce-b0c3-be1982fd603c', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d3dab-3e7a-7f65-b8ff-4520da617ac4,019d3dab-3ea8-735a-8c83-1e3ac496b927,019d3dab-3f68-78c7-b54e-92cff4385b9e}'),
  ('019d3dab-4173-7271-a6ba-a9995b2ab74e', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-3fdc-736b-b53a-ab97b1e4c7bb', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d3dab-4073-7390-bfc6-44576c887cc3}'),
  ('019d3dab-490e-7d24-9646-b9ac76b2156d', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-44f4-7802-8b08-dcc21f9d2a8e', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d3dab-48b3-7f5e-aa6f-7d7604cd1d22}'),
  ('019d3dab-4d27-7bdf-b77e-c7e9d9402b05', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-4320-762d-8e0b-a0f2fa7986ad', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d3dab-4c47-76f4-beac-76d086faf3a7,019d3dab-4cd4-77df-ae18-c4b33d07274c}'),
  ('019d3dab-4f14-7264-95e2-d67936ab76a9', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-4d65-71ed-a01a-ec5821bb1227', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d3dab-4e49-7e3a-9af9-c87ba4493bb5,019d3dab-4eb3-77b4-9999-50bb87f4228a}'),
  ('019d3dab-5c98-7909-bc4a-949c33d1df30', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-5964-71b3-8055-0746d56e6ff0', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d3dab-5a01-717b-8a95-c4662971df79,019d3dab-5c3c-7595-8d81-d32ac3b4ae38}'),
  ('019d3dab-5cb1-72b0-a328-445ee75345c8', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-5964-71b3-8055-0746d56e6ff0', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d3dab-5a49-7fe2-a987-fc4b477f2099,019d3dab-5c3c-7595-8d81-d32ac3b4ae38}'),
  ('019d3dab-5e90-77ee-9c5c-92d591667f06', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-5d05-755e-baa1-685aac222c24', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d3dab-5da9-7d40-9e2f-eb3b7b80a03b,019d3dab-5e13-74c5-bb81-c36e9fa984ed}'),
  ('019d3dab-6bba-7334-917d-6106296731e3', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-69c9-7c3b-a894-a1d3dfbb109f', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d3dab-6a6b-7aea-8a02-b6864f525826,019d3dab-6ada-757d-ba08-2a1efd1860a6,019d3dab-6b6f-7ac2-9278-232544c0830b}'),
  ('019d3dab-6d5f-74bf-8470-64d5671b0e68', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-6c7b-7903-9d0e-0ac45dc6b5a2', 'org_levels_name_key', NULL, NULL, 'u', '{019d3dab-6d15-7a7f-8442-24b51373803d}'),
  ('019d3dab-70c6-7c2e-92d2-43fe88fcbe78', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-6ec4-734c-bbc2-6972715c2215', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d3dab-6f5f-7e46-8d8f-36af1450f070,019d3dab-6fad-71b6-a8c0-f6f43032d879}'),
  ('019d3dab-7e1f-7df5-aa4a-5b407cf7c7c3', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-7b8d-7459-8340-dcaa406e5d21', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d3dab-7cb8-7c0b-b788-6fe9111ccbde,019d3dab-7d16-7308-8f74-39d63d7cfa05}'),
  ('019d3dab-88a9-7a0c-a46a-facb99225c1b', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-8718-7be4-a566-b10d72950c34', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d3dab-87c8-787a-a09b-b9f58d7cf88a,019d3dab-880f-727a-b580-ea6e175bcb2e}'),
  ('019d3dab-924a-7c32-a521-f06043bde5b7', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-8eb6-7293-acf4-e4c2454189ab', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d3dab-9043-702d-b9f3-bd5a734f9eca}'),
  ('019d3dab-9266-7f8b-9940-aa778ed87e8c', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-8eb6-7293-acf4-e4c2454189ab', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d3dab-9009-76ac-8d95-43459fd08d01}'),
  ('019d3dab-9282-79fc-b981-ebdeecaae689', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-8eb6-7293-acf4-e4c2454189ab', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d3dab-9172-739d-9ba1-dca11d65fdba}'),
  ('019d3dab-9b61-7590-a3dd-6bc492e16673', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-99ac-71d0-9f80-e81b99a4473e', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d3dab-9a58-7906-92cb-41d32c2bc4ba,019d3dab-9a9c-7056-819e-1549131ebf7f}'),
  ('019d3dab-a204-72a1-b6b1-e31246fd9f26', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9f7d-751f-b885-1e52b9b8926e', 'emails_email_key', NULL, NULL, 'u', '{019d3dab-a0b5-71ec-a964-5a65a8274704}'),
  ('019d3dab-a61b-7116-9ec5-c4556501ad9e', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-a3bb-799e-a446-c7ea91ef9aeb', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d3dab-a522-7fce-9ba2-b1582e785e5f}'),
  ('019d3dab-aa2d-7f85-95ed-59bcd23aabcd', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-a7ec-7098-bda7-915c3e2e44d3', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d3dab-a909-745b-a7b6-f1172bd5ba28}'),
  ('019d3dab-b219-7326-a29f-98041d2b53fe', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-ad9f-7e26-84ea-31655607e347', 'invites_invite_token_key', NULL, NULL, 'u', '{019d3dab-af00-7fdb-9cda-dac5e97cf5fb}'),
  ('019d3dab-b238-74e4-acf0-bea551618d8e', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-ad9f-7e26-84ea-31655607e347', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d3dab-ae5a-7cdc-8296-98e5da35ebdd,019d3dab-ae9e-7b16-9f4b-11f4c10684d3}'),
  ('019d3dab-bb1b-7764-9ac1-500ec6f7e738', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-b689-7216-bf12-6976dacb411b', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d3dab-b7f1-763d-b76c-350c4f1fd33e}'),
  ('019d3dab-bb9d-7ca4-aef3-0e55de805f96', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-b689-7216-bf12-6976dacb411b', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d3dab-b72f-7459-aa7f-e6b452974b3b,019d3dab-b767-72eb-90a8-349125888249,019d3dab-bb39-705c-b350-b090f99c3145}');


SET session_replication_role TO DEFAULT;


