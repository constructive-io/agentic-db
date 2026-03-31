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
  ('019d42ff-cb44-7fb1-8943-27d402625ee1', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ca62-77a0-ab97-b8d784c420dc', 'users_username_key', NULL, NULL, 'u', '{019d42ff-cb02-768c-8a79-f304fc90db4f}'),
  ('019d42ff-cc8f-7e6d-96a9-e801608ea3b4', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-cc06-75d4-b43d-57a43783ee7e', 'role_types_name_key', NULL, NULL, 'u', '{019d42ff-cc6a-7410-a681-22730efe03c2}'),
  ('019d42ff-cfca-77e1-a38d-6c95a8169e79', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ce8f-7cf3-bc2c-e9e5d0023b80', 'membership_types_name_key', NULL, NULL, 'u', '{019d42ff-cf26-7f5e-9ac3-14c02f37d95f}'),
  ('019d42ff-d20f-7217-b913-cd0aa16ca106', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d15d-75cc-99fc-56bbef6c588f', 'app_permissions_name_key', NULL, NULL, 'u', '{019d42ff-d1e8-7a21-8b35-21e2a854d208}'),
  ('019d42ff-d261-7e7f-b401-103c02d2d12c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d15d-75cc-99fc-56bbef6c588f', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d42ff-d223-7c49-9336-33e58bec3650}'),
  ('019d42ff-d738-78b7-a0c9-c1fc497dc88d', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d5c3-7886-86af-32f382d56e2b', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d42ff-d657-7fbf-a250-bd4614e7144e,019d42ff-d67e-7680-903f-a3361b6668c0}'),
  ('019d42ff-d842-782c-ae8b-9f8942238c33', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d74f-7d29-ab44-cc171a5fd94f', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d42ff-d7e3-7845-90ef-8a93d041281b}'),
  ('019d42ff-e1c3-71ee-a332-67d7ab745719', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-d962-725a-94cd-7b18a2811a63', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d42ff-e149-7a42-b6ae-f5ffe187cd3a}'),
  ('019d42ff-ee6c-7be9-9fae-0d59da4efbef', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ecee-7cb7-85c9-ec3e820ad114', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d42ff-ed78-7088-8932-f15197e3c2dc,019d42ff-eddf-7844-b225-5c50765b72dd}'),
  ('019d42ff-efc6-78eb-8687-3f29670fc26d', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-ef01-7981-af58-a4608bdd3944', 'app_levels_name_key', NULL, NULL, 'u', '{019d42ff-ef89-737d-b03e-028a00d27a9c}'),
  ('019d42ff-f30e-7837-a4dc-fb6e01674a01', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f10e-710d-b73f-1d050e449b80', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d42ff-f199-758e-bffe-ed42c9055c35,019d42ff-f1d8-7747-ba61-070dcfdf947a}'),
  ('019d42ff-f897-7327-9203-d16aa3cff0a3', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f5d3-7c28-be38-d476b77ba8e3', 'app_profiles_name_key', NULL, NULL, 'u', '{019d42ff-f677-7502-94b0-6dd852e14a10}'),
  ('019d42ff-f8af-7882-b552-2409fdba2c39', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f5d3-7c28-be38-d476b77ba8e3', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d42ff-f6bb-732b-980a-e955966706ce}'),
  ('019d42ff-fa39-72de-b12f-2e10cb8f1f23', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-f8f3-7bbb-b534-90fa7423350f', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d42ff-f97f-7d37-a4f5-32fb499c713b,019d42ff-f9d3-7469-ae48-b3ee8bc78f37}'),
  ('019d4300-08f2-7521-8546-817b2b30f332', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-0840-7891-b5d8-7dff931633d2', 'org_permissions_name_key', NULL, NULL, 'u', '{019d4300-08c9-7991-b060-c06490f191a1}'),
  ('019d4300-0948-7bba-98e9-6807647a31d0', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-0840-7891-b5d8-7dff931633d2', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d4300-0909-7392-88a9-62434af8e2b9}'),
  ('019d4300-0da6-7853-93c5-c8b9d40a8fdf', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-0bcd-71fd-a743-0916ed3e2eba', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d4300-0c6c-7ce7-96cf-e6f653eb1467,019d4300-0c99-7d81-a204-86c74c10bcc0,019d4300-0d4f-77d1-b907-fc10d1cd6aef}'),
  ('019d4300-0f3b-771a-bf8c-3e9f96e0ea07', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-0dc2-7269-8a7a-f9193067ff9a', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d4300-0e5f-7911-8ff5-bc5799b9ebe8}'),
  ('019d4300-1592-77de-b290-adae3ebbc5e7', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-115f-7114-af1e-b55f474ff2f3', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d4300-153d-7856-8215-1e0538ea39e7}'),
  ('019d4300-19d5-745d-9e90-6f82991a7638', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-0fec-7439-9eeb-f86b5daeae15', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d4300-18ef-7fe6-9d97-9da760cc52f0,019d4300-197d-7c90-9a64-b1a97ceff43d}'),
  ('019d4300-1bd8-75de-8e9d-cd5592e038e6', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-1a15-799c-979c-e55bda5c5e14', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d4300-1af9-7933-ad8d-d3482bc05a0d,019d4300-1b64-738f-899f-7fa47afc2217}'),
  ('019d4300-2962-7ffb-968d-bb18c6e8920b', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-2612-7b60-b52a-46f43c02faf2', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d4300-26b2-7283-b078-8b7c224d1aac,019d4300-2905-7d1f-a9c9-99031b1b1f34}'),
  ('019d4300-297c-7377-bb36-2e7c3b9891f1', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-2612-7b60-b52a-46f43c02faf2', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d4300-2700-7933-bb84-211c70f26971,019d4300-2905-7d1f-a9c9-99031b1b1f34}'),
  ('019d4300-2b52-79a6-a85a-5411b0eb3164', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-29d3-7415-a46f-582ade8430d9', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d4300-2a6e-7296-89b2-ea5475a66c52,019d4300-2adc-7ed7-8278-3de5c1943cf3}'),
  ('019d4300-37f3-757d-9288-13eaf3cb07d2', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-35f2-77c7-9b06-5f22f5bb10c2', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d4300-3691-7332-afc6-2258b3a3f79f,019d4300-3706-73e8-a1ab-0817d9252d71,019d4300-37a5-7ed0-9319-83e393d5906a}'),
  ('019d4300-3997-7a68-970a-6b3117275619', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-38b1-71b8-84cc-a811eda4b5de', 'org_levels_name_key', NULL, NULL, 'u', '{019d4300-394f-7ce5-b931-efe40603a3c8}'),
  ('019d4300-3d16-74b6-a0f4-fafc972c693b', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-3b05-72c1-81d9-5c2bad43d37b', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d4300-3ba4-7ebd-944e-bd68818d4068,019d4300-3bf2-741d-b2ba-e969f3a79208}'),
  ('019d4300-4afc-7ab7-af1a-7b83a4451d8f', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-4846-73f6-b3c0-3d2de11edd10', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d4300-497e-7c15-be15-1149bca6f96b,019d4300-49e3-72b2-bf51-b45cd3c8ca83}'),
  ('019d4300-55dd-7743-96a6-1057ef40ccc0', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-5444-78d6-86fe-90e23e663ef4', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d4300-54fb-760f-bc30-c4df98fcf75e,019d4300-5545-7300-b74d-52aa0fa2f17d}'),
  ('019d4300-5fe2-7875-9d4f-afa910d8e1d1', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-5c1d-7e64-b841-b65b14c0cde0', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d4300-5db5-7faa-9bed-a3c9591b3f8b}'),
  ('019d4300-6001-73de-bfba-945420efcc2d', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-5c1d-7e64-b841-b65b14c0cde0', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d4300-5d7e-71d0-98a1-e52c98ac7745}'),
  ('019d4300-601f-7841-94eb-58b171098022', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-5c1d-7e64-b841-b65b14c0cde0', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d4300-5f01-7987-a051-26d262a3c72e}'),
  ('019d4300-69d9-7fe5-bda3-f876b14908fd', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-67f9-7c9f-b2e5-c1f113a807be', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d4300-68b0-7e8f-a20d-3a14075f916c,019d4300-68fb-75e8-8ae9-924ce54a0865}'),
  ('019d4300-7121-7af3-bbb6-c96dbb687f05', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-6e5f-7970-86cd-e5e4637e320d', 'emails_email_key', NULL, NULL, 'u', '{019d4300-6fa9-7261-ad74-c032ac1e4547}'),
  ('019d4300-7598-73dc-bcef-1daff1a4d4e1', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-730b-773c-b769-0f8cb2bfeafd', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d4300-7485-7430-b8bc-50b50bcb530a}'),
  ('019d4300-79e7-7408-b772-8bc40aa66455', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7781-78ca-b3cd-8aafe98bf29a', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d4300-78ac-787e-a935-60c529c57c97}'),
  ('019d4300-8274-7888-8382-31e4fa933534', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7d9f-7dc8-aaa1-378b2c8d6ffd', 'invites_invite_token_key', NULL, NULL, 'u', '{019d4300-7f0e-7805-a740-8fd46aac88a3}'),
  ('019d4300-8293-7384-8a2d-a8f9ed3ad84d', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-7d9f-7dc8-aaa1-378b2c8d6ffd', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d4300-7e69-77d6-ad3d-a05a57f8a24e,019d4300-7ea7-7ce3-8b55-90d68e35f8f8}'),
  ('019d4300-8c06-7310-a194-c0a5f204a4ae', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-8728-7a9b-9bf1-6cf19b56c9b9', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d4300-88a7-7515-9272-46549db93524}'),
  ('019d4300-8c93-78ef-b771-205ef28c4de7', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d4300-8728-7a9b-9bf1-6cf19b56c9b9', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d4300-87d2-786b-abcf-c9df9c607ec6,019d4300-880b-77af-a800-443b83204bd2,019d4300-8c24-7f04-828c-02f1a74ad0e4}');


SET session_replication_role TO DEFAULT;


