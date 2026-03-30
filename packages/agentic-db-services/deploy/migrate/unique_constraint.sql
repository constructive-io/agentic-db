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
  ('019d4100-43ad-7f9d-a186-8bff29c40860', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-42f6-7ae2-9811-58ffe46470b0', 'users_username_key', NULL, NULL, 'u', '{019d4100-4381-71e5-b06c-08ae2c98927c}'),
  ('019d4100-44de-75ff-934f-a8c015dca33a', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-445c-7561-a4c9-0deb1eaa3905', 'role_types_name_key', NULL, NULL, 'u', '{019d4100-44bb-72c4-bc2b-bf0abf56a60d}'),
  ('019d4100-47cc-7abe-9534-86f4ea3d134b', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-46ae-76e1-a6f0-ad02143d61d7', 'membership_types_name_key', NULL, NULL, 'u', '{019d4100-4731-7e3a-a230-81538304fbd9}'),
  ('019d4100-49d6-7cff-b6de-dd8cd85fe6c1', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-492c-7bb1-b951-e489e54e0fea', 'app_permissions_name_key', NULL, NULL, 'u', '{019d4100-49b2-7fc0-8d1c-795d3275d4c3}'),
  ('019d4100-4a22-749c-b7b0-c13c2e8bfa3c', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-492c-7bb1-b951-e489e54e0fea', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d4100-49ea-7b64-95bf-1a3e295aac10}'),
  ('019d4100-4e85-7d34-8848-eb6afb91f536', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-4d22-7cf1-bf13-b6ff64bc12e2', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d4100-4db7-7cb0-af71-03078a61830c,019d4100-4ddc-7419-86bc-90d684c60644}'),
  ('019d4100-4f80-70d1-b99c-83ae0e059404', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-4e9a-7370-806b-4946aafbfb6a', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d4100-4f1c-7545-8992-f98eec5713b4}'),
  ('019d4100-5b78-7be9-b454-a6792b80fc07', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-5351-7ac1-ac02-e0becc92f374', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d4100-5afa-7774-ab9a-7ccce7b07773}'),
  ('019d4100-67ac-72e7-a4f8-85e87ff1ce09', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-6637-79c4-ba77-99676e8b4233', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d4100-66b4-7c64-bca4-9df22416afb9,019d4100-671d-7d48-81c5-b2ac58f67dd7}'),
  ('019d4100-68ec-78c3-a3e8-11921ab1a49f', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-6832-78a6-b9b7-6d4b7000e730', 'app_levels_name_key', NULL, NULL, 'u', '{019d4100-68b0-7871-b0fc-be3898062ca1}'),
  ('019d4100-6bbb-7e4f-b819-b74be3a8f2df', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-6a0e-76ac-8766-07382f02303e', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d4100-6a8d-7aaf-8bb4-93d15c64ff25,019d4100-6acd-7707-92a9-da4a8d114a00}'),
  ('019d4100-70c7-7d9c-92c0-9a7ae6c1d97f', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-6e44-7138-8908-4e752a880eb2', 'app_profiles_name_key', NULL, NULL, 'u', '{019d4100-6ed7-739c-9238-52413169371b}'),
  ('019d4100-70de-7b21-a003-3e145aaec781', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-6e44-7138-8908-4e752a880eb2', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d4100-6f12-770b-9375-1e485ec37708}'),
  ('019d4100-7259-7ce8-bde8-3de615542bc0', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-711d-7903-93d9-96788c7db370', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d4100-71a2-79da-9302-e6291eed1b4e,019d4100-71f3-7f1d-89ec-7932a41d9e98}'),
  ('019d4100-838f-7a37-9f47-ef31a0aba70f', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-82d8-7e12-a4cc-c5e87ef9638b', 'org_permissions_name_key', NULL, NULL, 'u', '{019d4100-8366-7bd7-8aeb-2dfef3980c9e}'),
  ('019d4100-83e6-7046-b28b-b0bd824d47ef', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-82d8-7e12-a4cc-c5e87ef9638b', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d4100-83a6-7869-8616-a58df1ecd253}'),
  ('019d4100-8abf-74fb-ab2e-716b416cb1d7', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-891a-7eae-bf72-bd095878b224', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d4100-899f-746a-b9cd-c2e2b05fac56,019d4100-89c7-7e32-a8db-b0e6251d5479,019d4100-8a70-72c1-bf88-5e7996e213f0}'),
  ('019d4100-8c2b-78a2-a3d6-c96bc4e5b98f', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-8ad4-7a09-baf5-f9a0398277d9', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d4100-8b5c-7629-bcde-c5a41bf472f8}'),
  ('019d4100-95a3-708b-8a52-11dc0d012e94', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-91a8-790c-9b49-8047db9910ed', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d4100-9555-7e45-b409-c8e5769f0552}'),
  ('019d4100-99ec-7536-9dbc-8a0d1ca819d1', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-904d-7f34-aa41-a9f2a17a18e9', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d4100-9904-7285-adca-3b5330b0e51c,019d4100-9995-76b3-8034-023b9a57ad56}'),
  ('019d4100-9be2-77da-99b3-06c0b7c238c7', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-9a2d-78ab-9b0c-db73ffa10793', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d4100-9b14-7e17-9b1d-ad07e4ffa695,019d4100-9b82-79fb-92a1-4b2d581ad9b1}'),
  ('019d4100-acc9-7256-9ebe-0510f069224a', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-a9a4-72db-92cb-04053723e629', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d4100-aa39-741b-b974-ba5db70650d3,019d4100-ac66-70cd-9ff0-42de8a790111}'),
  ('019d4100-ace5-7cb9-bd25-5d0883371aa3', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-a9a4-72db-92cb-04053723e629', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d4100-aa7f-7569-9a70-43b5af86d906,019d4100-ac66-70cd-9ff0-42de8a790111}'),
  ('019d4100-aeab-78d2-adfc-a002066e4d1e', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-ad43-7c13-887d-bf3caf9ddb13', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d4100-ade6-714a-80cf-59ef9c8dde84,019d4100-ae3f-7145-a25e-2e10f6a0e070}'),
  ('019d4100-be56-7249-a128-ab5d02342dd5', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-bc6e-7fa2-ac21-4df19783b294', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d4100-bd06-7854-9fce-5e6f80a84eb9,019d4100-bd77-79c4-b449-0c4e4c0f78b4,019d4100-be11-7f38-b0d6-b3fea0a2bff4}'),
  ('019d4100-bff1-7f6c-95c4-251a61981dce', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-bf15-7737-b110-355103fda560', 'org_levels_name_key', NULL, NULL, 'u', '{019d4100-bfad-71fd-a6d8-9a97cc3b36a7}'),
  ('019d4100-c34d-743f-9756-e2e68a2afff3', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-c151-7728-b36f-2facd54440af', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d4100-c1ea-7fad-966d-8f4d1654fd3a,019d4100-c231-78fb-90a8-dbfed9dba6ec}'),
  ('019d4100-d086-7c7e-8c9e-2b20f9ca10bf', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-cdf6-7160-aadd-4a7717b56775', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d4100-cf20-75ab-bcdf-378d809c3b57,019d4100-cf7d-7a29-8d66-cde3fd7c241b}'),
  ('019d4100-db53-768c-bd73-468b9f099a57', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-d9cc-761c-a414-10fe88a25048', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d4100-da7a-7e01-81f0-1484798dd0ba,019d4100-dac1-7a44-83a1-599d95f06100}'),
  ('019d4100-e516-7c63-a537-7b82e6784082', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-e17d-7361-9b39-2e92ff21503d', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d4100-e311-70a8-aa55-ab2eebe42d60}'),
  ('019d4100-e532-7f38-96c2-51c7ce51e374', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-e17d-7361-9b39-2e92ff21503d', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d4100-e2e2-74c8-886b-2f6bcf1a8f7b}'),
  ('019d4100-e54d-7035-8717-a14380f544cb', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-e17d-7361-9b39-2e92ff21503d', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d4100-e445-7313-b679-c098c34b2086}'),
  ('019d4100-eeb2-7ecd-a72c-299f71470ae6', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-ecda-7135-9446-5a38861412e2', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d4100-ed90-7556-b844-e04e3e5b327c,019d4100-edd6-7fa0-965e-8aa0e43e24ea}'),
  ('019d4100-f58e-7e1a-b821-01c78d7738d9', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-f2f6-72ee-947e-103acbda3543', 'emails_email_key', NULL, NULL, 'u', '{019d4100-f43b-7c4d-95dd-90a0ba4b54e7}'),
  ('019d4100-fdcd-7f6e-a996-d495e940b26a', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4100-fb45-79cc-9b70-5ebffdf6d507', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d4100-fcc3-71c9-83c0-b5a895f1035c}'),
  ('019d4101-05f7-7766-a254-a235cb9e9d63', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4101-03a1-7ef9-8ff8-720bd71e9bd6', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d4101-04be-7566-b9f8-ed0473db3017}'),
  ('019d4101-0e10-74ee-98b5-766ba92e5912', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4101-0987-723c-ab1c-41fd18fd21d9', 'invites_invite_token_key', NULL, NULL, 'u', '{019d4101-0ae2-71df-be6c-dd966789dc39}'),
  ('019d4101-0e2d-7205-9973-c473da5465cd', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4101-0987-723c-ab1c-41fd18fd21d9', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d4101-0a46-7b51-81e3-5b87e5c64411,019d4101-0a82-709b-8cca-9b3a098a1c90}'),
  ('019d4101-1b27-7c90-bc09-00ee3492789d', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4101-1675-76c7-b750-96e27ce8646e', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d4101-17f7-7533-b805-19a604f39332}'),
  ('019d4101-1bac-771b-bbc5-d599d6c08d5e', '019d4100-4020-73d6-9854-f8d0aaa616d3', '019d4101-1675-76c7-b750-96e27ce8646e', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d4101-1728-76e7-8ddb-0f9971fdc1d3,019d4101-1762-79dc-9769-ff9b9b1dcdbd,019d4101-1b43-7e1b-9a74-86c827480eef}');


SET session_replication_role TO DEFAULT;


