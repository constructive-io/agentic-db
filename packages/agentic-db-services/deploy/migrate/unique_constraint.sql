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
  ('019d130c-f22f-7a30-a85e-bf37814d0c31', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f14b-7ef8-94e3-e005503a699d', 'users_username_key', NULL, NULL, 'u', '{019d130c-f1e9-76a1-a507-ebdb7813c3f1}'),
  ('019d130c-f3a6-7a95-af03-be44dea4021e', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f317-76be-a3a9-d9329bdd8fd5', 'role_types_name_key', NULL, NULL, 'u', '{019d130c-f37d-7c72-84f8-238e8116db62}'),
  ('019d130c-f70e-764c-8fab-00023b5a72e3', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f5c7-79b7-b287-73998d4ca15c', 'membership_types_name_key', NULL, NULL, 'u', '{019d130c-f65e-7fb0-8154-36dd56a8e7f7}'),
  ('019d130c-f97c-73bb-a455-7bf450f19bd3', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f8c1-783c-ac27-00d4e687ddb7', 'app_permissions_name_key', NULL, NULL, 'u', '{019d130c-f955-7485-9903-f055deca7662}'),
  ('019d130c-f9d0-7e6f-99cb-4b4fb321a72e', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-f8c1-783c-ac27-00d4e687ddb7', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d130c-f992-7339-8c61-a09ea0e789be}'),
  ('019d130c-fefb-74d4-a7e0-ca49375f02a6', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-fd65-7cff-b713-e3e23c1e4724', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d130c-fe0f-77be-9361-0a2cac6ce3e7,019d130c-fe39-7bf1-81d9-70fed1eb9f5b}'),
  ('019d130d-0014-7b22-b97f-fe02f725a8c7', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130c-ff13-76cf-892f-0b551c8f7c99', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d130c-ffa6-7b8b-97d7-6b74d7f51c3b}'),
  ('019d130d-0ba0-7ee0-88c3-ca9424418829', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-016c-7782-9303-e5d5774f7038', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d130d-0b1d-7bc5-adea-6edb6d9f357b}'),
  ('019d130d-1a10-76ca-9182-a70ed0f6e40f', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-1856-7f8d-9205-6dc58b19a41a', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d130d-1902-73a4-ae9a-13fdda45ebde,019d130d-197b-7387-9adf-ee3baedf05c2}'),
  ('019d130d-1b87-7093-81a7-b6a127a567df', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-1ab4-7201-9889-7832defb7eb9', 'app_levels_name_key', NULL, NULL, 'u', '{019d130d-1b44-72b6-9082-6d24813654ee}'),
  ('019d130d-1ee8-7a2b-a2de-6d7af0c3a78a', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-1ce0-7259-b030-92e697b7e7a6', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d130d-1d76-7faf-9f43-9fb587fb38a4,019d130d-1dbb-7294-8c9e-c31ea1cf5e42}'),
  ('019d130d-24e7-75ce-bc74-37b73326ef14', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-21f5-7aa6-99a9-5e4f58ad18bf', 'app_profiles_name_key', NULL, NULL, 'u', '{019d130d-229b-7505-9667-75ab2af71245}'),
  ('019d130d-24ff-7b5a-8cfa-e9ec9aecef28', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-21f5-7aa6-99a9-5e4f58ad18bf', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d130d-22dd-7e59-aff0-e9f59bbece7c}'),
  ('019d130d-26a7-7edc-975b-38b05557b028', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-2548-76c9-935a-1d36360ced57', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d130d-25e4-703d-8d85-0f5043c389fb,019d130d-263c-7632-8704-407ef498f5cf}'),
  ('019d130d-3812-71a0-8909-379bbc74a454', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-373c-7678-9350-2dc76515f178', 'org_permissions_name_key', NULL, NULL, 'u', '{019d130d-37df-7499-a414-a642c444e5fc}'),
  ('019d130d-3873-71b3-9224-1569a160f90b', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-373c-7678-9350-2dc76515f178', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d130d-382d-7002-b209-5f75e633822b}'),
  ('019d130d-3d8a-7110-a659-9e688ecf69c6', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-3b92-7067-a6c2-9c5afc059e63', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d130d-3c2e-7519-815e-0fa994034541,019d130d-3c5a-75d1-94db-7ba8165cbfa6,019d130d-3d2b-7a64-afb2-77dd4edfa6b1}'),
  ('019d130d-3ea6-7ff0-9a57-86cdcbb0b73b', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-3da3-72f3-80af-59cec1ba7467', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d130d-3e39-7146-acac-411607d07847}'),
  ('019d130d-465c-729b-acae-f65a7dd4dc2b', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-4187-7311-8e08-13f004278d09', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d130d-45f3-73be-bfe9-4cd85cc00f1b}'),
  ('019d130d-4ba8-7435-867d-2031a3b5c3df', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-3fd0-7483-bc2f-cbaeafc578cc', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d130d-4aa3-7810-acbf-913974458d80,019d130d-4b47-7052-9a41-c33ff73b62a2}'),
  ('019d130d-4db1-70f3-9c24-1f39fc0627ed', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-4bed-77f1-8540-190d2eb71587', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d130d-4ce5-7b89-8cb1-b31335bd1532,019d130d-4d56-715d-a70a-72d0ad2c415b}'),
  ('019d130d-5dd7-7a7c-83c9-b7f6edc6c290', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-5a37-7725-bccc-4e5c09cc4f43', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d130d-5adc-7847-9b48-d177d0535f6a,019d130d-5d74-7a61-8129-b2be14657813}'),
  ('019d130d-5df4-7006-9a11-d2bd83bb3dda', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-5a37-7725-bccc-4e5c09cc4f43', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d130d-5b38-7d3b-812c-e45578b60e1a,019d130d-5d74-7a61-8129-b2be14657813}'),
  ('019d130d-5fea-72b6-81f0-074d183e571f', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-5e51-7bb9-95ea-993dec8b9507', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d130d-5ef1-7baa-bbcf-dbda539a2c46,019d130d-5f54-7270-a903-749761b4a89e}'),
  ('019d130d-6ed7-7420-9486-74b6f5410c10', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-6cc0-793d-a9eb-1f9e6cd47de6', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d130d-6d67-74b9-8797-187677f97f0c,019d130d-6de7-7ec9-a4e3-b5032af45311,019d130d-6e8d-71fb-bf28-8679428a5df9}'),
  ('019d130d-70b0-7534-bc6f-79738101031b', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-6fb4-7ec0-84f2-a03dcf2d7d2d', 'org_levels_name_key', NULL, NULL, 'u', '{019d130d-7067-74ea-b789-0733a9a548a7}'),
  ('019d130d-749d-761c-8afe-e2320c638392', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-7263-7fe9-870c-ab8a701c5559', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d130d-7316-7601-8484-5250db9758ec,019d130d-736a-79ef-8418-16b5ec3a2872}'),
  ('019d130d-8403-720b-bf01-03de73349680', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-80f9-7a4c-8d0e-798524f732de', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d130d-8279-7c40-bb3d-73bb6e85a354,019d130d-82e0-74f1-b19a-272c2acab415}'),
  ('019d130d-8fff-7e68-b2c6-45f7c2b62c54', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-8e5f-785b-8c5f-cfad06825b6c', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d130d-8f1a-7a98-bf4f-6db263187256,019d130d-8f66-730a-91e6-0eac435db12c}'),
  ('019d130d-9ad4-76a4-8eb9-693ef9475424', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-96cf-732b-bc3f-0a9016a8b3be', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d130d-98a2-719a-a5a2-ae946eb4bd6c}'),
  ('019d130d-9afa-7331-9a1a-0b2a5be1e873', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-96cf-732b-bc3f-0a9016a8b3be', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d130d-9867-7a6f-a07a-43024c2fcb96}'),
  ('019d130d-9b17-7505-a999-5951cc72a19f', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-96cf-732b-bc3f-0a9016a8b3be', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d130d-99f1-7d00-a40d-cef59f7c99c1}'),
  ('019d130d-a54e-7e47-b289-387fce911f7a', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-a316-76a6-b279-8ea16843604f', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d130d-a3fb-72f9-9a99-cdfa2ef953ef,019d130d-a44c-701c-b1f8-120e66ad4bb4}'),
  ('019d130d-acd0-78f1-a91a-323b08add7c4', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-aa20-7722-8e58-161d5b072411', 'emails_email_key', NULL, NULL, 'u', '{019d130d-ab9e-7b5c-97e1-6a902c4519c4}'),
  ('019d130d-b232-7cdf-bf45-005c84f3a229', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-af57-73cd-b532-4a250e4364a2', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d130d-b113-7c1e-af54-e337724250a7}'),
  ('019d130d-b75c-72b6-b91a-e477ed214baf', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-b4c0-7b5b-b43f-68ae99ec218e', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d130d-b615-7ea8-a234-2356de1200e1}'),
  ('019d130d-c0bd-78a9-8185-468d7444e159', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-bbc9-7217-8643-9c9802d2a2b3', 'invites_invite_token_key', NULL, NULL, 'u', '{019d130d-bd5f-70dd-8a6e-51b7f6e36472}'),
  ('019d130d-c0de-75ba-8558-91769cacdf79', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-bbc9-7217-8643-9c9802d2a2b3', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d130d-bca8-7a85-86d3-86e507d439bd,019d130d-bce5-787b-b758-eb567c557fe6}'),
  ('019d130d-cba0-7175-9920-203a2d60e245', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-c67e-7905-84df-2a7db8aa2c17', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d130d-c834-76fb-b9a6-69001fa08159}'),
  ('019d130d-cc42-70c9-8da2-3ba15c33f049', '019d130c-edc8-7abe-b39e-3935c59e44fe', '019d130d-c67e-7905-84df-2a7db8aa2c17', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d130d-c739-76c3-b07c-ce1a72e3eb1f,019d130d-c777-7b3c-8f97-52badd9a970f,019d130d-cbbf-77bd-8a1e-ab5a0b167e6a}');


SET session_replication_role TO DEFAULT;


