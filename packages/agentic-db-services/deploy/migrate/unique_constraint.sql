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
  ('019d21f8-23f2-71f5-b7ef-78becb93740d', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2335-70cb-b636-53bf74d97668', 'users_username_key', NULL, NULL, 'u', '{019d21f8-23c5-7692-8363-44a9d4330fc6}'),
  ('019d21f8-2516-7343-a527-b3b9fc1397f8', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-24a4-745e-a181-df20331a1416', 'role_types_name_key', NULL, NULL, 'u', '{019d21f8-24f6-736c-a9a2-00b4cffd24f2}'),
  ('019d21f8-27f0-7620-95ad-0f6d7bb4c7bd', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-26d5-756a-9534-ef74813829f9', 'membership_types_name_key', NULL, NULL, 'u', '{019d21f8-2757-7aaf-abc1-02545371638d}'),
  ('019d21f8-29eb-7e4b-b0f3-e855121d5a64', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2951-765c-8106-b76a4e38815f', 'app_permissions_name_key', NULL, NULL, 'u', '{019d21f8-29c9-7c83-ad87-ca6ddf28647e}'),
  ('019d21f8-2a37-7609-91c2-d8691660cc9e', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2951-765c-8106-b76a4e38815f', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d21f8-29fe-76ec-940a-6da21d6fca07}'),
  ('019d21f8-2e3c-7252-b80e-24b8c83ffba8', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2cf1-7ea0-9011-3d1c3375f00f', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d21f8-2d7c-756c-a19b-0ddda11ffda9,019d21f8-2d9e-7932-a231-f0acba98b71f}'),
  ('019d21f8-2f14-7bc5-bdef-f390f69f7527', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2e51-750e-9e18-8c468f7aabd7', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d21f8-2ec2-7bbb-bcfb-aa52a9b0cd14}'),
  ('019d21f8-3764-75f8-b3db-93838c8795d0', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-300b-7a76-ba47-3b4b59d21a0d', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d21f8-36fc-7a8a-9e7c-8a53b7f5c870}'),
  ('019d21f8-42b3-7f5d-bce2-8221e2aab51a', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-4166-7c01-91e1-442c91302026', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d21f8-41db-7ff2-b086-b2784a3cd863,019d21f8-4233-71d3-9fac-d9693eec8b07}'),
  ('019d21f8-43de-705d-9660-64e35b49fe39', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-4330-7e38-9ab4-5c7edcff7201', 'app_levels_name_key', NULL, NULL, 'u', '{019d21f8-43a7-7554-9dc1-08e967e96f8d}'),
  ('019d21f8-46b5-7da3-ae9e-ea6f20248f4d', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-4500-7fde-b6b8-d4e5ae988fda', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d21f8-4579-7056-9407-a53d8303ed07,019d21f8-45af-703a-8eb2-12cecd740e31}'),
  ('019d21f8-4b99-7a67-95dd-e1e8814c24b5', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-4921-7d6d-bd39-bf1ae3227fbd', 'app_profiles_name_key', NULL, NULL, 'u', '{019d21f8-49a9-7e32-8df1-5bbddc26fc4e}'),
  ('019d21f8-4baf-7cc9-bbe9-cb35ec442f26', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-4921-7d6d-bd39-bf1ae3227fbd', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d21f8-49e4-713a-8065-52225a136d3b}'),
  ('019d21f8-4d1f-7987-b654-7cde03d7e7b9', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-4bee-72c1-b19d-d7f3e04403d7', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d21f8-4c6e-7a78-9790-a9d416b2d0bc,019d21f8-4cbd-7a2e-bab3-d5f9aae9e259}'),
  ('019d21f8-5ab1-76da-ab95-e89cdacefbce', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-5a09-7708-a88f-0e91d961aeda', 'org_permissions_name_key', NULL, NULL, 'u', '{019d21f8-5a8a-78f5-a2c1-8f822943cd7b}'),
  ('019d21f8-5b04-79f5-a742-f91634946311', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-5a09-7708-a88f-0e91d961aeda', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d21f8-5ac7-7ca1-a945-68f7b2f55436}'),
  ('019d21f8-5ee9-732e-9cdf-174d6174e598', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-5d48-7168-8451-216c6fcbacc3', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d21f8-5dc5-732f-9a17-f24657ca984b,019d21f8-5dec-7ef4-9089-02d9eb4e31a9,019d21f8-5e9e-7118-a0bc-656578acbbed}'),
  ('019d21f8-6031-7f92-a202-78fb7167cdd0', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-5efe-7315-bbc0-235821be2ac4', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d21f8-5f83-7a0f-9125-8842102c2cb9}'),
  ('019d21f8-6645-7a77-9073-2d05fef0d335', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-621e-7660-b626-4de6e761d890', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d21f8-65eb-7452-a36c-a5e9f6d1a5f1}'),
  ('019d21f8-6a32-7376-a0d1-2ad40a3b8750', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-60c4-7ef7-b869-3aef059f54c4', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d21f8-6959-7878-9d2d-e6cbc972492b,019d21f8-69e1-70ce-8943-c789dbef32c0}'),
  ('019d21f8-6bfc-7b5c-9b71-ed0217f12db7', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-6a6e-7d3c-9fff-f6899ec2b879', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d21f8-6b40-7ac6-8d85-87bf09abc7e7,019d21f8-6ba0-7bc0-83f2-9a432fd2677e}'),
  ('019d21f8-7920-7a64-bb7d-58e5af56172b', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-75db-70bd-98c8-e74388aad3dd', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d21f8-767c-71bd-acb1-6402af9f0818,019d21f8-78bf-74aa-956e-38f73ccdf282}'),
  ('019d21f8-7939-7791-b3e4-03e5364d6770', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-75db-70bd-98c8-e74388aad3dd', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d21f8-76c7-794d-a2f1-c1dd70bfa757,019d21f8-78bf-74aa-956e-38f73ccdf282}'),
  ('019d21f8-7add-74d6-956b-28ded222dcf6', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-798b-7cd7-868f-e2cb8ac132e2', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d21f8-7a1a-776e-980c-bd540814d948,019d21f8-7a72-77c0-8fe3-07f483879ad6}'),
  ('019d21f8-8655-762a-9ece-325bfaba11ac', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-848e-7300-b2ed-d1d059539f4e', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d21f8-851e-7c72-8445-0e1fced7a8e2,019d21f8-8586-7dd4-8c65-46cffb0f071d,019d21f8-8611-70dd-b4a4-b26a541f4003}'),
  ('019d21f8-87cf-73e3-b457-ab87d9e5150d', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-86ff-74e6-81fd-073c36bb719e', 'org_levels_name_key', NULL, NULL, 'u', '{019d21f8-8791-70a6-8703-b75113dece05}'),
  ('019d21f8-8af3-7165-967e-452ca08f02e9', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-890d-742f-b691-a2b8180617db', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d21f8-89a5-7232-9363-420af36f4e5f,019d21f8-89eb-7be0-bb90-6476a2898f03}'),
  ('019d21f8-978a-7198-8e02-20a8303db095', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-9505-7ff1-91b3-f64f2ea4917b', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d21f8-961b-70da-9b6a-6c97d4240455,019d21f8-9672-7d22-af66-d8c572d72e09}'),
  ('019d21f8-a1c2-7b9a-b4f7-86a510822b63', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-a048-7498-bfef-503c3653686f', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d21f8-a0f2-7317-a5d7-c9857ecc524e,019d21f8-a134-734f-88c5-8b97a522b2ef}'),
  ('019d21f8-ab89-7402-bbd3-d5a72065f144', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-a807-742e-bdaa-0b7136dbaaea', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d21f8-a987-7336-80ca-c201dd5c6209}'),
  ('019d21f8-aba6-7a7d-be9a-2fd1838db180', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-a807-742e-bdaa-0b7136dbaaea', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d21f8-a957-7335-a802-7f069c1f3625}'),
  ('019d21f8-abc0-70a7-ad8b-73f9a5d203dc', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-a807-742e-bdaa-0b7136dbaaea', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d21f8-aac3-7321-83d5-f43e2e142db5}'),
  ('019d21f8-b469-79b6-b360-97ab681aaffe', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b2b7-7805-8e03-38f4d18eb578', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d21f8-b35b-7709-a1bd-b7281e1596fe,019d21f8-b3a2-7050-abdd-99923372d687}'),
  ('019d21f8-baee-779d-aee8-976ea96648bf', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b880-7ce0-aaf7-439bd50fd939', 'emails_email_key', NULL, NULL, 'u', '{019d21f8-b9a8-7d42-b2ff-dcdd1cbaca8b}'),
  ('019d21f8-bef2-7d6c-b6cd-f00c858dd9fa', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-bc9d-716d-9548-13ba87dad147', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d21f8-bdf9-7d20-8d88-415382167403}'),
  ('019d21f8-c2e6-701f-bfd6-c30d4b36e944', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-c0bd-73b2-a45b-e6ed737b78f0', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d21f8-c1c6-7961-a890-77d3ed4a0f98}'),
  ('019d21f8-ca9f-7501-b2b6-0a9e89e4750a', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-c63d-7f5b-9f01-8cd327feb847', 'invites_invite_token_key', NULL, NULL, 'u', '{019d21f8-c786-72d8-ab7d-1262682d8e46}'),
  ('019d21f8-caba-7413-873e-98970af0cee5', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-c63d-7f5b-9f01-8cd327feb847', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d21f8-c6eb-7513-b719-83a16520890a,019d21f8-c726-7978-a076-93d4a25776b1}'),
  ('019d21f8-d35c-75b4-90ea-0d36d1e1cdc5', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-cef5-7307-bd04-79e8b7807267', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d21f8-d055-738a-98a6-4a9889794508}'),
  ('019d21f8-d3da-7647-937a-129998fe631f', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-cef5-7307-bd04-79e8b7807267', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d21f8-cf94-7b99-9f9c-2494962e502e,019d21f8-cfc9-760e-b3f1-d00898b19af5,019d21f8-d375-77f8-ba0c-4a7ad8df167b}');


SET session_replication_role TO DEFAULT;


