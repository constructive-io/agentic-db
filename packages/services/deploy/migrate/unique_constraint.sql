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
  ('bfc17dd4-0003-4aff-b932-3f5de1079ffd', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'users_username_key', NULL, NULL, 'u', '{bfc14089-7316-45ae-1e2a-1738315ac245}'),
  ('bfc1961d-4b4d-47b9-6ebd-230e47981e73', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1e538-6e45-43b8-f65d-6e85b24dd75a', 'role_types_name_key', NULL, NULL, 'u', '{bfc132db-169a-4ada-43e1-c81e609aba48}'),
  ('bfc1f651-10eb-4640-8840-35e30cf69834', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1e203-85c6-439f-c1f3-bdff550f562f', 'membership_types_name_key', NULL, NULL, 'u', '{bfc1dc85-30b8-4886-0fcb-e02eeaff3452}'),
  ('bfc1c2e8-e482-42bd-3cda-79b2e17df55e', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1f6ea-64e0-47d5-ca83-acf100c9d998', 'app_permissions_name_key', NULL, NULL, 'u', '{bfc1c3b4-a703-4dc6-d46b-70b0e1f09cf9}'),
  ('bfc107fb-348a-4a9b-5707-aa26276d3327', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1f6ea-64e0-47d5-ca83-acf100c9d998', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{bfc1f441-b700-414c-83c0-42541cde997d}'),
  ('bfc1af0a-ee43-4ca6-e976-b1a3508f62d7', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc18ad4-55d3-4abb-5c4f-28528278d477', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{bfc18b76-ccfb-418f-4a29-68a780de3a5f,bfc1f0d2-1741-4ad6-317c-7f00f534ffaf}'),
  ('bfc1304d-c31a-40c0-bae8-dfdeb68e1376', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc14f8c-0cd2-46d2-d70f-31a9f0bb489b', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{bfc110c5-eea3-42c1-a992-e59e05ae5163}'),
  ('bfc117a1-4066-40a1-f92b-7abe421a784c', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1eb59-c6b5-4140-f6d7-1b9a3a4c8fe6', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{bfc1f343-1c76-433d-0b60-ab1a1d104b2e}'),
  ('bfc1f80a-da62-48b8-e134-7aabe73023f9', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc11d06-4b6e-46c4-e7ca-fe2a7df5073c', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{bfc1af3b-ff3a-40df-837f-e7ae8fd3cfcf,bfc1fbcc-a5e1-44ae-0ba5-9be4f9272bf3}'),
  ('bfc177b9-bf34-45a8-cc9f-ee3f0fa86061', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1a069-ae99-4ca2-282e-2f033d1cf343', 'app_levels_name_key', NULL, NULL, 'u', '{bfc12377-a642-4120-1462-5c6fbc2e00f3}'),
  ('bfc13b0f-3b69-41d0-ee7e-67c6822ed147', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc18d71-0029-4d12-bdf9-1d2ff6378100', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{bfc1880d-699c-4296-cd83-8f6dabd830cf,bfc1a11b-0810-4e80-4b8c-893e8b2d6abf}'),
  ('bfc109d0-de8b-4f43-f1b3-d393f90def0b', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc11d16-d4a3-4624-94fd-25fd5a1f6082', 'app_profiles_name_key', NULL, NULL, 'u', '{bfc14fa8-a7ef-47b8-7033-9397f1f774a7}'),
  ('bfc1bf83-5ed3-463c-3c17-662a06e72165', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc11d16-d4a3-4624-94fd-25fd5a1f6082', 'app_profiles_slug_key', NULL, NULL, 'u', '{bfc14fd1-8a49-4640-255f-d8785a3a5bb6}'),
  ('bfc16ef6-ec4c-4c6e-9b4f-eda9536c879b', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1dc53-ced2-4503-b569-beda61b26fa2', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{bfc1152f-8ee7-4c83-f15b-fdbf4cef47be,bfc1b21c-b85c-4d51-cb68-3ebb46bad624}'),
  ('bfc1e113-8167-47d7-5e05-e68a0580bbfa', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19ae3-2460-43f0-9a1b-9bfb6230c3a5', 'org_permissions_name_key', NULL, NULL, 'u', '{bfc13b7b-6a9a-42cc-92e5-9363b3538a79}'),
  ('bfc19db8-ac37-46b0-3de6-2e3b4f576c20', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19ae3-2460-43f0-9a1b-9bfb6230c3a5', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{bfc11232-d9d0-406c-db9a-d76992abc31b}'),
  ('bfc13af8-57e4-4d50-d0e0-2d8b456adcb9', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1e969-4ee9-4253-ebb5-70225b1de64a', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{bfc1eb42-bd0a-4a5f-a919-5f9936c5c79e,bfc175ca-2f34-44c9-9c14-87aa41a0a7d4,bfc1a207-59d0-4ef8-d1c9-f43186faca14}'),
  ('bfc1ef62-f065-42e8-cd95-c8e0a5ea1fdc', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc18f5f-a7c8-4641-85ba-765e2ff2928a', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{bfc18c2a-11c6-4371-b903-c4b792173216}'),
  ('bfc19868-093e-4f5c-be40-9d25eb54d9e9', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc11b34-efed-47d9-51e6-164cf99babb2', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{bfc1ec81-2702-4926-6d8a-32e03048e1f4}'),
  ('bfc1cae9-ed05-491b-8ea4-54bed06a593c', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc10c0b-43db-44e3-29fd-759dd6ea0087', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{bfc1de73-e86f-4019-0133-f093edf39bd4,bfc1acfb-cefa-49df-07a2-b85d4434a281}'),
  ('bfc1fb31-c10f-442c-d8ef-c648a15a2490', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1b582-56f1-4c8c-d81f-d0d09d328dd4', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{bfc17720-151c-4879-aae2-678fa2bb6eef,bfc19124-9ce1-44b7-db90-4e086299c86a}'),
  ('bfc120a9-9048-4c09-3138-c89b712d6ab8', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1b377-6c23-416e-a032-67159147dc44', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{bfc12b1f-791c-4dd4-32b5-08834f51e136,bfc1a473-78d1-43ae-10da-77d35ef970d0}'),
  ('bfc1cab3-381d-4c40-e497-30c61acd509e', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1b377-6c23-416e-a032-67159147dc44', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{bfc187c3-26fa-4d3b-35f3-89b4148f55f7,bfc1a473-78d1-43ae-10da-77d35ef970d0}'),
  ('bfc193c3-ce7b-4d66-dc37-2d7431bb63cc', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc17a2d-9bc5-446d-b733-ad001217c27f', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{bfc1d04f-f8ed-4e6e-f570-4c69ae7b052c,bfc1141d-953a-4ea2-7f7d-5b79aaa5023f}'),
  ('bfc1033b-0bd0-43a5-c314-2d48bc6c9219', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1ea84-ff82-416a-1519-911757164ab0', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{bfc1dfca-9847-456a-bc4f-8dff84dbaaca,bfc1dee4-b9e2-4534-24c6-c683cf3f99cb,bfc11dc7-2c4b-4a13-8cd0-cd57832e86bc}'),
  ('bfc1042d-f7e6-40ff-f05d-e6f686c99169', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc17291-5f98-4e21-b9e7-2350f06f3a9e', 'org_levels_name_key', NULL, NULL, 'u', '{bfc117a4-15e4-44ea-eba8-63226a3ed493}'),
  ('bfc10f13-f859-4f1f-7fbd-c0e47dd5d40c', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1b5f0-9eda-4e20-6af4-254df874325b', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{bfc125b5-4a20-4c82-5863-c8a3e4b8e0b2,bfc14ce6-3515-40a4-7847-b3edc54bd547}'),
  ('bfc1361f-e2b8-4bc6-e3ba-12154a2d4922', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1d3ce-f18f-447a-b100-39155e5e62eb', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{bfc13df9-3f84-4193-c071-4807df71b582,bfc1a3db-e2dd-4562-e25b-a556c167b950}'),
  ('bfc114c4-ee7d-4c9b-b0c3-d4d61a0a9904', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1b3f0-ee9a-4bef-bef1-83ef8abf361b', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{bfc1a44f-3d66-4267-7b6b-720574d4099a,bfc16e54-40dd-4986-55c9-f09a4ad4d324}'),
  ('bfc1a9e6-d7a8-4a36-207e-06d4c34cb055', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1aafe-89d4-40f3-a2dc-598b6f4bef42', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{bfc1bc1c-66b1-4a6c-9c8d-0e0ba1ddd5fd}'),
  ('bfc1ad8f-51d6-4564-fa09-50014b0b0ff3', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1aafe-89d4-40f3-a2dc-598b6f4bef42', 'session_credentials_key_id_key', NULL, NULL, 'u', '{bfc1118b-fe31-4df8-949f-1b2ea544fa30}'),
  ('bfc1deda-bd52-4643-4b3c-ef632c5c424c', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1aafe-89d4-40f3-a2dc-598b6f4bef42', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{bfc14954-77aa-45d3-c1c7-e4efc6deb23f}'),
  ('bfc117f5-1437-4604-5f7f-f226a22152d2', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc131f7-8b42-4379-e0d8-989cd25245cd', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{bfc1f5e9-b4bb-4044-57c2-07ef52abb059,bfc1bcc8-d289-47a4-c30e-b4382f4f8eca}'),
  ('bfc1c17d-6d82-474d-1fdf-0afc477b8d2e', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1f367-d024-41ce-2ee9-fd060907364c', 'emails_email_key', NULL, NULL, 'u', '{bfc1a284-013c-438a-dd83-c4c8da54f7a7}'),
  ('bfc12990-49bf-4cdb-b88e-045043c22b8f', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1daf7-8aee-4826-646a-c0eae9bbd0f5', 'phone_numbers_number_key', NULL, NULL, 'u', '{bfc1742a-371f-4cd6-7639-0ab3dfc30309}'),
  ('bfc1cb8b-09e8-4ffc-e00a-b636070beb6f', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1388d-a6d1-4aec-e1e1-10327e66d97d', 'crypto_addresses_address_key', NULL, NULL, 'u', '{bfc1dca5-87bf-4379-4ab8-f6209e98e2e4}'),
  ('bfc17751-9b14-4b15-b5b8-54156ef2c492', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1fa21-a673-4977-d171-ca4fe4da3b2d', 'invites_invite_token_key', NULL, NULL, 'u', '{bfc143c9-298a-48fb-9416-1f99ac07b6dd}'),
  ('bfc11a49-b1a3-488e-13af-84899ebf1863', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1fa21-a673-4977-d171-ca4fe4da3b2d', 'invites_email_sender_id_key', NULL, NULL, 'u', '{bfc1fce5-1a44-4af0-fd04-9a0df4610f57,bfc1ecce-62f9-49fe-d7d1-361e2a90485b}'),
  ('bfc109ec-ba8c-47b0-747d-e6821a307f18', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc12e77-a096-4dbd-327b-a5467e0e6f85', 'org_invites_invite_token_key', NULL, NULL, 'u', '{bfc1b0d8-098a-45e8-e63d-24010e0d78bb}'),
  ('bfc13594-7b22-4cbc-34d5-345650e2e20c', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc12e77-a096-4dbd-327b-a5467e0e6f85', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{bfc169d8-285d-4dcb-d769-6d7eeebf2c41,bfc1b9db-c5ca-4977-7812-00f94183c1d9,bfc127b7-1612-4034-5d9e-c25a9dea657d}');


SET session_replication_role TO DEFAULT;


