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
  ('54dde87a-a3c4-5f21-a99c-8a03150a786d', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '7d90611f-ed4b-2948-16a6-2df67d7b7f1f', 'users_username_key', NULL, NULL, 'u', '{26dedf1f-f33b-6cae-9270-cbae13ece08f}'),
  ('dd528364-26f3-827a-c2b0-57ec335cd654', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'ecdacdf9-8f2e-f6c4-1e4a-243957bfed14', 'role_types_name_key', NULL, NULL, 'u', '{6cc6548a-0932-1403-e78c-64d77cf010fb}'),
  ('75f61f31-2250-04d6-e019-ce5e2ba09137', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '59feeeef-f2d8-3251-c360-4e91473d8666', 'membership_types_name_key', NULL, NULL, 'u', '{bf463e87-7101-bfbc-e165-3e43ba06c91a}'),
  ('46f47ad4-d16d-c640-161e-ead7e6104b0d', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '80787704-825b-81da-49d3-1461649de732', 'app_permissions_name_key', NULL, NULL, 'u', '{27915283-29ba-0339-9c77-fa69b3b16e0c}'),
  ('bc445793-7319-0c49-59a5-f7a361e7990f', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '80787704-825b-81da-49d3-1461649de732', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{49eefeee-cc49-f264-ddb5-eecb7e99e404}'),
  ('c7ecdea1-a717-9903-3ed1-031f62fcb5e1', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '2702c4e2-ae13-03f8-90f5-09b3f4eb70a1', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{e7f71239-7a6c-c990-4b12-9648bcbf864b,c532a1b5-48cc-e4fc-da7a-2c316a6e2db2}'),
  ('0fb97b10-5006-c9cf-cd08-5b9ad3d1cd9c', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '8c21c5c0-7e77-96dc-a3ec-8c1d100049c7', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{299287ca-26a8-0291-c26c-51971cdf312a}'),
  ('ad571502-8d46-e8bf-c768-8d3c6458b830', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '2ec31c57-f7ee-376a-4efa-145ec220fa1c', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{e966d618-3627-e77a-3ca5-0f3d707346cc}'),
  ('94dfc911-994b-f6b2-3953-3b0d588891b8', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'e6a6ee2e-4747-9025-0bc3-063e4872ec28', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{f08ea9d7-708e-25e7-8fe4-d05225c3f972,5852af02-0e79-408d-26a1-02bacb4b63bc}'),
  ('2eaceda7-db95-6300-ec57-3253243d287c', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '29cc7376-2424-538a-74a6-b0c95d54f50e', 'app_levels_name_key', NULL, NULL, 'u', '{4505c133-9ed0-b0f6-7e6e-08158e625b2d}'),
  ('fb2ac5c9-4fb4-d7d0-118a-06c6845fbd23', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '78731b69-3697-94bc-e024-bce96708dead', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{b5d88460-f772-a7bf-881a-68f6d00a5662,cd53bc51-fe7c-f2b8-93f4-1e7e0c64c067}'),
  ('bc09a1a4-4f74-a7e3-a71d-f14583f65dee', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '24d4c77f-5d7d-c6cf-8785-a0ec18533031', 'app_profiles_name_key', NULL, NULL, 'u', '{a8c237cc-3352-e624-4552-37e4769a726e}'),
  ('522e25b2-297d-3e6b-211f-6c0b3ad30f76', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '24d4c77f-5d7d-c6cf-8785-a0ec18533031', 'app_profiles_slug_key', NULL, NULL, 'u', '{f80c5d1e-2701-0689-b1fb-e3c0ba0c1ebb}'),
  ('14d659c3-695d-eeb9-746d-0ab036dd8028', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'ab33f42d-769f-8680-11be-8070f4412a6d', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{b16a22e7-231e-f4f9-08bb-0faae6bc65e8,8a2faeaa-8a12-bcaa-286a-a1cc0d6c7a5f}'),
  ('c72fd26a-9655-8f19-d81f-530905b7d559', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '04110344-716c-1565-2ef3-0b5d077c109d', 'org_permissions_name_key', NULL, NULL, 'u', '{d9aed469-ee37-1560-49d3-021e5d7f09a8}'),
  ('bd13aca4-49b7-0e97-1a73-53f22a07f28a', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '04110344-716c-1565-2ef3-0b5d077c109d', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{fdb58ae9-c408-352f-b691-5bf8c20795a2}'),
  ('bb0a4a6b-4b98-4e66-ebc9-d50c64e5eeb8', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '9988f49c-9161-942a-03bb-1609bff4a776', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{53e369de-3148-8438-0d51-35e894d0d38e,9c6dd08e-5a44-1da7-288b-fadc5a53700e,a3365226-e248-3b4d-7ce9-827e8d8e2bdb}'),
  ('41aa7277-3e3d-bf4e-f4d4-bcc2bbac047d', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '95e7de09-3b07-80ca-44a0-4893bd79f911', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{140c8e31-122a-fa56-fa20-0262fb5a7e38}'),
  ('e973109c-9558-2e44-4a31-1d43696cae8a', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'cea7f37a-1253-ae17-1839-610a5a7f6a5c', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{51a5f9de-db86-04f2-e46d-7c1c9acfb86b}'),
  ('3f4dbadd-d7e0-4727-2131-2dd42d5a45b2', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'be1e267e-799f-a20f-b246-13adbb6a0f13', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{a58aa8bf-b80f-58f7-7c51-65923c4d7d17,bde76902-abe8-f454-bfdf-f7eb3891b4dd}'),
  ('2442dacd-51fc-c949-2cb5-cde98ed83408', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '5b062b0d-8fb9-cb94-b857-f3704db280f8', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{742ad260-8bbe-324e-d705-eb07634a04cc,6fedb475-50b3-3123-0060-c32ab076981f}'),
  ('c8b3da49-8ef1-1f41-e052-2c36134501b3', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'a84f9c2e-6334-381a-fdd1-2c9e3ee1edc7', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{629087a6-ca03-096d-4960-be8939703dc5,6a821d59-5f73-fb4a-984a-357c32c37ccd}'),
  ('7d512254-a720-e479-f19b-01adfbc0df4f', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'a84f9c2e-6334-381a-fdd1-2c9e3ee1edc7', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{e2c510b3-8ed6-7dd9-31e6-d02a4484f594,6a821d59-5f73-fb4a-984a-357c32c37ccd}'),
  ('cd0a0b43-4102-947d-d7b9-5881977ac759', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '25df8413-93ca-95ff-e35e-1d6f337243f6', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{16d2228c-2820-d42d-fb2d-a4d471cccb1f,830dd8f6-def1-3f62-6490-bec03a45d6ae}'),
  ('80b450be-b019-c1f8-de8a-7bde35f146a9', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'bcc89bb6-4ba4-d50d-68eb-c62db9bfeb7f', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{ee478c92-9738-829d-b95b-c985fb25bd61,bdaf2528-d1f8-6fa5-b6aa-1713353d93e7,aa77f021-c703-bf37-bd02-30b930e28c0d}'),
  ('82de7fff-f651-6090-2e46-589c5522e5d8', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '15862449-e3aa-0d8a-e508-b029eba93f93', 'org_levels_name_key', NULL, NULL, 'u', '{5e5b3b61-46b3-abe3-20f2-75e319b30e4d}'),
  ('1fc31d48-86ba-8eb8-062e-ba7f78f43a24', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '74f635e9-8097-e223-d1d4-025f2c6cc082', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{c02ad116-1af4-9189-194f-6001ee5857e5,d97450a1-01c2-195c-3c97-80596c1ce0c6}'),
  ('0bf5b6a7-6c1c-2de7-5b1c-f2e795611c3a', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'bee9acf5-642f-dbd7-9013-3b0c23097da9', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{f013b5c4-55f6-6623-6101-1ea78f6d2a3e,fb8b145f-9929-292c-50a3-18eaac852bd9}'),
  ('970bb5bf-4429-a455-cbb2-52ac4f98783d', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '3ab73878-df70-b51d-e467-3c8054bc46ff', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{0b9cdcc2-8ca4-f1a1-2967-ea9469ba49e2,0f31b3ee-c0ef-9ea2-b0e9-bc5508453092}'),
  ('8431aa59-898a-e005-5fc9-370d54997b4e', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '772b1544-4191-c9b3-bedb-8d1e23786615', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{d5955321-60ec-3a2c-9015-7c450908cc6c}'),
  ('66297ce5-7a53-8eee-3f15-ccd3076fb276', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '772b1544-4191-c9b3-bedb-8d1e23786615', 'session_credentials_key_id_key', NULL, NULL, 'u', '{5d430854-e304-7f84-016a-840aad3589c0}'),
  ('87bd1551-d473-a796-5d11-1073123727b8', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '772b1544-4191-c9b3-bedb-8d1e23786615', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{8669f4ea-9beb-9211-8e07-b8566b7f60c2}'),
  ('91abcd8f-18e8-59ff-c54b-4ee45b6139bf', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'eac12f48-d9c7-f66b-a63f-87727e5474ec', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{42f6a019-3ca2-74cf-ec2a-d9172e9ab5d0,a9736f3c-d57e-06f8-c811-8b6ea546d513}'),
  ('ecaf8660-0127-9b01-7511-9d3f6386cfbd', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'd6a52f9e-276e-9abe-6b34-8fdc543037b6', 'emails_email_key', NULL, NULL, 'u', '{03cd8ca5-3282-e85b-7604-70f24e02ec05}'),
  ('db0d4462-3379-cd72-f311-3186e01ad720', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'bfa1fce2-6e58-1fb5-5e1a-2959791ae5ef', 'phone_numbers_number_key', NULL, NULL, 'u', '{1952d019-fd64-f502-f0c7-20f8fdca4e64}'),
  ('cf94d2e6-52c0-eec0-8940-bbdabdf2e52e', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '4ce16892-87d4-bb44-d743-6d182552e2c0', 'crypto_addresses_address_key', NULL, NULL, 'u', '{886b0dba-d142-8919-7c2d-9bf4a3c0c7a4}'),
  ('5437042a-be1a-c60d-8cbf-29612f70c644', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b250e59e-eff5-8a2f-60d5-4e77ca733147', 'invites_invite_token_key', NULL, NULL, 'u', '{72f36c0a-169a-8cc6-2ca6-53bf5256d7ab}'),
  ('b52b01b7-0ae6-1464-12e2-4382a7676f65', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b250e59e-eff5-8a2f-60d5-4e77ca733147', 'invites_email_sender_id_key', NULL, NULL, 'u', '{2b22329c-6d55-8e2e-ba5b-1d2581bcd00f,a10111e6-8780-bfa9-3a46-7aa3840347e0}'),
  ('0722c4c8-ff08-ceb3-0b8e-36302e3c4d38', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b00c6fda-9e2c-fa48-412a-86b8a0915bd8', 'org_invites_invite_token_key', NULL, NULL, 'u', '{bc9ba1cd-2caf-d4dc-617d-56a592f64925}'),
  ('92a22535-a2a0-187c-9adc-6c8602cefb15', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b00c6fda-9e2c-fa48-412a-86b8a0915bd8', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{57eb07bb-3962-1761-f750-850f2fbca4f2,b4f071b6-fa09-9fed-c221-2ebec3e860c3,fcafc788-6143-8e04-feaa-c478345f7406}');


SET session_replication_role TO DEFAULT;


