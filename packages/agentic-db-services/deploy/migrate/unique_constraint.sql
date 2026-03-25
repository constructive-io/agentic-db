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
  ('019d2727-71f2-7863-8fcb-0c1d7a7fc3b8', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7153-7bae-b8ec-6f398ecf0b75', 'users_username_key', NULL, NULL, 'u', '{019d2727-71cb-75f9-914c-151a3eb6373d}'),
  ('019d2727-7308-77ad-87e2-22685d363c01', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7291-764f-9aa8-cb6ac34640c2', 'role_types_name_key', NULL, NULL, 'u', '{019d2727-72e5-787b-8d3d-fa59cf942557}'),
  ('019d2727-75c3-762b-ada6-2353ddf81713', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-74ba-7be9-a593-591454c65167', 'membership_types_name_key', NULL, NULL, 'u', '{019d2727-7538-7281-8e46-28ef77addc58}'),
  ('019d2727-77b2-7977-a23a-6af5fe6076da', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7716-776b-ac97-df47ca6b3867', 'app_permissions_name_key', NULL, NULL, 'u', '{019d2727-7790-7cd8-a8d9-8d1de2bf8c38}'),
  ('019d2727-77fc-7c5d-9ba2-8db00f0d6251', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7716-776b-ac97-df47ca6b3867', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d2727-77c5-7e13-b6e2-0f7eb8d0fd28}'),
  ('019d2727-7bf2-7abd-892d-a059921667d9', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7ab6-7f54-b993-a6548e5bdf4e', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d2727-7b35-7f21-86c6-c352ba045d52,019d2727-7b58-7906-bad5-cf1464f2eaeb}'),
  ('019d2727-7cc1-7ab8-8d9d-5d3329cdd4c5', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-7c05-73c1-8c0d-089c630d732b', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d2727-7c71-7aa4-b3f1-d3431bc23356}'),
  ('019d2727-876c-7d05-a422-2c52d47e340c', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-801a-7ff9-86ec-a8861bee9f8d', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d2727-8702-7cc0-9c5a-a6d83dfbee2d}'),
  ('019d2727-928e-7f88-a4a5-ebd015feeb12', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-9131-702f-8dd4-266594a8f5f5', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d2727-91a7-7498-aeff-ef53474d5e0a,019d2727-9204-742f-92d9-79f12ccb3582}'),
  ('019d2727-93b6-7d21-bf8d-5534ea637cee', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-930b-72e9-83e1-78af1215e4ac', 'app_levels_name_key', NULL, NULL, 'u', '{019d2727-9382-7602-9c39-2140b9469eea}'),
  ('019d2727-9659-735b-969b-66482feda026', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-94c8-724c-bd23-42be11a94a4b', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d2727-953e-71f0-aa61-a0a944d92c08,019d2727-9578-74f2-96fb-4d5e6d2a0407}'),
  ('019d2727-9b0a-7d64-a251-8a6aa4222b18', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-98b7-7254-9da7-b45e49101b8a', 'app_profiles_name_key', NULL, NULL, 'u', '{019d2727-993e-7b8d-b359-e5b513d0bd7c}'),
  ('019d2727-9b1f-7993-a698-e1c788ab5495', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-98b7-7254-9da7-b45e49101b8a', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d2727-9974-7c53-9274-ecbfd9d36188}'),
  ('019d2727-9c82-79e4-8e21-8b8da7735647', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-9b59-7518-9790-37fb9759732f', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d2727-9bd1-7244-ad93-d2b4395db85f,019d2727-9c20-7b22-8d90-7c726b32a6e4}'),
  ('019d2727-ac7e-7bd3-98c3-594876509108', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-abdb-7e45-9524-98962317e78b', 'org_permissions_name_key', NULL, NULL, 'u', '{019d2727-ac59-7f7e-8f02-3ee25c973a81}'),
  ('019d2727-accd-79fd-a358-41509a2a3832', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-abdb-7e45-9524-98962317e78b', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d2727-ac92-7aa3-ac88-f3d8585d38f7}'),
  ('019d2727-b358-7427-a805-db39ae4a32a3', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-b1c5-7e3a-8333-272fc2d6843b', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d2727-b241-771f-9073-19c3367fa228,019d2727-b268-77e8-a3a8-4b944147561b,019d2727-b30a-7f80-a5bb-54aa52ace86d}'),
  ('019d2727-b499-73a2-8c73-56d6c74b02bb', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-b36c-726a-ba60-154ce6591f54', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d2727-b3ec-78e5-a3da-4dfc4060ac56}'),
  ('019d2727-bda7-7366-a209-82a6ef3851ee', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-b97c-70c7-831c-5f1e116ff9de', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d2727-bd53-77d5-917b-f4c124788917}'),
  ('019d2727-c1bf-777d-9afb-2d1ea397acf4', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-b831-70d7-8829-5261a0a046df', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d2727-c0ef-77ee-8b90-75a694af303f,019d2727-c16a-76bc-b00c-182fe3887128}'),
  ('019d2727-c3a2-7f8e-9430-9f6fa33df32c', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-c1ff-7305-957a-f58b75fea2c8', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d2727-c2df-7d81-90e6-cc2239db8088,019d2727-c348-72a3-8a96-193f616bf0af}'),
  ('019d2727-d3bc-7144-b48c-927799fa5bea', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-d0b2-7c6e-91b6-021cc634e196', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d2727-d14a-74a8-90c5-836878aa6dd6,019d2727-d364-7dbd-a16d-62bc97007544}'),
  ('019d2727-d3d4-7c76-8354-8cce0c8844cf', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-d0b2-7c6e-91b6-021cc634e196', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d2727-d18c-7c7a-a6f2-559f6b9bcb99,019d2727-d364-7dbd-a16d-62bc97007544}'),
  ('019d2727-d585-711e-829b-c2e01b32e375', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-d427-7cb2-b5fe-007213cc2e67', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d2727-d4c4-782c-9476-ff460c187675,019d2727-d51c-7aae-8301-ff9e0bbc2851}'),
  ('019d2727-e469-7205-929b-e5d93f04bab4', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-e284-7c16-9526-cf72cf157e96', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d2727-e31b-7684-92d0-3d4b2a620789,019d2727-e390-7a86-91e5-bec7b25ecd1b,019d2727-e426-7e07-a692-a0578bdb96d4}'),
  ('019d2727-e5e1-732c-9a5b-b121d4fcad4d', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-e510-7e6e-8933-2ddf5f73e781', 'org_levels_name_key', NULL, NULL, 'u', '{019d2727-e59d-7986-a2ff-6d3bf95f0ebe}'),
  ('019d2727-e91e-7280-ae1a-335e3de63a53', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-e737-75ae-a9ce-602ea383e905', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d2727-e7cf-7558-9cc8-5c7107373748,019d2727-e812-766b-9eb9-e2196a738804}'),
  ('019d2727-f5b2-71bd-9049-4ff311d8df54', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-f33f-79db-9f54-b31a4bb3c77b', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d2727-f45b-74df-bed7-ea061765311c,019d2727-f4b3-700b-9678-a00e5982d98f}'),
  ('019d2728-0006-773a-9e91-f8203e0b9d3c', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-fe7c-7354-b9ff-da6e2633385f', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d2727-ff26-7816-a826-24c79f3bf14d,019d2727-ff6d-7b56-b517-a586be9a8ddc}'),
  ('019d2728-0997-7d9a-8b20-b053a27abaa8', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-0616-7abc-bbed-c98eb90a133a', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d2728-079d-7d37-af2b-1e2ca9a79dbe}'),
  ('019d2728-09b4-7837-9038-439c8cbc62e7', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-0616-7abc-bbed-c98eb90a133a', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d2728-076f-7187-b015-f69c50265824}'),
  ('019d2728-09cf-7346-8643-2552f83823f1', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-0616-7abc-bbed-c98eb90a133a', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d2728-08cf-77d1-8ec1-0e2ea5d47381}'),
  ('019d2728-12cf-7034-8336-842a1b92d181', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-1116-7ca6-864c-2862b8a303fa', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d2728-11bf-75a8-ae75-97e04a751727,019d2728-1204-78ef-8182-e76b84df1b61}'),
  ('019d2728-19a7-7607-b962-0dabfd8a223b', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-1701-7da0-9c6b-645985d788d3', 'emails_email_key', NULL, NULL, 'u', '{019d2728-184a-73b4-9ef3-6ad2e6314e85}'),
  ('019d2728-2165-77e3-86e8-bfc49c061aaf', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-1edf-7826-addc-cacd2c1b1a81', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d2728-205c-7fb2-a5ba-b088752ce3ef}'),
  ('019d2728-2930-7682-a947-3df3fc58dc5d', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-26da-71e7-8d72-0d02ca072d71', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d2728-27ff-7822-b3a5-64b9b9d5293f}'),
  ('019d2728-315f-731a-b201-a07543f5357d', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-2cb1-7bc1-ba20-4221b7c1066d', 'invites_invite_token_key', NULL, NULL, 'u', '{019d2728-2e0b-77f4-86fc-6b9a1aaf868f}'),
  ('019d2728-317c-728a-b01d-8be3b0e517d6', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-2cb1-7bc1-ba20-4221b7c1066d', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d2728-2d6c-7cb0-bd91-d002851782f4,019d2728-2da8-7c23-9e04-5cafe7d1fcfa}'),
  ('019d2728-3df2-7656-b1e6-243b6eccd1b4', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-394e-76c6-b978-b031166139f3', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d2728-3ac7-714b-b298-4772fac125ce}'),
  ('019d2728-3e75-7012-8bf7-3def2358090b', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2728-394e-76c6-b978-b031166139f3', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d2728-39fb-7561-9a2c-5b449921574d,019d2728-3a34-7d11-9a05-e7010ce48257,019d2728-3e0d-7e37-9be9-f4c6a632d42b}');


SET session_replication_role TO DEFAULT;


